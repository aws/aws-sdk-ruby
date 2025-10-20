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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Organizations
  # An API client for Aws::Organizations.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSOrganizationsV20161128
    @identifier = :organizations

    add_plugin(::Aws::Organizations::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Organizations::EndpointProvider)
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

    # <p>Sends a response to the originator of a handshake agreeing to the action proposed by
    #             the handshake request.</p>
    #          <p>You can only call this operation by the following principals when they also have the
    #             relevant IAM permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Invitation to join</b> or <b>Approve all features request</b> handshakes: only a principal from
    #                     the member account.</p>
    #                <p>The user who calls the API for an invitation to join must have the
    #                         <code>organizations:AcceptHandshake</code> permission. If you enabled all
    #                     features in the organization, the user must also have the
    #                         <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can
    #                     create the required service-linked role named <code>AWSServiceRoleForOrganizations</code>. For
    #                     more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integrate_services-using_slrs">Organizations and service-linked roles</a> in the
    #                         <i>Organizations User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Enable all features final confirmation</b>
    #                     handshake: only a principal from the management account.</p>
    #                <p>For more information about invitations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html">Inviting an
    #                         Amazon Web Services account to join your organization</a> in the
    #                         <i>Organizations User Guide</i>. For more information about requests to
    #                     enable all features in the organization, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling all features in your organization</a> in
    #                     the <i>Organizations User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <p>After you accept a handshake, it continues to appear in the results of relevant APIs
    #             for only 30 days. After that, it's deleted.</p>
    # @param [Hash, Types::AcceptHandshakeRequest] params
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to accept.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     handshake_id: "HandshakeId", # required
    #   }
    #   options = {}
    #   response = client.accept_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "HandshakeId",
    #       arn: "HandshakeArn",
    #       parties: [
    #         {
    #           id: "HandshakePartyId", # required
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #         }
    #       ],
    #       state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #       requested_timestamp: Time.now,
    #       expiration_timestamp: Time.now,
    #       action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       resources: [
    #         {
    #           value: "HandshakeResourceValue",
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #           resources: {
    #             # recursive HandshakeResources
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AcceptHandshakeResponse]
    def accept_handshake(params = {}, options = {})
      request = build_request(:accept_handshake, params)
      request.send_request(options)
    end

    # <p>Attaches a policy to a root, an organizational unit (OU), or an individual account.
    #             How the policy affects accounts depends on the type of policy. Refer to the
    #                 <i>Organizations User Guide</i> for information about each policy type:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::AttachPolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want to attach to the target. You
    #               can get the ID for the policy by calling the <a>ListPolicies</a>
    #               operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    # @option params [String] :target_id
    #   <p>The unique identifier (ID) of the root, OU, or account that you want to attach the
    #               policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32 
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @example To attach a policy to an account
    #   # The following example shows how to attach a service control policy (SCP) to an account:
    #   params = {
    #     target_id: "333333333333",
    #     policy_id: "p-examplepolicyid111"
    #   }
    #   options = {}
    #   response = client.attach_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example To attach a policy to an OU
    #   # The following example shows how to attach a service control policy (SCP) to an OU:
    #   params = {
    #     target_id: "ou-examplerootid111-exampleouid111",
    #     policy_id: "p-examplepolicyid111"
    #   }
    #   options = {}
    #   response = client.attach_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     target_id: "PolicyTargetId", # required
    #   }
    #   options = {}
    #   response = client.attach_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def attach_policy(params = {}, options = {})
      request = build_request(:attach_policy, params)
      request.send_request(options)
    end

    # <p>Cancels a handshake. Canceling a handshake sets the handshake state to
    #                 <code>CANCELED</code>.</p>
    #          <p>This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use <a>DeclineHandshake</a> instead. After a handshake is canceled, the recipient
    #             can no longer respond to that handshake.</p>
    #          <p>After you cancel a handshake, it continues to appear in the results of relevant APIs
    #             for only 30 days. After that, it's deleted.</p>
    # @param [Hash, Types::CancelHandshakeRequest] params
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to cancel. You can get the
    #               ID from the <a>ListHandshakesForOrganization</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     handshake_id: "HandshakeId", # required
    #   }
    #   options = {}
    #   response = client.cancel_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "HandshakeId",
    #       arn: "HandshakeArn",
    #       parties: [
    #         {
    #           id: "HandshakePartyId", # required
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #         }
    #       ],
    #       state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #       requested_timestamp: Time.now,
    #       expiration_timestamp: Time.now,
    #       action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       resources: [
    #         {
    #           value: "HandshakeResourceValue",
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #           resources: {
    #             # recursive HandshakeResources
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CancelHandshakeResponse]
    def cancel_handshake(params = {}, options = {})
      request = build_request(:cancel_handshake, params)
      request.send_request(options)
    end

    # <p>Closes an Amazon Web Services member account within an organization. You can close an account when
    #                 <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all
    #                 features are enabled </a>. You can't close the management account with this API.
    #             This is an asynchronous request that Amazon Web Services performs in the background. Because
    #                 <code>CloseAccount</code> operates asynchronously, it can return a successful
    #             completion message even though account closure might still be in progress. You need to
    #             wait a few minutes before the account is fully closed. To check the status of the
    #             request, do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Use the <code>AccountId</code> that you sent in the <code>CloseAccount</code>
    #                     request to provide as a parameter to the <a>DescribeAccount</a>
    #                     operation. </p>
    #                <p>While the close account request is in progress, Account status will indicate
    #                     PENDING_CLOSURE. When the close account request completes, the status will
    #                     change to SUSPENDED. </p>
    #             </li>
    #             <li>
    #                <p>Check the CloudTrail log for the <code>CloseAccountResult</code> event that gets
    #                     published after the account closes successfully. For information on using CloudTrail
    #                     with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#orgs_cloudtrail-integration">Logging and monitoring in Organizations</a> in the
    #                         <i>Organizations User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You can close only 10% of member accounts, between 10 and 1000, within a
    #                         rolling 30 day period. This quota is not bound by a calendar month, but
    #                         starts when you close an account. After you reach this limit, you can't
    #                         close additional accounts. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing a member
    #                             account in your organization</a> and <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html">Quotas for
    #                             Organizations</a> in the <i>Organizations User Guide</i>. </p>
    #                </li>
    #                <li>
    #                   <p>To reinstate a closed account, contact Amazon Web Services Support within the 90-day
    #                         grace period while the account is in SUSPENDED status. </p>
    #                </li>
    #                <li>
    #                   <p>If the Amazon Web Services account you attempt to close is linked to an Amazon Web Services GovCloud
    #                         (US) account, the <code>CloseAccount</code> request will close both
    #                         accounts. To learn important pre-closure details, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/Closing-govcloud-account.html">
    #                             Closing an Amazon Web Services GovCloud (US) account</a> in the <i>
    #                             Amazon Web Services GovCloud User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CloseAccountRequest] params
    # @option params [String] :account_id
    #   <p>Retrieves the Amazon Web Services account Id for the current <code>CloseAccount</code> API request.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.close_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def close_account(params = {}, options = {})
      request = build_request(:close_account, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services account that is automatically a member of the organization whose
    #             credentials made the request. This is an asynchronous request that Amazon Web Services performs in the
    #             background. Because <code>CreateAccount</code> operates asynchronously, it can return a
    #             successful completion message even though account initialization might still be in
    #             progress. You might need to wait a few minutes before you can successfully access the
    #             account. To check the status of the request, do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Use the <code>Id</code> value of the <code>CreateAccountStatus</code> response
    #                     element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p>
    #             </li>
    #             <li>
    #                <p>Check the CloudTrail log for the <code>CreateAccountResult</code> event. For
    #                     information on using CloudTrail with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#orgs_cloudtrail-integration">Logging and monitoring in Organizations</a> in the
    #                         <i>Organizations User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <p>The user who calls the API to create an account must have the
    #                 <code>organizations:CreateAccount</code> permission. If you enabled all features in
    #             the organization, Organizations creates the required service-linked role named
    #                 <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs">Organizations and service-linked roles</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #          <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #          <p>Organizations preconfigures the new member account with a role (named
    #                 <code>OrganizationAccountAccessRole</code> by default) that grants users in the
    #             management account administrator permissions in the new member account. Principals in
    #             the management account can assume the role. Organizations clones the company name and address
    #             information for the new account from the organization's management account.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    #          <p>For more information about creating accounts, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating
    #                 a member account in your organization</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required for the account to operate
    #                         as a standalone account, such as a payment method is
    #                             <i>not</i> automatically collected. If you must remove an
    #                         account from your organization later, you can do so only after you provide
    #                         the missing information. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_account-before-remove.html">Considerations before removing an account from an organization</a>
    #                         in the <i>Organizations User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>If you get an exception that indicates that you exceeded your account
    #                         limits for the organization, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                </li>
    #                <li>
    #                   <p>If you get an exception that indicates that the operation failed because
    #                         your organization is still initializing, wait one hour and then try again.
    #                         If the error persists, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                </li>
    #                <li>
    #                   <p>It isn't recommended to use <code>CreateAccount</code> to create multiple
    #                         temporary accounts, and using the <code>CreateAccount</code> API to close
    #                         accounts is subject to a 30-day usage quota. For information on the
    #                         requirements and process for closing an account, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing a member
    #                             account in your organization</a> in the
    #                             <i>Organizations User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </important>
    #          <note>
    #             <p>When you create a member account with this operation, you can choose whether to
    #                 create the account with the <b>IAM User and Role Access to
    #                     Billing Information</b> switch enabled. If you enable it, IAM users and
    #                 roles that have appropriate permissions can view billing information for the
    #                 account. If you disable it, only the account root user can access billing
    #                 information. For information about how to disable this switch for an account, see
    #                     <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/control-access-billing.html#grantaccess">Granting access to
    #                     your billing information and tools</a>.</p>
    #          </note>
    # @param [Hash, Types::CreateAccountRequest] params
    # @option params [String] :email
    #   <p>The email address of the owner to assign to the new member account. This email address
    #               must not already be associated with another Amazon Web Services account. You must use a valid email
    #               address to complete account creation.</p>
    #            <p>The rules for a valid email address:</p>
    #            <ul>
    #               <li>
    #                  <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
    #               </li>
    #               <li>
    #                  <p>All characters must be 7-bit ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>There must be one and only one @ symbol, which separates the local name from
    #                       the domain name.</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't contain any of the following characters:</p>
    #                  <p>whitespace, " ' ( ) < > [ ] : ; , \ | % &</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't begin with a dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
    #                       (-), or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name must contain at least one dot</p>
    #               </li>
    #            </ul>
    #            <p>You can't access the root user of the account or remove an account that was created
    #               with an invalid email address.</p>
    # @option params [String] :account_name
    #   <p>The friendly name of the member account.</p>
    # @option params [String] :role_name
    #   <p>The name of an IAM role that Organizations automatically preconfigures in the new member
    #               account. This role trusts the management account, allowing users in the management
    #               account to assume the role, as permitted by the management account administrator. The
    #               role has administrator permissions in the new member account.</p>
    #            <p>If you don't specify this parameter, the role name defaults to
    #                   <code>OrganizationAccountAccessRole</code>.</p>
    #            <p>For more information about how to use this role to access the member account, see the
    #               following links:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Creating the OrganizationAccountAccessRole in an invited member
    #                           account</a> in the <i>Organizations User Guide</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">IAM Tutorial:
    #                           Delegate access across Amazon Web Services accounts using IAM roles</a> in the
    #                           <i>IAM User Guide</i>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that 
    #       is used to validate this parameter. The pattern can include uppercase 
    #       letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    # @option params [String] :iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account
    #               billing information <i>if</i> they have the required permissions. If set
    #               to <code>DENY</code>, only the root user of the new account can access account billing
    #               information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">About IAM
    #                   access to the Billing and Cost Management console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>
    #            <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created account. For each tag in
    #               the list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the maximum allowed number of
    #                   tags for an account, then the entire request fails and the account is not
    #                   created.</p>
    #            </note>
    # @example To create a new account that is automatically part of the organization
    #   # The owner of an organization creates a member account in the organization. The following example shows that when the organization owner creates the member account, the account is preconfigured with the name "Production Account" and an owner email address of susan@example.com.  An IAM role is automatically created using the default name because the roleName parameter is not used. AWS Organizations sends Susan a "Welcome to AWS" email:
    #   params = {
    #     email: "susan@example.com",
    #     account_name: "Production Account"
    #   }
    #   options = {}
    #   response = client.create_account(params, options)
    #   response.to_h #=>
    #   {
    #     create_account_status: {
    #       state: IN_PROGRESS,
    #       id: "car-examplecreateaccountrequestid111"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     email: "Email", # required
    #     account_name: "CreateAccountName", # required
    #     role_name: "RoleName",
    #     iam_user_access_to_billing: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_account_status: {
    #       id: "CreateAccountRequestId",
    #       account_name: "CreateAccountName",
    #       state: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #       requested_timestamp: Time.now,
    #       completed_timestamp: Time.now,
    #       account_id: "AccountId",
    #       gov_cloud_account_id: "AccountId",
    #       failure_reason: "ACCOUNT_LIMIT_EXCEEDED" # One of: ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT", "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"]
    #     }
    #   }
    # @return [Types::CreateAccountResponse]
    def create_account(params = {}, options = {})
      request = build_request(:create_account, params)
      request.send_request(options)
    end

    # <p>This action is available if all of the following are true:</p>
    #          <ul>
    #             <li>
    #                <p>You're authorized to create accounts in the Amazon Web Services GovCloud (US) Region. For
    #                     more information on the Amazon Web Services GovCloud (US) Region, see the <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html">
    #                      <i>Amazon Web Services GovCloud User Guide</i>.</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>You already have an account in the Amazon Web Services GovCloud (US) Region that is paired
    #                     with a management account of an organization in the commercial Region.</p>
    #             </li>
    #             <li>
    #                <p>You call this action from the management account of your organization in the
    #                     commercial Region.</p>
    #             </li>
    #             <li>
    #                <p>You have the <code>organizations:CreateGovCloudAccount</code> permission.
    #                 </p>
    #             </li>
    #          </ul>
    #          <p>Organizations automatically creates the required service-linked role named
    #                 <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs">Organizations and service-linked roles</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #          <p>Amazon Web Services automatically enables CloudTrail for Amazon Web Services GovCloud (US) accounts, but you should also
    #             do the following:</p>
    #          <ul>
    #             <li>
    #                <p>Verify that CloudTrail is enabled to store logs.</p>
    #             </li>
    #             <li>
    #                <p>Create an Amazon S3 bucket for CloudTrail log storage.</p>
    #                <p>For more information, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html">Verifying CloudTrail Is
    #                         Enabled</a> in the <i>Amazon Web Services GovCloud User Guide</i>.
    #                 </p>
    #             </li>
    #          </ul>
    #          <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission. The tags are attached to the
    #             commercial account associated with the GovCloud account, rather than the GovCloud
    #             account itself. To add tags to the GovCloud account, call the <a>TagResource</a> operation in the GovCloud Region after the new GovCloud
    #             account exists.</p>
    #          <p>You call this action from the management account of your organization in the
    #             commercial Region to create a standalone Amazon Web Services account in the Amazon Web Services GovCloud (US)
    #             Region. After the account is created, the management account of an organization in the
    #             Amazon Web Services GovCloud (US) Region can invite it to that organization. For more information on
    #             inviting standalone accounts in the Amazon Web Services GovCloud (US) to join an organization, see
    #                 <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">Organizations</a> in the
    #                 <i>Amazon Web Services GovCloud User Guide</i>.</p>
    #          <p>Calling <code>CreateGovCloudAccount</code> is an asynchronous request that Amazon Web Services
    #             performs in the background. Because <code>CreateGovCloudAccount</code> operates
    #             asynchronously, it can return a successful completion message even though account
    #             initialization might still be in progress. You might need to wait a few minutes before
    #             you can successfully access the account. To check the status of the request, do one of
    #             the following:</p>
    #          <ul>
    #             <li>
    #                <p>Use the <code>OperationId</code> response element from this operation to
    #                     provide as a parameter to the <a>DescribeCreateAccountStatus</a>
    #                     operation.</p>
    #             </li>
    #             <li>
    #                <p>Check the CloudTrail log for the <code>CreateAccountResult</code> event. For
    #                     information on using CloudTrail with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html">Logging and
    #                         monitoring in Organizations</a> in the
    #                     <i>Organizations User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <p></p>
    #          <p>When you call the <code>CreateGovCloudAccount</code> action, you create two accounts:
    #             a standalone account in the Amazon Web Services GovCloud (US) Region and an associated account in the
    #             commercial Region for billing and support purposes. The account in the commercial Region
    #             is automatically a member of the organization whose credentials made the request. Both
    #             accounts are associated with the same email address.</p>
    #          <p>A role is created in the new account in the commercial Region that allows the
    #             management account in the organization in the commercial Region to assume it. An Amazon Web Services
    #             GovCloud (US) account is then created and associated with the commercial account that
    #             you just created. A role is also created in the new Amazon Web Services GovCloud (US) account that can
    #             be assumed by the Amazon Web Services GovCloud (US) account that is associated with the management
    #             account of the commercial organization. For more information and to view a diagram that
    #             explains how account access works, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">Organizations</a> in the
    #                 <i>Amazon Web Services GovCloud User Guide</i>.</p>
    #          <p>For more information about creating accounts, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating
    #                 a member account in your organization</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required for the account to operate as
    #                         a standalone account is <i>not</i> automatically collected.
    #                         This includes a payment method and signing the end user license agreement
    #                         (EULA). If you must remove an account from your organization later, you can
    #                         do so only after you provide the missing information. For more information,
    #                         see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_account-before-remove.html">Considerations before removing an account from an organization</a>
    #                         in the <i>Organizations User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>If you get an exception that indicates that you exceeded your account
    #                         limits for the organization, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                </li>
    #                <li>
    #                   <p>If you get an exception that indicates that the operation failed because
    #                         your organization is still initializing, wait one hour and then try again.
    #                         If the error persists, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                </li>
    #                <li>
    #                   <p>Using <code>CreateGovCloudAccount</code> to create multiple temporary
    #                         accounts isn't recommended. You can only close an account from the Amazon Web Services
    #                         Billing and Cost Management console, and you must be signed in as the root user. For information on
    #                         the requirements and process for closing an account, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing a member
    #                             account in your organization</a> in the
    #                             <i>Organizations User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </important>
    #          <note>
    #             <p>When you create a member account with this operation, you can choose whether to
    #                 create the account with the <b>IAM User and Role Access to
    #                     Billing Information</b> switch enabled. If you enable it, IAM users and
    #                 roles that have appropriate permissions can view billing information for the
    #                 account. If you disable it, only the account root user can access billing
    #                 information. For information about how to disable this switch for an account, see
    #                     <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting
    #                     access to your billing information and tools</a>.</p>
    #          </note>
    # @param [Hash, Types::CreateGovCloudAccountRequest] params
    # @option params [String] :email
    #   <p>Specifies the email address of the owner to assign to the new member account in the
    #               commercial Region. This email address must not already be associated with another
    #               Amazon Web Services account. You must use a valid email address to complete account creation.</p>
    #            <p>The rules for a valid email address:</p>
    #            <ul>
    #               <li>
    #                  <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
    #               </li>
    #               <li>
    #                  <p>All characters must be 7-bit ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>There must be one and only one @ symbol, which separates the local name from
    #                       the domain name.</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't contain any of the following characters:</p>
    #                  <p>whitespace, " ' ( ) < > [ ] : ; , \ | % &</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't begin with a dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
    #                       (-), or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name must contain at least one dot</p>
    #               </li>
    #            </ul>
    #            <p>You can't access the root user of the account or remove an account that was created
    #               with an invalid email address. Like all request parameters for
    #                   <code>CreateGovCloudAccount</code>, the request for the email address for the Amazon Web Services
    #               GovCloud (US) account originates from the commercial Region, not from the Amazon Web Services GovCloud
    #               (US) Region.</p>
    # @option params [String] :account_name
    #   <p>The friendly name of the member account. </p>
    #            <p>The account name can consist of only the characters [a-z],[A-Z],[0-9], hyphen (-), or
    #               dot (.) You can't separate characters with a dash (–).</p>
    # @option params [String] :role_name
    #   <p>(Optional)</p>
    #            <p>The name of an IAM role that Organizations automatically preconfigures in the new member
    #               accounts in both the Amazon Web Services GovCloud (US) Region and in the commercial Region. This role
    #               trusts the management account, allowing users in the management account to assume the
    #               role, as permitted by the management account administrator. The role has administrator
    #               permissions in the new member account.</p>
    #            <p>If you don't specify this parameter, the role name defaults to
    #                   <code>OrganizationAccountAccessRole</code>.</p>
    #            <p>For more information about how to use this role to access the member account, see the
    #               following links:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Creating the OrganizationAccountAccessRole in an invited member
    #                           account</a> in the <i>Organizations User Guide</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">IAM Tutorial:
    #                           Delegate access across Amazon Web Services accounts using IAM roles</a> in the
    #                           <i>IAM User Guide</i>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that 
    #       is used to validate this parameter. The pattern can include uppercase 
    #       letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    # @option params [String] :iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new linked account in the commercial Region enables
    #               IAM users to access account billing information <i>if</i> they have the
    #               required permissions. If set to <code>DENY</code>, only the root user of the new account
    #               can access account billing information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">About IAM
    #                   access to the Billing and Cost Management console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>
    #            <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created account. These tags are
    #               attached to the commercial account associated with the GovCloud account, and not to the
    #               GovCloud account itself. To add tags to the actual GovCloud account, call the <a>TagResource</a> operation in the GovCloud region after the new GovCloud
    #               account exists.</p>
    #            <p>For each tag in the list, you must specify both a tag key and a value. You can set the
    #               value to an empty string, but you can't set it to <code>null</code>. For more
    #               information about tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations resources</a> in the
    #               Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the maximum allowed number of
    #                   tags for an account, then the entire request fails and the account is not
    #                   created.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     email: "Email", # required
    #     account_name: "CreateAccountName", # required
    #     role_name: "RoleName",
    #     iam_user_access_to_billing: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_gov_cloud_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_account_status: {
    #       id: "CreateAccountRequestId",
    #       account_name: "CreateAccountName",
    #       state: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #       requested_timestamp: Time.now,
    #       completed_timestamp: Time.now,
    #       account_id: "AccountId",
    #       gov_cloud_account_id: "AccountId",
    #       failure_reason: "ACCOUNT_LIMIT_EXCEEDED" # One of: ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT", "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"]
    #     }
    #   }
    # @return [Types::CreateGovCloudAccountResponse]
    def create_gov_cloud_account(params = {}, options = {})
      request = build_request(:create_gov_cloud_account, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services organization. The account whose user is calling the
    #                 <code>CreateOrganization</code> operation automatically becomes the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">management account</a> of the new organization.</p>
    #          <p>This operation must be called using credentials from the account that is to become the
    #             new organization's management account. The principal must also have the relevant IAM
    #             permissions.</p>
    #          <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>),
    #             the new organization is created with all features enabled and service control policies
    #             automatically enabled in the root. If you instead choose to create the organization
    #             supporting only the consolidated billing features by setting the <code>FeatureSet</code>
    #             parameter to <code>CONSOLIDATED_BILLING</code>, no policy types are enabled by default
    #             and you can't use organization policies.</p>
    # @param [Hash, Types::CreateOrganizationRequest] params
    # @option params [String] :feature_set
    #   <p>Specifies the feature set supported by the new organization. Each feature set supports
    #               different levels of functionality.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONSOLIDATED_BILLING</code>: All member accounts have their bills
    #                       consolidated to and paid by the management account. For more information, see
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only">Consolidated billing</a> in the
    #                       <i>Organizations User Guide</i>.</p>
    #                  <p> The consolidated billing feature subset isn't available for organizations in
    #                       the Amazon Web Services GovCloud (US) Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: In addition to all the features supported by the
    #                       consolidated billing feature set, the management account can also apply any
    #                       policy type to any member account in the organization. For more information, see
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all">All
    #                           features</a> in the <i>Organizations User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example To create a new organization with all features enabled
    #   # Bill wants to create an organization using credentials from account 111111111111. The following example shows that the account becomes the master account in the new organization. Because he does not specify a feature set, the new organization defaults to all features enabled and service control policies enabled on the root:
    #   params = {}
    #   options = {}
    #   response = client.create_organization(params, options)
    #   response.to_h #=>
    #   {
    #     organization: {
    #       available_policy_types: [
    #         {
    #           status: ENABLED,
    #           type: SERVICE_CONTROL_POLICY
    #         }
    #       ],
    #       master_account_id: "111111111111",
    #       master_account_arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111",
    #       master_account_email: "bill@example.com",
    #       feature_set: ALL,
    #       id: "o-exampleorgid",
    #       arn: "arn:aws:organizations::111111111111:organization/o-exampleorgid"
    #     }
    #   }
    # @example To create a new organization with consolidated billing features only
    #   # In the following example, Bill creates an organization using credentials from account 111111111111, and configures the organization to support only the consolidated billing feature set:
    #   params = {
    #     feature_set: CONSOLIDATED_BILLING
    #   }
    #   options = {}
    #   response = client.create_organization(params, options)
    #   response.to_h #=>
    #   {
    #     organization: {
    #       available_policy_types: [
    #       ],
    #       master_account_id: "111111111111",
    #       master_account_arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111",
    #       master_account_email: "bill@example.com",
    #       feature_set: CONSOLIDATED_BILLING,
    #       id: "o-exampleorgid",
    #       arn: "arn:aws:organizations::111111111111:organization/o-exampleorgid"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     feature_set: "ALL" # One of: ["ALL", "CONSOLIDATED_BILLING"]
    #   }
    #   options = {}
    #   response = client.create_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization: {
    #       id: "OrganizationId",
    #       arn: "OrganizationArn",
    #       feature_set: "ALL" # One of: ["ALL", "CONSOLIDATED_BILLING"],
    #       master_account_arn: "AccountArn",
    #       master_account_id: "AccountId",
    #       master_account_email: "Email",
    #       available_policy_types: [
    #         {
    #           type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #           status: "ENABLED" # One of: ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateOrganizationResponse]
    def create_organization(params = {}, options = {})
      request = build_request(:create_organization, params)
      request.send_request(options)
    end

    # <p>Creates an organizational unit (OU) within a root or parent OU. An OU is a container
    #             for accounts that enables you to organize your accounts to apply policies according to
    #             your business requirements. The number of levels deep that you can nest OUs is dependent
    #             upon the policy types enabled for that root. For service control policies, the limit is
    #             five.</p>
    #          <p>For more information about OUs, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing organizational units (OUs)</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #          <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::CreateOrganizationalUnitRequest] params
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) of the parent root or OU that you want to create the new OU
    #               in.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The friendly name to assign to the new OU.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created OU. For each tag in the
    #               list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the allowed number of tags
    #                   for an OU, then the entire request fails and the OU is not created.</p>
    #            </note>
    # @example To create a new organization unit
    #   # The following example shows how to create an OU that is named AccountingOU. The new OU is directly under the root.:
    #   params = {
    #     parent_id: "r-examplerootid111",
    #     name: "AccountingOU"
    #   }
    #   options = {}
    #   response = client.create_organizational_unit(params, options)
    #   response.to_h #=>
    #   {
    #     organizational_unit: {
    #       id: "ou-examplerootid111-exampleouid111",
    #       arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111",
    #       name: "AccountingOU"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     parent_id: "ParentId", # required
    #     name: "OrganizationalUnitName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_organizational_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organizational_unit: {
    #       id: "OrganizationalUnitId",
    #       arn: "OrganizationalUnitArn",
    #       name: "OrganizationalUnitName"
    #     }
    #   }
    # @return [Types::CreateOrganizationalUnitResponse]
    def create_organizational_unit(params = {}, options = {})
      request = build_request(:create_organizational_unit, params)
      request.send_request(options)
    end

    # <p>Creates a policy of a specified type that you can attach to a root, an organizational
    #             unit (OU), or an individual Amazon Web Services account.</p>
    #          <p>For more information about policies and their use, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">Managing
    #                 Organizations policies</a>.</p>
    #          <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::CreatePolicyRequest] params
    # @option params [String] :content
    #   <p>The policy text content to add to the new policy. The text that you supply must adhere
    #               to the rules of the policy type you specify in the <code>Type</code> parameter. </p>
    #            <p>The maximum size of a policy document depends on the policy's type. For more
    #               information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#min-max-values">Maximum and minimum values</a> in the
    #               <i>Organizations User Guide</i>.</p>
    # @option params [String] :description
    #   <p>An optional description to assign to the policy.</p>
    # @option params [String] :name
    #   <p>The friendly name to assign to the policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    # @option params [String] :type
    #   <p>The type of policy to create. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created policy. For each tag in
    #               the list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the allowed number of tags
    #                   for a policy, then the entire request fails and the policy is not created.</p>
    #            </note>
    # @example To create a service control policy
    #   # The following example shows how to create a service control policy (SCP) that is named AllowAllS3Actions. The JSON string in the content parameter specifies the content in the policy. The parameter string is escaped with backslashes to ensure that the embedded double quotes in the JSON policy are treated as literals in the parameter, which itself is surrounded by double quotes:
    #   params = {
    #     content: "{\\\"Version\\\":\\\"2012-10-17\\\",\\\"Statement\\\":{\\\"Effect\\\":\\\"Allow\\\",\\\"Action\\\":\\\"s3:*\\\"}}",
    #     type: SERVICE_CONTROL_POLICY,
    #     description: "Enables admins of attached accounts to delegate all S3 permissions",
    #     name: "AllowAllS3Actions"
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: {
    #       content: "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":\"s3:*\"}}",
    #       policy_summary: {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
    #         description: "Allows delegation of all S3 actions",
    #         name: "AllowAllS3Actions",
    #         type: SERVICE_CONTROL_POLICY
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     content: "PolicyContent", # required
    #     description: "PolicyDescription", # required
    #     name: "PolicyName", # required
    #     type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_summary: {
    #         id: "PolicyId",
    #         arn: "PolicyArn",
    #         name: "PolicyName",
    #         description: "PolicyDescription",
    #         type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #         aws_managed: false
    #       },
    #       content: "PolicyContent"
    #     }
    #   }
    # @return [Types::CreatePolicyResponse]
    def create_policy(params = {}, options = {})
      request = build_request(:create_policy, params)
      request.send_request(options)
    end

    # <p>Declines a handshake request. This sets the handshake state to <code>DECLINED</code>
    #             and effectively deactivates the request.</p>
    #          <p>This operation can be called only from the account that received the handshake. The originator of the handshake can use <a>CancelHandshake</a>
    #             instead. The originator can't reactivate a declined request, but can reinitiate the
    #             process with a new handshake request.</p>
    #          <p>After you decline a handshake, it continues to appear in the results of relevant APIs
    #             for only 30 days. After that, it's deleted.</p>
    # @param [Hash, Types::DeclineHandshakeRequest] params
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to decline. You can get the
    #               ID from the <a>ListHandshakesForAccount</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    # @example To decline a handshake sent from the master account
    #   # The following example shows Susan declining an invitation to join Bill's organization. The DeclineHandshake operation returns a handshake object, showing that the state is now DECLINED:
    #   params = {
    #     handshake_id: "h-examplehandshakeid111"
    #   }
    #   options = {}
    #   response = client.decline_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "h-examplehandshakeid111",
    #       state: DECLINED,
    #       resources: [
    #         {
    #           type: ORGANIZATION,
    #           value: "o-exampleorgid",
    #           resources: [
    #             {
    #               type: MASTER_EMAIL,
    #               value: "bill@example.com"
    #             },
    #             {
    #               type: MASTER_NAME,
    #               value: "Master Account"
    #             }
    #           ]
    #         },
    #         {
    #           type: ACCOUNT,
    #           value: "222222222222"
    #         },
    #         {
    #           type: NOTES,
    #           value: "This is an invitation to Susan's account to join the Bill's organization."
    #         }
    #       ],
    #       parties: [
    #         {
    #           type: ACCOUNT,
    #           id: "222222222222"
    #         },
    #         {
    #           type: ORGANIZATION,
    #           id: "o-exampleorgid"
    #         }
    #       ],
    #       action: INVITE,
    #       requested_timestamp: Time.parse("2016-11-30T19:27:58Z"),
    #       expiration_timestamp: Time.parse("2016-12-15T19:27:58Z"),
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     handshake_id: "HandshakeId", # required
    #   }
    #   options = {}
    #   response = client.decline_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "HandshakeId",
    #       arn: "HandshakeArn",
    #       parties: [
    #         {
    #           id: "HandshakePartyId", # required
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #         }
    #       ],
    #       state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #       requested_timestamp: Time.now,
    #       expiration_timestamp: Time.now,
    #       action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       resources: [
    #         {
    #           value: "HandshakeResourceValue",
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #           resources: {
    #             # recursive HandshakeResources
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeclineHandshakeResponse]
    def decline_handshake(params = {}, options = {})
      request = build_request(:decline_handshake, params)
      request.send_request(options)
    end

    # <p>Deletes the organization. You can delete an organization only by using credentials
    #             from the management account. The organization must be empty of member accounts.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_organization(params = {}, options = {})
      request = build_request(:delete_organization, params)
      request.send_request(options)
    end

    # <p>Deletes an organizational unit (OU) from a root or another OU. You must first remove
    #             all accounts and child OUs from the OU that you want to delete.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::DeleteOrganizationalUnitRequest] params
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want to delete. You can
    #               get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires 
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters 
    #       or digits.</p>
    # @example To delete an organization unit
    #   # The following example shows how to delete an OU. The example assumes that you previously removed all accounts and other OUs from the OU:
    #   params = {
    #     organizational_unit_id: "ou-examplerootid111-exampleouid111"
    #   }
    #   options = {}
    #   response = client.delete_organizational_unit(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #   }
    #   options = {}
    #   response = client.delete_organizational_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_organizational_unit(params = {}, options = {})
      request = build_request(:delete_organizational_unit, params)
      request.send_request(options)
    end

    # <p>Deletes the specified policy from your organization. Before you perform this
    #             operation, you must first detach the policy from all organizational units (OUs), roots,
    #             and accounts.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::DeletePolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want to delete. You can get the ID
    #               from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    # @example To delete a policy
    #   # The following example shows how to delete a policy from an organization. The example assumes that you previously detached the policy from all entities:
    #   params = {
    #     policy_id: "p-examplepolicyid111"
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
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

    # <p>Deletes the resource policy from your organization.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Removes the specified member Amazon Web Services account as a delegated administrator for the
    #             specified Amazon Web Services service.</p>
    #          <important>
    #             <p>Deregistering a delegated administrator can have unintended impacts on the
    #                 functionality of the enabled Amazon Web Services service. See the documentation for the enabled
    #                 service before you deregister a delegated administrator so that you understand any
    #                 potential impacts.</p>
    #          </important>
    #          <p>You can run this action only for Amazon Web Services services that support this
    #     feature. For a current list of services that support it, see the column <i>Supports 
    #     Delegated Administrator</i> in the table at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html">Amazon Web Services Services that you can use with 
    #     Organizations</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::DeregisterDelegatedAdministratorRequest] params
    # @option params [String] :account_id
    #   <p>The account ID number of the member account in the organization that you want to
    #               deregister as a delegated administrator.</p>
    # @option params [String] :service_principal
    #   <p>The service principal name of an Amazon Web Services service for which the account is a delegated
    #               administrator.</p>
    #            <p>Delegated administrator privileges are revoked for only the specified Amazon Web Services service
    #               from the member account. If the specified service is the only service for which the
    #               member account is a delegated administrator, the operation also revokes Organizations read action
    #               permissions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     service_principal: "ServicePrincipal", # required
    #   }
    #   options = {}
    #   response = client.deregister_delegated_administrator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_delegated_administrator(params = {}, options = {})
      request = build_request(:deregister_delegated_administrator, params)
      request.send_request(options)
    end

    # <p>Retrieves Organizations-related information about the specified account.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::DescribeAccountRequest] params
    # @option params [String] :account_id
    #   <p>The unique identifier (ID) of the Amazon Web Services account that you want information about. You
    #               can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    # @example To get the details about an account
    #   # The following example shows a user in the master account (111111111111) asking for details about account 555555555555:
    #   params = {
    #     account_id: "555555555555"
    #   }
    #   options = {}
    #   response = client.describe_account(params, options)
    #   response.to_h #=>
    #   {
    #     account: {
    #       arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/555555555555",
    #       id: "555555555555",
    #       email: "anika@example.com",
    #       name: "Beta Account"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.describe_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account: {
    #       id: "AccountId",
    #       arn: "AccountArn",
    #       email: "Email",
    #       name: "AccountName",
    #       status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"],
    #       state: "PENDING_ACTIVATION" # One of: ["PENDING_ACTIVATION", "ACTIVE", "SUSPENDED", "PENDING_CLOSURE", "CLOSED"],
    #       joined_method: "INVITED" # One of: ["INVITED", "CREATED"],
    #       joined_timestamp: Time.now
    #     }
    #   }
    # @return [Types::DescribeAccountResponse]
    def describe_account(params = {}, options = {})
      request = build_request(:describe_account, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status of an asynchronous request to create an account.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::DescribeCreateAccountStatusRequest] params
    # @option params [String] :create_account_request_id
    #   <p>Specifies the <code>Id</code> value that uniquely identifies the
    #                   <code>CreateAccount</code> request. You can get the value from the
    #                   <code>CreateAccountStatus.Id</code> response in an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a create account request ID string 
    #       requires "car-" followed by from 8 to 32 lowercase letters or digits.</p>
    # @example To get information about a request to create an account
    #   # The following example shows how to request the status about a previous request to create an account in an organization. This operation can be called only by a principal from the organization's master account. In the example, the specified "createAccountRequestId" comes from the response of the original call to "CreateAccount":
    #   params = {
    #     create_account_request_id: "car-exampleaccountcreationrequestid"
    #   }
    #   options = {}
    #   response = client.describe_create_account_status(params, options)
    #   response.to_h #=>
    #   {
    #     create_account_status: {
    #       state: SUCCEEDED,
    #       account_id: "333333333333",
    #       id: "car-exampleaccountcreationrequestid"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     create_account_request_id: "CreateAccountRequestId", # required
    #   }
    #   options = {}
    #   response = client.describe_create_account_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_account_status: {
    #       id: "CreateAccountRequestId",
    #       account_name: "CreateAccountName",
    #       state: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #       requested_timestamp: Time.now,
    #       completed_timestamp: Time.now,
    #       account_id: "AccountId",
    #       gov_cloud_account_id: "AccountId",
    #       failure_reason: "ACCOUNT_LIMIT_EXCEEDED" # One of: ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT", "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"]
    #     }
    #   }
    # @return [Types::DescribeCreateAccountStatusResponse]
    def describe_create_account_status(params = {}, options = {})
      request = build_request(:describe_create_account_status, params)
      request.send_request(options)
    end

    # <p>Returns the contents of the effective policy for specified policy type and account.
    #             The effective policy is the aggregation of any policies of the specified type that the
    #             account inherits, plus any policy of that type that is directly attached to the
    #             account.</p>
    #          <p>This operation applies only to management policies. It does not apply to authorization
    #             policies: service control policies (SCPs) and resource control policies (RCPs).</p>
    #          <p>For more information about policy inheritance, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_inheritance_mgmt.html">Understanding
    #                 management policy inheritance</a> in the
    #             <i>Organizations User Guide</i>.</p>
    #          <p>This operation can be called from any account in the organization.</p>
    # @param [Hash, Types::DescribeEffectivePolicyRequest] params
    # @option params [String] :policy_type
    #   <p>The type of policy that you want information about. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :target_id
    #   <p>When you're signed in as the management account, specify the ID of the account that
    #               you want details about. Specifying an organization root or organizational unit (OU) as
    #               the target is not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_type: "TAG_POLICY" # One of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #     target_id: "PolicyTargetId"
    #   }
    #   options = {}
    #   response = client.describe_effective_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effective_policy: {
    #       policy_content: "PolicyContent",
    #       last_updated_timestamp: Time.now,
    #       target_id: "PolicyTargetId",
    #       policy_type: "TAG_POLICY" # One of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"]
    #     }
    #   }
    # @return [Types::DescribeEffectivePolicyResponse]
    def describe_effective_policy(params = {}, options = {})
      request = build_request(:describe_effective_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a previously requested handshake. The handshake ID comes
    #             from the response to the original <a>InviteAccountToOrganization</a>
    #             operation that generated the handshake.</p>
    #          <p>You can access handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>, or
    #                 <code>CANCELED</code> for only 30 days after they change to that state. They're then
    #             deleted and no longer accessible.</p>
    #          <p>This operation can be called from any account in the organization.</p>
    # @param [Hash, Types::DescribeHandshakeRequest] params
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want information about. You can
    #               get the ID from the original call to <a>InviteAccountToOrganization</a>, or
    #               from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    # @example To get information about a handshake
    #   # The following example shows you how to request details about a handshake. The handshake ID comes either from the original call to "InviteAccountToOrganization", or from a call to "ListHandshakesForAccount" or "ListHandshakesForOrganization":
    #   params = {
    #     handshake_id: "h-examplehandshakeid111"
    #   }
    #   options = {}
    #   response = client.describe_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "h-examplehandshakeid111",
    #       state: OPEN,
    #       resources: [
    #         {
    #           type: ORGANIZATION,
    #           value: "o-exampleorgid",
    #           resources: [
    #             {
    #               type: MASTER_EMAIL,
    #               value: "bill@example.com"
    #             },
    #             {
    #               type: MASTER_NAME,
    #               value: "Master Account"
    #             }
    #           ]
    #         },
    #         {
    #           type: ACCOUNT,
    #           value: "333333333333"
    #         }
    #       ],
    #       parties: [
    #         {
    #           type: ORGANIZATION,
    #           id: "o-exampleorgid"
    #         },
    #         {
    #           type: ACCOUNT,
    #           id: "333333333333"
    #         }
    #       ],
    #       action: INVITE,
    #       requested_timestamp: Time.parse("2016-11-30T17:24:58.046Z"),
    #       expiration_timestamp: Time.parse("2016-11-30T17:24:58.046Z"),
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     handshake_id: "HandshakeId", # required
    #   }
    #   options = {}
    #   response = client.describe_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "HandshakeId",
    #       arn: "HandshakeArn",
    #       parties: [
    #         {
    #           id: "HandshakePartyId", # required
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #         }
    #       ],
    #       state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #       requested_timestamp: Time.now,
    #       expiration_timestamp: Time.now,
    #       action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       resources: [
    #         {
    #           value: "HandshakeResourceValue",
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #           resources: {
    #             # recursive HandshakeResources
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeHandshakeResponse]
    def describe_handshake(params = {}, options = {})
      request = build_request(:describe_handshake, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the organization that the user's account belongs
    #             to.</p>
    #          <p>This operation can be called from any account in the organization.</p>
    #          <note>
    #             <p>Even if a policy type is shown as available in the organization, you can disable
    #                 it separately at the root level with <a>DisablePolicyType</a>. Use <a>ListRoots</a> to see the status of policy types for a specified
    #                 root.</p>
    #          </note>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To get information about an organization
    #   # The following example shows how to request information about the current user's organization:/n/n
    #   params = {}
    #   options = {}
    #   response = client.describe_organization(params, options)
    #   response.to_h #=>
    #   {
    #     organization: {
    #       master_account_arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111",
    #       master_account_email: "bill@example.com",
    #       id: "o-exampleorgid",
    #       feature_set: ALL,
    #       arn: "arn:aws:organizations::111111111111:organization/o-exampleorgid",
    #       available_policy_types: [
    #         {
    #           status: ENABLED,
    #           type: SERVICE_CONTROL_POLICY
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization: {
    #       id: "OrganizationId",
    #       arn: "OrganizationArn",
    #       feature_set: "ALL" # One of: ["ALL", "CONSOLIDATED_BILLING"],
    #       master_account_arn: "AccountArn",
    #       master_account_id: "AccountId",
    #       master_account_email: "Email",
    #       available_policy_types: [
    #         {
    #           type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #           status: "ENABLED" # One of: ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeOrganizationResponse]
    def describe_organization(params = {}, options = {})
      request = build_request(:describe_organization, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an organizational unit (OU).</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::DescribeOrganizationalUnitRequest] params
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want details about. You
    #               can get the ID from the <a>ListOrganizationalUnitsForParent</a>
    #               operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires 
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters 
    #       or digits.</p>
    # @example To get information about an organizational unit
    #   # The following example shows how to request details about an OU:
    #   params = {
    #     organizational_unit_id: "ou-examplerootid111-exampleouid111"
    #   }
    #   options = {}
    #   response = client.describe_organizational_unit(params, options)
    #   response.to_h #=>
    #   {
    #     organizational_unit: {
    #       name: "Accounting Group",
    #       arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111",
    #       id: "ou-examplerootid111-exampleouid111"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #   }
    #   options = {}
    #   response = client.describe_organizational_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organizational_unit: {
    #       id: "OrganizationalUnitId",
    #       arn: "OrganizationalUnitArn",
    #       name: "OrganizationalUnitName"
    #     }
    #   }
    # @return [Types::DescribeOrganizationalUnitResponse]
    def describe_organizational_unit(params = {}, options = {})
      request = build_request(:describe_organizational_unit, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a policy.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::DescribePolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want details about. You can get the
    #               ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    # @example To get information about a policy
    #   # The following example shows how to request information about a policy:/n/n
    #   params = {
    #     policy_id: "p-examplepolicyid111"
    #   }
    #   options = {}
    #   response = client.describe_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: {
    #       content: "{\\n  \\\"Version\\\": \\\"2012-10-17\\\",\\n  \\\"Statement\\\": [\\n    {\\n      \\\"Effect\\\": \\\"Allow\\\",\\n      \\\"Action\\\": \\\"*\\\",\\n      \\\"Resource\\\": \\\"*\\\"\\n    }\\n  ]\\n}",
    #       policy_summary: {
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
    #         type: SERVICE_CONTROL_POLICY,
    #         id: "p-examplepolicyid111",
    #         aws_managed: false,
    #         name: "AllowAllS3Actions",
    #         description: "Enables admins to delegate S3 permissions"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #   }
    #   options = {}
    #   response = client.describe_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_summary: {
    #         id: "PolicyId",
    #         arn: "PolicyArn",
    #         name: "PolicyName",
    #         description: "PolicyDescription",
    #         type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #         aws_managed: false
    #       },
    #       content: "PolicyContent"
    #     }
    #   }
    # @return [Types::DescribePolicyResponse]
    def describe_policy(params = {}, options = {})
      request = build_request(:describe_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a resource policy.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       resource_policy_summary: {
    #         id: "ResourcePolicyId",
    #         arn: "ResourcePolicyArn"
    #       },
    #       content: "ResourcePolicyContent"
    #     }
    #   }
    # @return [Types::DescribeResourcePolicyResponse]
    def describe_resource_policy(params = {}, options = {})
      request = build_request(:describe_resource_policy, params)
      request.send_request(options)
    end

    # <p>Detaches a policy from a target root, organizational unit (OU), or account.</p>
    #          <important>
    #             <p>If the policy being detached is a service control policy (SCP), the changes to
    #                 permissions for Identity and Access Management (IAM) users and roles in affected accounts are
    #                 immediate.</p>
    #          </important>
    #          <p>Every root, OU, and account must have at least one SCP attached. If you want to
    #             replace the default <code>FullAWSAccess</code> policy with an SCP that limits the
    #             permissions that can be delegated, you must attach the replacement SCP before you can
    #             remove the default SCP. This is the authorization strategy of an "<a href="https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist">allow list</a>". If you instead attach a second SCP and
    #             leave the <code>FullAWSAccess</code> SCP still attached, and specify <code>"Effect":
    #                 "Deny"</code> in the second SCP to override the <code>"Effect": "Allow"</code> in
    #             the <code>FullAWSAccess</code> policy (or any other attached SCP), you're using the
    #             authorization strategy of a "<a href="https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist">deny list</a>".</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::DetachPolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy you want to detach. You can get the ID from
    #               the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    # @option params [String] :target_id
    #   <p>The unique identifier (ID) of the root, OU, or account that you want to detach the
    #               policy from. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32 
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @example To detach a policy from a root, OU, or account
    #   # The following example shows how to detach a policy from an OU:/n/n
    #   params = {
    #     target_id: "ou-examplerootid111-exampleouid111",
    #     policy_id: "p-examplepolicyid111"
    #   }
    #   options = {}
    #   response = client.detach_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     target_id: "PolicyTargetId", # required
    #   }
    #   options = {}
    #   response = client.detach_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def detach_policy(params = {}, options = {})
      request = build_request(:detach_policy, params)
      request.send_request(options)
    end

    # <p>Disables the integration of an Amazon Web Services service (the service that is specified by
    #                 <code>ServicePrincipal</code>) with Organizations. When you disable integration, the
    #             specified service no longer can create a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in
    #                 <i>new</i> accounts in your organization. This means the service can't
    #             perform operations on your behalf on any new accounts in your organization. The service
    #             can still perform operations in older accounts until the service completes its clean-up
    #             from Organizations.</p>
    #          <important>
    #             <p>We <b>
    #                   <i>strongly recommend</i>
    #                </b> that
    #                 you don't use this command to disable integration between Organizations and the specified
    #                 Amazon Web Services service. Instead, use the console or commands that are provided by the
    #                 specified service. This lets the trusted service perform any required initialization
    #                 when enabling trusted access, such as creating any required resources and any
    #                 required clean up of resources when disabling trusted access. </p>
    #             <p>For information about how to disable trusted service access to your organization
    #                 using the trusted service, see the <b>Learn more</b> link
    #                 under the <b>Supports Trusted Access</b> column at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html">Amazon Web Services services that you can use with Organizations</a>. on this page.</p>
    #             <p>If you disable access by using this command, it causes the following actions to
    #                 occur:</p>
    #             <ul>
    #                <li>
    #                   <p>The service can no longer create a service-linked role in the accounts in
    #                         your organization. This means that the service can't perform operations on
    #                         your behalf on any new accounts in your organization. The service can still
    #                         perform operations in older accounts until the service completes its
    #                         clean-up from Organizations. </p>
    #                </li>
    #                <li>
    #                   <p>The service can no longer perform tasks in the member accounts in the
    #                         organization, unless those operations are explicitly permitted by the IAM
    #                         policies that are attached to your roles. This includes any data aggregation
    #                         from the member accounts to the management account, or to a delegated
    #                         administrator account, where relevant.</p>
    #                </li>
    #                <li>
    #                   <p>Some services detect this and clean up any remaining data or resources
    #                         related to the integration, while other services stop accessing the
    #                         organization but leave any historical data and configuration in place to
    #                         support a possible re-enabling of the integration.</p>
    #                </li>
    #             </ul>
    #             <p>Using the other service's console or commands to disable the integration ensures
    #                 that the other service is aware that it can clean up any resources that are required
    #                 only for the integration. How the service cleans up its resources in the
    #                 organization's accounts depends on that service. For more information, see the
    #                 documentation for the other Amazon Web Services service. </p>
    #          </important>
    #          <p>After you perform the <code>DisableAWSServiceAccess</code> operation, the specified
    #             service can no longer perform operations in your organization's accounts </p>
    #          <p>For more information about integrating other services with Organizations, including the
    #             list of services that work with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Using Organizations with other Amazon Web Services
    #                 services</a> in the <i>Organizations User Guide</i>.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::DisableAWSServiceAccessRequest] params
    # @option params [String] :service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to disable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_principal: "ServicePrincipal", # required
    #   }
    #   options = {}
    #   response = client.disable_aws_service_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_aws_service_access(params = {}, options = {})
      request = build_request(:disable_aws_service_access, params)
      request.send_request(options)
    end

    # <p>Disables an organizational policy type in a root. A policy of a certain type can be
    #             attached to entities in a root only if that type is enabled in the root. After you
    #             perform this operation, you no longer can attach policies of the specified type to that
    #             root or to any organizational unit (OU) or account in that root. You can undo this by
    #             using the <a>EnablePolicyType</a> operation.</p>
    #          <p>This is an asynchronous request that Amazon Web Services performs in the background. If you disable
    #             a policy type for a root, it still appears enabled for the organization if <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features</a> are enabled for the organization. Amazon Web Services recommends that you
    #             first use <a>ListRoots</a> to see the status of policy types for a specified
    #             root, and then use this operation.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    #          <p> To view the status of available policy types in the organization, use <a>ListRoots</a>.</p>
    # @param [Hash, Types::DisablePolicyTypeRequest] params
    # @option params [String] :root_id
    #   <p>The unique identifier (ID) of the root in which you want to disable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by 
    #       from 4 to 32 lowercase letters or digits.</p>
    # @option params [String] :policy_type
    #   <p>The policy type that you want to disable in this root. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @example To disable a policy type in a root
    #   # The following example shows how to disable the service control policy (SCP) policy type in a root. The response shows that the PolicyTypes response element no longer includes SERVICE_CONTROL_POLICY:/n/n
    #   params = {
    #     root_id: "r-examplerootid111",
    #     policy_type: SERVICE_CONTROL_POLICY
    #   }
    #   options = {}
    #   response = client.disable_policy_type(params, options)
    #   response.to_h #=>
    #   {
    #     root: {
    #       policy_types: [
    #       ],
    #       name: "Root",
    #       id: "r-examplerootid111",
    #       arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     root_id: "RootId", # required
    #     policy_type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #   }
    #   options = {}
    #   response = client.disable_policy_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     root: {
    #       id: "RootId",
    #       arn: "RootArn",
    #       name: "RootName",
    #       policy_types: [
    #         {
    #           type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #           status: "ENABLED" # One of: ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DisablePolicyTypeResponse]
    def disable_policy_type(params = {}, options = {})
      request = build_request(:disable_policy_type, params)
      request.send_request(options)
    end

    # <p>Provides an Amazon Web Services service (the service that is specified by
    #                 <code>ServicePrincipal</code>) with permissions to view the structure of an
    #             organization, create a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in
    #             all the accounts in the organization, and allow the service to perform operations on
    #             behalf of the organization and its accounts. Establishing these permissions can be a
    #             first step in enabling the integration of an Amazon Web Services service with Organizations.</p>
    #          <important>
    #             <p>We recommend that you enable integration between Organizations and the specified Amazon Web Services
    #                 service by using the console or commands that are provided by the specified service.
    #                 Doing so ensures that the service is aware that it can create the resources that are
    #                 required for the integration. How the service creates those resources in the
    #                 organization's accounts depends on that service. For more information, see the
    #                 documentation for the other Amazon Web Services service.</p>
    #          </important>
    #          <p>For more information about enabling services to integrate with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Using
    #                 Organizations with other Amazon Web Services services</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::EnableAWSServiceAccessRequest] params
    # @option params [String] :service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to enable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_principal: "ServicePrincipal", # required
    #   }
    #   options = {}
    #   response = client.enable_aws_service_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_aws_service_access(params = {}, options = {})
      request = build_request(:enable_aws_service_access, params)
      request.send_request(options)
    end

    # <p>Enables all features in an organization. This enables the use of organization policies
    #             that can restrict the services and actions that can be called in each account. Until you
    #             enable all features, you have access only to consolidated billing, and you can't use any
    #             of the advanced account administration features that Organizations supports. For more
    #             information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling all features in your organization</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #          <important>
    #             <p>This operation is required only for organizations that were created explicitly
    #                 with only the consolidated billing features enabled. Calling this operation sends a
    #                 handshake to every invited account in the organization. The feature set change can
    #                 be finalized and the additional features enabled only after all administrators in
    #                 the invited accounts approve the change by accepting the handshake.</p>
    #          </important>
    #          <p>After you enable all features, you can separately enable or disable individual policy
    #             types in a root using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. To see the status of policy types in a root, use
    #                 <a>ListRoots</a>.</p>
    #          <p>After all invited member accounts accept the handshake, you finalize the feature set
    #             change by accepting the handshake that contains <code>"Action":
    #                 "ENABLE_ALL_FEATURES"</code>. This completes the change.</p>
    #          <p>After you enable all features in your organization, the management account in the
    #             organization can apply policies on all member accounts. These policies can restrict what
    #             users and even administrators in those accounts can do. The management account can apply
    #             policies that prevent accounts from leaving the organization. Ensure that your account
    #             administrators are aware of this.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::EnableAllFeaturesRequest] params
    # @example To enable all features in an organization
    #   # This example shows the administrator asking all the invited accounts in the organization to approve enabling all features in the organization. AWS Organizations sends an email to the address that is registered with every invited member account asking the owner to approve the change by accepting the handshake that is sent. After all invited member accounts accept the handshake, the organization administrator can finalize the change to enable all features, and those with appropriate permissions can create policies and apply them to roots, OUs, and accounts:/n/n
    #   params = {}
    #   options = {}
    #   response = client.enable_all_features(params, options)
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       action: ENABLE_ALL_FEATURES,
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/enable_all_features/h-examplehandshakeid111",
    #       expiration_timestamp: Time.parse("2017-02-28T09:35:40.05Z"),
    #       id: "h-examplehandshakeid111",
    #       parties: [
    #         {
    #           id: "o-exampleorgid",
    #           type: ORGANIZATION
    #         }
    #       ],
    #       requested_timestamp: Time.parse("2017-02-13T09:35:40.05Z"),
    #       resources: [
    #         {
    #           type: ORGANIZATION,
    #           value: "o-exampleorgid"
    #         }
    #       ],
    #       state: REQUESTED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_all_features(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "HandshakeId",
    #       arn: "HandshakeArn",
    #       parties: [
    #         {
    #           id: "HandshakePartyId", # required
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #         }
    #       ],
    #       state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #       requested_timestamp: Time.now,
    #       expiration_timestamp: Time.now,
    #       action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       resources: [
    #         {
    #           value: "HandshakeResourceValue",
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #           resources: {
    #             # recursive HandshakeResources
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::EnableAllFeaturesResponse]
    def enable_all_features(params = {}, options = {})
      request = build_request(:enable_all_features, params)
      request.send_request(options)
    end

    # <p>Enables a policy type in a root. After you enable a policy type in a root, you can
    #             attach policies of that type to the root, any organizational unit (OU), or account in
    #             that root. You can undo this by using the <a>DisablePolicyType</a>
    #             operation.</p>
    #          <p>This is an asynchronous request that Amazon Web Services performs in the background. Amazon Web Services
    #             recommends that you first use <a>ListRoots</a> to see the status of policy
    #             types for a specified root, and then use this operation.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    #          <p>You can enable a policy type in a root only if that policy type is available in the
    #             organization. To view the status of available policy types in the organization, use
    #                 <a>ListRoots</a>.</p>
    # @param [Hash, Types::EnablePolicyTypeRequest] params
    # @option params [String] :root_id
    #   <p>The unique identifier (ID) of the root in which you want to enable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by 
    #       from 4 to 32 lowercase letters or digits.</p>
    # @option params [String] :policy_type
    #   <p>The policy type that you want to enable. You can specify one of the following
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @example To enable a policy type in a root
    #   # The following example shows how to enable the service control policy (SCP) policy type in a root. The output shows a root object with a PolicyTypes response element showing that SCPs are now enabled:/n/n
    #   params = {
    #     root_id: "r-examplerootid111",
    #     policy_type: SERVICE_CONTROL_POLICY
    #   }
    #   options = {}
    #   response = client.enable_policy_type(params, options)
    #   response.to_h #=>
    #   {
    #     root: {
    #       policy_types: [
    #         {
    #           status: ENABLED,
    #           type: SERVICE_CONTROL_POLICY
    #         }
    #       ],
    #       name: "Root",
    #       id: "r-examplerootid111",
    #       arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     root_id: "RootId", # required
    #     policy_type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #   }
    #   options = {}
    #   response = client.enable_policy_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     root: {
    #       id: "RootId",
    #       arn: "RootArn",
    #       name: "RootName",
    #       policy_types: [
    #         {
    #           type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #           status: "ENABLED" # One of: ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::EnablePolicyTypeResponse]
    def enable_policy_type(params = {}, options = {})
      request = build_request(:enable_policy_type, params)
      request.send_request(options)
    end

    # <p>Sends an invitation to another account to join your organization as a member account.
    #             Organizations sends email on your behalf to the email address that is associated with the
    #             other account's owner. The invitation is implemented as a <a>Handshake</a>
    #             whose details are in the response.</p>
    #          <important>
    #             <p>If you receive an exception that indicates that you exceeded your account limits
    #                 for the organization or that the operation failed because your organization is still
    #                 initializing, wait one hour and then try again. If the error persists after an hour,
    #                 contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services
    #                 Support</a>.</p>
    #          </important>
    #          <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::InviteAccountToOrganizationRequest] params
    # @option params [Types::HandshakeParty] :target
    #   <p>The identifier (ID) of the Amazon Web Services account that you want to invite to join your
    #               organization. This is a JSON object that contains the following elements:</p>
    #            <p>
    #               <code>{ "Type": "ACCOUNT", "Id": "<<i>
    #                     <b>account id
    #                           number</b>
    #                  </i>>" }</code>
    #            </p>
    #            <p>If you use the CLI, you can submit this as a single string, similar to the following
    #               example:</p>
    #            <p>
    #               <code>--target Id=123456789012,Type=ACCOUNT</code>
    #            </p>
    #            <p>If you specify <code>"Type": "ACCOUNT"</code>, you must provide the Amazon Web Services account ID
    #               number as the <code>Id</code>. If you specify <code>"Type": "EMAIL"</code>, you must
    #               specify the email address that is associated with the account.</p>
    #            <p>
    #               <code>--target Id=diego@example.com,Type=EMAIL</code>
    #            </p>
    # @option params [String] :notes
    #   <p>Additional information that you want to include in the generated email to the
    #               recipient account owner.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the account when it becomes a member of the
    #               organization. For each tag in the list, you must specify both a tag key and a value. You
    #               can set the value to an empty string, but you can't set it to <code>null</code>. For
    #               more information about tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations resources</a> in the
    #               Organizations User Guide.</p>
    #            <important>
    #               <p>Any tags in the request are checked for compliance with any applicable tag
    #                   policies when the request is made. The request is rejected if the tags in the
    #                   request don't match the requirements of the policy at that time. Tag policy
    #                   compliance is <i>
    #                     <b>not</b>
    #                  </i> checked
    #                   again when the invitation is accepted and the tags are actually attached to the
    #                   account. That means that if the tag policy changes between the invitation and the
    #                   acceptance, then that tags could potentially be non-compliant.</p>
    #            </important>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the allowed number of tags
    #                   for an account, then the entire request fails and invitations are not sent.</p>
    #            </note>
    # @example To invite an account to join an organization
    #   # The following example shows the admin of the master account owned by bill@example.com inviting the account owned by juan@example.com to join an organization.
    #   params = {
    #     notes: "This is a request for Juan's account to join Bill's organization",
    #     target: {
    #       type: EMAIL,
    #       id: "juan@example.com"
    #     }
    #   }
    #   options = {}
    #   response = client.invite_account_to_organization(params, options)
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       action: INVITE,
    #       arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
    #       expiration_timestamp: Time.parse("2017-02-16T09:36:05.02Z"),
    #       id: "h-examplehandshakeid111",
    #       parties: [
    #         {
    #           id: "o-exampleorgid",
    #           type: ORGANIZATION
    #         },
    #         {
    #           id: "juan@example.com",
    #           type: EMAIL
    #         }
    #       ],
    #       requested_timestamp: Time.parse("2017-02-01T09:36:05.02Z"),
    #       resources: [
    #         {
    #           resources: [
    #             {
    #               type: MASTER_EMAIL,
    #               value: "bill@amazon.com"
    #             },
    #             {
    #               type: MASTER_NAME,
    #               value: "Org Master Account"
    #             },
    #             {
    #               type: ORGANIZATION_FEATURE_SET,
    #               value: "FULL"
    #             }
    #           ],
    #           type: ORGANIZATION,
    #           value: "o-exampleorgid"
    #         },
    #         {
    #           type: EMAIL,
    #           value: "juan@example.com"
    #         }
    #       ],
    #       state: OPEN
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target: { # required
    #       id: "HandshakePartyId", # required
    #       type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #     },
    #     notes: "HandshakeNotes",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.invite_account_to_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshake: {
    #       id: "HandshakeId",
    #       arn: "HandshakeArn",
    #       parties: [
    #         {
    #           id: "HandshakePartyId", # required
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #         }
    #       ],
    #       state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #       requested_timestamp: Time.now,
    #       expiration_timestamp: Time.now,
    #       action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       resources: [
    #         {
    #           value: "HandshakeResourceValue",
    #           type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #           resources: {
    #             # recursive HandshakeResources
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::InviteAccountToOrganizationResponse]
    def invite_account_to_organization(params = {}, options = {})
      request = build_request(:invite_account_to_organization, params)
      request.send_request(options)
    end

    # <p>Removes a member account from its parent organization. This version of the operation
    #             is performed by the account that wants to leave. To remove a member account as a user in
    #             the management account, use <a>RemoveAccountFromOrganization</a>
    #             instead.</p>
    #          <p>This operation can be called only from a member account in the organization.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>The management account in an organization with all features enabled can
    #                         set service control policies (SCPs) that can restrict what administrators of
    #                         member accounts can do. This includes preventing them from successfully
    #                         calling <code>LeaveOrganization</code> and leaving the organization.</p>
    #                </li>
    #                <li>
    #                   <p>You can leave an organization as a member account only if the account is
    #                         configured with the information required to operate as a standalone account.
    #                         When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required of standalone accounts is
    #                             <i>not</i> automatically collected. For each account that
    #                         you want to make standalone, you must perform the following steps. If any of
    #                         the steps are already completed for this account, that step doesn't
    #                         appear.</p>
    #                   <ul>
    #                      <li>
    #                         <p>Choose a support plan</p>
    #                      </li>
    #                      <li>
    #                         <p>Provide and verify the required contact information</p>
    #                      </li>
    #                      <li>
    #                         <p>Provide a current payment method</p>
    #                      </li>
    #                   </ul>
    #                   <p>Amazon Web Services uses the payment method to charge for any billable (not free tier)
    #                         Amazon Web Services activity that occurs while the account isn't attached to an
    #                         organization. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_account-before-remove.html">Considerations before removing an account from an organization</a>
    #                         in the <i>Organizations User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>The account that you want to leave must not be a delegated administrator
    #                         account for any Amazon Web Services service enabled for your organization. If the account
    #                         is a delegated administrator, you must first change the delegated
    #                         administrator account to another account that is remaining in the
    #                         organization.</p>
    #                </li>
    #                <li>
    #                   <p>After the account leaves the organization, all tags that were attached to
    #                         the account object in the organization are deleted. Amazon Web Services accounts outside
    #                         of an organization do not support tags.</p>
    #                </li>
    #                <li>
    #                   <p>A newly created account has a waiting period before it can be removed from
    #                         its organization. You must wait until at least seven days after the account
    #                         was created. Invited accounts aren't subject to this waiting period.</p>
    #                </li>
    #                <li>
    #                   <p>If you are using an organization principal to call
    #                             <code>LeaveOrganization</code> across multiple accounts, you can only do
    #                         this up to 5 accounts per second in a single organization.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To leave an organization as a member account
    #   # TThe following example shows how to remove your member account from an organization:
    #   params = {}
    #   options = {}
    #   response = client.leave_organization(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.leave_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def leave_organization(params = {}, options = {})
      request = build_request(:leave_organization, params)
      request.send_request(options)
    end

    # <p>Returns a list of the Amazon Web Services services that you enabled to integrate with your
    #             organization. After a service on this list creates the resources that it requires for
    #             the integration, it can perform operations on your organization and its accounts.</p>
    #          <p>For more information about integrating other services with Organizations, including the
    #             list of services that currently work with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Using Organizations with other Amazon Web Services
    #                 services</a> in the <i>Organizations User Guide</i>.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListAWSServiceAccessForOrganizationRequest] params
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_aws_service_access_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enabled_service_principals: [
    #       {
    #         service_principal: "ServicePrincipal",
    #         date_enabled: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAWSServiceAccessForOrganizationResponse]
    def list_aws_service_access_for_organization(params = {}, options = {})
      request = build_request(:list_aws_service_access_for_organization, params)
      request.send_request(options)
    end

    # <p>Lists all the accounts in the organization. To request only the accounts in a
    #             specified root or organizational unit (OU), use the <a>ListAccountsForParent</a> operation instead.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListAccountsRequest] params
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         id: "AccountId",
    #         arn: "AccountArn",
    #         email: "Email",
    #         name: "AccountName",
    #         status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"],
    #         state: "PENDING_ACTIVATION" # One of: ["PENDING_ACTIVATION", "ACTIVE", "SUSPENDED", "PENDING_CLOSURE", "CLOSED"],
    #         joined_method: "INVITED" # One of: ["INVITED", "CREATED"],
    #         joined_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccountsResponse]
    def list_accounts(params = {}, options = {})
      request = build_request(:list_accounts, params)
      request.send_request(options)
    end

    # <p>Lists the accounts in an organization that are contained by the specified target root
    #             or organizational unit (OU). If you specify the root, you get a list of all the accounts
    #             that aren't in any OU. If you specify an OU, you get a list of all the accounts in only
    #             that OU and not in any child OUs. To get a list of all accounts in the organization, use
    #             the <a>ListAccounts</a> operation.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListAccountsForParentRequest] params
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) for the parent root or organization unit (OU) whose
    #               accounts you want to list.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of all of the accounts in a root or OU
    #   # The following example shows how to request a list of the accounts in an OU:/n/n
    #   params = {
    #     parent_id: "ou-examplerootid111-exampleouid111"
    #   }
    #   options = {}
    #   response = client.list_accounts_for_parent(params, options)
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333",
    #         joined_method: INVITED,
    #         joined_timestamp: Time.parse(1481835795.536),
    #         id: "333333333333",
    #         name: "Development Account",
    #         email: "juan@example.com",
    #         status: ACTIVE
    #       },
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/444444444444",
    #         joined_method: INVITED,
    #         joined_timestamp: Time.parse(1481835812.143),
    #         id: "444444444444",
    #         name: "Test Account",
    #         email: "anika@example.com",
    #         status: ACTIVE
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     parent_id: "ParentId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_accounts_for_parent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         id: "AccountId",
    #         arn: "AccountArn",
    #         email: "Email",
    #         name: "AccountName",
    #         status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"],
    #         state: "PENDING_ACTIVATION" # One of: ["PENDING_ACTIVATION", "ACTIVE", "SUSPENDED", "PENDING_CLOSURE", "CLOSED"],
    #         joined_method: "INVITED" # One of: ["INVITED", "CREATED"],
    #         joined_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccountsForParentResponse]
    def list_accounts_for_parent(params = {}, options = {})
      request = build_request(:list_accounts_for_parent, params)
      request.send_request(options)
    end

    # <p>Lists all the accounts in an organization that have invalid effective policies. An
    #                 <i>invalid effective policy</i> is an <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_effective.html">effective
    #                 policy</a> that fails validation checks, resulting in the effective policy not
    #             being fully enforced on all the intended accounts within an organization.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListAccountsWithInvalidEffectivePolicyRequest] params
    # @option params [String] :policy_type
    #   <p>The type of policy that you want information about. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To list all accounts in an organization with invalid effective policy
    #   # The following example shows you how to request a list of the accounts in an organization having invalid effective policy for a policy type:
    #   params = {
    #     policy_type: BACKUP_POLICY
    #   }
    #   options = {}
    #   response = client.list_accounts_with_invalid_effective_policy(params, options)
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         id: "111111111111",
    #         name: "Management Account",
    #         email: "bill@example.com"
    #       },
    #       {
    #         id: "222222222222",
    #         name: "Developer Account",
    #         email: "alice@example.com"
    #       },
    #       {
    #         id: "333333333333",
    #         name: "Test Account",
    #         email: "juan@example.com"
    #       },
    #       {
    #         id: "444444444444",
    #         name: "Production Account",
    #         email: "anika@example.com"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_type: "TAG_POLICY" # One of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_accounts_with_invalid_effective_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         id: "AccountId",
    #         arn: "AccountArn",
    #         email: "Email",
    #         name: "AccountName",
    #         status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"],
    #         state: "PENDING_ACTIVATION" # One of: ["PENDING_ACTIVATION", "ACTIVE", "SUSPENDED", "PENDING_CLOSURE", "CLOSED"],
    #         joined_method: "INVITED" # One of: ["INVITED", "CREATED"],
    #         joined_timestamp: Time.now
    #       }
    #     ],
    #     policy_type: "TAG_POLICY" # One of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccountsWithInvalidEffectivePolicyResponse]
    def list_accounts_with_invalid_effective_policy(params = {}, options = {})
      request = build_request(:list_accounts_with_invalid_effective_policy, params)
      request.send_request(options)
    end

    # <p>Lists all of the organizational units (OUs) or accounts that are contained in the
    #             specified parent OU or root. This operation, along with <a>ListParents</a>
    #             enables you to traverse the tree structure that makes up this root.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListChildrenRequest] params
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) for the parent root or OU whose children you want to
    #               list.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @option params [String] :child_type
    #   <p>Filters the output to include only the specified child type.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of all of the child accounts and OUs in a parent root or OU
    #   # The following example shows how to request a list of the child OUs in a parent root or OU:/n/n
    #   params = {
    #     child_type: ORGANIZATIONAL_UNIT,
    #     parent_id: "ou-examplerootid111-exampleouid111"
    #   }
    #   options = {}
    #   response = client.list_children(params, options)
    #   response.to_h #=>
    #   {
    #     children: [
    #       {
    #         id: "ou-examplerootid111-exampleouid111",
    #         type: ORGANIZATIONAL_UNIT
    #       },
    #       {
    #         id: "ou-examplerootid111-exampleouid222",
    #         type: ORGANIZATIONAL_UNIT
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     parent_id: "ParentId", # required
    #     child_type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATIONAL_UNIT"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_children(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     children: [
    #       {
    #         id: "ChildId",
    #         type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATIONAL_UNIT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChildrenResponse]
    def list_children(params = {}, options = {})
      request = build_request(:list_children, params)
      request.send_request(options)
    end

    # <p>Lists the account creation requests that match the specified status that is currently
    #             being tracked for the organization.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListCreateAccountStatusRequest] params
    # @option params [Array<String>] :states
    #   <p>A list of one or more states that you want included in the response. If this parameter
    #               isn't present, all requests are included in the response.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To get a list of all account creation requests made in the organization
    #   # The following example shows a user requesting a list of only the in-progress account creation requests made for the current organization:
    #   params = {
    #     states: [
    #       IN_PROGRESS
    #     ]
    #   }
    #   options = {}
    #   response = client.list_create_account_status(params, options)
    #   response.to_h #=>
    #   {
    #     create_account_statuses: [
    #       {
    #         state: IN_PROGRESS,
    #         id: "car-exampleaccountcreationrequestid2",
    #         requested_timestamp: Time.parse("2017-01-15T13:45:23.01Z"),
    #         account_name: "Production Account"
    #       }
    #     ]
    #   }
    # @example To get a list of completed account creation requests made in the organization
    #   # The following example shows a user requesting a list of only the completed account creation requests made for the current organization:
    #   params = {
    #     states: [
    #       SUCCEEDED
    #     ]
    #   }
    #   options = {}
    #   response = client.list_create_account_status(params, options)
    #   response.to_h #=>
    #   {
    #     create_account_statuses: [
    #       {
    #         id: "car-exampleaccountcreationrequestid1",
    #         account_id: "444444444444",
    #         account_name: "Developer Test Account",
    #         requested_timestamp: Time.parse("2017-01-15T13:45:23.01Z"),
    #         state: SUCCEEDED,
    #         completed_timestamp: Time.parse("2017-01-15T13:45:23.6Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     states: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_create_account_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_account_statuses: [
    #       {
    #         id: "CreateAccountRequestId",
    #         account_name: "CreateAccountName",
    #         state: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #         requested_timestamp: Time.now,
    #         completed_timestamp: Time.now,
    #         account_id: "AccountId",
    #         gov_cloud_account_id: "AccountId",
    #         failure_reason: "ACCOUNT_LIMIT_EXCEEDED" # One of: ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT", "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCreateAccountStatusResponse]
    def list_create_account_status(params = {}, options = {})
      request = build_request(:list_create_account_status, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Web Services accounts that are designated as delegated administrators in this
    #             organization.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListDelegatedAdministratorsRequest] params
    # @option params [String] :service_principal
    #   <p>Specifies a service principal name. If specified, then the operation lists the
    #               delegated administrators only for the specified service.</p>
    #            <p>If you don't specify a service principal, the operation lists all delegated
    #               administrators for all services in your organization.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_principal: "ServicePrincipal",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_delegated_administrators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegated_administrators: [
    #       {
    #         id: "AccountId",
    #         arn: "AccountArn",
    #         email: "Email",
    #         name: "AccountName",
    #         status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"],
    #         joined_method: "INVITED" # One of: ["INVITED", "CREATED"],
    #         joined_timestamp: Time.now,
    #         delegation_enabled_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDelegatedAdministratorsResponse]
    def list_delegated_administrators(params = {}, options = {})
      request = build_request(:list_delegated_administrators, params)
      request.send_request(options)
    end

    # <p>List the Amazon Web Services services for which the specified account is a delegated
    #             administrator.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListDelegatedServicesForAccountRequest] params
    # @option params [String] :account_id
    #   <p>The account ID number of a delegated administrator account in the organization.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_delegated_services_for_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegated_services: [
    #       {
    #         service_principal: "ServicePrincipal",
    #         delegation_enabled_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDelegatedServicesForAccountResponse]
    def list_delegated_services_for_account(params = {}, options = {})
      request = build_request(:list_delegated_services_for_account, params)
      request.send_request(options)
    end

    # <p>Lists all the validation errors on an <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_effective.html">effective
    #                 policy</a> for a specified account and policy type.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListEffectivePolicyValidationErrorsRequest] params
    # @option params [String] :account_id
    #   <p>The ID of the account that you want details about. Specifying an organization root or
    #               organizational unit (OU) as the target is not supported.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy that you want information about. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     policy_type: "TAG_POLICY" # One of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_effective_policy_validation_errors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId",
    #     policy_type: "TAG_POLICY" # One of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #     path: "Path",
    #     evaluation_timestamp: Time.now,
    #     next_token: "NextToken",
    #     effective_policy_validation_errors: [
    #       {
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage",
    #         path_to_error: "PathToError",
    #         contributing_policies: ["PolicyId"]
    #       }
    #     ]
    #   }
    # @return [Types::ListEffectivePolicyValidationErrorsResponse]
    def list_effective_policy_validation_errors(params = {}, options = {})
      request = build_request(:list_effective_policy_validation_errors, params)
      request.send_request(options)
    end

    # <p>Lists the current handshakes that are associated with the account of the requesting
    #             user.</p>
    #          <p>Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>,
    #                 <code>CANCELED</code>, or <code>EXPIRED</code> appear in the results of this API for
    #             only 30 days after changing to that state. After that, they're deleted and no longer
    #             accessible.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called from any account in the organization.</p>
    # @param [Hash, Types::ListHandshakesForAccountRequest] params
    # @option params [Types::HandshakeFilter] :filter
    #   <p>Filters the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE_ALL_FEATURES</code>, or
    #                   <code>APPROVE_ALL_FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE_ALL_FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify <code>ParentHandshakeId</code> to see only the
    #               handshakes that were generated by that parent request.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of the handshakes sent to an account
    #   # The following example shows you how to get a list of handshakes that are associated with the account of the credentials used to call the operation:
    #   params = {}
    #   options = {}
    #   response = client.list_handshakes_for_account(params, options)
    #   response.to_h #=>
    #   {
    #     handshakes: [
    #       {
    #         action: INVITE,
    #         arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
    #         expiration_timestamp: Time.parse("2017-01-28T14:35:23.3Z"),
    #         id: "h-examplehandshakeid111",
    #         parties: [
    #           {
    #             id: "o-exampleorgid",
    #             type: ORGANIZATION
    #           },
    #           {
    #             id: "juan@example.com",
    #             type: EMAIL
    #           }
    #         ],
    #         requested_timestamp: Time.parse("2017-01-13T14:35:23.3Z"),
    #         resources: [
    #           {
    #             resources: [
    #               {
    #                 type: MASTER_EMAIL,
    #                 value: "bill@amazon.com"
    #               },
    #               {
    #                 type: MASTER_NAME,
    #                 value: "Org Master Account"
    #               },
    #               {
    #                 type: ORGANIZATION_FEATURE_SET,
    #                 value: "FULL"
    #               }
    #             ],
    #             type: ORGANIZATION,
    #             value: "o-exampleorgid"
    #           },
    #           {
    #             type: EMAIL,
    #             value: "juan@example.com"
    #           }
    #         ],
    #         state: OPEN
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       action_type: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       parent_handshake_id: "HandshakeId"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_handshakes_for_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshakes: [
    #       {
    #         id: "HandshakeId",
    #         arn: "HandshakeArn",
    #         parties: [
    #           {
    #             id: "HandshakePartyId", # required
    #             type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #           }
    #         ],
    #         state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #         requested_timestamp: Time.now,
    #         expiration_timestamp: Time.now,
    #         action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #         resources: [
    #           {
    #             value: "HandshakeResourceValue",
    #             type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #             resources: {
    #               # recursive HandshakeResources
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHandshakesForAccountResponse]
    def list_handshakes_for_account(params = {}, options = {})
      request = build_request(:list_handshakes_for_account, params)
      request.send_request(options)
    end

    # <p>Lists the handshakes that are associated with the organization that the requesting
    #             user is part of. The <code>ListHandshakesForOrganization</code> operation returns a list
    #             of handshake structures. Each structure contains details and status about a
    #             handshake.</p>
    #          <p>Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>,
    #                 <code>CANCELED</code>, or <code>EXPIRED</code> appear in the results of this API for
    #             only 30 days after changing to that state. After that, they're deleted and no longer
    #             accessible.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListHandshakesForOrganizationRequest] params
    # @option params [Types::HandshakeFilter] :filter
    #   <p>A filter of the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or
    #                   <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify the <code>ParentHandshakeId</code> to see only
    #               the handshakes that were generated by that parent request.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of the handshakes associated with an organization
    #   # The following example shows you how to get a list of handshakes associated with the current organization:
    #   params = {}
    #   options = {}
    #   response = client.list_handshakes_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     handshakes: [
    #       {
    #         action: INVITE,
    #         arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
    #         expiration_timestamp: Time.parse("2017-01-28T14:35:23.3Z"),
    #         id: "h-examplehandshakeid111",
    #         parties: [
    #           {
    #             id: "o-exampleorgid",
    #             type: ORGANIZATION
    #           },
    #           {
    #             id: "juan@example.com",
    #             type: EMAIL
    #           }
    #         ],
    #         requested_timestamp: Time.parse("2017-01-13T14:35:23.3Z"),
    #         resources: [
    #           {
    #             resources: [
    #               {
    #                 type: MASTER_EMAIL,
    #                 value: "bill@amazon.com"
    #               },
    #               {
    #                 type: MASTER_NAME,
    #                 value: "Org Master Account"
    #               },
    #               {
    #                 type: ORGANIZATION_FEATURE_SET,
    #                 value: "FULL"
    #               }
    #             ],
    #             type: ORGANIZATION,
    #             value: "o-exampleorgid"
    #           },
    #           {
    #             type: EMAIL,
    #             value: "juan@example.com"
    #           }
    #         ],
    #         state: OPEN
    #       },
    #       {
    #         action: INVITE,
    #         state: ACCEPTED,
    #         arn: "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
    #         expiration_timestamp: Time.parse("2017-01-28T14:35:23.3Z"),
    #         id: "h-examplehandshakeid222",
    #         parties: [
    #           {
    #             id: "o-exampleorgid",
    #             type: ORGANIZATION
    #           },
    #           {
    #             id: "anika@example.com",
    #             type: EMAIL
    #           }
    #         ],
    #         requested_timestamp: Time.parse("2017-01-13T14:35:23.3Z"),
    #         resources: [
    #           {
    #             resources: [
    #               {
    #                 type: MASTER_EMAIL,
    #                 value: "bill@example.com"
    #               },
    #               {
    #                 type: MASTER_NAME,
    #                 value: "Master Account"
    #               }
    #             ],
    #             type: ORGANIZATION,
    #             value: "o-exampleorgid"
    #           },
    #           {
    #             type: EMAIL,
    #             value: "anika@example.com"
    #           },
    #           {
    #             type: NOTES,
    #             value: "This is an invitation to Anika's account to join Bill's organization."
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       action_type: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #       parent_handshake_id: "HandshakeId"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_handshakes_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     handshakes: [
    #       {
    #         id: "HandshakeId",
    #         arn: "HandshakeArn",
    #         parties: [
    #           {
    #             id: "HandshakePartyId", # required
    #             type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "EMAIL"], # required
    #           }
    #         ],
    #         state: "REQUESTED" # One of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"],
    #         requested_timestamp: Time.now,
    #         expiration_timestamp: Time.now,
    #         action: "INVITE" # One of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"],
    #         resources: [
    #           {
    #             value: "HandshakeResourceValue",
    #             type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"],
    #             resources: {
    #               # recursive HandshakeResources
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHandshakesForOrganizationResponse]
    def list_handshakes_for_organization(params = {}, options = {})
      request = build_request(:list_handshakes_for_organization, params)
      request.send_request(options)
    end

    # <p>Lists the organizational units (OUs) in a parent organizational unit or root.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListOrganizationalUnitsForParentRequest] params
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of all of the child OUs in a parent root or OU
    #   # The following example shows how to get a list of OUs in a specified root:/n/n
    #   params = {
    #     parent_id: "r-examplerootid111"
    #   }
    #   options = {}
    #   response = client.list_organizational_units_for_parent(params, options)
    #   response.to_h #=>
    #   {
    #     organizational_units: [
    #       {
    #         id: "ou-examplerootid111-exampleouid111",
    #         arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid111",
    #         name: "Development"
    #       },
    #       {
    #         id: "ou-examplerootid111-exampleouid222",
    #         arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid222",
    #         name: "Production"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     parent_id: "ParentId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_organizational_units_for_parent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organizational_units: [
    #       {
    #         id: "OrganizationalUnitId",
    #         arn: "OrganizationalUnitArn",
    #         name: "OrganizationalUnitName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOrganizationalUnitsForParentResponse]
    def list_organizational_units_for_parent(params = {}, options = {})
      request = build_request(:list_organizational_units_for_parent, params)
      request.send_request(options)
    end

    # <p>Lists the root or organizational units (OUs) that serve as the immediate parent of the
    #             specified child OU or account. This operation, along with <a>ListChildren</a>
    #             enables you to traverse the tree structure that makes up this root.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    #          <note>
    #             <p>In the current release, a child can have only a single parent.</p>
    #          </note>
    # @param [Hash, Types::ListParentsRequest] params
    # @option params [String] :child_id
    #   <p>The unique identifier (ID) of the OU or account whose parent containers you want to
    #               list. Don't specify a root.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with
    #             "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that 
    #             contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional 
    #             lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of all of the parents of a child OU or account
    #   # The following example shows how to list the root or OUs that contain account 444444444444:/n/n
    #   params = {
    #     child_id: "444444444444"
    #   }
    #   options = {}
    #   response = client.list_parents(params, options)
    #   response.to_h #=>
    #   {
    #     parents: [
    #       {
    #         id: "ou-examplerootid111-exampleouid111",
    #         type: ORGANIZATIONAL_UNIT
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     child_id: "ChildId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_parents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parents: [
    #       {
    #         id: "ParentId",
    #         type: "ROOT" # One of: ["ROOT", "ORGANIZATIONAL_UNIT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListParentsResponse]
    def list_parents(params = {}, options = {})
      request = build_request(:list_parents, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of all policies in an organization of a specified type.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListPoliciesRequest] params
    # @option params [String] :filter
    #   <p>Specifies the type of policy that you want to include in the response. You must
    #               specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list policies in the organization
    #   # The following example shows how to get a list of service control policies (SCPs):/n/n
    #   params = {
    #     filter: SERVICE_CONTROL_POLICY
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         type: SERVICE_CONTROL_POLICY,
    #         name: "AllowAllS3Actions",
    #         aws_managed: false,
    #         id: "p-examplepolicyid111",
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
    #         description: "Enables account admins to delegate permissions for any S3 actions to users and roles in their accounts."
    #       },
    #       {
    #         type: SERVICE_CONTROL_POLICY,
    #         name: "AllowAllEC2Actions",
    #         aws_managed: false,
    #         id: "p-examplepolicyid222",
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222",
    #         description: "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts."
    #       },
    #       {
    #         type: SERVICE_CONTROL_POLICY,
    #         aws_managed: true,
    #         description: "Allows access to every operation",
    #         id: "p-FullAWSAccess",
    #         arn: "arn:aws:organizations::aws:policy/service_control_policy/p-FullAWSAccess",
    #         name: "FullAWSAccess"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         id: "PolicyId",
    #         arn: "PolicyArn",
    #         name: "PolicyName",
    #         description: "PolicyDescription",
    #         type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #         aws_managed: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPoliciesResponse]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Lists the policies that are directly attached to the specified target root,
    #             organizational unit (OU), or account. You must specify the policy type that you want
    #             included in the returned list.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListPoliciesForTargetRequest] params
    # @option params [String] :target_id
    #   <p>The unique identifier (ID) of the root, organizational unit, or account whose policies
    #               you want to list.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32 
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @option params [String] :filter
    #   <p>The type of policy that you want to include in the returned list. You must specify one
    #               of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list policies attached to a root, OU, or account
    #   # The following example shows how to get a list of all service control policies (SCPs) of the type specified by the Filter parameter, that are directly attached to an account. The returned list does not include policies that apply to the account because of inheritance from its location in an OU hierarchy:/n/n
    #   params = {
    #     filter: SERVICE_CONTROL_POLICY,
    #     target_id: "444444444444"
    #   }
    #   options = {}
    #   response = client.list_policies_for_target(params, options)
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         type: SERVICE_CONTROL_POLICY,
    #         name: "AllowAllEC2Actions",
    #         aws_managed: false,
    #         id: "p-examplepolicyid222",
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222",
    #         description: "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts."
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_id: "PolicyTargetId", # required
    #     filter: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policies_for_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         id: "PolicyId",
    #         arn: "PolicyArn",
    #         name: "PolicyName",
    #         description: "PolicyDescription",
    #         type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #         aws_managed: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPoliciesForTargetResponse]
    def list_policies_for_target(params = {}, options = {})
      request = build_request(:list_policies_for_target, params)
      request.send_request(options)
    end

    # <p>Lists the roots that are defined in the current organization.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    #          <note>
    #             <p>Policy types can be enabled and disabled in roots. This is distinct from whether
    #                 they're available in the organization. When you enable all features, you make policy
    #                 types available for use in that organization. Individual policy types can then be
    #                 enabled and disabled in a root. To see the availability of a policy type in an
    #                 organization, use <a>DescribeOrganization</a>.</p>
    #          </note>
    # @param [Hash, Types::ListRootsRequest] params
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of roots in the organization
    #   # The following example shows how to get the list of the roots in the current organization:/n/n
    #   params = {}
    #   options = {}
    #   response = client.list_roots(params, options)
    #   response.to_h #=>
    #   {
    #     roots: [
    #       {
    #         name: "Root",
    #         arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111",
    #         id: "r-examplerootid111",
    #         policy_types: [
    #           {
    #             status: ENABLED,
    #             type: SERVICE_CONTROL_POLICY
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_roots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     roots: [
    #       {
    #         id: "RootId",
    #         arn: "RootArn",
    #         name: "RootName",
    #         policy_types: [
    #           {
    #             type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #             status: "ENABLED" # One of: ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRootsResponse]
    def list_roots(params = {}, options = {})
      request = build_request(:list_roots, params)
      request.send_request(options)
    end

    # <p>Lists tags that are attached to the specified resource.</p>
    #          <p>You can attach tags to the following resources in Organizations.</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                <p>Organization root</p>
    #             </li>
    #             <li>
    #                <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                <p>Policy (any type)</p>
    #             </li>
    #          </ul>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the resource with the tags to list.</p>
    #            <p>You can specify any of the following taggable resources.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                  <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "TaggableResourceId", # required
    #     next_token: "NextToken"
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
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists all the roots, organizational units (OUs), and accounts that the specified
    #             policy is attached to.</p>
    #          <note>
    #             <p>Always check the <code>NextToken</code> response parameter 
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can 
    # occasionally return an empty set of results even when there are more results available. The 
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i> 
    # when there are no more results to display.</p>
    #          </note>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::ListTargetsForPolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy whose attachments you want to know.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    # @example To retrieve a list of roots, OUs, and accounts to which a policy is attached
    #   # The following example shows how to get the list of roots, OUs, and accounts to which the specified policy is attached:/n/n
    #   params = {
    #     policy_id: "p-FullAWSAccess"
    #   }
    #   options = {}
    #   response = client.list_targets_for_policy(params, options)
    #   response.to_h #=>
    #   {
    #     targets: [
    #       {
    #         arn: "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111",
    #         name: "Root",
    #         target_id: "r-examplerootid111",
    #         type: ROOT
    #       },
    #       {
    #         arn: "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333;",
    #         name: "Developer Test Account",
    #         target_id: "333333333333",
    #         type: ACCOUNT
    #       },
    #       {
    #         arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111",
    #         name: "Accounting",
    #         target_id: "ou-examplerootid111-exampleouid111",
    #         type: ORGANIZATIONAL_UNIT
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_targets_for_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targets: [
    #       {
    #         target_id: "PolicyTargetId",
    #         arn: "GenericArn",
    #         name: "TargetName",
    #         type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetsForPolicyResponse]
    def list_targets_for_policy(params = {}, options = {})
      request = build_request(:list_targets_for_policy, params)
      request.send_request(options)
    end

    # <p>Moves an account from its current source parent root or organizational unit (OU) to
    #             the specified destination parent root or OU.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::MoveAccountRequest] params
    # @option params [String] :account_id
    #   <p>The unique identifier (ID) of the account that you want to move.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    # @option params [String] :source_parent_id
    #   <p>The unique identifier (ID) of the root or organizational unit that you want to move
    #               the account from.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @option params [String] :destination_parent_id
    #   <p>The unique identifier (ID) of the root or organizational unit that you want to move
    #               the account to.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    # @example To move an OU or account to another OU or the root
    #   # The following example shows how to move a member account from the root to an OU:/n/n
    #   params = {
    #     account_id: "333333333333",
    #     source_parent_id: "r-examplerootid111",
    #     destination_parent_id: "ou-examplerootid111-exampleouid111"
    #   }
    #   options = {}
    #   response = client.move_account(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     source_parent_id: "ParentId", # required
    #     destination_parent_id: "ParentId", # required
    #   }
    #   options = {}
    #   response = client.move_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def move_account(params = {}, options = {})
      request = build_request(:move_account, params)
      request.send_request(options)
    end

    # <p>Creates or updates a resource policy.</p>
    #          <p>This operation can be called only from the organization's management account..</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :content
    #   <p>If provided, the new content for the resource policy. The text must be correctly
    #               formatted JSON that complies with the syntax for the resource policy's type. For more
    #               information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html">SCP syntax</a> in the
    #               <i>Organizations User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created resource policy. For each
    #               tag in the list, you must specify both a tag key and a value. You can set the value to
    #               an empty string, but you can't set it to <code>null</code>. For more information about
    #               tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging
    #                   Organizations resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>Calls with tags apply to the initial creation of the resource policy, otherwise an
    #                   exception is thrown. If any one of the tags is not valid or if you exceed the
    #                   allowed number of tags for the resource policy, then the entire request fails and
    #                   the resource policy is not created. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     content: "ResourcePolicyContent", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       resource_policy_summary: {
    #         id: "ResourcePolicyId",
    #         arn: "ResourcePolicyArn"
    #       },
    #       content: "ResourcePolicyContent"
    #     }
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Enables the specified member account to administer the Organizations features of the specified
    #             Amazon Web Services service. It grants read-only access to Organizations service data. The account still
    #             requires IAM permissions to access and administer the Amazon Web Services service.</p>
    #          <p>You can run this action only for Amazon Web Services services that support this
    #     feature. For a current list of services that support it, see the column <i>Supports 
    #     Delegated Administrator</i> in the table at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html">Amazon Web Services Services that you can use with 
    #     Organizations</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::RegisterDelegatedAdministratorRequest] params
    # @option params [String] :account_id
    #   <p>The account ID number of the member account in the organization to register as a
    #               delegated administrator.</p>
    # @option params [String] :service_principal
    #   <p>The service principal of the Amazon Web Services service for which you want to make the member
    #               account a delegated administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     service_principal: "ServicePrincipal", # required
    #   }
    #   options = {}
    #   response = client.register_delegated_administrator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_delegated_administrator(params = {}, options = {})
      request = build_request(:register_delegated_administrator, params)
      request.send_request(options)
    end

    # <p>Removes the specified account from the organization.</p>
    #          <p>The removed account becomes a standalone account that isn't a member of any
    #             organization. It's no longer subject to any policies and is responsible for its own bill
    #             payments. The organization's management account is no longer charged for any expenses
    #             accrued by the member account after it's removed from the organization.</p>
    #          <p>This operation can be called only from the organization's management account. Member accounts can remove themselves with <a>LeaveOrganization</a> instead.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>You can remove an account from your organization only if the account is
    #                         configured with the information required to operate as a standalone account.
    #                         When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required of standalone accounts is
    #                             <i>not</i> automatically collected. For more information,
    #                         see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_account-before-remove.html">Considerations before removing an account from an organization</a>
    #                         in the <i>Organizations User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>The account that you want to leave must not be a delegated administrator
    #                         account for any Amazon Web Services service enabled for your organization. If the account
    #                         is a delegated administrator, you must first change the delegated
    #                         administrator account to another account that is remaining in the
    #                         organization.</p>
    #                </li>
    #                <li>
    #                   <p>After the account leaves the organization, all tags that were attached to
    #                         the account object in the organization are deleted. Amazon Web Services accounts outside
    #                         of an organization do not support tags.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::RemoveAccountFromOrganizationRequest] params
    # @option params [String] :account_id
    #   <p>The unique identifier (ID) of the member account that you want to remove from the
    #               organization.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    # @example To remove an account from an organization as the master account
    #   # The following example shows you how to remove an account from an organization:
    #   params = {
    #     account_id: "333333333333"
    #   }
    #   options = {}
    #   response = client.remove_account_from_organization(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.remove_account_from_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_account_from_organization(params = {}, options = {})
      request = build_request(:remove_account_from_organization, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to the specified resource.</p>
    #          <p>Currently, you can attach tags to the following resources in Organizations.</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                <p>Organization root</p>
    #             </li>
    #             <li>
    #                <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                <p>Policy (any type)</p>
    #             </li>
    #          </ul>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the resource to add a tag to.</p>
    #            <p>You can specify any of the following taggable resources.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                  <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to add to the specified resource.</p>
    #            <p>For each tag in the list, you must specify both a tag key and a value. The value can
    #               be an empty string, but you can't set it to <code>null</code>.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the maximum allowed number of
    #                   tags for a resource, then the entire request fails.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "TaggableResourceId", # required
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes any tags with the specified keys from the specified resource.</p>
    #          <p>You can attach tags to the following resources in Organizations.</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                <p>Organization root</p>
    #             </li>
    #             <li>
    #                <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                <p>Policy (any type)</p>
    #             </li>
    #          </ul>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the resource to remove a tag from.</p>
    #            <p>You can specify any of the following taggable resources.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                  <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys for tags to remove from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "TaggableResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Renames the specified organizational unit (OU). The ID and ARN don't change. The child
    #             OUs and accounts remain in place, and any attached policies of the OU remain
    #             attached.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::UpdateOrganizationalUnitRequest] params
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from
    #               the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires 
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters 
    #       or digits.</p>
    # @option params [String] :name
    #   <p>The new name that you want to assign to the OU.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    # @example To rename an organizational unit
    #   # The following example shows how to rename an OU. The output confirms the new name:/n/n
    #   params = {
    #     organizational_unit_id: "ou-examplerootid111-exampleouid111",
    #     name: "AccountingOU"
    #   }
    #   options = {}
    #   response = client.update_organizational_unit(params, options)
    #   response.to_h #=>
    #   {
    #     organizational_unit: {
    #       id: "ou-examplerootid111-exampleouid111",
    #       name: "AccountingOU",
    #       arn: "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     organizational_unit_id: "OrganizationalUnitId", # required
    #     name: "OrganizationalUnitName"
    #   }
    #   options = {}
    #   response = client.update_organizational_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organizational_unit: {
    #       id: "OrganizationalUnitId",
    #       arn: "OrganizationalUnitArn",
    #       name: "OrganizationalUnitName"
    #     }
    #   }
    # @return [Types::UpdateOrganizationalUnitResponse]
    def update_organizational_unit(params = {}, options = {})
      request = build_request(:update_organizational_unit, params)
      request.send_request(options)
    end

    # <p>Updates an existing policy with a new name, description, or content. If you don't
    #             supply any parameter, that value remains unchanged. You can't change a policy's
    #             type.</p>
    #          <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator.</p>
    # @param [Hash, Types::UpdatePolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want to update.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    # @option params [String] :name
    #   <p>If provided, the new name for the policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    # @option params [String] :description
    #   <p>If provided, the new description for the policy.</p>
    # @option params [String] :content
    #   <p>If provided, the new content for the policy. The text must be correctly formatted JSON
    #               that complies with the syntax for the policy's type. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html">SCP
    #                   syntax</a> in the <i>Organizations User Guide</i>.</p>
    #            <p>The maximum size of a policy document depends on the policy's type. For more
    #               information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#min-max-values">Maximum and minimum values</a> in the
    #               <i>Organizations User Guide</i>.</p>
    # @example To update the content of a policy
    #   # The following example shows how to replace the JSON text of the SCP from the preceding example with a new JSON policy text string that allows S3 actions instead of EC2 actions:/n/n
    #   params = {
    #     policy_id: "p-examplepolicyid111",
    #     content: "{ \\\"Version\\\": \\\"2012-10-17\\\", \\\"Statement\\\": {\\\"Effect\\\": \\\"Allow\\\", \\\"Action\\\": \\\"s3:*\\\", \\\"Resource\\\": \\\"*\\\" } }"
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: {
    #       content: "{ \\\"Version\\\": \\\"2012-10-17\\\", \\\"Statement\\\": { \\\"Effect\\\": \\\"Allow\\\", \\\"Action\\\": \\\"s3:*\\\", \\\"Resource\\\": \\\"*\\\" } }",
    #       policy_summary: {
    #         id: "p-examplepolicyid111",
    #         aws_managed: false,
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
    #         description: "This description replaces the original.",
    #         name: "Renamed-Policy",
    #         type: SERVICE_CONTROL_POLICY
    #       }
    #     }
    #   }
    # @example To update the details of a policy
    #   # The following example shows how to rename a policy and give it a new description and new content. The output confirms the new name and description text:/n/n
    #   params = {
    #     policy_id: "p-examplepolicyid111",
    #     name: "Renamed-Policy",
    #     description: "This description replaces the original."
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: {
    #       content: "{ \"Version\": \"2012-10-17\", \"Statement\": { \"Effect\": \"Allow\", \"Action\": \"ec2:*\", \"Resource\": \"*\" } }",
    #       policy_summary: {
    #         id: "p-examplepolicyid111",
    #         aws_managed: false,
    #         arn: "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
    #         description: "This description replaces the original.",
    #         name: "Renamed-Policy",
    #         type: SERVICE_CONTROL_POLICY
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     name: "PolicyName",
    #     description: "PolicyDescription",
    #     content: "PolicyContent"
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_summary: {
    #         id: "PolicyId",
    #         arn: "PolicyArn",
    #         name: "PolicyName",
    #         description: "PolicyDescription",
    #         type: "SERVICE_CONTROL_POLICY" # One of: ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY", "CHATBOT_POLICY", "DECLARATIVE_POLICY_EC2", "SECURITYHUB_POLICY"],
    #         aws_managed: false
    #       },
    #       content: "PolicyContent"
    #     }
    #   }
    # @return [Types::UpdatePolicyResponse]
    def update_policy(params = {}, options = {})
      request = build_request(:update_policy, params)
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
      context[:gem_name] = 'aws-sdk-organizations'
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

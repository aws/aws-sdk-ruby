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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mpa)

module Aws::MPA
  # An API client for Aws::MPA.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSFluffyCoreService
    @identifier = :mpa

    add_plugin(::Aws::MPA::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MPA::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Cancels an approval session. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Session</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::CancelSessionRequest] params
    # @option params [String] :session_arn
    #   <p>Amazon Resource Name (ARN) for the session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_arn: "SessionArn", # required
    #   }
    #   options = {}
    #   response = client.cancel_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelSessionResponse]
    def cancel_session(params = {}, options = {})
      request = build_request(:cancel_session, params)
      request.send_request(options)
    end

    # <p>Creates a new approval team. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Approval team</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::CreateApprovalTeamRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services populates this field.</p> <note> <p> <b>What is idempotency?</b> </p> <p>When you make a mutating API request, the request typically returns a result before the operation's asynchronous workflows have completed. Operations might also time out or encounter other server issues before they complete, even though the request has already returned a result. This could make it difficult to determine whether the request succeeded or not, and could lead to multiple retries to ensure that the operation completes successfully. However, if the original request and the subsequent retries are successful, the operation is completed multiple times. This means that you might create more resources than you intended.</p> <p> <i>Idempotency</i> ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p> </note>
    # @option params [Types::ApprovalStrategy] :approval_strategy
    #   <p>An <code>ApprovalStrategy</code> object. Contains details for how the team grants approval.</p>
    # @option params [Array<Types::ApprovalTeamRequestApprover>] :approvers
    #   <p>An array of <code>ApprovalTeamRequesterApprovers</code> objects. Contains details for the approvers in the team.</p>
    # @option params [String] :description
    #   <p>Description for the team.</p>
    # @option params [Array<Types::PolicyReference>] :policies
    #   <p>An array of <code>PolicyReference</code> objects. Contains a list of policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @option params [String] :name
    #   <p>Name of the team.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags you want to attach to the team.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "Token",
    #     approval_strategy: { # required
    #       # One of:
    #       mof_n: {
    #         min_approvals_required: 1, # required
    #       }
    #     },
    #     approvers: [ # required
    #       {
    #         primary_identity_id: "IdentityId", # required
    #         primary_identity_source_arn: "String", # required
    #       }
    #     ],
    #     description: "Description", # required
    #     policies: [ # required
    #       {
    #         policy_arn: "QualifiedPolicyArn", # required
    #       }
    #     ],
    #     name: "ApprovalTeamName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_approval_team(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     arn: "ApprovalTeamArn",
    #     name: "String",
    #     version_id: "String"
    #   }
    # @return [Types::CreateApprovalTeamResponse]
    def create_approval_team(params = {}, options = {})
      request = build_request(:create_approval_team, params)
      request.send_request(options)
    end

    # <p>Creates a new identity source. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Identity Source</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::CreateIdentitySourceRequest] params
    # @option params [Types::IdentitySourceParameters] :identity_source_parameters
    #   <p>A <code> IdentitySourceParameters</code> object. Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services populates this field.</p> <note> <p> <b>What is idempotency?</b> </p> <p>When you make a mutating API request, the request typically returns a result before the operation's asynchronous workflows have completed. Operations might also time out or encounter other server issues before they complete, even though the request has already returned a result. This could make it difficult to determine whether the request succeeded or not, and could lead to multiple retries to ensure that the operation completes successfully. However, if the original request and the subsequent retries are successful, the operation is completed multiple times. This means that you might create more resources than you intended.</p> <p> <i>Idempotency</i> ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p> </note>
    # @option params [Hash<String, String>] :tags
    #   <p>Tag you want to attach to the identity source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_source_parameters: { # required
    #       iam_identity_center: {
    #         instance_arn: "IdcInstanceArn", # required
    #         region: "String", # required
    #       }
    #     },
    #     client_token: "Token",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_identity_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_source_type: "IAM_IDENTITY_CENTER" # One of: ["IAM_IDENTITY_CENTER"],
    #     identity_source_arn: "String",
    #     creation_time: Time.now
    #   }
    # @return [Types::CreateIdentitySourceResponse]
    def create_identity_source(params = {}, options = {})
      request = build_request(:create_identity_source, params)
      request.send_request(options)
    end

    # <p>Deletes an identity source. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Identity Source</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::DeleteIdentitySourceRequest] params
    # @option params [String] :identity_source_arn
    #   <p>Amazon Resource Name (ARN) for identity source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_source_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_identity_source(params = {}, options = {})
      request = build_request(:delete_identity_source, params)
      request.send_request(options)
    end

    # <p>Deletes an inactive approval team. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html">Team health</a> in the <i>Multi-party approval User Guide</i>.</p> <p>You can also use this operation to delete a team draft. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/update-team.html#update-team-draft-status">Interacting with drafts</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::DeleteInactiveApprovalTeamVersionRequest] params
    # @option params [String] :arn
    #   <p>Amaazon Resource Name (ARN) for the team.</p>
    # @option params [String] :version_id
    #   <p>Version ID for the team.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ApprovalTeamArn", # required
    #     version_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_inactive_approval_team_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInactiveApprovalTeamVersionResponse]
    def delete_inactive_approval_team_version(params = {}, options = {})
      request = build_request(:delete_inactive_approval_team_version, params)
      request.send_request(options)
    end

    # <p>Returns details for an approval team.</p>
    # @param [Hash, Types::GetApprovalTeamRequest] params
    # @option params [String] :arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ApprovalTeamArn", # required
    #   }
    #   options = {}
    #   response = client.get_approval_team(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     approval_strategy: {
    #       # One of:
    #       mof_n: {
    #         min_approvals_required: 1, # required
    #       }
    #     },
    #     number_of_approvers: 1,
    #     approvers: [
    #       {
    #         approver_id: "ParticipantId",
    #         response_time: Time.now,
    #         primary_identity_id: "IdentityId",
    #         primary_identity_source_arn: "String",
    #         primary_identity_status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "INVALID"]
    #       }
    #     ],
    #     arn: "String",
    #     description: "Description",
    #     name: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING", "PENDING"],
    #     status_code: "VALIDATING" # One of: ["VALIDATING", "PENDING_ACTIVATION", "FAILED_VALIDATION", "FAILED_ACTIVATION", "UPDATE_PENDING_APPROVAL", "UPDATE_PENDING_ACTIVATION", "UPDATE_FAILED_APPROVAL", "UPDATE_FAILED_ACTIVATION", "UPDATE_FAILED_VALIDATION", "DELETE_PENDING_APPROVAL", "DELETE_FAILED_APPROVAL", "DELETE_FAILED_VALIDATION"],
    #     status_message: "Message",
    #     update_session_arn: "String",
    #     version_id: "String",
    #     policies: [
    #       {
    #         policy_arn: "QualifiedPolicyArn", # required
    #       }
    #     ],
    #     last_update_time: Time.now,
    #     pending_update: {
    #       version_id: "String",
    #       description: "String",
    #       approval_strategy: {
    #         # One of:
    #         mof_n: {
    #           min_approvals_required: 1, # required
    #         }
    #       },
    #       number_of_approvers: 1,
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING", "PENDING"],
    #       status_code: "VALIDATING" # One of: ["VALIDATING", "PENDING_ACTIVATION", "FAILED_VALIDATION", "FAILED_ACTIVATION", "UPDATE_PENDING_APPROVAL", "UPDATE_PENDING_ACTIVATION", "UPDATE_FAILED_APPROVAL", "UPDATE_FAILED_ACTIVATION", "UPDATE_FAILED_VALIDATION", "DELETE_PENDING_APPROVAL", "DELETE_FAILED_APPROVAL", "DELETE_FAILED_VALIDATION"],
    #       status_message: "Message",
    #       approvers: [
    #         {
    #           approver_id: "ParticipantId",
    #           response_time: Time.now,
    #           primary_identity_id: "IdentityId",
    #           primary_identity_source_arn: "String",
    #           primary_identity_status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "INVALID"]
    #         }
    #       ],
    #       update_initiation_time: Time.now
    #     }
    #   }
    # @return [Types::GetApprovalTeamResponse]
    def get_approval_team(params = {}, options = {})
      request = build_request(:get_approval_team, params)
      request.send_request(options)
    end

    # <p>Returns details for an identity source. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Identity Source</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::GetIdentitySourceRequest] params
    # @option params [String] :identity_source_arn
    #   <p>Amazon Resource Name (ARN) for the identity source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_source_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_identity_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_source_type: "IAM_IDENTITY_CENTER" # One of: ["IAM_IDENTITY_CENTER"],
    #     identity_source_parameters: {
    #       # One of:
    #       iam_identity_center: {
    #         instance_arn: "String",
    #         approval_portal_url: "String",
    #         region: "String"
    #       }
    #     },
    #     identity_source_arn: "String",
    #     creation_time: Time.now,
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "ERROR"],
    #     status_code: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "DELETION_FAILED", "IDC_INSTANCE_NOT_FOUND", "IDC_INSTANCE_NOT_VALID"],
    #     status_message: "String"
    #   }
    # @return [Types::GetIdentitySourceResponse]
    def get_identity_source(params = {}, options = {})
      request = build_request(:get_identity_source, params)
      request.send_request(options)
    end

    # <p>Returns details for the version of a policy. Policies define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::GetPolicyVersionRequest] params
    # @option params [String] :policy_version_arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_version_arn: "QualifiedPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.get_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_version: { # required
    #       arn: "QualifiedPolicyArn", # required
    #       policy_arn: "UnqualifiedPolicyArn", # required
    #       version_id: 1, # required
    #       policy_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "AWS_RAM"], # required
    #       is_default: false, # required
    #       name: "PolicyName", # required
    #       status: "ATTACHABLE" # One of: ["ATTACHABLE", "DEPRECATED"], # required
    #       creation_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       document: "PolicyDocument", # required
    #     }
    #   }
    # @return [Types::GetPolicyVersionResponse]
    def get_policy_version(params = {}, options = {})
      request = build_request(:get_policy_version, params)
      request.send_request(options)
    end

    # <p>Returns details about a policy for a resource.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    # @option params [String] :policy_name
    #   <p>Name of the policy.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     policy_name: "String", # required
    #     policy_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "AWS_RAM"], # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "String", # required
    #     policy_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "AWS_RAM"], # required
    #     policy_version_arn: "String",
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns details for an approval session. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Session</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::GetSessionRequest] params
    # @option params [String] :session_arn
    #   <p>Amazon Resource Name (ARN) for the session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_arn: "SessionArn", # required
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_arn: "SessionArn",
    #     approval_team_arn: "ApprovalTeamArn",
    #     approval_team_name: "ApprovalTeamName",
    #     protected_resource_arn: "String",
    #     approval_strategy: {
    #       # One of:
    #       mof_n: {
    #         min_approvals_required: 1, # required
    #       }
    #     },
    #     number_of_approvers: 1,
    #     initiation_time: Time.now,
    #     expiration_time: Time.now,
    #     completion_time: Time.now,
    #     description: "Description",
    #     metadata: {
    #       "SessionKey" => "SessionValue"
    #     },
    #     status: "PENDING" # One of: ["PENDING", "CANCELLED", "APPROVED", "FAILED", "CREATING"],
    #     status_code: "REJECTED" # One of: ["REJECTED", "EXPIRED", "CONFIGURATION_CHANGED"],
    #     status_message: "Message",
    #     execution_status: "EXECUTED" # One of: ["EXECUTED", "FAILED", "PENDING"],
    #     action_name: "ActionName",
    #     requester_service_principal: "ServicePrincipal",
    #     requester_principal_arn: "String",
    #     requester_account_id: "AccountId",
    #     requester_region: "Region",
    #     requester_comment: "RequesterComment",
    #     action_completion_strategy: "AUTO_COMPLETION_UPON_APPROVAL" # One of: ["AUTO_COMPLETION_UPON_APPROVAL"],
    #     approver_responses: [
    #       {
    #         approver_id: "ParticipantId",
    #         identity_source_arn: "String",
    #         identity_id: "IdentityId",
    #         response: "APPROVED" # One of: ["APPROVED", "REJECTED", "NO_RESPONSE"],
    #         response_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetSessionResponse]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <p>Returns a list of approval teams.</p>
    # @param [Hash, Types::ListApprovalTeamsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_approval_teams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     approval_teams: [
    #       {
    #         creation_time: Time.now,
    #         approval_strategy: {
    #           # One of:
    #           mof_n: {
    #             min_approvals_required: 1, # required
    #           }
    #         },
    #         number_of_approvers: 1,
    #         arn: "ApprovalTeamArn",
    #         name: "ApprovalTeamName",
    #         description: "Description",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING", "PENDING"],
    #         status_code: "VALIDATING" # One of: ["VALIDATING", "PENDING_ACTIVATION", "FAILED_VALIDATION", "FAILED_ACTIVATION", "UPDATE_PENDING_APPROVAL", "UPDATE_PENDING_ACTIVATION", "UPDATE_FAILED_APPROVAL", "UPDATE_FAILED_ACTIVATION", "UPDATE_FAILED_VALIDATION", "DELETE_PENDING_APPROVAL", "DELETE_FAILED_APPROVAL", "DELETE_FAILED_VALIDATION"],
    #         status_message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::ListApprovalTeamsResponse]
    def list_approval_teams(params = {}, options = {})
      request = build_request(:list_approval_teams, params)
      request.send_request(options)
    end

    # <p>Returns a list of identity sources. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Identity Source</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::ListIdentitySourcesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_identity_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     identity_sources: [
    #       {
    #         identity_source_type: "IAM_IDENTITY_CENTER" # One of: ["IAM_IDENTITY_CENTER"],
    #         identity_source_parameters: {
    #           # One of:
    #           iam_identity_center: {
    #             instance_arn: "String",
    #             approval_portal_url: "String",
    #             region: "String"
    #           }
    #         },
    #         identity_source_arn: "String",
    #         creation_time: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "ERROR"],
    #         status_code: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "DELETION_FAILED", "IDC_INSTANCE_NOT_FOUND", "IDC_INSTANCE_NOT_VALID"],
    #         status_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListIdentitySourcesResponse]
    def list_identity_sources(params = {}, options = {})
      request = build_request(:list_identity_sources, params)
      request.send_request(options)
    end

    # <p>Returns a list of policies. Policies define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::ListPoliciesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     policies: [
    #       {
    #         arn: "UnqualifiedPolicyArn", # required
    #         default_version: 1, # required
    #         policy_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "AWS_RAM"], # required
    #         name: "PolicyName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListPoliciesResponse]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Returns a list of the versions for policies. Policies define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::ListPolicyVersionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    # @option params [String] :policy_arn
    #   <p>Amazon Resource Name (ARN) for the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token",
    #     policy_arn: "UnqualifiedPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.list_policy_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     policy_versions: [
    #       {
    #         arn: "QualifiedPolicyArn", # required
    #         policy_arn: "UnqualifiedPolicyArn", # required
    #         version_id: 1, # required
    #         policy_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "AWS_RAM"], # required
    #         is_default: false, # required
    #         name: "PolicyName", # required
    #         status: "ATTACHABLE" # One of: ["ATTACHABLE", "DEPRECATED"], # required
    #         creation_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListPolicyVersionsResponse]
    def list_policy_versions(params = {}, options = {})
      request = build_request(:list_policy_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of policies for a resource.</p>
    # @param [Hash, Types::ListResourcePoliciesRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_resource_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     resource_policies: [
    #       {
    #         policy_arn: "String",
    #         policy_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "AWS_RAM"],
    #         policy_name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListResourcePoliciesResponse]
    def list_resource_policies(params = {}, options = {})
      request = build_request(:list_resource_policies, params)
      request.send_request(options)
    end

    # <p>Returns a list of approval sessions. For more information, see <a href="https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html">Session</a> in the <i>Multi-party approval User Guide</i>.</p>
    # @param [Hash, Types::ListSessionsRequest] params
    # @option params [String] :approval_team_arn
    #   <p>Amazon Resource Name (ARN) for the approval team.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of <code>Filter</code> objects. Contains the filter to apply when listing sessions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_team_arn: "ApprovalTeamArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: [
    #       {
    #         field_name: "ActionName" # One of: ["ActionName", "ApprovalTeamName", "VotingTime", "Vote", "SessionStatus", "InitiationTime"],
    #         operator: "EQ" # One of: ["EQ", "NE", "GT", "LT", "GTE", "LTE", "CONTAINS", "NOT_CONTAINS", "BETWEEN"],
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     sessions: [
    #       {
    #         session_arn: "SessionArn",
    #         approval_team_name: "ApprovalTeamName",
    #         approval_team_arn: "ApprovalTeamArn",
    #         initiation_time: Time.now,
    #         expiration_time: Time.now,
    #         completion_time: Time.now,
    #         description: "Description",
    #         action_name: "ActionName",
    #         protected_resource_arn: "String",
    #         requester_service_principal: "ServicePrincipal",
    #         requester_principal_arn: "String",
    #         requester_region: "Region",
    #         requester_account_id: "AccountId",
    #         status: "PENDING" # One of: ["PENDING", "CANCELLED", "APPROVED", "FAILED", "CREATING"],
    #         status_code: "REJECTED" # One of: ["REJECTED", "EXPIRED", "CONFIGURATION_CHANGED"],
    #         status_message: "Message",
    #         action_completion_strategy: "AUTO_COMPLETION_UPON_APPROVAL" # One of: ["AUTO_COMPLETION_UPON_APPROVAL"]
    #       }
    #     ]
    #   }
    # @return [Types::ListSessionsResponse]
    def list_sessions(params = {}, options = {})
      request = build_request(:list_sessions, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
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

    # <p>Starts the deletion process for an active approval team.</p> <note> <p> <b>Deletions require team approval</b> </p> <p>Requests to delete an active team must be approved by the team.</p> </note>
    # @param [Hash, Types::StartActiveApprovalTeamDeletionRequest] params
    # @option params [Integer] :pending_window_days
    #   <p>Number of days between when the team approves the delete request and when the team is deleted.</p>
    # @option params [String] :arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pending_window_days: 1,
    #     arn: "ApprovalTeamArn", # required
    #   }
    #   options = {}
    #   response = client.start_active_approval_team_deletion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_completion_time: Time.now,
    #     deletion_start_time: Time.now
    #   }
    # @return [Types::StartActiveApprovalTeamDeletionResponse]
    def start_active_approval_team_deletion(params = {}, options = {})
      request = build_request(:start_active_approval_team_deletion, params)
      request.send_request(options)
    end

    # <p>Creates or updates a resource tag. Each tag is a label consisting of a user-defined key and value. Tags can help you manage, identify, organize, search for, and filter resources.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that you have added to the specified resource.</p>
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

    # <p>Removes a resource tag. Each tag is a label consisting of a user-defined key and value. Tags can help you manage, identify, organize, search for, and filter resources. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tag key-value pairs that you want to untag.</p>
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

    # <p>Updates an approval team. You can request to update the team description, approval threshold, and approvers in the team.</p> <note> <p> <b>Updates require team approval</b> </p> <p>Updates to an active team must be approved by the team.</p> </note>
    # @param [Hash, Types::UpdateApprovalTeamRequest] params
    # @option params [Types::ApprovalStrategy] :approval_strategy
    #   <p>An <code>ApprovalStrategy</code> object. Contains details for how the team grants approval.</p>
    # @option params [Array<Types::ApprovalTeamRequestApprover>] :approvers
    #   <p>An array of <code>ApprovalTeamRequestApprover</code> objects. Contains details for the approvers in the team.</p>
    # @option params [String] :description
    #   <p>Description for the team.</p>
    # @option params [String] :arn
    #   <p>Amazon Resource Name (ARN) for the team.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_strategy: {
    #       # One of:
    #       mof_n: {
    #         min_approvals_required: 1, # required
    #       }
    #     },
    #     approvers: [
    #       {
    #         primary_identity_id: "IdentityId", # required
    #         primary_identity_source_arn: "String", # required
    #       }
    #     ],
    #     description: "Description",
    #     arn: "ApprovalTeamArn", # required
    #   }
    #   options = {}
    #   response = client.update_approval_team(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version_id: "String"
    #   }
    # @return [Types::UpdateApprovalTeamResponse]
    def update_approval_team(params = {}, options = {})
      request = build_request(:update_approval_team, params)
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
      context[:gem_name] = 'aws-sdk-mpa'
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

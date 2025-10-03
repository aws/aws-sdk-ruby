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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Detective
  # An API client for Aws::Detective.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonDetective

    add_plugin(::Aws::Detective::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Detective::EndpointProvider)
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

    # <p>Accepts an invitation for the member account to contribute data to a behavior graph.
    #          This operation can only be called by an invited member account. </p>
    #          <p>The request provides the ARN of behavior graph.</p>
    #          <p>The member account status in the graph must be <code>INVITED</code>.</p>
    # @param [Hash, Types::AcceptInvitationRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph that the member account is accepting the invitation
    #            for.</p>
    #            <p>The member account status in the behavior graph must be <code>INVITED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #   }
    #   options = {}
    #   response = client.accept_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def accept_invitation(params = {}, options = {})
      request = build_request(:accept_invitation, params)
      request.send_request(options)
    end

    # <p>Gets data source package information for the behavior graph.</p>
    # @param [Hash, Types::BatchGetGraphMemberDatasourcesRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services accounts to get data source package information
    #            on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_graph_member_datasources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member_datasources: [
    #       {
    #         account_id: "AccountId",
    #         graph_arn: "GraphArn",
    #         datasource_package_ingest_history: {
    #           "DatasourcePackage" => {
    #             "DatasourcePackageIngestState" => {
    #               timestamp: Time.now
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         reason: "UnprocessedReason"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetGraphMemberDatasourcesResponse]
    def batch_get_graph_member_datasources(params = {}, options = {})
      request = build_request(:batch_get_graph_member_datasources, params)
      request.send_request(options)
    end

    # <p>Gets information on the data source package history for an account.</p>
    # @param [Hash, Types::BatchGetMembershipDatasourcesRequest] params
    # @option params [Array<String>] :graph_arns
    #   <p>The ARN of the behavior graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arns: ["GraphArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_membership_datasources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_datasources: [
    #       {
    #         account_id: "AccountId",
    #         graph_arn: "GraphArn",
    #         datasource_package_ingest_history: {
    #           "DatasourcePackage" => {
    #             "DatasourcePackageIngestState" => {
    #               timestamp: Time.now
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     unprocessed_graphs: [
    #       {
    #         graph_arn: "GraphArn",
    #         reason: "UnprocessedReason"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetMembershipDatasourcesResponse]
    def batch_get_membership_datasources(params = {}, options = {})
      request = build_request(:batch_get_membership_datasources, params)
      request.send_request(options)
    end

    # <p>Creates a new behavior graph for the calling account, and sets that account as the
    #          administrator account. This operation is called by the account that is enabling Detective.</p>
    #          <p>The operation also enables Detective for the calling account in the currently
    #          selected Region. It returns the ARN of the new behavior graph.</p>
    #          <p>
    #             <code>CreateGraph</code> triggers a process to create the corresponding data tables for
    #          the new behavior graph.</p>
    #          <p>An account can only be the administrator account for one behavior graph within a Region.
    #          If the same account calls <code>CreateGraph</code> with the same administrator account, it
    #          always returns the same behavior graph ARN. It does not create a new behavior graph.</p>
    # @param [Hash, Types::CreateGraphRequest] params
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the new behavior graph. You can add up to 50 tags. For each tag,
    #            you provide the tag key and the tag value. Each tag key can contain up to 128 characters.
    #            Each tag value can contain up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_arn: "GraphArn"
    #   }
    # @return [Types::CreateGraphResponse]
    def create_graph(params = {}, options = {})
      request = build_request(:create_graph, params)
      request.send_request(options)
    end

    # <p>
    #             <code>CreateMembers</code> is used to send invitations to accounts. For the organization
    #          behavior graph, the Detective administrator account uses
    #          <code>CreateMembers</code> to enable organization accounts as member accounts.</p>
    #          <p>For invited accounts, <code>CreateMembers</code> sends a request to invite the specified
    #          Amazon Web Services accounts to be member accounts in the behavior graph. This operation
    #          can only be called by the administrator account for a behavior graph. </p>
    #          <p>
    #             <code>CreateMembers</code> verifies the accounts and then invites the verified accounts.
    #          The administrator can optionally specify to not send invitation emails to the member
    #          accounts. This would be used when the administrator manages their member accounts
    #          centrally.</p>
    #          <p>For organization accounts in the organization behavior graph, <code>CreateMembers</code>
    #          attempts to enable the accounts. The organization accounts do not receive
    #          invitations.</p>
    #          <p>The request provides the behavior graph ARN and the list of accounts to invite or to
    #          enable.</p>
    #          <p>The response separates the requested accounts into two lists:</p>
    #          <ul>
    #             <li>
    #                <p>The accounts that <code>CreateMembers</code> was able to process. For invited
    #                accounts, includes member accounts that are being verified, that have passed
    #                verification and are to be invited, and that have failed verification. For
    #                organization accounts in the organization behavior graph, includes accounts that can
    #                be enabled and that cannot be enabled.</p>
    #             </li>
    #             <li>
    #                <p>The accounts that <code>CreateMembers</code> was unable to process. This list
    #                includes accounts that were already invited to be member accounts in the behavior
    #                graph.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateMembersRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph.</p>
    # @option params [String] :message
    #   <p>Customized message text to include in the invitation email message to the invited member
    #            accounts.</p>
    # @option params [Boolean] :disable_email_notification
    #   <p>if set to <code>true</code>, then the invited accounts do not receive email
    #            notifications. By default, this is set to <code>false</code>, and the invited accounts
    #            receive email notifications.</p>
    #            <p>Organization accounts in the organization behavior graph do not receive email
    #            notifications.</p>
    # @option params [Array<Types::Account>] :accounts
    #   <p>The list of Amazon Web Services accounts to invite or to enable. You can invite or enable
    #            up to 50 accounts at a time. For each invited account, the account list contains the
    #            account identifier and the Amazon Web Services account root user email address. For
    #            organization accounts in the organization behavior graph, the email address is not
    #            required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     message: "EmailMessage",
    #     disable_email_notification: false,
    #     accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email_address: "EmailAddress", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         account_id: "AccountId",
    #         email_address: "EmailAddress",
    #         graph_arn: "GraphArn",
    #         master_id: "AccountId",
    #         administrator_id: "AccountId",
    #         status: "INVITED" # One of: ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"],
    #         disabled_reason: "VOLUME_TOO_HIGH" # One of: ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"],
    #         invited_time: Time.now,
    #         updated_time: Time.now,
    #         volume_usage_in_bytes: 1,
    #         volume_usage_updated_time: Time.now,
    #         percent_of_graph_utilization: 1.0,
    #         percent_of_graph_utilization_updated_time: Time.now,
    #         invitation_type: "INVITATION" # One of: ["INVITATION", "ORGANIZATION"],
    #         volume_usage_by_datasource_package: {
    #           "DatasourcePackage" => {
    #             volume_usage_in_bytes: 1,
    #             volume_usage_update_time: Time.now
    #           }
    #         },
    #         datasource_package_ingest_states: {
    #           "DatasourcePackage" => "STARTED" # One of: ["STARTED", "STOPPED", "DISABLED"]
    #         }
    #       }
    #     ],
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         reason: "UnprocessedReason"
    #       }
    #     ]
    #   }
    # @return [Types::CreateMembersResponse]
    def create_members(params = {}, options = {})
      request = build_request(:create_members, params)
      request.send_request(options)
    end

    # <p>Disables the specified behavior graph and queues it to be deleted. This operation
    #          removes the behavior graph from each member account's list of behavior graphs.</p>
    #          <p>
    #             <code>DeleteGraph</code> can only be called by the administrator account for a behavior
    #          graph.</p>
    # @param [Hash, Types::DeleteGraphRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to disable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #   }
    #   options = {}
    #   response = client.delete_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_graph(params = {}, options = {})
      request = build_request(:delete_graph, params)
      request.send_request(options)
    end

    # <p>Removes the specified member accounts from the behavior graph. The removed accounts no
    #          longer contribute data to the behavior graph. This operation can only be called by the
    #          administrator account for the behavior graph.</p>
    #          <p>For invited accounts, the removed accounts are deleted from the list of accounts in the
    #          behavior graph. To restore the account, the administrator account must send another
    #          invitation.</p>
    #          <p>For organization accounts in the organization behavior graph, the Detective
    #          administrator account can always enable the organization account again. Organization
    #          accounts that are not enabled as member accounts are not included in the
    #             <code>ListMembers</code> results for the organization behavior graph.</p>
    #          <p>An administrator account cannot use <code>DeleteMembers</code> to remove their own
    #          account from the behavior graph. To disable a behavior graph, the administrator account
    #          uses the <code>DeleteGraph</code> API method.</p>
    # @param [Hash, Types::DeleteMembersRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to remove members from.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member accounts to remove
    #            from the behavior graph. You can remove up to 50 member accounts at a time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.delete_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: ["AccountId"],
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         reason: "UnprocessedReason"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteMembersResponse]
    def delete_members(params = {}, options = {})
      request = build_request(:delete_members, params)
      request.send_request(options)
    end

    # <p>Returns information about the configuration for the organization behavior graph.
    #          Currently indicates whether to automatically enable new organization accounts as member
    #          accounts.</p>
    #          <p>Can only be called by the Detective administrator account for the organization. </p>
    # @param [Hash, Types::DescribeOrganizationConfigurationRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #   }
    #   options = {}
    #   response = client.describe_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable: false
    #   }
    # @return [Types::DescribeOrganizationConfigurationResponse]
    def describe_organization_configuration(params = {}, options = {})
      request = build_request(:describe_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Removes the Detective administrator account in the current Region. Deletes the
    #          organization behavior graph.</p>
    #          <p>Can only be called by the organization management account.</p>
    #          <p>Removing the Detective administrator account does not affect the delegated
    #          administrator account for Detective in Organizations.</p>
    #          <p>To remove the delegated administrator account in Organizations, use the Organizations API. Removing the delegated administrator account also removes the Detective administrator account in all Regions, except for Regions where the Detective administrator account is the organization management account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_organization_admin_account(params = {}, options = {})
      request = build_request(:disable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Removes the member account from the specified behavior graph. This operation can only be
    #          called by an invited member account that has the <code>ENABLED</code> status.</p>
    #          <p>
    #             <code>DisassociateMembership</code> cannot be called by an organization account in the
    #          organization behavior graph. For the organization behavior graph, the Detective
    #          administrator account determines which organization accounts to enable or disable as member
    #          accounts.</p>
    # @param [Hash, Types::DisassociateMembershipRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to remove the member account from.</p>
    #            <p>The member account's member status in the behavior graph must be
    #            <code>ENABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_membership(params = {}, options = {})
      request = build_request(:disassociate_membership, params)
      request.send_request(options)
    end

    # <p>Designates the Detective administrator account for the organization in the
    #          current Region.</p>
    #          <p>If the account does not have Detective enabled, then enables Detective
    #          for that account and creates a new behavior graph.</p>
    #          <p>Can only be called by the organization management account.</p>
    #          <p>If the organization has a delegated administrator account in Organizations, then the
    #             Detective administrator account must be either the delegated administrator
    #          account or the organization management account.</p>
    #          <p>If the organization does not have a delegated administrator account in Organizations, then you can choose any account in the organization. If you choose an account other
    #          than the organization management account, Detective calls Organizations to
    #          make that account the delegated administrator account for Detective. The
    #          organization management account cannot be the delegated administrator account.</p>
    # @param [Hash, Types::EnableOrganizationAdminAccountRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account identifier of the account to designate as the Detective administrator account for the organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.enable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_organization_admin_account(params = {}, options = {})
      request = build_request(:enable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Detective investigations lets you investigate IAM users and IAM roles using indicators of compromise. An indicator of compromise (IOC) is an artifact observed in or on a network, system, or environment that can (with a high level of confidence) identify malicious activity or a security incident.  <code>GetInvestigation</code> returns the investigation results of an investigation for a behavior graph. </p>
    # @param [Hash, Types::GetInvestigationRequest] params
    # @option params [String] :graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    # @option params [String] :investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     investigation_id: "InvestigationId", # required
    #   }
    #   options = {}
    #   response = client.get_investigation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_arn: "GraphArn",
    #     investigation_id: "InvestigationId",
    #     entity_arn: "EntityArn",
    #     entity_type: "IAM_ROLE" # One of: ["IAM_ROLE", "IAM_USER"],
    #     created_time: Time.now,
    #     scope_start_time: Time.now,
    #     scope_end_time: Time.now,
    #     status: "RUNNING" # One of: ["RUNNING", "FAILED", "SUCCESSFUL"],
    #     severity: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #     state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"]
    #   }
    # @return [Types::GetInvestigationResponse]
    def get_investigation(params = {}, options = {})
      request = build_request(:get_investigation, params)
      request.send_request(options)
    end

    # <p>Returns the membership details for specified member accounts for a behavior
    #          graph.</p>
    # @param [Hash, Types::GetMembersRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph for which to request the member details.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member account for which to
    #            return member details. You can request details for up to 50 member accounts at a
    #            time.</p>
    #            <p>You cannot use <code>GetMembers</code> to retrieve information about member accounts
    #            that were removed from the behavior graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.get_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member_details: [
    #       {
    #         account_id: "AccountId",
    #         email_address: "EmailAddress",
    #         graph_arn: "GraphArn",
    #         master_id: "AccountId",
    #         administrator_id: "AccountId",
    #         status: "INVITED" # One of: ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"],
    #         disabled_reason: "VOLUME_TOO_HIGH" # One of: ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"],
    #         invited_time: Time.now,
    #         updated_time: Time.now,
    #         volume_usage_in_bytes: 1,
    #         volume_usage_updated_time: Time.now,
    #         percent_of_graph_utilization: 1.0,
    #         percent_of_graph_utilization_updated_time: Time.now,
    #         invitation_type: "INVITATION" # One of: ["INVITATION", "ORGANIZATION"],
    #         volume_usage_by_datasource_package: {
    #           "DatasourcePackage" => {
    #             volume_usage_in_bytes: 1,
    #             volume_usage_update_time: Time.now
    #           }
    #         },
    #         datasource_package_ingest_states: {
    #           "DatasourcePackage" => "STARTED" # One of: ["STARTED", "STOPPED", "DISABLED"]
    #         }
    #       }
    #     ],
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         reason: "UnprocessedReason"
    #       }
    #     ]
    #   }
    # @return [Types::GetMembersResponse]
    def get_members(params = {}, options = {})
      request = build_request(:get_members, params)
      request.send_request(options)
    end

    # <p>Lists data source packages in the behavior graph.</p>
    # @param [Hash, Types::ListDatasourcePackagesRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph.</p>
    # @option params [String] :next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasource_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasource_packages: {
    #       "DatasourcePackage" => {
    #         datasource_package_ingest_state: "STARTED" # One of: ["STARTED", "STOPPED", "DISABLED"],
    #         last_ingest_state_change: {
    #           "DatasourcePackageIngestState" => {
    #             timestamp: Time.now
    #           }
    #         }
    #       }
    #     },
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDatasourcePackagesResponse]
    def list_datasource_packages(params = {}, options = {})
      request = build_request(:list_datasource_packages, params)
      request.send_request(options)
    end

    # <p>Returns the list of behavior graphs that the calling account is an administrator account
    #          of. This operation can only be called by an administrator account.</p>
    #          <p>Because an account can currently only be the administrator of one behavior graph within
    #          a Region, the results always contain a single behavior graph.</p>
    # @param [Hash, Types::ListGraphsRequest] params
    # @option params [String] :next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of graphs to return at a time. The total must be less than the
    #            overall limit on the number of results to return, which is currently 200.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_graphs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_list: [
    #       {
    #         arn: "GraphArn",
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListGraphsResponse]
    def list_graphs(params = {}, options = {})
      request = build_request(:list_graphs, params)
      request.send_request(options)
    end

    # <p>Gets the indicators from an investigation. You can use the information from the indicators to determine if an IAM user and/or IAM role is involved in an unusual activity that could indicate malicious behavior and its impact.</p>
    # @param [Hash, Types::ListIndicatorsRequest] params
    # @option params [String] :graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    # @option params [String] :investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    # @option params [String] :indicator_type
    #   <p>For the list of indicators of compromise that are generated by Detective investigations, see <a href="https://docs.aws.amazon.com/detective/latest/userguide/detective-investigation-about.html">Detective investigations</a>.</p>
    # @option params [String] :next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination token for each page. Repeat the call using the returned token to retrieve the next page. Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will return a Validation Exception error.</p>
    # @option params [Integer] :max_results
    #   <p>Lists the maximum number of indicators in a page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     investigation_id: "InvestigationId", # required
    #     indicator_type: "TTP_OBSERVED" # One of: ["TTP_OBSERVED", "IMPOSSIBLE_TRAVEL", "FLAGGED_IP_ADDRESS", "NEW_GEOLOCATION", "NEW_ASO", "NEW_USER_AGENT", "RELATED_FINDING", "RELATED_FINDING_GROUP"],
    #     next_token: "AiPaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_indicators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_arn: "GraphArn",
    #     investigation_id: "InvestigationId",
    #     next_token: "AiPaginationToken",
    #     indicators: [
    #       {
    #         indicator_type: "TTP_OBSERVED" # One of: ["TTP_OBSERVED", "IMPOSSIBLE_TRAVEL", "FLAGGED_IP_ADDRESS", "NEW_GEOLOCATION", "NEW_ASO", "NEW_USER_AGENT", "RELATED_FINDING", "RELATED_FINDING_GROUP"],
    #         indicator_detail: {
    #           tt_ps_observed_detail: {
    #             tactic: "Tactic",
    #             technique: "Technique",
    #             procedure: "Procedure",
    #             ip_address: "IpAddress",
    #             api_name: "APIName",
    #             api_success_count: 1,
    #             api_failure_count: 1
    #           },
    #           impossible_travel_detail: {
    #             starting_ip_address: "IpAddress",
    #             ending_ip_address: "IpAddress",
    #             starting_location: "Location",
    #             ending_location: "Location",
    #             hourly_time_delta: 1
    #           },
    #           flagged_ip_address_detail: {
    #             ip_address: "IpAddress",
    #             reason: "AWS_THREAT_INTELLIGENCE" # One of: ["AWS_THREAT_INTELLIGENCE"]
    #           },
    #           new_geolocation_detail: {
    #             location: "Location",
    #             ip_address: "IpAddress",
    #             is_new_for_entire_account: false
    #           },
    #           new_aso_detail: {
    #             aso: "Aso",
    #             is_new_for_entire_account: false
    #           },
    #           new_user_agent_detail: {
    #             user_agent: "UserAgent",
    #             is_new_for_entire_account: false
    #           },
    #           related_finding_detail: {
    #             arn: "EntityArn",
    #             type: "Type",
    #             ip_address: "IpAddress"
    #           },
    #           related_finding_group_detail: {
    #             id: "Id"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListIndicatorsResponse]
    def list_indicators(params = {}, options = {})
      request = build_request(:list_indicators, params)
      request.send_request(options)
    end

    # <p>Detective investigations lets you investigate IAM users and
    #             IAM roles using indicators of compromise. An indicator of compromise
    #          (IOC) is an artifact observed in or on a network, system, or environment that can (with a
    #          high level of confidence) identify malicious activity or a security incident.
    #             <code>ListInvestigations</code> lists all active Detective
    #          investigations.</p>
    # @param [Hash, Types::ListInvestigationsRequest] params
    # @option params [String] :graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    # @option params [String] :next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination token for each page. Repeat the call using the returned token to retrieve the next page. Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will return a Validation Exception error.</p>
    # @option params [Integer] :max_results
    #   <p>Lists the maximum number of investigations in a page.</p>
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>Filters the investigation results based on a criteria.</p>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>Sorts the investigation results based on a criteria.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     next_token: "AiPaginationToken",
    #     max_results: 1,
    #     filter_criteria: {
    #       severity: {
    #         value: "Value", # required
    #       },
    #       status: {
    #         value: "Value", # required
    #       },
    #       state: {
    #         value: "Value", # required
    #       },
    #       entity_arn: {
    #         value: "Value", # required
    #       },
    #       created_time: {
    #         start_inclusive: Time.now, # required
    #         end_inclusive: Time.now, # required
    #       }
    #     },
    #     sort_criteria: {
    #       field: "SEVERITY" # One of: ["SEVERITY", "STATUS", "CREATED_TIME"],
    #       sort_order: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_investigations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     investigation_details: [
    #       {
    #         investigation_id: "InvestigationId",
    #         severity: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #         status: "RUNNING" # One of: ["RUNNING", "FAILED", "SUCCESSFUL"],
    #         state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #         created_time: Time.now,
    #         entity_arn: "EntityArn",
    #         entity_type: "IAM_ROLE" # One of: ["IAM_ROLE", "IAM_USER"]
    #       }
    #     ],
    #     next_token: "AiPaginationToken"
    #   }
    # @return [Types::ListInvestigationsResponse]
    def list_investigations(params = {}, options = {})
      request = build_request(:list_investigations, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of open and accepted behavior graph invitations for the member
    #          account. This operation can only be called by an invited member account.</p>
    #          <p>Open invitations are invitations that the member account has not responded to.</p>
    #          <p>The results do not include behavior graphs for which the member account declined the
    #          invitation. The results also do not include behavior graphs that the member account
    #          resigned from or was removed from.</p>
    # @param [Hash, Types::ListInvitationsRequest] params
    # @option params [String] :next_token
    #   <p>For requests to retrieve the next page of results, the pagination token that was
    #            returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of behavior graph invitations to return in the response. The total
    #            must be less than the overall limit on the number of results to return, which is currently
    #            200.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations: [
    #       {
    #         account_id: "AccountId",
    #         email_address: "EmailAddress",
    #         graph_arn: "GraphArn",
    #         master_id: "AccountId",
    #         administrator_id: "AccountId",
    #         status: "INVITED" # One of: ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"],
    #         disabled_reason: "VOLUME_TOO_HIGH" # One of: ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"],
    #         invited_time: Time.now,
    #         updated_time: Time.now,
    #         volume_usage_in_bytes: 1,
    #         volume_usage_updated_time: Time.now,
    #         percent_of_graph_utilization: 1.0,
    #         percent_of_graph_utilization_updated_time: Time.now,
    #         invitation_type: "INVITATION" # One of: ["INVITATION", "ORGANIZATION"],
    #         volume_usage_by_datasource_package: {
    #           "DatasourcePackage" => {
    #             volume_usage_in_bytes: 1,
    #             volume_usage_update_time: Time.now
    #           }
    #         },
    #         datasource_package_ingest_states: {
    #           "DatasourcePackage" => "STARTED" # One of: ["STARTED", "STOPPED", "DISABLED"]
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListInvitationsResponse]
    def list_invitations(params = {}, options = {})
      request = build_request(:list_invitations, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of member accounts for a behavior graph.</p>
    #          <p>For invited accounts, the results do not include member accounts that were removed from
    #          the behavior graph.</p>
    #          <p>For the organization behavior graph, the results do not include organization accounts
    #          that the Detective administrator account has not enabled as member
    #          accounts.</p>
    # @param [Hash, Types::ListMembersRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph for which to retrieve the list of member accounts.</p>
    # @option params [String] :next_token
    #   <p>For requests to retrieve the next page of member account results, the pagination token
    #            that was returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of member accounts to include in the response. The total must be less
    #            than the overall limit on the number of results to return, which is currently 200.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member_details: [
    #       {
    #         account_id: "AccountId",
    #         email_address: "EmailAddress",
    #         graph_arn: "GraphArn",
    #         master_id: "AccountId",
    #         administrator_id: "AccountId",
    #         status: "INVITED" # One of: ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"],
    #         disabled_reason: "VOLUME_TOO_HIGH" # One of: ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"],
    #         invited_time: Time.now,
    #         updated_time: Time.now,
    #         volume_usage_in_bytes: 1,
    #         volume_usage_updated_time: Time.now,
    #         percent_of_graph_utilization: 1.0,
    #         percent_of_graph_utilization_updated_time: Time.now,
    #         invitation_type: "INVITATION" # One of: ["INVITATION", "ORGANIZATION"],
    #         volume_usage_by_datasource_package: {
    #           "DatasourcePackage" => {
    #             volume_usage_in_bytes: 1,
    #             volume_usage_update_time: Time.now
    #           }
    #         },
    #         datasource_package_ingest_states: {
    #           "DatasourcePackage" => "STARTED" # One of: ["STARTED", "STOPPED", "DISABLED"]
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMembersResponse]
    def list_members(params = {}, options = {})
      request = build_request(:list_members, params)
      request.send_request(options)
    end

    # <p>Returns information about the Detective administrator account for an
    #          organization. Can only be called by the organization management account.</p>
    # @param [Hash, Types::ListOrganizationAdminAccountsRequest] params
    # @option params [String] :next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_organization_admin_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     administrators: [
    #       {
    #         account_id: "AccountId",
    #         graph_arn: "GraphArn",
    #         delegation_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListOrganizationAdminAccountsResponse]
    def list_organization_admin_accounts(params = {}, options = {})
      request = build_request(:list_organization_admin_accounts, params)
      request.send_request(options)
    end

    # <p>Returns the tag values that are assigned to a behavior graph.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the behavior graph for which to retrieve the tag values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GraphArn", # required
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

    # <p>Rejects an invitation to contribute the account data to a behavior graph. This operation
    #          must be called by an invited member account that has the <code>INVITED</code>
    #          status.</p>
    #          <p>
    #             <code>RejectInvitation</code> cannot be called by an organization account in the
    #          organization behavior graph. In the organization behavior graph, organization accounts do
    #          not receive an invitation.</p>
    # @param [Hash, Types::RejectInvitationRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to reject the invitation to.</p>
    #            <p>The member account's current member status in the behavior graph must be
    #               <code>INVITED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #   }
    #   options = {}
    #   response = client.reject_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def reject_invitation(params = {}, options = {})
      request = build_request(:reject_invitation, params)
      request.send_request(options)
    end

    # <p>Detective investigations lets you investigate IAM users and IAM roles using indicators of compromise. An indicator of compromise (IOC) is an artifact observed in or on a network, system, or environment that can (with a high level of confidence) identify malicious activity or a security incident. <code>StartInvestigation</code> initiates an investigation on an entity in a behavior graph. </p>
    # @param [Hash, Types::StartInvestigationRequest] params
    # @option params [String] :graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    # @option params [String] :entity_arn
    #   <p>The unique Amazon Resource Name (ARN) of the IAM user and IAM role.</p>
    # @option params [Time] :scope_start_time
    #   <p>The data and time when the investigation began. The value is an UTC ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    # @option params [Time] :scope_end_time
    #   <p>The data and time when the investigation ended. The value is an UTC ISO8601 formatted
    #            string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     entity_arn: "EntityArn", # required
    #     scope_start_time: Time.now, # required
    #     scope_end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.start_investigation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     investigation_id: "InvestigationId"
    #   }
    # @return [Types::StartInvestigationResponse]
    def start_investigation(params = {}, options = {})
      request = build_request(:start_investigation, params)
      request.send_request(options)
    end

    # <p>Sends a request to enable data ingest for a member account that has a status of
    #             <code>ACCEPTED_BUT_DISABLED</code>.</p>
    #          <p>For valid member accounts, the status is updated as follows.</p>
    #          <ul>
    #             <li>
    #                <p>If Detective enabled the member account, then the new status is
    #                   <code>ENABLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If Detective cannot enable the member account, the status remains
    #                   <code>ACCEPTED_BUT_DISABLED</code>. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartMonitoringMemberRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the member account to try to enable.</p>
    #            <p>The account must be an invited member account with a status of
    #               <code>ACCEPTED_BUT_DISABLED</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.start_monitoring_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_monitoring_member(params = {}, options = {})
      request = build_request(:start_monitoring_member, params)
      request.send_request(options)
    end

    # <p>Applies tag values to a behavior graph.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the behavior graph to assign the tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the behavior graph. You can add up to 50 tags. For each tag, you
    #            provide the tag key and the tag value. Each tag key can contain up to 128 characters. Each
    #            tag value can contain up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GraphArn", # required
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

    # <p>Removes tags from a behavior graph.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the behavior graph to remove the tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to remove from the behavior graph. You can remove up to 50 tags
    #            at a time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GraphArn", # required
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

    # <p>Starts a data source package for the Detective behavior graph.</p>
    # @param [Hash, Types::UpdateDatasourcePackagesRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph.</p>
    # @option params [Array<String>] :datasource_packages
    #   <p>The data source package to start for the behavior graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     datasource_packages: ["DETECTIVE_CORE" # One of: ["DETECTIVE_CORE", "EKS_AUDIT", "ASFF_SECURITYHUB_FINDING"]], # required
    #   }
    #   options = {}
    #   response = client.update_datasource_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_datasource_packages(params = {}, options = {})
      request = build_request(:update_datasource_packages, params)
      request.send_request(options)
    end

    # <p>Updates the state of an investigation.</p>
    # @param [Hash, Types::UpdateInvestigationStateRequest] params
    # @option params [String] :graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    # @option params [String] :investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    # @option params [String] :state
    #   <p>The current state of the investigation. An archived investigation indicates you have completed reviewing the investigation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     investigation_id: "InvestigationId", # required
    #     state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"], # required
    #   }
    #   options = {}
    #   response = client.update_investigation_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_investigation_state(params = {}, options = {})
      request = build_request(:update_investigation_state, params)
      request.send_request(options)
    end

    # <p>Updates the configuration for the Organizations integration in the current Region.
    #          Can only be called by the Detective administrator account for the
    #          organization.</p>
    # @param [Hash, Types::UpdateOrganizationConfigurationRequest] params
    # @option params [String] :graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    # @option params [Boolean] :auto_enable
    #   <p>Indicates whether to automatically enable new organization accounts as member accounts
    #            in the organization behavior graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_arn: "GraphArn", # required
    #     auto_enable: false
    #   }
    #   options = {}
    #   response = client.update_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_organization_configuration(params = {}, options = {})
      request = build_request(:update_organization_configuration, params)
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
      context[:gem_name] = 'aws-sdk-detective'
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

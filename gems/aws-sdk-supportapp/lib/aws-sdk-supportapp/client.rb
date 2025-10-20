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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:supportapp)

module Aws::SupportApp
  # An API client for Aws::SupportApp.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SupportApp
    @identifier = :supportapp

    add_plugin(::Aws::SupportApp::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SupportApp::EndpointProvider)
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

    # <p>Creates a Slack channel configuration for your Amazon Web Services account.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You can add up to 5 Slack workspaces for your account.</p>
    #                </li>
    #                <li>
    #                   <p>You can add up to 20 Slack channels for your account.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>A Slack channel can have up to 100 Amazon Web Services accounts. This means that only 100 accounts can
    #       add the same Slack channel to the Amazon Web Services Support App. We recommend that you only add the accounts that
    #       you need to manage support cases for your organization. This can reduce the notifications
    #       about case updates that you receive in the Slack channel.</p>
    #          <note>
    #             <p>We recommend that you choose a private Slack channel so that only members in that
    #         channel have read and write access to your support cases. Anyone in your Slack channel can
    #         create, update, or resolve support cases for your account. Users require an invitation to
    #         join private channels. </p>
    #          </note>
    # @param [Hash, Types::CreateSlackChannelConfigurationInput] params
    # @option params [String] :team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    # @option params [String] :channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    # @option params [String] :channel_name
    #   <p>The name of the Slack channel that you configure for the Amazon Web Services Support App.</p>
    # @option params [Boolean] :notify_on_create_or_reopen_case
    #   <p>Whether you want to get notified when a support case is created or reopened.</p>
    # @option params [Boolean] :notify_on_add_correspondence_to_case
    #   <p>Whether you want to get notified when a support case has a new correspondence.</p>
    # @option params [Boolean] :notify_on_resolve_case
    #   <p>Whether you want to get notified when a support case is resolved.</p>
    # @option params [String] :notify_on_case_severity
    #   <p>The case severity for a support case that you want to receive notifications.</p>
    #            <p>If you specify <code>high</code> or <code>all</code>, you must specify <code>true</code>
    #         for at least one of the following parameters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>none</code>, the following parameters must be null or
    #           <code>false</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you don't specify these parameters in your request, they default to
    #             <code>false</code>.</p>
    #            </note>
    # @option params [String] :channel_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to
    #   use to perform operations on Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html">Managing access to
    #   the Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     team_id: "teamId", # required
    #     channel_id: "channelId", # required
    #     channel_name: "channelName",
    #     notify_on_create_or_reopen_case: false,
    #     notify_on_add_correspondence_to_case: false,
    #     notify_on_resolve_case: false,
    #     notify_on_case_severity: "NotificationSeverityLevel", # required
    #     channel_role_arn: "roleArn", # required
    #   }
    #   options = {}
    #   response = client.create_slack_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSlackChannelConfigurationOutput]
    def create_slack_channel_configuration(params = {}, options = {})
      request = build_request(:create_slack_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an alias for an Amazon Web Services account ID. The alias appears in the Amazon Web Services Support App page of the
    #       Amazon Web Services Support Center. The alias also appears in Slack messages from the Amazon Web Services Support App.</p>
    # @param [Hash, Types::DeleteAccountAliasInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_account_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccountAliasOutput]
    def delete_account_alias(params = {}, options = {})
      request = build_request(:delete_account_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a Slack channel configuration from your Amazon Web Services account. This operation doesn't
    #       delete your Slack channel.</p>
    # @param [Hash, Types::DeleteSlackChannelConfigurationInput] params
    # @option params [String] :team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    # @option params [String] :channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     team_id: "teamId", # required
    #     channel_id: "channelId", # required
    #   }
    #   options = {}
    #   response = client.delete_slack_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSlackChannelConfigurationOutput]
    def delete_slack_channel_configuration(params = {}, options = {})
      request = build_request(:delete_slack_channel_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a Slack workspace configuration from your Amazon Web Services account. This operation doesn't
    #       delete your Slack workspace.</p>
    # @param [Hash, Types::DeleteSlackWorkspaceConfigurationInput] params
    # @option params [String] :team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     team_id: "teamId", # required
    #   }
    #   options = {}
    #   response = client.delete_slack_workspace_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSlackWorkspaceConfigurationOutput]
    def delete_slack_workspace_configuration(params = {}, options = {})
      request = build_request(:delete_slack_workspace_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the alias from an Amazon Web Services account ID. The alias appears in the Amazon Web Services Support App page of
    #       the Amazon Web Services Support Center. The alias also appears in Slack messages from the Amazon Web Services Support App.</p>
    # @param [Hash, Types::GetAccountAliasInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_alias: "awsAccountAlias"
    #   }
    # @return [Types::GetAccountAliasOutput]
    def get_account_alias(params = {}, options = {})
      request = build_request(:get_account_alias, params)
      request.send_request(options)
    end

    # <p>Lists the Slack channel configurations for an Amazon Web Services account.</p>
    # @param [Hash, Types::ListSlackChannelConfigurationsInput] params
    # @option params [String] :next_token
    #   <p>If the results of a search are large, the API only returns a portion of the results and 
    #   includes a <code>nextToken</code> pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token. 
    #   When the API returns the last set of results, the response doesn't include a pagination token value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "paginationToken"
    #   }
    #   options = {}
    #   response = client.list_slack_channel_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "paginationToken",
    #     slack_channel_configurations: [ # required
    #       {
    #         team_id: "teamId", # required
    #         channel_id: "channelId", # required
    #         channel_name: "channelName",
    #         notify_on_create_or_reopen_case: false,
    #         notify_on_add_correspondence_to_case: false,
    #         notify_on_resolve_case: false,
    #         notify_on_case_severity: "NotificationSeverityLevel",
    #         channel_role_arn: "roleArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListSlackChannelConfigurationsOutput]
    def list_slack_channel_configurations(params = {}, options = {})
      request = build_request(:list_slack_channel_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the Slack workspace configurations for an Amazon Web Services account.</p>
    # @param [Hash, Types::ListSlackWorkspaceConfigurationsInput] params
    # @option params [String] :next_token
    #   <p>If the results of a search are large, the API only returns a portion of the results and 
    #   includes a <code>nextToken</code> pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token. 
    #   When the API returns the last set of results, the response doesn't include a pagination token value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "paginationToken"
    #   }
    #   options = {}
    #   response = client.list_slack_workspace_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "paginationToken",
    #     slack_workspace_configurations: [
    #       {
    #         team_id: "teamId", # required
    #         team_name: "teamName",
    #         allow_organization_member_account: false
    #       }
    #     ]
    #   }
    # @return [Types::ListSlackWorkspaceConfigurationsOutput]
    def list_slack_workspace_configurations(params = {}, options = {})
      request = build_request(:list_slack_workspace_configurations, params)
      request.send_request(options)
    end

    # <p>Creates or updates an individual alias for each Amazon Web Services account ID. The alias appears in the
    #       Amazon Web Services Support App page of the Amazon Web Services Support Center. The alias also appears in Slack messages from the
    #       Amazon Web Services Support App.</p>
    # @param [Hash, Types::PutAccountAliasInput] params
    # @option params [String] :account_alias
    #   <p>An alias or short name for an Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_alias: "awsAccountAlias", # required
    #   }
    #   options = {}
    #   response = client.put_account_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAccountAliasOutput]
    def put_account_alias(params = {}, options = {})
      request = build_request(:put_account_alias, params)
      request.send_request(options)
    end

    # <p>Registers a Slack workspace for your Amazon Web Services account. To call this API, your account must be
    #       part of an organization in Organizations.</p>
    #          <p>If you're the <i>management account</i> and you want to register Slack
    #       workspaces for your organization, you must complete the following tasks:</p>
    #          <ol>
    #             <li>
    #                <p>Sign in to the <a href="https://console.aws.amazon.com/support/app">Amazon Web Services Support Center</a> and
    #           authorize the Slack workspaces where you want your organization to have access to. See
    #             <a href="https://docs.aws.amazon.com/awssupport/latest/user/authorize-slack-workspace.html">Authorize a Slack workspace</a> in the <i>Amazon Web Services Support User
    #           Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Call the <code>RegisterSlackWorkspaceForOrganization</code> API to authorize each
    #           Slack workspace for the organization.</p>
    #             </li>
    #          </ol>
    #          <p>After the management account authorizes the Slack workspace, member accounts can call this
    #       API to authorize the same Slack workspace for their individual accounts. Member accounts don't
    #       need to authorize the Slack workspace manually through the <a href="https://console.aws.amazon.com/support/app">Amazon Web Services Support Center</a>.</p>
    #          <p>To use the Amazon Web Services Support App, each account must then complete the following tasks:</p>
    #          <ul>
    #             <li>
    #                <p>Create an Identity and Access Management (IAM) role with the required permission. For more information,
    #           see <a href="https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html">Managing access to the Amazon Web Services Support App</a>.</p>
    #             </li>
    #             <li>
    #                <p>Configure a Slack channel to use the Amazon Web Services Support App for support cases for that account. For
    #           more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/add-your-slack-channel.html">Configuring a Slack channel</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RegisterSlackWorkspaceForOrganizationInput] params
    # @option params [String] :team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>. Specify the Slack workspace that you want to use for your organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     team_id: "teamId", # required
    #   }
    #   options = {}
    #   response = client.register_slack_workspace_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     team_id: "teamId",
    #     team_name: "teamName",
    #     account_type: "AccountType"
    #   }
    # @return [Types::RegisterSlackWorkspaceForOrganizationOutput]
    def register_slack_workspace_for_organization(params = {}, options = {})
      request = build_request(:register_slack_workspace_for_organization, params)
      request.send_request(options)
    end

    # <p>Updates the configuration for a Slack channel, such as case update notifications.</p>
    # @param [Hash, Types::UpdateSlackChannelConfigurationInput] params
    # @option params [String] :team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    # @option params [String] :channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    # @option params [String] :channel_name
    #   <p>The Slack channel name that you want to update.</p>
    # @option params [Boolean] :notify_on_create_or_reopen_case
    #   <p>Whether you want to get notified when a support case is created or reopened.</p>
    # @option params [Boolean] :notify_on_add_correspondence_to_case
    #   <p>Whether you want to get notified when a support case has a new correspondence.</p>
    # @option params [Boolean] :notify_on_resolve_case
    #   <p>Whether you want to get notified when a support case is resolved.</p>
    # @option params [String] :notify_on_case_severity
    #   <p>The case severity for a support case that you want to receive notifications.</p>
    #            <p>If you specify <code>high</code> or <code>all</code>, at least one of the following
    #         parameters must be <code>true</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>none</code>, any of the following parameters that you specify in your
    #         request must be <code>false</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you don't specify these parameters in your request, the Amazon Web Services Support App uses the current
    #           values by default.</p>
    #            </note>
    # @option params [String] :channel_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to
    #   use to perform operations on Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html">Managing access to
    #   the Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     team_id: "teamId", # required
    #     channel_id: "channelId", # required
    #     channel_name: "channelName",
    #     notify_on_create_or_reopen_case: false,
    #     notify_on_add_correspondence_to_case: false,
    #     notify_on_resolve_case: false,
    #     notify_on_case_severity: "NotificationSeverityLevel",
    #     channel_role_arn: "roleArn"
    #   }
    #   options = {}
    #   response = client.update_slack_channel_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     team_id: "teamId",
    #     channel_id: "channelId",
    #     channel_name: "channelName",
    #     notify_on_create_or_reopen_case: false,
    #     notify_on_add_correspondence_to_case: false,
    #     notify_on_resolve_case: false,
    #     notify_on_case_severity: "NotificationSeverityLevel",
    #     channel_role_arn: "roleArn"
    #   }
    # @return [Types::UpdateSlackChannelConfigurationOutput]
    def update_slack_channel_configuration(params = {}, options = {})
      request = build_request(:update_slack_channel_configuration, params)
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
      context[:gem_name] = 'aws-sdk-supportapp'
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

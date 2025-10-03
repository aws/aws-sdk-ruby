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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::SecurityHub
  # An API client for Aws::SecurityHub.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SecurityHubAPIService

    add_plugin(::Aws::SecurityHub::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SecurityHub::EndpointProvider)
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

    # <note>
    #             <p>We recommend using Organizations instead of Security Hub invitations to manage your member accounts. 
    #            For information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html">Managing Security Hub administrator and member accounts with Organizations</a> 
    #            in the <i>Security Hub User Guide</i>.</p>
    #          </note>
    #          <p>Accepts the invitation to be a member account and be monitored by the Security Hub administrator
    #          account that the invitation was sent from.</p>
    #          <p>This operation is only used by member accounts that are not added through
    #          Organizations.</p>
    #          <p>When the member account accepts the invitation, permission is granted to the administrator
    #          account to view findings generated in the member account.</p>
    # @param [Hash, Types::AcceptAdministratorInvitationRequest] params
    # @option params [String] :administrator_id
    #   <p>The account ID of the Security Hub administrator account that sent the invitation.</p>
    # @option params [String] :invitation_id
    #   <p>The identifier of the invitation sent from the Security Hub administrator account.</p>
    # @example To accept an invitation be a member account
    #   # The following example demonstrates how an account can accept an invitation from the Security Hub administrator account to be a member account. This operation is applicable only to member accounts that are not added through AWS Organizations.
    #   params = {
    #     administrator_id: "123456789012",
    #     invitation_id: "7ab938c5d52d7904ad09f9e7c20cc4eb"
    #   }
    #   options = {}
    #   response = client.accept_administrator_invitation(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     administrator_id: "NonEmptyString", # required
    #     invitation_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.accept_administrator_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptAdministratorInvitationResponse]
    def accept_administrator_invitation(params = {}, options = {})
      request = build_request(:accept_administrator_invitation, params)
      request.send_request(options)
    end

    # <p>This method is deprecated. Instead, use <code>AcceptAdministratorInvitation</code>.</p>
    #          <p>The Security Hub console continues to use <code>AcceptInvitation</code>. It will eventually change to use <code>AcceptAdministratorInvitation</code>. Any IAM policies that specifically control access to this function must continue to use <code>AcceptInvitation</code>. You should also add <code>AcceptAdministratorInvitation</code> to your policies to ensure that the correct permissions are in place after the console begins to use <code>AcceptAdministratorInvitation</code>.</p>
    #          <p>Accepts the invitation to be a member account and be monitored by the Security Hub administrator
    #          account that the invitation was sent from.</p>
    #          <p>This operation is only used by member accounts that are not added through
    #          Organizations.</p>
    #          <p>When the member account accepts the invitation, permission is granted to the administrator
    #          account to view findings generated in the member account.</p>
    # @param [Hash, Types::AcceptInvitationRequest] params
    # @option params [String] :master_id
    #   <p>The account ID of the Security Hub administrator account that sent the invitation.</p>
    # @option params [String] :invitation_id
    #   <p>The identifier of the invitation sent from the Security Hub administrator account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     master_id: "NonEmptyString", # required
    #     invitation_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.accept_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This API has been deprecated, use AcceptAdministratorInvitation API instead.
    # @return [Types::AcceptInvitationResponse]
    def accept_invitation(params = {}, options = {})
      request = build_request(:accept_invitation, params)
      request.send_request(options)
    end

    # <p>
    #          Deletes one or more automation rules.
    #       </p>
    # @param [Hash, Types::BatchDeleteAutomationRulesRequest] params
    # @option params [Array<String>] :automation_rules_arns
    #   <p>
    #            A list of Amazon Resource Names (ARNs) for the rules that are to be deleted.
    #         </p>
    # @example To delete one or more automation rules
    #   # The following example deletes the specified automation rules.
    #   params = {
    #     automation_rules_arns: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_automation_rules(params, options)
    #   response.to_h #=>
    #   {
    #     processed_automation_rules: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #     ],
    #     unprocessed_automation_rules: [
    #       {
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #         error_code: 500,
    #         error_message: "InternalException"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     automation_rules_arns: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_automation_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processed_automation_rules: ["NonEmptyString"],
    #     unprocessed_automation_rules: [
    #       {
    #         rule_arn: "NonEmptyString",
    #         error_code: 1,
    #         error_message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteAutomationRulesResponse]
    def batch_delete_automation_rules(params = {}, options = {})
      request = build_request(:batch_delete_automation_rules, params)
      request.send_request(options)
    end

    # <p>Disables the standards specified by the provided
    #          <code>StandardsSubscriptionArns</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html">Security Standards</a> section of the <i>Security Hub User
    #          Guide</i>.</p>
    # @param [Hash, Types::BatchDisableStandardsRequest] params
    # @option params [Array<String>] :standards_subscription_arns
    #   <p>The ARNs of the standards subscriptions to disable.</p>
    # @example To disable one or more security standards
    #   # The following example disables a security standard in Security Hub.
    #   params = {
    #     standards_subscription_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_disable_standards(params, options)
    #   response.to_h #=>
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_arn: "arn:aws:securityhub:eu-central-1::standards/pci-dss/v/3.2.1",
    #         standards_input: {
    #         },
    #         standards_status: DELETING,
    #         standards_subscription_arn: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_subscription_arns: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_disable_standards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_subscription_arn: "NonEmptyString", # required
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: { # required
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         standards_status: "PENDING" # One of: ["PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"], # required
    #         standards_controls_updatable: "READY_FOR_UPDATES" # One of: ["READY_FOR_UPDATES", "NOT_READY_FOR_UPDATES"],
    #         standards_status_reason: {
    #           status_reason_code: "NO_AVAILABLE_CONFIGURATION_RECORDER" # One of: ["NO_AVAILABLE_CONFIGURATION_RECORDER", "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED", "INTERNAL_ERROR"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisableStandardsResponse]
    def batch_disable_standards(params = {}, options = {})
      request = build_request(:batch_disable_standards, params)
      request.send_request(options)
    end

    # <p>Enables the standards specified by the provided <code>StandardsArn</code>. To obtain the
    #          ARN for a standard, use the <code>DescribeStandards</code>
    #          operation.</p>
    #          <p>For more information, see the <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html">Security Standards</a>
    #          section of the <i>Security Hub User Guide</i>.</p>
    # @param [Hash, Types::BatchEnableStandardsRequest] params
    # @option params [Array<Types::StandardsSubscriptionRequest>] :standards_subscription_requests
    #   <p>The list of standards checks to enable.</p>
    # @example To enable security standards
    #   # The following example enables the security standard specified by the StandardArn. You can use this operation to enable one or more Security Hub standards.
    #   params = {
    #     standards_subscription_requests: [
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_enable_standards(params, options)
    #   response.to_h #=>
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1",
    #         standards_input: {
    #         },
    #         standards_status: PENDING,
    #         standards_subscription_arn: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_subscription_requests: [ # required
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: {
    #           "NonEmptyString" => "NonEmptyString"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_enable_standards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_subscription_arn: "NonEmptyString", # required
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: { # required
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         standards_status: "PENDING" # One of: ["PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"], # required
    #         standards_controls_updatable: "READY_FOR_UPDATES" # One of: ["READY_FOR_UPDATES", "NOT_READY_FOR_UPDATES"],
    #         standards_status_reason: {
    #           status_reason_code: "NO_AVAILABLE_CONFIGURATION_RECORDER" # One of: ["NO_AVAILABLE_CONFIGURATION_RECORDER", "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED", "INTERNAL_ERROR"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchEnableStandardsResponse]
    def batch_enable_standards(params = {}, options = {})
      request = build_request(:batch_enable_standards, params)
      request.send_request(options)
    end

    # <p>
    #          Retrieves a list of details for automation rules based on rule Amazon Resource Names 
    #          (ARNs).
    #       </p>
    # @param [Hash, Types::BatchGetAutomationRulesRequest] params
    # @option params [Array<String>] :automation_rules_arns
    #   <p>
    #            A list of rule ARNs to get details for.
    #         </p>
    # @example To update one ore more automation rules
    #   # The following example updates the specified automation rules.
    #   params = {
    #     automation_rules_arns: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_automation_rules(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_name: "sample-rule-name-1",
    #         rule_order: 1,
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         rule_status: ENABLED,
    #         description: "sample rule description 1",
    #         criteria: {
    #           aws_account_id: [
    #             {
    #               value: "111122223333",
    #               comparison: EQUALS
    #             }
    #           ],
    #           type: [
    #             {
    #               value: "Software and Configuration Checks/Industry and Regulatory Standards",
    #               comparison: EQUALS
    #             }
    #           ],
    #           first_observed_at: [
    #             {
    #               date_range: {
    #                 unit: DAYS,
    #                 value: 5
    #               }
    #             }
    #           ]
    #         },
    #         actions: [
    #           {
    #             type: FINDING_FIELDS_UPDATE,
    #             finding_fields_update: {
    #               workflow: {
    #                 status: RESOLVED
    #               }
    #             }
    #           }
    #         ],
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14",
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"),
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z")
    #       },
    #       {
    #         rule_name: "sample-rule-name-2",
    #         rule_order: 2,
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #         rule_status: ENABLED,
    #         description: "Sample rule description 2",
    #         criteria: {
    #           severity_label: [
    #             {
    #               value: "INFORMATIONAL",
    #               comparison: EQUALS
    #             }
    #           ],
    #           resource_type: [
    #             {
    #               value: "Ec2Instance",
    #               comparison: EQUALS
    #             }
    #           ]
    #         },
    #         actions: [
    #           {
    #             type: FINDING_FIELDS_UPDATE,
    #             finding_fields_update: {
    #               workflow: {
    #                 status: RESOLVED
    #               }
    #             }
    #           }
    #         ],
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14",
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"),
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     automation_rules_arns: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_automation_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_arn: "NonEmptyString",
    #         rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         rule_order: 1,
    #         rule_name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         is_terminal: false,
    #         criteria: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           compliance_security_control_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           compliance_associated_standards_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           resource_application_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_application_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           aws_account_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ]
    #         },
    #         actions: [
    #           {
    #             type: "FINDING_FIELDS_UPDATE" # One of: ["FINDING_FIELDS_UPDATE"],
    #             finding_fields_update: {
    #               note: {
    #                 text: "NonEmptyString", # required
    #                 updated_by: "NonEmptyString", # required
    #               },
    #               severity: {
    #                 normalized: 1,
    #                 product: 1.0,
    #                 label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #               },
    #               verification_state: "UNKNOWN" # One of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"],
    #               confidence: 1,
    #               criticality: 1,
    #               types: ["NonEmptyString"],
    #               user_defined_fields: {
    #                 "NonEmptyString" => "NonEmptyString"
    #               },
    #               workflow: {
    #                 status: "NEW" # One of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #               },
    #               related_findings: [
    #                 {
    #                   product_arn: "NonEmptyString", # required
    #                   id: "NonEmptyString", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         created_by: "NonEmptyString"
    #       }
    #     ],
    #     unprocessed_automation_rules: [
    #       {
    #         rule_arn: "NonEmptyString",
    #         error_code: 1,
    #         error_message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetAutomationRulesResponse]
    def batch_get_automation_rules(params = {}, options = {})
      request = build_request(:batch_get_automation_rules, params)
      request.send_request(options)
    end

    # <p>
    #             Returns associations between an Security Hub configuration and a batch of target accounts, organizational units, or the root. 
    #             Only the Security Hub delegated administrator can invoke this operation from the home Region. A configuration 
    #             can refer to a configuration policy or to a self-managed configuration.
    #         </p>
    # @param [Hash, Types::BatchGetConfigurationPolicyAssociationsRequest] params
    # @option params [Array<Types::ConfigurationPolicyAssociation>] :configuration_policy_association_identifiers
    #   <p>
    #               Specifies one or more target account IDs, organizational unit (OU) IDs, or the root ID to retrieve associations for. 
    #           </p>
    # @example To get configuration associations for a batch of targets
    #   # This operation provides details about configuration associations for a batch of target accounts, organizational units, or the root.
    #   params = {
    #     configuration_policy_association_identifiers: [
    #       {
    #         target: {
    #     "AccountId" => 111122223333
    #   }
    #       },
    #       {
    #         target: {
    #     "RootId" => r-f6g7h8i9j0example
    #   }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_configuration_policy_associations(params, options)
    #   response.to_h #=>
    #   {
    #     configuration_policy_associations: [
    #       {
    #         configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         target_id: "111122223333",
    #         target_type: ACCOUNT,
    #         association_type: INHERITED,
    #         updated_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #         association_status: SUCCESS,
    #         association_status_message: "This field is only populated for a failed association"
    #       }
    #     ],
    #     unprocessed_configuration_policy_associations: [
    #       {
    #         error_code: "400",
    #         error_reason: "You do not have sufficient access to perform this action.",
    #         configuration_policy_association_identifiers: {
    #           target: {
    #     "RootId" => r-f6g7h8i9j0example
    #   }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_policy_association_identifiers: [ # required
    #       {
    #         target: {
    #           # One of:
    #           account_id: "NonEmptyString",
    #           organizational_unit_id: "NonEmptyString",
    #           root_id: "NonEmptyString"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_configuration_policy_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_policy_associations: [
    #       {
    #         configuration_policy_id: "NonEmptyString",
    #         target_id: "NonEmptyString",
    #         target_type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"],
    #         association_type: "INHERITED" # One of: ["INHERITED", "APPLIED"],
    #         updated_at: Time.now,
    #         association_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED"],
    #         association_status_message: "NonEmptyString"
    #       }
    #     ],
    #     unprocessed_configuration_policy_associations: [
    #       {
    #         configuration_policy_association_identifiers: {
    #           target: {
    #             # One of:
    #             account_id: "NonEmptyString",
    #             organizational_unit_id: "NonEmptyString",
    #             root_id: "NonEmptyString"
    #           }
    #         },
    #         error_code: "NonEmptyString",
    #         error_reason: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetConfigurationPolicyAssociationsResponse]
    def batch_get_configuration_policy_associations(params = {}, options = {})
      request = build_request(:batch_get_configuration_policy_associations, params)
      request.send_request(options)
    end

    # <p>
    #          Provides details about a batch of security controls for the current Amazon Web Services account and Amazon Web Services Region.
    #       </p>
    # @param [Hash, Types::BatchGetSecurityControlsRequest] params
    # @option params [Array<String>] :security_control_ids
    #   <p> A list of security controls (identified with <code>SecurityControlId</code>,
    #               <code>SecurityControlArn</code>, or a mix of both parameters). The security control ID
    #            or Amazon Resource Name (ARN) is the same across standards. </p>
    # @example To get security control details 
    #   # The following example gets details for the specified controls in the current AWS account and AWS Region.
    #   params = {
    #     security_control_ids: [
    #       "ACM.1",
    #       "APIGateway.1"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_security_controls(params, options)
    #   response.to_h #=>
    #   {
    #     security_controls: [
    #       {
    #         security_control_id: "ACM.1",
    #         security_control_arn: "arn:aws:securityhub:us-west-2:123456789012:security-control/ACM.1",
    #         title: "Imported and ACM-issued certificates should be renewed after a specified time period",
    #         description: "This AWS control checks whether ACM Certificates in your account are marked for expiration within a specified time period. Certificates provided by ACM are automatically renewed. ACM does not automatically renew certificates that you import.",
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/ACM.1/remediation",
    #         severity_rating: MEDIUM,
    #         security_control_status: ENABLED,
    #         update_status: UPDATING,
    #         parameters: {
    #           "daysToExpiration" => {
    #             value_type: DEFAULT,
    #             value: {
    #     "Integer" => 30
    #   }
    #           }
    #         },
    #         last_update_reason: "Stayed with default value"
    #       },
    #       {
    #         security_control_id: "APIGateway.1",
    #         security_control_arn: "arn:aws:securityhub:us-west-2:123456789012:security-control/APIGateway.1",
    #         title: "API Gateway REST and WebSocket API execution logging should be enabled",
    #         description: "This control checks whether all stages of Amazon API Gateway REST and WebSocket APIs have logging enabled. The control fails if logging is not enabled for all methods of a stage or if loggingLevel is neither ERROR nor INFO.",
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/APIGateway.1/remediation",
    #         severity_rating: MEDIUM,
    #         security_control_status: ENABLED,
    #         update_status: UPDATING,
    #         parameters: {
    #           "loggingLevel" => {
    #             value_type: CUSTOM,
    #             value: {
    #     "Enum" => ERROR
    #   }
    #           }
    #         },
    #         last_update_reason: "Updated control parameters to comply with internal requirements"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     security_control_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_security_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_controls: [ # required
    #       {
    #         security_control_id: "NonEmptyString", # required
    #         security_control_arn: "NonEmptyString", # required
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation_url: "NonEmptyString", # required
    #         severity_rating: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "CRITICAL"], # required
    #         security_control_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         update_status: "READY" # One of: ["READY", "UPDATING"],
    #         parameters: {
    #           "NonEmptyString" => {
    #             value_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #             value: {
    #               # One of:
    #               integer: 1,
    #               integer_list: [1],
    #               double: 1.0,
    #               string: "NonEmptyString",
    #               string_list: ["NonEmptyString"],
    #               boolean: false,
    #               enum: "NonEmptyString",
    #               enum_list: ["NonEmptyString"]
    #             }
    #           }
    #         },
    #         last_update_reason: "AlphaNumericNonEmptyString"
    #       }
    #     ],
    #     unprocessed_ids: [
    #       {
    #         security_control_id: "NonEmptyString", # required
    #         error_code: "INVALID_INPUT" # One of: ["INVALID_INPUT", "ACCESS_DENIED", "NOT_FOUND", "RESOURCE_NOT_FOUND", "LIMIT_EXCEEDED"], # required
    #         error_reason: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetSecurityControlsResponse]
    def batch_get_security_controls(params = {}, options = {})
      request = build_request(:batch_get_security_controls, params)
      request.send_request(options)
    end

    # <p>
    #          For a batch of security controls and standards, identifies whether each control is currently enabled or disabled in a standard.
    #       </p>
    #          <p>
    #          Calls to this operation return a <code>RESOURCE_NOT_FOUND_EXCEPTION</code> error when the standard subscription for the association has a <code>NOT_READY_FOR_UPDATES</code> value for <code>StandardsControlsUpdatable</code>.
    #       </p>
    # @param [Hash, Types::BatchGetStandardsControlAssociationsRequest] params
    # @option params [Array<Types::StandardsControlAssociationId>] :standards_control_association_ids
    #   <p>
    #            An array with one or more objects that includes a security control (identified with <code>SecurityControlId</code>, <code>SecurityControlArn</code>, or a mix of both parameters) and the Amazon Resource Name (ARN) of a standard. 
    #            This field is used to query the enablement status of a control in a specified standard. The security control ID or ARN is the same across standards.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_control_association_ids: [ # required
    #       {
    #         security_control_id: "NonEmptyString", # required
    #         standards_arn: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_standards_control_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     standards_control_association_details: [ # required
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         security_control_id: "NonEmptyString", # required
    #         security_control_arn: "NonEmptyString", # required
    #         association_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         related_requirements: ["NonEmptyString"],
    #         updated_at: Time.now,
    #         updated_reason: "NonEmptyString",
    #         standards_control_title: "NonEmptyString",
    #         standards_control_description: "NonEmptyString",
    #         standards_control_arns: ["NonEmptyString"]
    #       }
    #     ],
    #     unprocessed_associations: [
    #       {
    #         standards_control_association_id: { # required
    #           security_control_id: "NonEmptyString", # required
    #           standards_arn: "NonEmptyString", # required
    #         },
    #         error_code: "INVALID_INPUT" # One of: ["INVALID_INPUT", "ACCESS_DENIED", "NOT_FOUND", "RESOURCE_NOT_FOUND", "LIMIT_EXCEEDED"], # required
    #         error_reason: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetStandardsControlAssociationsResponse]
    def batch_get_standards_control_associations(params = {}, options = {})
      request = build_request(:batch_get_standards_control_associations, params)
      request.send_request(options)
    end

    # <p>Imports security findings generated by a finding provider into Security Hub.
    #          This action is requested by the finding provider to import its findings into
    #          Security Hub.</p>
    #          <p>
    #             <code>BatchImportFindings</code> must be called by one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The Amazon Web Services account that is associated with a finding if you are using
    #                the <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs">default product ARN</a> 
    #                or are a partner sending findings from within a customer's Amazon Web Services account. 
    #                In these cases, the identifier of the account that you are calling <code>BatchImportFindings</code> 
    #                from needs to be the same as the <code>AwsAccountId</code> attribute for the finding.</p>
    #             </li>
    #             <li>
    #                <p>An Amazon Web Services account that Security Hub has allow-listed for an official partner
    #                integration. In this case, you can call <code>BatchImportFindings</code> from the allow-listed
    #                account and send findings from different customer accounts in the same batch.</p>
    #             </li>
    #          </ul>
    #          <p>The maximum allowed size for a finding is 240 Kb. An error is returned for any finding
    #          larger than 240 Kb.</p>
    #          <p>After a finding is created, <code>BatchImportFindings</code> cannot be used to update
    #          the following finding fields and objects, which Security Hub customers use to manage their
    #          investigation workflow.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Note</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UserDefinedFields</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>VerificationState</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Workflow</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Finding providers also should not use <code>BatchImportFindings</code> to update the following attributes.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Confidence</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Criticality</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RelatedFindings</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Severity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Types</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Instead, finding providers use <code>FindingProviderFields</code> to provide values for these attributes.</p>
    # @param [Hash, Types::BatchImportFindingsRequest] params
    # @option params [Array<Types::AwsSecurityFinding>] :findings
    #   <p>A list of findings to import. To successfully import a finding, it must follow the
    #               <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html">Amazon Web Services Security Finding Format</a>. Maximum of 100 findings per request.</p>
    # @example To import security findings from a third party provider to Security Hub
    #   # The following example imports findings from a third party provider to Security Hub.
    #   params = {
    #     findings: [
    #       {
    #         aws_account_id: "123456789012",
    #         created_at: "2020-05-27T17:05:54.832Z",
    #         description: "Vulnerability in a CloudTrail trail",
    #         finding_provider_fields: {
    #           severity: {
    #             label: LOW,
    #             original: "10"
    #           },
    #           types: [
    #             "Software and Configuration Checks/Vulnerabilities/CVE"
    #           ]
    #         },
    #         generator_id: "TestGeneratorId",
    #         id: "Id1",
    #         product_arn: "arn:aws:securityhub:us-west-1:123456789012:product/123456789012/default",
    #         resources: [
    #           {
    #             id: "arn:aws:cloudtrail:us-west-1:123456789012:trail/TrailName",
    #             partition: aws,
    #             region: "us-west-1",
    #             type: "AwsCloudTrailTrail"
    #           }
    #         ],
    #         schema_version: "2018-10-08",
    #         title: "CloudTrail trail vulnerability",
    #         updated_at: "2020-06-02T16:05:54.832Z"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_import_findings(params, options)
    #   response.to_h #=>
    #   {
    #     failed_count: 123,
    #     success_count: 123,
    #     failed_findings: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     findings: [ # required
    #       {
    #         schema_version: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #         product_name: "NonEmptyString",
    #         company_name: "NonEmptyString",
    #         region: "NonEmptyString",
    #         generator_id: "NonEmptyString", # required
    #         aws_account_id: "NonEmptyString", # required
    #         types: ["NonEmptyString"],
    #         first_observed_at: "NonEmptyString",
    #         last_observed_at: "NonEmptyString",
    #         created_at: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #         severity: {
    #           product: 1.0,
    #           label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #           normalized: 1,
    #           original: "NonEmptyString"
    #         },
    #         confidence: 1,
    #         criticality: 1,
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation: {
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString"
    #           }
    #         },
    #         source_url: "NonEmptyString",
    #         product_fields: {
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         malware: [
    #           {
    #             name: "NonEmptyString", # required
    #             type: "ADWARE" # One of: ["ADWARE", "BLENDED_THREAT", "BOTNET_AGENT", "COIN_MINER", "EXPLOIT_KIT", "KEYLOGGER", "MACRO", "POTENTIALLY_UNWANTED", "SPYWARE", "RANSOMWARE", "REMOTE_ACCESS", "ROOTKIT", "TROJAN", "VIRUS", "WORM"],
    #             path: "NonEmptyString",
    #             state: "OBSERVED" # One of: ["OBSERVED", "REMOVAL_FAILED", "REMOVED"]
    #           }
    #         ],
    #         network: {
    #           direction: "IN" # One of: ["IN", "OUT"],
    #           protocol: "NonEmptyString",
    #           open_port_range: {
    #             begin: 1,
    #             end: 1
    #           },
    #           source_ip_v4: "NonEmptyString",
    #           source_ip_v6: "NonEmptyString",
    #           source_port: 1,
    #           source_domain: "NonEmptyString",
    #           source_mac: "NonEmptyString",
    #           destination_ip_v4: "NonEmptyString",
    #           destination_ip_v6: "NonEmptyString",
    #           destination_port: 1,
    #           destination_domain: "NonEmptyString"
    #         },
    #         network_path: [
    #           {
    #             component_id: "NonEmptyString",
    #             component_type: "NonEmptyString",
    #             egress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               }
    #             },
    #             ingress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ],
    #         process: {
    #           name: "NonEmptyString",
    #           path: "NonEmptyString",
    #           pid: 1,
    #           parent_pid: 1,
    #           launched_at: "NonEmptyString",
    #           terminated_at: "NonEmptyString"
    #         },
    #         threats: [
    #           {
    #             name: "NonEmptyString",
    #             severity: "NonEmptyString",
    #             item_count: 1,
    #             file_paths: [
    #               {
    #                 file_path: "NonEmptyString",
    #                 file_name: "NonEmptyString",
    #                 resource_id: "NonEmptyString",
    #                 hash: "NonEmptyString"
    #               }
    #             ]
    #           }
    #         ],
    #         threat_intel_indicators: [
    #           {
    #             type: "DOMAIN" # One of: ["DOMAIN", "EMAIL_ADDRESS", "HASH_MD5", "HASH_SHA1", "HASH_SHA256", "HASH_SHA512", "IPV4_ADDRESS", "IPV6_ADDRESS", "MUTEX", "PROCESS", "URL"],
    #             value: "NonEmptyString",
    #             category: "BACKDOOR" # One of: ["BACKDOOR", "CARD_STEALER", "COMMAND_AND_CONTROL", "DROP_SITE", "EXPLOIT_SITE", "KEYLOGGER"],
    #             last_observed_at: "NonEmptyString",
    #             source: "NonEmptyString",
    #             source_url: "NonEmptyString"
    #           }
    #         ],
    #         resources: [ # required
    #           {
    #             type: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             partition: "aws" # One of: ["aws", "aws-cn", "aws-us-gov"],
    #             region: "NonEmptyString",
    #             resource_role: "NonEmptyString",
    #             tags: {
    #               "NonEmptyString" => "NonEmptyString"
    #             },
    #             data_classification: {
    #               detailed_results_location: "NonEmptyString",
    #               result: {
    #                 mime_type: "NonEmptyString",
    #                 size_classified: 1,
    #                 additional_occurrences: false,
    #                 status: {
    #                   code: "NonEmptyString",
    #                   reason: "NonEmptyString"
    #                 },
    #                 sensitive_data: [
    #                   {
    #                     category: "NonEmptyString",
    #                     detections: [
    #                       {
    #                         count: 1,
    #                         type: "NonEmptyString",
    #                         occurrences: {
    #                           line_ranges: [
    #                             {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             }
    #                           ],
    #                           offset_ranges: [
    #                             {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             }
    #                           ],
    #                           pages: [
    #                             {
    #                               page_number: 1,
    #                               line_range: {
    #                                 start: 1,
    #                                 end: 1,
    #                                 start_column: 1
    #                               },
    #                               offset_range: {
    #                                 start: 1,
    #                                 end: 1,
    #                                 start_column: 1
    #                               }
    #                             }
    #                           ],
    #                           records: [
    #                             {
    #                               json_path: "NonEmptyString",
    #                               record_index: 1
    #                             }
    #                           ],
    #                           cells: [
    #                             {
    #                               column: 1,
    #                               row: 1,
    #                               column_name: "NonEmptyString",
    #                               cell_reference: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     ],
    #                     total_count: 1
    #                   }
    #                 ],
    #                 custom_data_identifiers: {
    #                   detections: [
    #                     {
    #                       count: 1,
    #                       arn: "NonEmptyString",
    #                       name: "NonEmptyString",
    #                       occurrences: {
    #                         line_ranges: [
    #                           {
    #                             start: 1,
    #                             end: 1,
    #                             start_column: 1
    #                           }
    #                         ],
    #                         offset_ranges: [
    #                           {
    #                             start: 1,
    #                             end: 1,
    #                             start_column: 1
    #                           }
    #                         ],
    #                         pages: [
    #                           {
    #                             page_number: 1,
    #                             line_range: {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             },
    #                             offset_range: {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             }
    #                           }
    #                         ],
    #                         records: [
    #                           {
    #                             json_path: "NonEmptyString",
    #                             record_index: 1
    #                           }
    #                         ],
    #                         cells: [
    #                           {
    #                             column: 1,
    #                             row: 1,
    #                             column_name: "NonEmptyString",
    #                             cell_reference: "NonEmptyString"
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   ],
    #                   total_count: 1
    #                 }
    #               }
    #             },
    #             details: {
    #               aws_auto_scaling_auto_scaling_group: {
    #                 launch_configuration_name: "NonEmptyString",
    #                 load_balancer_names: ["NonEmptyString"],
    #                 health_check_type: "NonEmptyString",
    #                 health_check_grace_period: 1,
    #                 created_time: "NonEmptyString",
    #                 mixed_instances_policy: {
    #                   instances_distribution: {
    #                     on_demand_allocation_strategy: "NonEmptyString",
    #                     on_demand_base_capacity: 1,
    #                     on_demand_percentage_above_base_capacity: 1,
    #                     spot_allocation_strategy: "NonEmptyString",
    #                     spot_instance_pools: 1,
    #                     spot_max_price: "NonEmptyString"
    #                   },
    #                   launch_template: {
    #                     launch_template_specification: {
    #                       launch_template_id: "NonEmptyString",
    #                       launch_template_name: "NonEmptyString",
    #                       version: "NonEmptyString"
    #                     },
    #                     overrides: [
    #                       {
    #                         instance_type: "NonEmptyString",
    #                         weighted_capacity: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 availability_zones: [
    #                   {
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 launch_template: {
    #                   launch_template_id: "NonEmptyString",
    #                   launch_template_name: "NonEmptyString",
    #                   version: "NonEmptyString"
    #                 },
    #                 capacity_rebalance: false
    #               },
    #               aws_code_build_project: {
    #                 encryption_key: "NonEmptyString",
    #                 artifacts: [
    #                   {
    #                     artifact_identifier: "NonEmptyString",
    #                     encryption_disabled: false,
    #                     location: "NonEmptyString",
    #                     name: "NonEmptyString",
    #                     namespace_type: "NonEmptyString",
    #                     override_artifact_name: false,
    #                     packaging: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 environment: {
    #                   certificate: "NonEmptyString",
    #                   environment_variables: [
    #                     {
    #                       name: "NonEmptyString",
    #                       type: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ],
    #                   privileged_mode: false,
    #                   image_pull_credentials_type: "NonEmptyString",
    #                   registry_credential: {
    #                     credential: "NonEmptyString",
    #                     credential_provider: "NonEmptyString"
    #                   },
    #                   type: "NonEmptyString"
    #                 },
    #                 name: "NonEmptyString",
    #                 source: {
    #                   type: "NonEmptyString",
    #                   location: "NonEmptyString",
    #                   git_clone_depth: 1,
    #                   insecure_ssl: false
    #                 },
    #                 service_role: "NonEmptyString",
    #                 logs_config: {
    #                   cloud_watch_logs: {
    #                     group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     stream_name: "NonEmptyString"
    #                   },
    #                   s3_logs: {
    #                     encryption_disabled: false,
    #                     location: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 },
    #                 vpc_config: {
    #                   vpc_id: "NonEmptyString",
    #                   subnets: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"]
    #                 },
    #                 secondary_artifacts: [
    #                   {
    #                     artifact_identifier: "NonEmptyString",
    #                     encryption_disabled: false,
    #                     location: "NonEmptyString",
    #                     name: "NonEmptyString",
    #                     namespace_type: "NonEmptyString",
    #                     override_artifact_name: false,
    #                     packaging: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_cloud_front_distribution: {
    #                 cache_behaviors: {
    #                   items: [
    #                     {
    #                       viewer_protocol_policy: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 default_cache_behavior: {
    #                   viewer_protocol_policy: "NonEmptyString"
    #                 },
    #                 default_root_object: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 e_tag: "NonEmptyString",
    #                 last_modified_time: "NonEmptyString",
    #                 logging: {
    #                   bucket: "NonEmptyString",
    #                   enabled: false,
    #                   include_cookies: false,
    #                   prefix: "NonEmptyString"
    #                 },
    #                 origins: {
    #                   items: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       id: "NonEmptyString",
    #                       origin_path: "NonEmptyString",
    #                       s3_origin_config: {
    #                         origin_access_identity: "NonEmptyString"
    #                       },
    #                       custom_origin_config: {
    #                         http_port: 1,
    #                         https_port: 1,
    #                         origin_keepalive_timeout: 1,
    #                         origin_protocol_policy: "NonEmptyString",
    #                         origin_read_timeout: 1,
    #                         origin_ssl_protocols: {
    #                           items: ["NonEmptyString"],
    #                           quantity: 1
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 origin_groups: {
    #                   items: [
    #                     {
    #                       failover_criteria: {
    #                         status_codes: {
    #                           items: [1],
    #                           quantity: 1
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 viewer_certificate: {
    #                   acm_certificate_arn: "NonEmptyString",
    #                   certificate: "NonEmptyString",
    #                   certificate_source: "NonEmptyString",
    #                   cloud_front_default_certificate: false,
    #                   iam_certificate_id: "NonEmptyString",
    #                   minimum_protocol_version: "NonEmptyString",
    #                   ssl_support_method: "NonEmptyString"
    #                 },
    #                 status: "NonEmptyString",
    #                 web_acl_id: "NonEmptyString"
    #               },
    #               aws_ec2_instance: {
    #                 type: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 ip_v4_addresses: ["NonEmptyString"],
    #                 ip_v6_addresses: ["NonEmptyString"],
    #                 key_name: "NonEmptyString",
    #                 iam_instance_profile_arn: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #                 network_interfaces: [
    #                   {
    #                     network_interface_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 virtualization_type: "NonEmptyString",
    #                 metadata_options: {
    #                   http_endpoint: "NonEmptyString",
    #                   http_protocol_ipv6: "NonEmptyString",
    #                   http_put_response_hop_limit: 1,
    #                   http_tokens: "NonEmptyString",
    #                   instance_metadata_tags: "NonEmptyString"
    #                 },
    #                 monitoring: {
    #                   state: "NonEmptyString"
    #                 }
    #               },
    #               aws_ec2_network_interface: {
    #                 attachment: {
    #                   attach_time: "NonEmptyString",
    #                   attachment_id: "NonEmptyString",
    #                   delete_on_termination: false,
    #                   device_index: 1,
    #                   instance_id: "NonEmptyString",
    #                   instance_owner_id: "NonEmptyString",
    #                   status: "NonEmptyString"
    #                 },
    #                 network_interface_id: "NonEmptyString",
    #                 security_groups: [
    #                   {
    #                     group_name: "NonEmptyString",
    #                     group_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 source_dest_check: false,
    #                 ip_v6_addresses: [
    #                   {
    #                     ip_v6_address: "NonEmptyString"
    #                   }
    #                 ],
    #                 private_ip_addresses: [
    #                   {
    #                     private_ip_address: "NonEmptyString",
    #                     private_dns_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 public_dns_name: "NonEmptyString",
    #                 public_ip: "NonEmptyString"
    #               },
    #               aws_ec2_security_group: {
    #                 group_name: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 ip_permissions: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString"
    #                       }
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString"
    #                       }
    #                     ],
    #                     ipv6_ranges: [
    #                       {
    #                         cidr_ipv6: "NonEmptyString"
    #                       }
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 ip_permissions_egress: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString"
    #                       }
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString"
    #                       }
    #                     ],
    #                     ipv6_ranges: [
    #                       {
    #                         cidr_ipv6: "NonEmptyString"
    #                       }
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               },
    #               aws_ec2_volume: {
    #                 create_time: "NonEmptyString",
    #                 device_name: "NonEmptyString",
    #                 encrypted: false,
    #                 size: 1,
    #                 snapshot_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 attachments: [
    #                   {
    #                     attach_time: "NonEmptyString",
    #                     delete_on_termination: false,
    #                     instance_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 volume_id: "NonEmptyString",
    #                 volume_type: "NonEmptyString",
    #                 volume_scan_status: "NonEmptyString"
    #               },
    #               aws_ec2_vpc: {
    #                 cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString"
    #                   }
    #                 ],
    #                 ipv6_cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     ipv6_cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString"
    #                   }
    #                 ],
    #                 dhcp_options_id: "NonEmptyString",
    #                 state: "NonEmptyString"
    #               },
    #               aws_ec2_eip: {
    #                 instance_id: "NonEmptyString",
    #                 public_ip: "NonEmptyString",
    #                 allocation_id: "NonEmptyString",
    #                 association_id: "NonEmptyString",
    #                 domain: "NonEmptyString",
    #                 public_ipv4_pool: "NonEmptyString",
    #                 network_border_group: "NonEmptyString",
    #                 network_interface_id: "NonEmptyString",
    #                 network_interface_owner_id: "NonEmptyString",
    #                 private_ip_address: "NonEmptyString"
    #               },
    #               aws_ec2_subnet: {
    #                 assign_ipv6_address_on_creation: false,
    #                 availability_zone: "NonEmptyString",
    #                 availability_zone_id: "NonEmptyString",
    #                 available_ip_address_count: 1,
    #                 cidr_block: "NonEmptyString",
    #                 default_for_az: false,
    #                 map_public_ip_on_launch: false,
    #                 owner_id: "NonEmptyString",
    #                 state: "NonEmptyString",
    #                 subnet_arn: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 ipv6_cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     ipv6_cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_ec2_network_acl: {
    #                 is_default: false,
    #                 network_acl_id: "NonEmptyString",
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 associations: [
    #                   {
    #                     network_acl_association_id: "NonEmptyString",
    #                     network_acl_id: "NonEmptyString",
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 entries: [
    #                   {
    #                     cidr_block: "NonEmptyString",
    #                     egress: false,
    #                     icmp_type_code: {
    #                       code: 1,
    #                       type: 1
    #                     },
    #                     ipv6_cidr_block: "NonEmptyString",
    #                     port_range: {
    #                       from: 1,
    #                       to: 1
    #                     },
    #                     protocol: "NonEmptyString",
    #                     rule_action: "NonEmptyString",
    #                     rule_number: 1
    #                   }
    #                 ]
    #               },
    #               aws_elbv2_load_balancer: {
    #                 availability_zones: [
    #                   {
    #                     zone_name: "NonEmptyString",
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 canonical_hosted_zone_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 ip_address_type: "NonEmptyString",
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 state: {
    #                   code: "NonEmptyString",
    #                   reason: "NonEmptyString"
    #                 },
    #                 type: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 load_balancer_attributes: [
    #                   {
    #                     key: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_elastic_beanstalk_environment: {
    #                 application_name: "NonEmptyString",
    #                 cname: "NonEmptyString",
    #                 date_created: "NonEmptyString",
    #                 date_updated: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 endpoint_url: "NonEmptyString",
    #                 environment_arn: "NonEmptyString",
    #                 environment_id: "NonEmptyString",
    #                 environment_links: [
    #                   {
    #                     environment_name: "NonEmptyString",
    #                     link_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 environment_name: "NonEmptyString",
    #                 option_settings: [
    #                   {
    #                     namespace: "NonEmptyString",
    #                     option_name: "NonEmptyString",
    #                     resource_name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 platform_arn: "NonEmptyString",
    #                 solution_stack_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 tier: {
    #                   name: "NonEmptyString",
    #                   type: "NonEmptyString",
    #                   version: "NonEmptyString"
    #                 },
    #                 version_label: "NonEmptyString"
    #               },
    #               aws_elasticsearch_domain: {
    #                 access_policies: "NonEmptyString",
    #                 domain_endpoint_options: {
    #                   enforce_https: false,
    #                   tls_security_policy: "NonEmptyString"
    #                 },
    #                 domain_id: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 endpoints: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 elasticsearch_version: "NonEmptyString",
    #                 elasticsearch_cluster_config: {
    #                   dedicated_master_count: 1,
    #                   dedicated_master_enabled: false,
    #                   dedicated_master_type: "NonEmptyString",
    #                   instance_count: 1,
    #                   instance_type: "NonEmptyString",
    #                   zone_awareness_config: {
    #                     availability_zone_count: 1
    #                   },
    #                   zone_awareness_enabled: false
    #                 },
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: "NonEmptyString"
    #                 },
    #                 log_publishing_options: {
    #                   index_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   search_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   audit_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   }
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false
    #                 },
    #                 service_software_options: {
    #                   automated_update_date: "NonEmptyString",
    #                   cancellable: false,
    #                   current_version: "NonEmptyString",
    #                   description: "NonEmptyString",
    #                   new_version: "NonEmptyString",
    #                   update_available: false,
    #                   update_status: "NonEmptyString"
    #                 },
    #                 vpc_options: {
    #                   availability_zones: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString"
    #                 }
    #               },
    #               aws_s3_bucket: {
    #                 owner_id: "NonEmptyString",
    #                 owner_name: "NonEmptyString",
    #                 owner_account_id: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 server_side_encryption_configuration: {
    #                   rules: [
    #                     {
    #                       apply_server_side_encryption_by_default: {
    #                         sse_algorithm: "NonEmptyString",
    #                         kms_master_key_id: "NonEmptyString"
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 bucket_lifecycle_configuration: {
    #                   rules: [
    #                     {
    #                       abort_incomplete_multipart_upload: {
    #                         days_after_initiation: 1
    #                       },
    #                       expiration_date: "NonEmptyString",
    #                       expiration_in_days: 1,
    #                       expired_object_delete_marker: false,
    #                       filter: {
    #                         predicate: {
    #                           operands: [
    #                             {
    #                               prefix: "NonEmptyString",
    #                               tag: {
    #                                 key: "NonEmptyString",
    #                                 value: "NonEmptyString"
    #                               },
    #                               type: "NonEmptyString"
    #                             }
    #                           ],
    #                           prefix: "NonEmptyString",
    #                           tag: {
    #                             key: "NonEmptyString",
    #                             value: "NonEmptyString"
    #                           },
    #                           type: "NonEmptyString"
    #                         }
    #                       },
    #                       id: "NonEmptyString",
    #                       noncurrent_version_expiration_in_days: 1,
    #                       noncurrent_version_transitions: [
    #                         {
    #                           days: 1,
    #                           storage_class: "NonEmptyString"
    #                         }
    #                       ],
    #                       prefix: "NonEmptyString",
    #                       status: "NonEmptyString",
    #                       transitions: [
    #                         {
    #                           date: "NonEmptyString",
    #                           days: 1,
    #                           storage_class: "NonEmptyString"
    #                         }
    #                       ]
    #                     }
    #                   ]
    #                 },
    #                 public_access_block_configuration: {
    #                   block_public_acls: false,
    #                   block_public_policy: false,
    #                   ignore_public_acls: false,
    #                   restrict_public_buckets: false
    #                 },
    #                 access_control_list: "NonEmptyString",
    #                 bucket_logging_configuration: {
    #                   destination_bucket_name: "NonEmptyString",
    #                   log_file_prefix: "NonEmptyString"
    #                 },
    #                 bucket_website_configuration: {
    #                   error_document: "NonEmptyString",
    #                   index_document_suffix: "NonEmptyString",
    #                   redirect_all_requests_to: {
    #                     hostname: "NonEmptyString",
    #                     protocol: "NonEmptyString"
    #                   },
    #                   routing_rules: [
    #                     {
    #                       condition: {
    #                         http_error_code_returned_equals: "NonEmptyString",
    #                         key_prefix_equals: "NonEmptyString"
    #                       },
    #                       redirect: {
    #                         hostname: "NonEmptyString",
    #                         http_redirect_code: "NonEmptyString",
    #                         protocol: "NonEmptyString",
    #                         replace_key_prefix_with: "NonEmptyString",
    #                         replace_key_with: "NonEmptyString"
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 bucket_notification_configuration: {
    #                   configurations: [
    #                     {
    #                       events: ["NonEmptyString"],
    #                       filter: {
    #                         s3_key_filter: {
    #                           filter_rules: [
    #                             {
    #                               name: "Prefix" # One of: ["Prefix", "Suffix"],
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       destination: "NonEmptyString",
    #                       type: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 bucket_versioning_configuration: {
    #                   is_mfa_delete_enabled: false,
    #                   status: "NonEmptyString"
    #                 },
    #                 object_lock_configuration: {
    #                   object_lock_enabled: "NonEmptyString",
    #                   rule: {
    #                     default_retention: {
    #                       days: 1,
    #                       mode: "NonEmptyString",
    #                       years: 1
    #                     }
    #                   }
    #                 },
    #                 name: "NonEmptyString"
    #               },
    #               aws_s3_account_public_access_block: {
    #                 block_public_acls: false,
    #                 block_public_policy: false,
    #                 ignore_public_acls: false,
    #                 restrict_public_buckets: false
    #               },
    #               aws_s3_object: {
    #                 last_modified: "NonEmptyString",
    #                 e_tag: "NonEmptyString",
    #                 version_id: "NonEmptyString",
    #                 content_type: "NonEmptyString",
    #                 server_side_encryption: "NonEmptyString",
    #                 ssekms_key_id: "NonEmptyString"
    #               },
    #               aws_secrets_manager_secret: {
    #                 rotation_rules: {
    #                   automatically_after_days: 1
    #                 },
    #                 rotation_occurred_within_frequency: false,
    #                 kms_key_id: "NonEmptyString",
    #                 rotation_enabled: false,
    #                 rotation_lambda_arn: "NonEmptyString",
    #                 deleted: false,
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString"
    #               },
    #               aws_iam_access_key: {
    #                 user_name: "NonEmptyString",
    #                 status: "Active" # One of: ["Active", "Inactive"],
    #                 created_at: "NonEmptyString",
    #                 principal_id: "NonEmptyString",
    #                 principal_type: "NonEmptyString",
    #                 principal_name: "NonEmptyString",
    #                 account_id: "NonEmptyString",
    #                 access_key_id: "NonEmptyString",
    #                 session_context: {
    #                   attributes: {
    #                     mfa_authenticated: false,
    #                     creation_date: "NonEmptyString"
    #                   },
    #                   session_issuer: {
    #                     type: "NonEmptyString",
    #                     principal_id: "NonEmptyString",
    #                     arn: "NonEmptyString",
    #                     account_id: "NonEmptyString",
    #                     user_name: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_iam_user: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_list: ["NonEmptyString"],
    #                 path: "NonEmptyString",
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString"
    #                 },
    #                 user_id: "NonEmptyString",
    #                 user_name: "NonEmptyString",
    #                 user_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_iam_policy: {
    #                 attachment_count: 1,
    #                 create_date: "NonEmptyString",
    #                 default_version_id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 is_attachable: false,
    #                 path: "NonEmptyString",
    #                 permissions_boundary_usage_count: 1,
    #                 policy_id: "NonEmptyString",
    #                 policy_name: "NonEmptyString",
    #                 policy_version_list: [
    #                   {
    #                     version_id: "NonEmptyString",
    #                     is_default_version: false,
    #                     create_date: "NonEmptyString"
    #                   }
    #                 ],
    #                 update_date: "NonEmptyString"
    #               },
    #               aws_api_gateway_v2_stage: {
    #                 client_certificate_id: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 default_route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0
    #                 },
    #                 deployment_id: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0
    #                 },
    #                 stage_name: "NonEmptyString",
    #                 stage_variables: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString"
    #                 },
    #                 auto_deploy: false,
    #                 last_deployment_status_message: "NonEmptyString",
    #                 api_gateway_managed: false
    #               },
    #               aws_api_gateway_v2_api: {
    #                 api_endpoint: "NonEmptyString",
    #                 api_id: "NonEmptyString",
    #                 api_key_selection_expression: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 protocol_type: "NonEmptyString",
    #                 route_selection_expression: "NonEmptyString",
    #                 cors_configuration: {
    #                   allow_origins: ["NonEmptyString"],
    #                   allow_credentials: false,
    #                   expose_headers: ["NonEmptyString"],
    #                   max_age: 1,
    #                   allow_methods: ["NonEmptyString"],
    #                   allow_headers: ["NonEmptyString"]
    #                 }
    #               },
    #               aws_dynamo_db_table: {
    #                 attribute_definitions: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     attribute_type: "NonEmptyString"
    #                   }
    #                 ],
    #                 billing_mode_summary: {
    #                   billing_mode: "NonEmptyString",
    #                   last_update_to_pay_per_request_date_time: "NonEmptyString"
    #                 },
    #                 creation_date_time: "NonEmptyString",
    #                 global_secondary_indexes: [
    #                   {
    #                     backfilling: false,
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     index_size_bytes: 1,
    #                     index_status: "NonEmptyString",
    #                     item_count: 1,
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString"
    #                       }
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString"
    #                     },
    #                     provisioned_throughput: {
    #                       last_decrease_date_time: "NonEmptyString",
    #                       last_increase_date_time: "NonEmptyString",
    #                       number_of_decreases_today: 1,
    #                       read_capacity_units: 1,
    #                       write_capacity_units: 1
    #                     }
    #                   }
    #                 ],
    #                 global_table_version: "NonEmptyString",
    #                 item_count: 1,
    #                 key_schema: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     key_type: "NonEmptyString"
    #                   }
    #                 ],
    #                 latest_stream_arn: "NonEmptyString",
    #                 latest_stream_label: "NonEmptyString",
    #                 local_secondary_indexes: [
    #                   {
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString"
    #                       }
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 provisioned_throughput: {
    #                   last_decrease_date_time: "NonEmptyString",
    #                   last_increase_date_time: "NonEmptyString",
    #                   number_of_decreases_today: 1,
    #                   read_capacity_units: 1,
    #                   write_capacity_units: 1
    #                 },
    #                 replicas: [
    #                   {
    #                     global_secondary_indexes: [
    #                       {
    #                         index_name: "NonEmptyString",
    #                         provisioned_throughput_override: {
    #                           read_capacity_units: 1
    #                         }
    #                       }
    #                     ],
    #                     kms_master_key_id: "NonEmptyString",
    #                     provisioned_throughput_override: {
    #                       read_capacity_units: 1
    #                     },
    #                     region_name: "NonEmptyString",
    #                     replica_status: "NonEmptyString",
    #                     replica_status_description: "NonEmptyString"
    #                   }
    #                 ],
    #                 restore_summary: {
    #                   source_backup_arn: "NonEmptyString",
    #                   source_table_arn: "NonEmptyString",
    #                   restore_date_time: "NonEmptyString",
    #                   restore_in_progress: false
    #                 },
    #                 sse_description: {
    #                   inaccessible_encryption_date_time: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                   sse_type: "NonEmptyString",
    #                   kms_master_key_arn: "NonEmptyString"
    #                 },
    #                 stream_specification: {
    #                   stream_enabled: false,
    #                   stream_view_type: "NonEmptyString"
    #                 },
    #                 table_id: "NonEmptyString",
    #                 table_name: "NonEmptyString",
    #                 table_size_bytes: 1,
    #                 table_status: "NonEmptyString",
    #                 deletion_protection_enabled: false
    #               },
    #               aws_api_gateway_stage: {
    #                 deployment_id: "NonEmptyString",
    #                 client_certificate_id: "NonEmptyString",
    #                 stage_name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 cache_cluster_enabled: false,
    #                 cache_cluster_size: "NonEmptyString",
    #                 cache_cluster_status: "NonEmptyString",
    #                 method_settings: [
    #                   {
    #                     metrics_enabled: false,
    #                     logging_level: "NonEmptyString",
    #                     data_trace_enabled: false,
    #                     throttling_burst_limit: 1,
    #                     throttling_rate_limit: 1.0,
    #                     caching_enabled: false,
    #                     cache_ttl_in_seconds: 1,
    #                     cache_data_encrypted: false,
    #                     require_authorization_for_cache_control: false,
    #                     unauthorized_cache_control_header_strategy: "NonEmptyString",
    #                     http_method: "NonEmptyString",
    #                     resource_path: "NonEmptyString"
    #                   }
    #                 ],
    #                 variables: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 documentation_version: "NonEmptyString",
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString"
    #                 },
    #                 canary_settings: {
    #                   percent_traffic: 1.0,
    #                   deployment_id: "NonEmptyString",
    #                   stage_variable_overrides: {
    #                     "NonEmptyString" => "NonEmptyString"
    #                   },
    #                   use_stage_cache: false
    #                 },
    #                 tracing_enabled: false,
    #                 created_date: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 web_acl_arn: "NonEmptyString"
    #               },
    #               aws_api_gateway_rest_api: {
    #                 id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 binary_media_types: ["NonEmptyString"],
    #                 minimum_compression_size: 1,
    #                 api_key_source: "NonEmptyString",
    #                 endpoint_configuration: {
    #                   types: ["NonEmptyString"]
    #                 }
    #               },
    #               aws_cloud_trail_trail: {
    #                 cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                 cloud_watch_logs_role_arn: "NonEmptyString",
    #                 has_custom_event_selectors: false,
    #                 home_region: "NonEmptyString",
    #                 include_global_service_events: false,
    #                 is_multi_region_trail: false,
    #                 is_organization_trail: false,
    #                 kms_key_id: "NonEmptyString",
    #                 log_file_validation_enabled: false,
    #                 name: "NonEmptyString",
    #                 s3_bucket_name: "NonEmptyString",
    #                 s3_key_prefix: "NonEmptyString",
    #                 sns_topic_arn: "NonEmptyString",
    #                 sns_topic_name: "NonEmptyString",
    #                 trail_arn: "NonEmptyString"
    #               },
    #               aws_ssm_patch_compliance: {
    #                 patch: {
    #                   compliance_summary: {
    #                     status: "NonEmptyString",
    #                     compliant_critical_count: 1,
    #                     compliant_high_count: 1,
    #                     compliant_medium_count: 1,
    #                     execution_type: "NonEmptyString",
    #                     non_compliant_critical_count: 1,
    #                     compliant_informational_count: 1,
    #                     non_compliant_informational_count: 1,
    #                     compliant_unspecified_count: 1,
    #                     non_compliant_low_count: 1,
    #                     non_compliant_high_count: 1,
    #                     compliant_low_count: 1,
    #                     compliance_type: "NonEmptyString",
    #                     patch_baseline_id: "NonEmptyString",
    #                     overall_severity: "NonEmptyString",
    #                     non_compliant_medium_count: 1,
    #                     non_compliant_unspecified_count: 1,
    #                     patch_group: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_certificate_manager_certificate: {
    #                 certificate_authority_arn: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 domain_validation_options: [
    #                   {
    #                     domain_name: "NonEmptyString",
    #                     resource_record: {
    #                       name: "NonEmptyString",
    #                       type: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     },
    #                     validation_domain: "NonEmptyString",
    #                     validation_emails: ["NonEmptyString"],
    #                     validation_method: "NonEmptyString",
    #                     validation_status: "NonEmptyString"
    #                   }
    #                 ],
    #                 extended_key_usages: [
    #                   {
    #                     name: "NonEmptyString",
    #                     o_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 failure_reason: "NonEmptyString",
    #                 imported_at: "NonEmptyString",
    #                 in_use_by: ["NonEmptyString"],
    #                 issued_at: "NonEmptyString",
    #                 issuer: "NonEmptyString",
    #                 key_algorithm: "NonEmptyString",
    #                 key_usages: [
    #                   {
    #                     name: "NonEmptyString"
    #                   }
    #                 ],
    #                 not_after: "NonEmptyString",
    #                 not_before: "NonEmptyString",
    #                 options: {
    #                   certificate_transparency_logging_preference: "NonEmptyString"
    #                 },
    #                 renewal_eligibility: "NonEmptyString",
    #                 renewal_summary: {
    #                   domain_validation_options: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       resource_record: {
    #                         name: "NonEmptyString",
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       },
    #                       validation_domain: "NonEmptyString",
    #                       validation_emails: ["NonEmptyString"],
    #                       validation_method: "NonEmptyString",
    #                       validation_status: "NonEmptyString"
    #                     }
    #                   ],
    #                   renewal_status: "NonEmptyString",
    #                   renewal_status_reason: "NonEmptyString",
    #                   updated_at: "NonEmptyString"
    #                 },
    #                 serial: "NonEmptyString",
    #                 signature_algorithm: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 subject: "NonEmptyString",
    #                 subject_alternative_names: ["NonEmptyString"],
    #                 type: "NonEmptyString"
    #               },
    #               aws_redshift_cluster: {
    #                 allow_version_upgrade: false,
    #                 automated_snapshot_retention_period: 1,
    #                 availability_zone: "NonEmptyString",
    #                 cluster_availability_status: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 cluster_identifier: "NonEmptyString",
    #                 cluster_nodes: [
    #                   {
    #                     node_role: "NonEmptyString",
    #                     private_ip_address: "NonEmptyString",
    #                     public_ip_address: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_parameter_groups: [
    #                   {
    #                     cluster_parameter_status_list: [
    #                       {
    #                         parameter_name: "NonEmptyString",
    #                         parameter_apply_status: "NonEmptyString",
    #                         parameter_apply_error_description: "NonEmptyString"
    #                       }
    #                     ],
    #                     parameter_apply_status: "NonEmptyString",
    #                     parameter_group_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_public_key: "NonEmptyString",
    #                 cluster_revision_number: "NonEmptyString",
    #                 cluster_security_groups: [
    #                   {
    #                     cluster_security_group_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_snapshot_copy_status: {
    #                   destination_region: "NonEmptyString",
    #                   manual_snapshot_retention_period: 1,
    #                   retention_period: 1,
    #                   snapshot_copy_grant_name: "NonEmptyString"
    #                 },
    #                 cluster_status: "NonEmptyString",
    #                 cluster_subnet_group_name: "NonEmptyString",
    #                 cluster_version: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deferred_maintenance_windows: [
    #                   {
    #                     defer_maintenance_end_time: "NonEmptyString",
    #                     defer_maintenance_identifier: "NonEmptyString",
    #                     defer_maintenance_start_time: "NonEmptyString"
    #                   }
    #                 ],
    #                 elastic_ip_status: {
    #                   elastic_ip: "NonEmptyString",
    #                   status: "NonEmptyString"
    #                 },
    #                 elastic_resize_number_of_node_options: "NonEmptyString",
    #                 encrypted: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1
    #                 },
    #                 enhanced_vpc_routing: false,
    #                 expected_next_snapshot_schedule_time: "NonEmptyString",
    #                 expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #                 hsm_status: {
    #                   hsm_client_certificate_identifier: "NonEmptyString",
    #                   hsm_configuration_identifier: "NonEmptyString",
    #                   status: "NonEmptyString"
    #                 },
    #                 iam_roles: [
    #                   {
    #                     apply_status: "NonEmptyString",
    #                     iam_role_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 kms_key_id: "NonEmptyString",
    #                 maintenance_track_name: "NonEmptyString",
    #                 manual_snapshot_retention_period: 1,
    #                 master_username: "NonEmptyString",
    #                 next_maintenance_window_start_time: "NonEmptyString",
    #                 node_type: "NonEmptyString",
    #                 number_of_nodes: 1,
    #                 pending_actions: ["NonEmptyString"],
    #                 pending_modified_values: {
    #                   automated_snapshot_retention_period: 1,
    #                   cluster_identifier: "NonEmptyString",
    #                   cluster_type: "NonEmptyString",
    #                   cluster_version: "NonEmptyString",
    #                   encryption_type: "NonEmptyString",
    #                   enhanced_vpc_routing: false,
    #                   maintenance_track_name: "NonEmptyString",
    #                   master_user_password: "NonEmptyString",
    #                   node_type: "NonEmptyString",
    #                   number_of_nodes: 1,
    #                   publicly_accessible: false
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 resize_info: {
    #                   allow_cancel_resize: false,
    #                   resize_type: "NonEmptyString"
    #                 },
    #                 restore_status: {
    #                   current_restore_rate_in_mega_bytes_per_second: 1.0,
    #                   elapsed_time_in_seconds: 1,
    #                   estimated_time_to_completion_in_seconds: 1,
    #                   progress_in_mega_bytes: 1,
    #                   snapshot_size_in_mega_bytes: 1,
    #                   status: "NonEmptyString"
    #                 },
    #                 snapshot_schedule_identifier: "NonEmptyString",
    #                 snapshot_schedule_state: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     status: "NonEmptyString",
    #                     vpc_security_group_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 logging_status: {
    #                   bucket_name: "NonEmptyString",
    #                   last_failure_message: "NonEmptyString",
    #                   last_failure_time: "NonEmptyString",
    #                   last_successful_delivery_time: "NonEmptyString",
    #                   logging_enabled: false,
    #                   s3_key_prefix: "NonEmptyString"
    #                 }
    #               },
    #               aws_elb_load_balancer: {
    #                 availability_zones: ["NonEmptyString"],
    #                 backend_server_descriptions: [
    #                   {
    #                     instance_port: 1,
    #                     policy_names: ["NonEmptyString"]
    #                   }
    #                 ],
    #                 canonical_hosted_zone_name: "NonEmptyString",
    #                 canonical_hosted_zone_name_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 health_check: {
    #                   healthy_threshold: 1,
    #                   interval: 1,
    #                   target: "NonEmptyString",
    #                   timeout: 1,
    #                   unhealthy_threshold: 1
    #                 },
    #                 instances: [
    #                   {
    #                     instance_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 listener_descriptions: [
    #                   {
    #                     listener: {
    #                       instance_port: 1,
    #                       instance_protocol: "NonEmptyString",
    #                       load_balancer_port: 1,
    #                       protocol: "NonEmptyString",
    #                       ssl_certificate_id: "NonEmptyString"
    #                     },
    #                     policy_names: ["NonEmptyString"]
    #                   }
    #                 ],
    #                 load_balancer_attributes: {
    #                   access_log: {
    #                     emit_interval: 1,
    #                     enabled: false,
    #                     s3_bucket_name: "NonEmptyString",
    #                     s3_bucket_prefix: "NonEmptyString"
    #                   },
    #                   connection_draining: {
    #                     enabled: false,
    #                     timeout: 1
    #                   },
    #                   connection_settings: {
    #                     idle_timeout: 1
    #                   },
    #                   cross_zone_load_balancing: {
    #                     enabled: false
    #                   },
    #                   additional_attributes: [
    #                     {
    #                       key: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 load_balancer_name: "NonEmptyString",
    #                 policies: {
    #                   app_cookie_stickiness_policies: [
    #                     {
    #                       cookie_name: "NonEmptyString",
    #                       policy_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   lb_cookie_stickiness_policies: [
    #                     {
    #                       cookie_expiration_period: 1,
    #                       policy_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   other_policies: ["NonEmptyString"]
    #                 },
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 source_security_group: {
    #                   group_name: "NonEmptyString",
    #                   owner_alias: "NonEmptyString"
    #                 },
    #                 subnets: ["NonEmptyString"],
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_iam_group: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 group_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 path: "NonEmptyString"
    #               },
    #               aws_iam_role: {
    #                 assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 instance_profile_list: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     create_date: "NonEmptyString",
    #                     instance_profile_id: "NonEmptyString",
    #                     instance_profile_name: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     roles: [
    #                       {
    #                         arn: "NonEmptyString",
    #                         assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                         create_date: "NonEmptyString",
    #                         path: "NonEmptyString",
    #                         role_id: "NonEmptyString",
    #                         role_name: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString"
    #                 },
    #                 role_id: "NonEmptyString",
    #                 role_name: "NonEmptyString",
    #                 role_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 max_session_duration: 1,
    #                 path: "NonEmptyString"
    #               },
    #               aws_kms_key: {
    #                 aws_account_id: "NonEmptyString",
    #                 creation_date: 1.0,
    #                 key_id: "NonEmptyString",
    #                 key_manager: "NonEmptyString",
    #                 key_state: "NonEmptyString",
    #                 origin: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 key_rotation_status: false
    #               },
    #               aws_lambda_function: {
    #                 code: {
    #                   s3_bucket: "NonEmptyString",
    #                   s3_key: "NonEmptyString",
    #                   s3_object_version: "NonEmptyString",
    #                   zip_file: "NonEmptyString"
    #                 },
    #                 code_sha256: "NonEmptyString",
    #                 dead_letter_config: {
    #                   target_arn: "NonEmptyString"
    #                 },
    #                 environment: {
    #                   variables: {
    #                     "NonEmptyString" => "NonEmptyString"
    #                   },
    #                   error: {
    #                     error_code: "NonEmptyString",
    #                     message: "NonEmptyString"
    #                   }
    #                 },
    #                 function_name: "NonEmptyString",
    #                 handler: "NonEmptyString",
    #                 kms_key_arn: "NonEmptyString",
    #                 last_modified: "NonEmptyString",
    #                 layers: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     code_size: 1
    #                   }
    #                 ],
    #                 master_arn: "NonEmptyString",
    #                 memory_size: 1,
    #                 revision_id: "NonEmptyString",
    #                 role: "NonEmptyString",
    #                 runtime: "NonEmptyString",
    #                 timeout: 1,
    #                 tracing_config: {
    #                   mode: "NonEmptyString"
    #                 },
    #                 vpc_config: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString"
    #                 },
    #                 version: "NonEmptyString",
    #                 architectures: ["NonEmptyString"],
    #                 package_type: "NonEmptyString"
    #               },
    #               aws_lambda_layer_version: {
    #                 version: 1,
    #                 compatible_runtimes: ["NonEmptyString"],
    #                 created_date: "NonEmptyString"
    #               },
    #               aws_rds_db_instance: {
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     feature_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 ca_certificate_identifier: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 db_instance_class: "NonEmptyString",
    #                 db_instance_port: 1,
    #                 dbi_resource_id: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deletion_protection: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString"
    #                 },
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 instance_create_time: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 storage_encrypted: false,
    #                 tde_credential_arn: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 multi_az: false,
    #                 enhanced_monitoring_resource_arn: "NonEmptyString",
    #                 db_instance_status: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 preferred_backup_window: "NonEmptyString",
    #                 backup_retention_period: 1,
    #                 db_security_groups: ["NonEmptyString"],
    #                 db_parameter_groups: [
    #                   {
    #                     db_parameter_group_name: "NonEmptyString",
    #                     parameter_apply_status: "NonEmptyString"
    #                   }
    #                 ],
    #                 availability_zone: "NonEmptyString",
    #                 db_subnet_group: {
    #                   db_subnet_group_name: "NonEmptyString",
    #                   db_subnet_group_description: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   subnet_group_status: "NonEmptyString",
    #                   subnets: [
    #                     {
    #                       subnet_identifier: "NonEmptyString",
    #                       subnet_availability_zone: {
    #                         name: "NonEmptyString"
    #                       },
    #                       subnet_status: "NonEmptyString"
    #                     }
    #                   ],
    #                   db_subnet_group_arn: "NonEmptyString"
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 pending_modified_values: {
    #                   db_instance_class: "NonEmptyString",
    #                   allocated_storage: 1,
    #                   master_user_password: "NonEmptyString",
    #                   port: 1,
    #                   backup_retention_period: 1,
    #                   multi_az: false,
    #                   engine_version: "NonEmptyString",
    #                   license_model: "NonEmptyString",
    #                   iops: 1,
    #                   db_instance_identifier: "NonEmptyString",
    #                   storage_type: "NonEmptyString",
    #                   ca_certificate_identifier: "NonEmptyString",
    #                   db_subnet_group_name: "NonEmptyString",
    #                   pending_cloud_watch_logs_exports: {
    #                     log_types_to_enable: ["NonEmptyString"],
    #                     log_types_to_disable: ["NonEmptyString"]
    #                   },
    #                   processor_features: [
    #                     {
    #                       name: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 latest_restorable_time: "NonEmptyString",
    #                 auto_minor_version_upgrade: false,
    #                 read_replica_source_db_instance_identifier: "NonEmptyString",
    #                 read_replica_db_instance_identifiers: ["NonEmptyString"],
    #                 read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #                 license_model: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_memberships: [
    #                   {
    #                     option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 character_set_name: "NonEmptyString",
    #                 secondary_availability_zone: "NonEmptyString",
    #                 status_infos: [
    #                   {
    #                     status_type: "NonEmptyString",
    #                     normal: false,
    #                     status: "NonEmptyString",
    #                     message: "NonEmptyString"
    #                   }
    #                 ],
    #                 storage_type: "NonEmptyString",
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 copy_tags_to_snapshot: false,
    #                 monitoring_interval: 1,
    #                 monitoring_role_arn: "NonEmptyString",
    #                 promotion_tier: 1,
    #                 timezone: "NonEmptyString",
    #                 performance_insights_enabled: false,
    #                 performance_insights_kms_key_id: "NonEmptyString",
    #                 performance_insights_retention_period: 1,
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 listener_endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString"
    #                 },
    #                 max_allocated_storage: 1
    #               },
    #               aws_sns_topic: {
    #                 kms_master_key_id: "NonEmptyString",
    #                 subscription: [
    #                   {
    #                     endpoint: "NonEmptyString",
    #                     protocol: "NonEmptyString"
    #                   }
    #                 ],
    #                 topic_name: "NonEmptyString",
    #                 owner: "NonEmptyString",
    #                 sqs_success_feedback_role_arn: "NonEmptyString",
    #                 sqs_failure_feedback_role_arn: "NonEmptyString",
    #                 application_success_feedback_role_arn: "NonEmptyString",
    #                 firehose_success_feedback_role_arn: "NonEmptyString",
    #                 firehose_failure_feedback_role_arn: "NonEmptyString",
    #                 http_success_feedback_role_arn: "NonEmptyString",
    #                 http_failure_feedback_role_arn: "NonEmptyString"
    #               },
    #               aws_sqs_queue: {
    #                 kms_data_key_reuse_period_seconds: 1,
    #                 kms_master_key_id: "NonEmptyString",
    #                 queue_name: "NonEmptyString",
    #                 dead_letter_target_arn: "NonEmptyString"
    #               },
    #               aws_waf_web_acl: {
    #                 name: "NonEmptyString",
    #                 default_action: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     excluded_rules: [
    #                       {
    #                         rule_id: "NonEmptyString"
    #                       }
    #                     ],
    #                     override_action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 web_acl_id: "NonEmptyString"
    #               },
    #               aws_rds_db_snapshot: {
    #                 db_snapshot_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 availability_zone: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 instance_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_name: "NonEmptyString",
    #                 percent_progress: 1,
    #                 source_region: "NonEmptyString",
    #                 source_db_snapshot_identifier: "NonEmptyString",
    #                 storage_type: "NonEmptyString",
    #                 tde_credential_arn: "NonEmptyString",
    #                 encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 timezone: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 dbi_resource_id: "NonEmptyString"
    #               },
    #               aws_rds_db_cluster_snapshot: {
    #                 availability_zones: ["NonEmptyString"],
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 vpc_id: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 percent_progress: 1,
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_snapshot_identifier: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 db_cluster_snapshot_attributes: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     attribute_values: ["NonEmptyString"]
    #                   }
    #                 ]
    #               },
    #               aws_rds_db_cluster: {
    #                 allocated_storage: 1,
    #                 availability_zones: ["NonEmptyString"],
    #                 backup_retention_period: 1,
    #                 database_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 reader_endpoint: "NonEmptyString",
    #                 custom_endpoints: ["NonEmptyString"],
    #                 multi_az: false,
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 port: 1,
    #                 master_username: "NonEmptyString",
    #                 preferred_backup_window: "NonEmptyString",
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 read_replica_identifiers: ["NonEmptyString"],
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 hosted_zone_id: "NonEmptyString",
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_resource_id: "NonEmptyString",
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_create_time: "NonEmptyString",
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 engine_mode: "NonEmptyString",
    #                 deletion_protection: false,
    #                 http_endpoint_enabled: false,
    #                 activity_stream_status: "NonEmptyString",
    #                 copy_tags_to_snapshot: false,
    #                 cross_account_clone: false,
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 db_cluster_parameter_group: "NonEmptyString",
    #                 db_subnet_group: "NonEmptyString",
    #                 db_cluster_option_group_memberships: [
    #                   {
    #                     db_cluster_option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_members: [
    #                   {
    #                     is_cluster_writer: false,
    #                     promotion_tier: 1,
    #                     db_instance_identifier: "NonEmptyString",
    #                     db_cluster_parameter_group_status: "NonEmptyString"
    #                   }
    #                 ],
    #                 iam_database_authentication_enabled: false,
    #                 auto_minor_version_upgrade: false
    #               },
    #               aws_ecs_cluster: {
    #                 cluster_arn: "NonEmptyString",
    #                 active_services_count: 1,
    #                 capacity_providers: ["NonEmptyString"],
    #                 cluster_settings: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 configuration: {
    #                   execute_command_configuration: {
    #                     kms_key_id: "NonEmptyString",
    #                     log_configuration: {
    #                       cloud_watch_encryption_enabled: false,
    #                       cloud_watch_log_group_name: "NonEmptyString",
    #                       s3_bucket_name: "NonEmptyString",
    #                       s3_encryption_enabled: false,
    #                       s3_key_prefix: "NonEmptyString"
    #                     },
    #                     logging: "NonEmptyString"
    #                   }
    #                 },
    #                 default_capacity_provider_strategy: [
    #                   {
    #                     base: 1,
    #                     capacity_provider: "NonEmptyString",
    #                     weight: 1
    #                   }
    #                 ],
    #                 cluster_name: "NonEmptyString",
    #                 registered_container_instances_count: 1,
    #                 running_tasks_count: 1,
    #                 status: "NonEmptyString"
    #               },
    #               aws_ecs_container: {
    #                 name: "NonEmptyString",
    #                 image: "NonEmptyString",
    #                 mount_points: [
    #                   {
    #                     source_volume: "NonEmptyString",
    #                     container_path: "NonEmptyString"
    #                   }
    #                 ],
    #                 privileged: false
    #               },
    #               aws_ecs_task_definition: {
    #                 container_definitions: [
    #                   {
    #                     command: ["NonEmptyString"],
    #                     cpu: 1,
    #                     depends_on: [
    #                       {
    #                         condition: "NonEmptyString",
    #                         container_name: "NonEmptyString"
    #                       }
    #                     ],
    #                     disable_networking: false,
    #                     dns_search_domains: ["NonEmptyString"],
    #                     dns_servers: ["NonEmptyString"],
    #                     docker_labels: {
    #                       "NonEmptyString" => "NonEmptyString"
    #                     },
    #                     docker_security_options: ["NonEmptyString"],
    #                     entry_point: ["NonEmptyString"],
    #                     environment: [
    #                       {
    #                         name: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     environment_files: [
    #                       {
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     essential: false,
    #                     extra_hosts: [
    #                       {
    #                         hostname: "NonEmptyString",
    #                         ip_address: "NonEmptyString"
    #                       }
    #                     ],
    #                     firelens_configuration: {
    #                       options: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       type: "NonEmptyString"
    #                     },
    #                     health_check: {
    #                       command: ["NonEmptyString"],
    #                       interval: 1,
    #                       retries: 1,
    #                       start_period: 1,
    #                       timeout: 1
    #                     },
    #                     hostname: "NonEmptyString",
    #                     image: "NonEmptyString",
    #                     interactive: false,
    #                     links: ["NonEmptyString"],
    #                     linux_parameters: {
    #                       capabilities: {
    #                         add: ["NonEmptyString"],
    #                         drop: ["NonEmptyString"]
    #                       },
    #                       devices: [
    #                         {
    #                           container_path: "NonEmptyString",
    #                           host_path: "NonEmptyString",
    #                           permissions: ["NonEmptyString"]
    #                         }
    #                       ],
    #                       init_process_enabled: false,
    #                       max_swap: 1,
    #                       shared_memory_size: 1,
    #                       swappiness: 1,
    #                       tmpfs: [
    #                         {
    #                           container_path: "NonEmptyString",
    #                           mount_options: ["NonEmptyString"],
    #                           size: 1
    #                         }
    #                       ]
    #                     },
    #                     log_configuration: {
    #                       log_driver: "NonEmptyString",
    #                       options: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       secret_options: [
    #                         {
    #                           name: "NonEmptyString",
    #                           value_from: "NonEmptyString"
    #                         }
    #                       ]
    #                     },
    #                     memory: 1,
    #                     memory_reservation: 1,
    #                     mount_points: [
    #                       {
    #                         container_path: "NonEmptyString",
    #                         read_only: false,
    #                         source_volume: "NonEmptyString"
    #                       }
    #                     ],
    #                     name: "NonEmptyString",
    #                     port_mappings: [
    #                       {
    #                         container_port: 1,
    #                         host_port: 1,
    #                         protocol: "NonEmptyString"
    #                       }
    #                     ],
    #                     privileged: false,
    #                     pseudo_terminal: false,
    #                     readonly_root_filesystem: false,
    #                     repository_credentials: {
    #                       credentials_parameter: "NonEmptyString"
    #                     },
    #                     resource_requirements: [
    #                       {
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     secrets: [
    #                       {
    #                         name: "NonEmptyString",
    #                         value_from: "NonEmptyString"
    #                       }
    #                     ],
    #                     start_timeout: 1,
    #                     stop_timeout: 1,
    #                     system_controls: [
    #                       {
    #                         namespace: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     ulimits: [
    #                       {
    #                         hard_limit: 1,
    #                         name: "NonEmptyString",
    #                         soft_limit: 1
    #                       }
    #                     ],
    #                     user: "NonEmptyString",
    #                     volumes_from: [
    #                       {
    #                         read_only: false,
    #                         source_container: "NonEmptyString"
    #                       }
    #                     ],
    #                     working_directory: "NonEmptyString"
    #                   }
    #                 ],
    #                 cpu: "NonEmptyString",
    #                 execution_role_arn: "NonEmptyString",
    #                 family: "NonEmptyString",
    #                 inference_accelerators: [
    #                   {
    #                     device_name: "NonEmptyString",
    #                     device_type: "NonEmptyString"
    #                   }
    #                 ],
    #                 ipc_mode: "NonEmptyString",
    #                 memory: "NonEmptyString",
    #                 network_mode: "NonEmptyString",
    #                 pid_mode: "NonEmptyString",
    #                 placement_constraints: [
    #                   {
    #                     expression: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 proxy_configuration: {
    #                   container_name: "NonEmptyString",
    #                   proxy_configuration_properties: [
    #                     {
    #                       name: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ],
    #                   type: "NonEmptyString"
    #                 },
    #                 requires_compatibilities: ["NonEmptyString"],
    #                 task_role_arn: "NonEmptyString",
    #                 volumes: [
    #                   {
    #                     docker_volume_configuration: {
    #                       autoprovision: false,
    #                       driver: "NonEmptyString",
    #                       driver_opts: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       labels: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       scope: "NonEmptyString"
    #                     },
    #                     efs_volume_configuration: {
    #                       authorization_config: {
    #                         access_point_id: "NonEmptyString",
    #                         iam: "NonEmptyString"
    #                       },
    #                       filesystem_id: "NonEmptyString",
    #                       root_directory: "NonEmptyString",
    #                       transit_encryption: "NonEmptyString",
    #                       transit_encryption_port: 1
    #                     },
    #                     host: {
    #                       source_path: "NonEmptyString"
    #                     },
    #                     name: "NonEmptyString"
    #                   }
    #                 ],
    #                 status: "NonEmptyString"
    #               },
    #               container: {
    #                 container_runtime: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 image_name: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #                 volume_mounts: [
    #                   {
    #                     name: "NonEmptyString",
    #                     mount_path: "NonEmptyString"
    #                   }
    #                 ],
    #                 privileged: false
    #               },
    #               other: {
    #                 "NonEmptyString" => "NonEmptyString"
    #               },
    #               aws_rds_event_subscription: {
    #                 cust_subscription_id: "NonEmptyString",
    #                 customer_aws_id: "NonEmptyString",
    #                 enabled: false,
    #                 event_categories_list: ["NonEmptyString"],
    #                 event_subscription_arn: "NonEmptyString",
    #                 sns_topic_arn: "NonEmptyString",
    #                 source_ids_list: ["NonEmptyString"],
    #                 source_type: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 subscription_creation_time: "NonEmptyString"
    #               },
    #               aws_ecs_service: {
    #                 capacity_provider_strategy: [
    #                   {
    #                     base: 1,
    #                     capacity_provider: "NonEmptyString",
    #                     weight: 1
    #                   }
    #                 ],
    #                 cluster: "NonEmptyString",
    #                 deployment_configuration: {
    #                   deployment_circuit_breaker: {
    #                     enable: false,
    #                     rollback: false
    #                   },
    #                   maximum_percent: 1,
    #                   minimum_healthy_percent: 1
    #                 },
    #                 deployment_controller: {
    #                   type: "NonEmptyString"
    #                 },
    #                 desired_count: 1,
    #                 enable_ecs_managed_tags: false,
    #                 enable_execute_command: false,
    #                 health_check_grace_period_seconds: 1,
    #                 launch_type: "NonEmptyString",
    #                 load_balancers: [
    #                   {
    #                     container_name: "NonEmptyString",
    #                     container_port: 1,
    #                     load_balancer_name: "NonEmptyString",
    #                     target_group_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 name: "NonEmptyString",
    #                 network_configuration: {
    #                   aws_vpc_configuration: {
    #                     assign_public_ip: "NonEmptyString",
    #                     security_groups: ["NonEmptyString"],
    #                     subnets: ["NonEmptyString"]
    #                   }
    #                 },
    #                 placement_constraints: [
    #                   {
    #                     expression: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 placement_strategies: [
    #                   {
    #                     field: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 platform_version: "NonEmptyString",
    #                 propagate_tags: "NonEmptyString",
    #                 role: "NonEmptyString",
    #                 scheduling_strategy: "NonEmptyString",
    #                 service_arn: "NonEmptyString",
    #                 service_name: "NonEmptyString",
    #                 service_registries: [
    #                   {
    #                     container_name: "NonEmptyString",
    #                     container_port: 1,
    #                     port: 1,
    #                     registry_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 task_definition: "NonEmptyString"
    #               },
    #               aws_auto_scaling_launch_configuration: {
    #                 associate_public_ip_address: false,
    #                 block_device_mappings: [
    #                   {
    #                     device_name: "NonEmptyString",
    #                     ebs: {
    #                       delete_on_termination: false,
    #                       encrypted: false,
    #                       iops: 1,
    #                       snapshot_id: "NonEmptyString",
    #                       volume_size: 1,
    #                       volume_type: "NonEmptyString"
    #                     },
    #                     no_device: false,
    #                     virtual_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 classic_link_vpc_id: "NonEmptyString",
    #                 classic_link_vpc_security_groups: ["NonEmptyString"],
    #                 created_time: "NonEmptyString",
    #                 ebs_optimized: false,
    #                 iam_instance_profile: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 instance_monitoring: {
    #                   enabled: false
    #                 },
    #                 instance_type: "NonEmptyString",
    #                 kernel_id: "NonEmptyString",
    #                 key_name: "NonEmptyString",
    #                 launch_configuration_name: "NonEmptyString",
    #                 placement_tenancy: "NonEmptyString",
    #                 ramdisk_id: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 spot_price: "NonEmptyString",
    #                 user_data: "NonEmptyString",
    #                 metadata_options: {
    #                   http_endpoint: "NonEmptyString",
    #                   http_put_response_hop_limit: 1,
    #                   http_tokens: "NonEmptyString"
    #                 }
    #               },
    #               aws_ec2_vpn_connection: {
    #                 vpn_connection_id: "NonEmptyString",
    #                 state: "NonEmptyString",
    #                 customer_gateway_id: "NonEmptyString",
    #                 customer_gateway_configuration: "NonEmptyString",
    #                 type: "NonEmptyString",
    #                 vpn_gateway_id: "NonEmptyString",
    #                 category: "NonEmptyString",
    #                 vgw_telemetry: [
    #                   {
    #                     accepted_route_count: 1,
    #                     certificate_arn: "NonEmptyString",
    #                     last_status_change: "NonEmptyString",
    #                     outside_ip_address: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     status_message: "NonEmptyString"
    #                   }
    #                 ],
    #                 options: {
    #                   static_routes_only: false,
    #                   tunnel_options: [
    #                     {
    #                       dpd_timeout_seconds: 1,
    #                       ike_versions: ["NonEmptyString"],
    #                       outside_ip_address: "NonEmptyString",
    #                       phase1_dh_group_numbers: [1],
    #                       phase1_encryption_algorithms: ["NonEmptyString"],
    #                       phase1_integrity_algorithms: ["NonEmptyString"],
    #                       phase1_lifetime_seconds: 1,
    #                       phase2_dh_group_numbers: [1],
    #                       phase2_encryption_algorithms: ["NonEmptyString"],
    #                       phase2_integrity_algorithms: ["NonEmptyString"],
    #                       phase2_lifetime_seconds: 1,
    #                       pre_shared_key: "NonEmptyString",
    #                       rekey_fuzz_percentage: 1,
    #                       rekey_margin_time_seconds: 1,
    #                       replay_window_size: 1,
    #                       tunnel_inside_cidr: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 routes: [
    #                   {
    #                     destination_cidr_block: "NonEmptyString",
    #                     state: "NonEmptyString"
    #                   }
    #                 ],
    #                 transit_gateway_id: "NonEmptyString"
    #               },
    #               aws_ecr_container_image: {
    #                 registry_id: "NonEmptyString",
    #                 repository_name: "NonEmptyString",
    #                 architecture: "NonEmptyString",
    #                 image_digest: "NonEmptyString",
    #                 image_tags: ["NonEmptyString"],
    #                 image_published_at: "NonEmptyString"
    #               },
    #               aws_open_search_service_domain: {
    #                 arn: "NonEmptyString",
    #                 access_policies: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 domain_endpoint: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: "NonEmptyString"
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false
    #                 },
    #                 service_software_options: {
    #                   automated_update_date: "NonEmptyString",
    #                   cancellable: false,
    #                   current_version: "NonEmptyString",
    #                   description: "NonEmptyString",
    #                   new_version: "NonEmptyString",
    #                   update_available: false,
    #                   update_status: "NonEmptyString",
    #                   optional_deployment: false
    #                 },
    #                 cluster_config: {
    #                   instance_count: 1,
    #                   warm_enabled: false,
    #                   warm_count: 1,
    #                   dedicated_master_enabled: false,
    #                   zone_awareness_config: {
    #                     availability_zone_count: 1
    #                   },
    #                   dedicated_master_count: 1,
    #                   instance_type: "NonEmptyString",
    #                   warm_type: "NonEmptyString",
    #                   zone_awareness_enabled: false,
    #                   dedicated_master_type: "NonEmptyString"
    #                 },
    #                 domain_endpoint_options: {
    #                   custom_endpoint_certificate_arn: "NonEmptyString",
    #                   custom_endpoint_enabled: false,
    #                   enforce_https: false,
    #                   custom_endpoint: "NonEmptyString",
    #                   tls_security_policy: "NonEmptyString"
    #                 },
    #                 vpc_options: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"]
    #                 },
    #                 log_publishing_options: {
    #                   index_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   search_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   audit_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   }
    #                 },
    #                 domain_endpoints: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 advanced_security_options: {
    #                   enabled: false,
    #                   internal_user_database_enabled: false,
    #                   master_user_options: {
    #                     master_user_arn: "NonEmptyString",
    #                     master_user_name: "NonEmptyString",
    #                     master_user_password: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_ec2_vpc_endpoint_service: {
    #                 acceptance_required: false,
    #                 availability_zones: ["NonEmptyString"],
    #                 base_endpoint_dns_names: ["NonEmptyString"],
    #                 manages_vpc_endpoints: false,
    #                 gateway_load_balancer_arns: ["NonEmptyString"],
    #                 network_load_balancer_arns: ["NonEmptyString"],
    #                 private_dns_name: "NonEmptyString",
    #                 service_id: "NonEmptyString",
    #                 service_name: "NonEmptyString",
    #                 service_state: "NonEmptyString",
    #                 service_type: [
    #                   {
    #                     service_type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_xray_encryption_config: {
    #                 key_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 type: "NonEmptyString"
    #               },
    #               aws_waf_rate_based_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rate_key: "NonEmptyString",
    #                 rate_limit: 1,
    #                 rule_id: "NonEmptyString",
    #                 match_predicates: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_waf_regional_rate_based_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rate_key: "NonEmptyString",
    #                 rate_limit: 1,
    #                 rule_id: "NonEmptyString",
    #                 match_predicates: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_ecr_repository: {
    #                 arn: "NonEmptyString",
    #                 image_scanning_configuration: {
    #                   scan_on_push: false
    #                 },
    #                 image_tag_mutability: "NonEmptyString",
    #                 lifecycle_policy: {
    #                   lifecycle_policy_text: "NonEmptyString",
    #                   registry_id: "NonEmptyString"
    #                 },
    #                 repository_name: "NonEmptyString",
    #                 repository_policy_text: "NonEmptyString"
    #               },
    #               aws_eks_cluster: {
    #                 arn: "NonEmptyString",
    #                 certificate_authority_data: "NonEmptyString",
    #                 cluster_status: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 resources_vpc_config: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   endpoint_public_access: false
    #                 },
    #                 role_arn: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 logging: {
    #                   cluster_logging: [
    #                     {
    #                       enabled: false,
    #                       types: ["NonEmptyString"]
    #                     }
    #                   ]
    #                 }
    #               },
    #               aws_network_firewall_firewall_policy: {
    #                 firewall_policy: {
    #                   stateful_rule_group_references: [
    #                     {
    #                       resource_arn: "NonEmptyString"
    #                     }
    #                   ],
    #                   stateless_custom_actions: [
    #                     {
    #                       action_definition: {
    #                         publish_metric_action: {
    #                           dimensions: [
    #                             {
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       action_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   stateless_default_actions: ["NonEmptyString"],
    #                   stateless_fragment_default_actions: ["NonEmptyString"],
    #                   stateless_rule_group_references: [
    #                     {
    #                       priority: 1,
    #                       resource_arn: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 firewall_policy_arn: "NonEmptyString",
    #                 firewall_policy_id: "NonEmptyString",
    #                 firewall_policy_name: "NonEmptyString",
    #                 description: "NonEmptyString"
    #               },
    #               aws_network_firewall_firewall: {
    #                 delete_protection: false,
    #                 description: "NonEmptyString",
    #                 firewall_arn: "NonEmptyString",
    #                 firewall_id: "NonEmptyString",
    #                 firewall_name: "NonEmptyString",
    #                 firewall_policy_arn: "NonEmptyString",
    #                 firewall_policy_change_protection: false,
    #                 subnet_change_protection: false,
    #                 subnet_mappings: [
    #                   {
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_network_firewall_rule_group: {
    #                 capacity: 1,
    #                 description: "NonEmptyString",
    #                 rule_group: {
    #                   rule_variables: {
    #                     ip_sets: {
    #                       definition: ["NonEmptyString"]
    #                     },
    #                     port_sets: {
    #                       definition: ["NonEmptyString"]
    #                     }
    #                   },
    #                   rules_source: {
    #                     rules_source_list: {
    #                       generated_rules_type: "NonEmptyString",
    #                       target_types: ["NonEmptyString"],
    #                       targets: ["NonEmptyString"]
    #                     },
    #                     rules_string: "NonEmptyString",
    #                     stateful_rules: [
    #                       {
    #                         action: "NonEmptyString",
    #                         header: {
    #                           destination: "NonEmptyString",
    #                           destination_port: "NonEmptyString",
    #                           direction: "NonEmptyString",
    #                           protocol: "NonEmptyString",
    #                           source: "NonEmptyString",
    #                           source_port: "NonEmptyString"
    #                         },
    #                         rule_options: [
    #                           {
    #                             keyword: "NonEmptyString",
    #                             settings: ["NonEmptyString"]
    #                           }
    #                         ]
    #                       }
    #                     ],
    #                     stateless_rules_and_custom_actions: {
    #                       custom_actions: [
    #                         {
    #                           action_definition: {
    #                             publish_metric_action: {
    #                               dimensions: [
    #                                 {
    #                                   value: "NonEmptyString"
    #                                 }
    #                               ]
    #                             }
    #                           },
    #                           action_name: "NonEmptyString"
    #                         }
    #                       ],
    #                       stateless_rules: [
    #                         {
    #                           priority: 1,
    #                           rule_definition: {
    #                             actions: ["NonEmptyString"],
    #                             match_attributes: {
    #                               destination_ports: [
    #                                 {
    #                                   from_port: 1,
    #                                   to_port: 1
    #                                 }
    #                               ],
    #                               destinations: [
    #                                 {
    #                                   address_definition: "NonEmptyString"
    #                                 }
    #                               ],
    #                               protocols: [1],
    #                               source_ports: [
    #                                 {
    #                                   from_port: 1,
    #                                   to_port: 1
    #                                 }
    #                               ],
    #                               sources: [
    #                                 {
    #                                   address_definition: "NonEmptyString"
    #                                 }
    #                               ],
    #                               tcp_flags: [
    #                                 {
    #                                   flags: ["NonEmptyString"],
    #                                   masks: ["NonEmptyString"]
    #                                 }
    #                               ]
    #                             }
    #                           }
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 },
    #                 rule_group_arn: "NonEmptyString",
    #                 rule_group_id: "NonEmptyString",
    #                 rule_group_name: "NonEmptyString",
    #                 type: "NonEmptyString"
    #               },
    #               aws_rds_db_security_group: {
    #                 db_security_group_arn: "NonEmptyString",
    #                 db_security_group_description: "NonEmptyString",
    #                 db_security_group_name: "NonEmptyString",
    #                 ec2_security_groups: [
    #                   {
    #                     ec2_security_group_id: "NonEmptyString",
    #                     ec2_security_group_name: "NonEmptyString",
    #                     ec2_security_group_owner_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 ip_ranges: [
    #                   {
    #                     cidr_ip: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_kinesis_stream: {
    #                 name: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 stream_encryption: {
    #                   encryption_type: "NonEmptyString",
    #                   key_id: "NonEmptyString"
    #                 },
    #                 shard_count: 1,
    #                 retention_period_hours: 1
    #               },
    #               aws_ec2_transit_gateway: {
    #                 id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 default_route_table_propagation: "NonEmptyString",
    #                 auto_accept_shared_attachments: "NonEmptyString",
    #                 default_route_table_association: "NonEmptyString",
    #                 transit_gateway_cidr_blocks: ["NonEmptyString"],
    #                 association_default_route_table_id: "NonEmptyString",
    #                 propagation_default_route_table_id: "NonEmptyString",
    #                 vpn_ecmp_support: "NonEmptyString",
    #                 dns_support: "NonEmptyString",
    #                 multicast_support: "NonEmptyString",
    #                 amazon_side_asn: 1
    #               },
    #               aws_efs_access_point: {
    #                 access_point_id: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 client_token: "NonEmptyString",
    #                 file_system_id: "NonEmptyString",
    #                 posix_user: {
    #                   gid: "NonEmptyString",
    #                   secondary_gids: ["NonEmptyString"],
    #                   uid: "NonEmptyString"
    #                 },
    #                 root_directory: {
    #                   creation_info: {
    #                     owner_gid: "NonEmptyString",
    #                     owner_uid: "NonEmptyString",
    #                     permissions: "NonEmptyString"
    #                   },
    #                   path: "NonEmptyString"
    #                 }
    #               },
    #               aws_cloud_formation_stack: {
    #                 capabilities: ["NonEmptyString"],
    #                 creation_time: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 disable_rollback: false,
    #                 drift_information: {
    #                   stack_drift_status: "NonEmptyString"
    #                 },
    #                 enable_termination_protection: false,
    #                 last_updated_time: "NonEmptyString",
    #                 notification_arns: ["NonEmptyString"],
    #                 outputs: [
    #                   {
    #                     description: "NonEmptyString",
    #                     output_key: "NonEmptyString",
    #                     output_value: "NonEmptyString"
    #                   }
    #                 ],
    #                 role_arn: "NonEmptyString",
    #                 stack_id: "NonEmptyString",
    #                 stack_name: "NonEmptyString",
    #                 stack_status: "NonEmptyString",
    #                 stack_status_reason: "NonEmptyString",
    #                 timeout_in_minutes: 1
    #               },
    #               aws_cloud_watch_alarm: {
    #                 actions_enabled: false,
    #                 alarm_actions: ["NonEmptyString"],
    #                 alarm_arn: "NonEmptyString",
    #                 alarm_configuration_updated_timestamp: "NonEmptyString",
    #                 alarm_description: "NonEmptyString",
    #                 alarm_name: "NonEmptyString",
    #                 comparison_operator: "NonEmptyString",
    #                 datapoints_to_alarm: 1,
    #                 dimensions: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 evaluate_low_sample_count_percentile: "NonEmptyString",
    #                 evaluation_periods: 1,
    #                 extended_statistic: "NonEmptyString",
    #                 insufficient_data_actions: ["NonEmptyString"],
    #                 metric_name: "NonEmptyString",
    #                 namespace: "NonEmptyString",
    #                 ok_actions: ["NonEmptyString"],
    #                 period: 1,
    #                 statistic: "NonEmptyString",
    #                 threshold: 1.0,
    #                 threshold_metric_id: "NonEmptyString",
    #                 treat_missing_data: "NonEmptyString",
    #                 unit: "NonEmptyString"
    #               },
    #               aws_ec2_vpc_peering_connection: {
    #                 accepter_vpc_info: {
    #                   cidr_block: "NonEmptyString",
    #                   cidr_block_set: [
    #                     {
    #                       cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   ipv6_cidr_block_set: [
    #                     {
    #                       ipv6_cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   owner_id: "NonEmptyString",
    #                   peering_options: {
    #                     allow_dns_resolution_from_remote_vpc: false,
    #                     allow_egress_from_local_classic_link_to_remote_vpc: false,
    #                     allow_egress_from_local_vpc_to_remote_classic_link: false
    #                   },
    #                   region: "NonEmptyString",
    #                   vpc_id: "NonEmptyString"
    #                 },
    #                 expiration_time: "NonEmptyString",
    #                 requester_vpc_info: {
    #                   cidr_block: "NonEmptyString",
    #                   cidr_block_set: [
    #                     {
    #                       cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   ipv6_cidr_block_set: [
    #                     {
    #                       ipv6_cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   owner_id: "NonEmptyString",
    #                   peering_options: {
    #                     allow_dns_resolution_from_remote_vpc: false,
    #                     allow_egress_from_local_classic_link_to_remote_vpc: false,
    #                     allow_egress_from_local_vpc_to_remote_classic_link: false
    #                   },
    #                   region: "NonEmptyString",
    #                   vpc_id: "NonEmptyString"
    #                 },
    #                 status: {
    #                   code: "NonEmptyString",
    #                   message: "NonEmptyString"
    #                 },
    #                 vpc_peering_connection_id: "NonEmptyString"
    #               },
    #               aws_waf_regional_rule_group: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rule_group_id: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_waf_regional_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 predicate_list: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 rule_id: "NonEmptyString"
    #               },
    #               aws_waf_regional_web_acl: {
    #                 default_action: "NonEmptyString",
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rules_list: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     override_action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 web_acl_id: "NonEmptyString"
    #               },
    #               aws_waf_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 predicate_list: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 rule_id: "NonEmptyString"
    #               },
    #               aws_waf_rule_group: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rule_group_id: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_ecs_task: {
    #                 cluster_arn: "NonEmptyString",
    #                 task_definition_arn: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 started_at: "NonEmptyString",
    #                 started_by: "NonEmptyString",
    #                 group: "NonEmptyString",
    #                 volumes: [
    #                   {
    #                     name: "NonEmptyString",
    #                     host: {
    #                       source_path: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 containers: [
    #                   {
    #                     name: "NonEmptyString",
    #                     image: "NonEmptyString",
    #                     mount_points: [
    #                       {
    #                         source_volume: "NonEmptyString",
    #                         container_path: "NonEmptyString"
    #                       }
    #                     ],
    #                     privileged: false
    #                   }
    #                 ]
    #               },
    #               aws_backup_backup_vault: {
    #                 backup_vault_arn: "NonEmptyString",
    #                 backup_vault_name: "NonEmptyString",
    #                 encryption_key_arn: "NonEmptyString",
    #                 notifications: {
    #                   backup_vault_events: ["NonEmptyString"],
    #                   sns_topic_arn: "NonEmptyString"
    #                 },
    #                 access_policy: "NonEmptyString"
    #               },
    #               aws_backup_backup_plan: {
    #                 backup_plan: {
    #                   backup_plan_name: "NonEmptyString",
    #                   advanced_backup_settings: [
    #                     {
    #                       backup_options: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       resource_type: "NonEmptyString"
    #                     }
    #                   ],
    #                   backup_plan_rule: [
    #                     {
    #                       target_backup_vault: "NonEmptyString",
    #                       start_window_minutes: 1,
    #                       schedule_expression: "NonEmptyString",
    #                       rule_name: "NonEmptyString",
    #                       rule_id: "NonEmptyString",
    #                       enable_continuous_backup: false,
    #                       completion_window_minutes: 1,
    #                       copy_actions: [
    #                         {
    #                           destination_backup_vault_arn: "NonEmptyString",
    #                           lifecycle: {
    #                             delete_after_days: 1,
    #                             move_to_cold_storage_after_days: 1
    #                           }
    #                         }
    #                       ],
    #                       lifecycle: {
    #                         delete_after_days: 1,
    #                         move_to_cold_storage_after_days: 1
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 backup_plan_arn: "NonEmptyString",
    #                 backup_plan_id: "NonEmptyString",
    #                 version_id: "NonEmptyString"
    #               },
    #               aws_backup_recovery_point: {
    #                 backup_size_in_bytes: 1,
    #                 backup_vault_arn: "NonEmptyString",
    #                 backup_vault_name: "NonEmptyString",
    #                 calculated_lifecycle: {
    #                   delete_at: "NonEmptyString",
    #                   move_to_cold_storage_at: "NonEmptyString"
    #                 },
    #                 completion_date: "NonEmptyString",
    #                 created_by: {
    #                   backup_plan_arn: "NonEmptyString",
    #                   backup_plan_id: "NonEmptyString",
    #                   backup_plan_version: "NonEmptyString",
    #                   backup_rule_id: "NonEmptyString"
    #                 },
    #                 creation_date: "NonEmptyString",
    #                 encryption_key_arn: "NonEmptyString",
    #                 iam_role_arn: "NonEmptyString",
    #                 is_encrypted: false,
    #                 last_restore_time: "NonEmptyString",
    #                 lifecycle: {
    #                   delete_after_days: 1,
    #                   move_to_cold_storage_after_days: 1
    #                 },
    #                 recovery_point_arn: "NonEmptyString",
    #                 resource_arn: "NonEmptyString",
    #                 resource_type: "NonEmptyString",
    #                 source_backup_vault_arn: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 status_message: "NonEmptyString",
    #                 storage_class: "NonEmptyString"
    #               },
    #               aws_ec2_launch_template: {
    #                 launch_template_name: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 launch_template_data: {
    #                   block_device_mapping_set: [
    #                     {
    #                       device_name: "NonEmptyString",
    #                       ebs: {
    #                         delete_on_termination: false,
    #                         encrypted: false,
    #                         iops: 1,
    #                         kms_key_id: "NonEmptyString",
    #                         snapshot_id: "NonEmptyString",
    #                         throughput: 1,
    #                         volume_size: 1,
    #                         volume_type: "NonEmptyString"
    #                       },
    #                       no_device: "NonEmptyString",
    #                       virtual_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   capacity_reservation_specification: {
    #                     capacity_reservation_preference: "NonEmptyString",
    #                     capacity_reservation_target: {
    #                       capacity_reservation_id: "NonEmptyString",
    #                       capacity_reservation_resource_group_arn: "NonEmptyString"
    #                     }
    #                   },
    #                   cpu_options: {
    #                     core_count: 1,
    #                     threads_per_core: 1
    #                   },
    #                   credit_specification: {
    #                     cpu_credits: "NonEmptyString"
    #                   },
    #                   disable_api_stop: false,
    #                   disable_api_termination: false,
    #                   ebs_optimized: false,
    #                   elastic_gpu_specification_set: [
    #                     {
    #                       type: "NonEmptyString"
    #                     }
    #                   ],
    #                   elastic_inference_accelerator_set: [
    #                     {
    #                       count: 1,
    #                       type: "NonEmptyString"
    #                     }
    #                   ],
    #                   enclave_options: {
    #                     enabled: false
    #                   },
    #                   hibernation_options: {
    #                     configured: false
    #                   },
    #                   iam_instance_profile: {
    #                     arn: "NonEmptyString",
    #                     name: "NonEmptyString"
    #                   },
    #                   image_id: "NonEmptyString",
    #                   instance_initiated_shutdown_behavior: "NonEmptyString",
    #                   instance_market_options: {
    #                     market_type: "NonEmptyString",
    #                     spot_options: {
    #                       block_duration_minutes: 1,
    #                       instance_interruption_behavior: "NonEmptyString",
    #                       max_price: "NonEmptyString",
    #                       spot_instance_type: "NonEmptyString",
    #                       valid_until: "NonEmptyString"
    #                     }
    #                   },
    #                   instance_requirements: {
    #                     accelerator_count: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     accelerator_manufacturers: ["NonEmptyString"],
    #                     accelerator_names: ["NonEmptyString"],
    #                     accelerator_total_memory_mi_b: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     accelerator_types: ["NonEmptyString"],
    #                     bare_metal: "NonEmptyString",
    #                     baseline_ebs_bandwidth_mbps: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     burstable_performance: "NonEmptyString",
    #                     cpu_manufacturers: ["NonEmptyString"],
    #                     excluded_instance_types: ["NonEmptyString"],
    #                     instance_generations: ["NonEmptyString"],
    #                     local_storage: "NonEmptyString",
    #                     local_storage_types: ["NonEmptyString"],
    #                     memory_gi_b_per_v_cpu: {
    #                       max: 1.0,
    #                       min: 1.0
    #                     },
    #                     memory_mi_b: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     network_interface_count: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     on_demand_max_price_percentage_over_lowest_price: 1,
    #                     require_hibernate_support: false,
    #                     spot_max_price_percentage_over_lowest_price: 1,
    #                     total_local_storage_gb: {
    #                       max: 1.0,
    #                       min: 1.0
    #                     },
    #                     v_cpu_count: {
    #                       max: 1,
    #                       min: 1
    #                     }
    #                   },
    #                   instance_type: "NonEmptyString",
    #                   kernel_id: "NonEmptyString",
    #                   key_name: "NonEmptyString",
    #                   license_set: [
    #                     {
    #                       license_configuration_arn: "NonEmptyString"
    #                     }
    #                   ],
    #                   maintenance_options: {
    #                     auto_recovery: "NonEmptyString"
    #                   },
    #                   metadata_options: {
    #                     http_endpoint: "NonEmptyString",
    #                     http_protocol_ipv6: "NonEmptyString",
    #                     http_tokens: "NonEmptyString",
    #                     http_put_response_hop_limit: 1,
    #                     instance_metadata_tags: "NonEmptyString"
    #                   },
    #                   monitoring: {
    #                     enabled: false
    #                   },
    #                   network_interface_set: [
    #                     {
    #                       associate_carrier_ip_address: false,
    #                       associate_public_ip_address: false,
    #                       delete_on_termination: false,
    #                       description: "NonEmptyString",
    #                       device_index: 1,
    #                       groups: ["NonEmptyString"],
    #                       interface_type: "NonEmptyString",
    #                       ipv4_prefix_count: 1,
    #                       ipv4_prefixes: [
    #                         {
    #                           ipv4_prefix: "NonEmptyString"
    #                         }
    #                       ],
    #                       ipv6_address_count: 1,
    #                       ipv6_addresses: [
    #                         {
    #                           ipv6_address: "NonEmptyString"
    #                         }
    #                       ],
    #                       ipv6_prefix_count: 1,
    #                       ipv6_prefixes: [
    #                         {
    #                           ipv6_prefix: "NonEmptyString"
    #                         }
    #                       ],
    #                       network_card_index: 1,
    #                       network_interface_id: "NonEmptyString",
    #                       private_ip_address: "NonEmptyString",
    #                       private_ip_addresses: [
    #                         {
    #                           primary: false,
    #                           private_ip_address: "NonEmptyString"
    #                         }
    #                       ],
    #                       secondary_private_ip_address_count: 1,
    #                       subnet_id: "NonEmptyString"
    #                     }
    #                   ],
    #                   placement: {
    #                     affinity: "NonEmptyString",
    #                     availability_zone: "NonEmptyString",
    #                     group_name: "NonEmptyString",
    #                     host_id: "NonEmptyString",
    #                     host_resource_group_arn: "NonEmptyString",
    #                     partition_number: 1,
    #                     spread_domain: "NonEmptyString",
    #                     tenancy: "NonEmptyString"
    #                   },
    #                   private_dns_name_options: {
    #                     enable_resource_name_dns_aaaa_record: false,
    #                     enable_resource_name_dns_a_record: false,
    #                     hostname_type: "NonEmptyString"
    #                   },
    #                   ram_disk_id: "NonEmptyString",
    #                   security_group_id_set: ["NonEmptyString"],
    #                   security_group_set: ["NonEmptyString"],
    #                   user_data: "NonEmptyString"
    #                 },
    #                 default_version_number: 1,
    #                 latest_version_number: 1
    #               },
    #               aws_sage_maker_notebook_instance: {
    #                 accelerator_types: ["NonEmptyString"],
    #                 additional_code_repositories: ["NonEmptyString"],
    #                 default_code_repository: "NonEmptyString",
    #                 direct_internet_access: "NonEmptyString",
    #                 failure_reason: "NonEmptyString",
    #                 instance_metadata_service_configuration: {
    #                   minimum_instance_metadata_service_version: "NonEmptyString"
    #                 },
    #                 instance_type: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 network_interface_id: "NonEmptyString",
    #                 notebook_instance_arn: "NonEmptyString",
    #                 notebook_instance_lifecycle_config_name: "NonEmptyString",
    #                 notebook_instance_name: "NonEmptyString",
    #                 notebook_instance_status: "NonEmptyString",
    #                 platform_identifier: "NonEmptyString",
    #                 role_arn: "NonEmptyString",
    #                 root_access: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 subnet_id: "NonEmptyString",
    #                 url: "NonEmptyString",
    #                 volume_size_in_gb: 1
    #               },
    #               aws_wafv2_web_acl: {
    #                 name: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 managedby_firewall_manager: false,
    #                 id: "NonEmptyString",
    #                 capacity: 1,
    #                 captcha_config: {
    #                   immunity_time_property: {
    #                     immunity_time: 1
    #                   }
    #                 },
    #                 default_action: {
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [
    #                         {
    #                           name: "NonEmptyString",
    #                           value: "NonEmptyString"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   block: {
    #                     custom_response: {
    #                       custom_response_body_key: "NonEmptyString",
    #                       response_code: 1,
    #                       response_headers: [
    #                         {
    #                           name: "NonEmptyString",
    #                           value: "NonEmptyString"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 },
    #                 description: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       allow: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       block: {
    #                         custom_response: {
    #                           custom_response_body_key: "NonEmptyString",
    #                           response_code: 1,
    #                           response_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       captcha: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       count: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     },
    #                     name: "NonEmptyString",
    #                     override_action: "NonEmptyString",
    #                     priority: 1,
    #                     visibility_config: {
    #                       cloud_watch_metrics_enabled: false,
    #                       metric_name: "NonEmptyString",
    #                       sampled_requests_enabled: false
    #                     }
    #                   }
    #                 ],
    #                 visibility_config: {
    #                   cloud_watch_metrics_enabled: false,
    #                   metric_name: "NonEmptyString",
    #                   sampled_requests_enabled: false
    #                 }
    #               },
    #               aws_wafv2_rule_group: {
    #                 capacity: 1,
    #                 description: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       allow: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       block: {
    #                         custom_response: {
    #                           custom_response_body_key: "NonEmptyString",
    #                           response_code: 1,
    #                           response_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       captcha: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       count: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     },
    #                     name: "NonEmptyString",
    #                     override_action: "NonEmptyString",
    #                     priority: 1,
    #                     visibility_config: {
    #                       cloud_watch_metrics_enabled: false,
    #                       metric_name: "NonEmptyString",
    #                       sampled_requests_enabled: false
    #                     }
    #                   }
    #                 ],
    #                 scope: "NonEmptyString",
    #                 visibility_config: {
    #                   cloud_watch_metrics_enabled: false,
    #                   metric_name: "NonEmptyString",
    #                   sampled_requests_enabled: false
    #                 }
    #               },
    #               aws_ec2_route_table: {
    #                 association_set: [
    #                   {
    #                     association_state: {
    #                       state: "NonEmptyString",
    #                       status_message: "NonEmptyString"
    #                     },
    #                     gateway_id: "NonEmptyString",
    #                     main: false,
    #                     route_table_association_id: "NonEmptyString",
    #                     route_table_id: "NonEmptyString",
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 owner_id: "NonEmptyString",
    #                 propagating_vgw_set: [
    #                   {
    #                     gateway_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 route_table_id: "NonEmptyString",
    #                 route_set: [
    #                   {
    #                     carrier_gateway_id: "NonEmptyString",
    #                     core_network_arn: "NonEmptyString",
    #                     destination_cidr_block: "NonEmptyString",
    #                     destination_ipv6_cidr_block: "NonEmptyString",
    #                     destination_prefix_list_id: "NonEmptyString",
    #                     egress_only_internet_gateway_id: "NonEmptyString",
    #                     gateway_id: "NonEmptyString",
    #                     instance_id: "NonEmptyString",
    #                     instance_owner_id: "NonEmptyString",
    #                     local_gateway_id: "NonEmptyString",
    #                     nat_gateway_id: "NonEmptyString",
    #                     network_interface_id: "NonEmptyString",
    #                     origin: "NonEmptyString",
    #                     state: "NonEmptyString",
    #                     transit_gateway_id: "NonEmptyString",
    #                     vpc_peering_connection_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_amazon_mq_broker: {
    #                 authentication_strategy: "NonEmptyString",
    #                 auto_minor_version_upgrade: false,
    #                 broker_arn: "NonEmptyString",
    #                 broker_name: "NonEmptyString",
    #                 deployment_mode: "NonEmptyString",
    #                 encryption_options: {
    #                   kms_key_id: "NonEmptyString",
    #                   use_aws_owned_key: false
    #                 },
    #                 engine_type: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 host_instance_type: "NonEmptyString",
    #                 broker_id: "NonEmptyString",
    #                 ldap_server_metadata: {
    #                   hosts: ["NonEmptyString"],
    #                   role_base: "NonEmptyString",
    #                   role_name: "NonEmptyString",
    #                   role_search_matching: "NonEmptyString",
    #                   role_search_subtree: false,
    #                   service_account_username: "NonEmptyString",
    #                   user_base: "NonEmptyString",
    #                   user_role_name: "NonEmptyString",
    #                   user_search_matching: "NonEmptyString",
    #                   user_search_subtree: false
    #                 },
    #                 logs: {
    #                   audit: false,
    #                   general: false,
    #                   audit_log_group: "NonEmptyString",
    #                   general_log_group: "NonEmptyString",
    #                   pending: {
    #                     audit: false,
    #                     general: false
    #                   }
    #                 },
    #                 maintenance_window_start_time: {
    #                   day_of_week: "NonEmptyString",
    #                   time_of_day: "NonEmptyString",
    #                   time_zone: "NonEmptyString"
    #                 },
    #                 publicly_accessible: false,
    #                 security_groups: ["NonEmptyString"],
    #                 storage_type: "NonEmptyString",
    #                 subnet_ids: ["NonEmptyString"],
    #                 users: [
    #                   {
    #                     pending_change: "NonEmptyString",
    #                     username: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_app_sync_graph_ql_api: {
    #                 api_id: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 open_id_connect_config: {
    #                   auth_tt_l: 1,
    #                   client_id: "NonEmptyString",
    #                   iat_tt_l: 1,
    #                   issuer: "NonEmptyString"
    #                 },
    #                 name: "NonEmptyString",
    #                 lambda_authorizer_config: {
    #                   authorizer_result_ttl_in_seconds: 1,
    #                   authorizer_uri: "NonEmptyString",
    #                   identity_validation_expression: "NonEmptyString"
    #                 },
    #                 xray_enabled: false,
    #                 arn: "NonEmptyString",
    #                 user_pool_config: {
    #                   app_id_client_regex: "NonEmptyString",
    #                   aws_region: "NonEmptyString",
    #                   default_action: "NonEmptyString",
    #                   user_pool_id: "NonEmptyString"
    #                 },
    #                 authentication_type: "NonEmptyString",
    #                 log_config: {
    #                   cloud_watch_logs_role_arn: "NonEmptyString",
    #                   exclude_verbose_content: false,
    #                   field_log_level: "NonEmptyString"
    #                 },
    #                 additional_authentication_providers: [
    #                   {
    #                     authentication_type: "NonEmptyString",
    #                     lambda_authorizer_config: {
    #                       authorizer_result_ttl_in_seconds: 1,
    #                       authorizer_uri: "NonEmptyString",
    #                       identity_validation_expression: "NonEmptyString"
    #                     },
    #                     open_id_connect_config: {
    #                       auth_tt_l: 1,
    #                       client_id: "NonEmptyString",
    #                       iat_tt_l: 1,
    #                       issuer: "NonEmptyString"
    #                     },
    #                     user_pool_config: {
    #                       app_id_client_regex: "NonEmptyString",
    #                       aws_region: "NonEmptyString",
    #                       default_action: "NonEmptyString",
    #                       user_pool_id: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 waf_web_acl_arn: "NonEmptyString"
    #               },
    #               aws_event_schemas_registry: {
    #                 description: "NonEmptyString",
    #                 registry_arn: "NonEmptyString",
    #                 registry_name: "NonEmptyString"
    #               },
    #               aws_guard_duty_detector: {
    #                 data_sources: {
    #                   cloud_trail: {
    #                     status: "NonEmptyString"
    #                   },
    #                   dns_logs: {
    #                     status: "NonEmptyString"
    #                   },
    #                   flow_logs: {
    #                     status: "NonEmptyString"
    #                   },
    #                   kubernetes: {
    #                     audit_logs: {
    #                       status: "NonEmptyString"
    #                     }
    #                   },
    #                   malware_protection: {
    #                     scan_ec2_instance_with_findings: {
    #                       ebs_volumes: {
    #                         reason: "NonEmptyString",
    #                         status: "NonEmptyString"
    #                       }
    #                     },
    #                     service_role: "NonEmptyString"
    #                   },
    #                   s3_logs: {
    #                     status: "NonEmptyString"
    #                   }
    #                 },
    #                 features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 finding_publishing_frequency: "NonEmptyString",
    #                 service_role: "NonEmptyString",
    #                 status: "NonEmptyString"
    #               },
    #               aws_step_function_state_machine: {
    #                 label: "NonEmptyString",
    #                 logging_configuration: {
    #                   destinations: [
    #                     {
    #                       cloud_watch_logs_log_group: {
    #                         log_group_arn: "NonEmptyString"
    #                       }
    #                     }
    #                   ],
    #                   include_execution_data: false,
    #                   level: "NonEmptyString"
    #                 },
    #                 name: "NonEmptyString",
    #                 role_arn: "NonEmptyString",
    #                 state_machine_arn: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 tracing_configuration: {
    #                   enabled: false
    #                 },
    #                 type: "NonEmptyString"
    #               },
    #               aws_athena_work_group: {
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 state: "NonEmptyString",
    #                 configuration: {
    #                   result_configuration: {
    #                     encryption_configuration: {
    #                       encryption_option: "NonEmptyString",
    #                       kms_key: "NonEmptyString"
    #                     }
    #                   }
    #                 }
    #               },
    #               aws_events_eventbus: {
    #                 arn: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 policy: "NonEmptyString"
    #               },
    #               aws_dms_endpoint: {
    #                 certificate_arn: "NonEmptyString",
    #                 database_name: "NonEmptyString",
    #                 endpoint_arn: "NonEmptyString",
    #                 endpoint_identifier: "NonEmptyString",
    #                 endpoint_type: "NonEmptyString",
    #                 engine_name: "NonEmptyString",
    #                 external_id: "NonEmptyString",
    #                 extra_connection_attributes: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 port: 1,
    #                 server_name: "NonEmptyString",
    #                 ssl_mode: "NonEmptyString",
    #                 username: "NonEmptyString"
    #               },
    #               aws_events_endpoint: {
    #                 arn: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 endpoint_id: "NonEmptyString",
    #                 endpoint_url: "NonEmptyString",
    #                 event_buses: [
    #                   {
    #                     event_bus_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 name: "NonEmptyString",
    #                 replication_config: {
    #                   state: "NonEmptyString"
    #                 },
    #                 role_arn: "NonEmptyString",
    #                 routing_config: {
    #                   failover_config: {
    #                     primary: {
    #                       health_check: "NonEmptyString"
    #                     },
    #                     secondary: {
    #                       route: "NonEmptyString"
    #                     }
    #                   }
    #                 },
    #                 state: "NonEmptyString",
    #                 state_reason: "NonEmptyString"
    #               },
    #               aws_dms_replication_task: {
    #                 cdc_start_position: "NonEmptyString",
    #                 cdc_start_time: "NonEmptyString",
    #                 cdc_stop_position: "NonEmptyString",
    #                 migration_type: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 resource_identifier: "NonEmptyString",
    #                 replication_instance_arn: "NonEmptyString",
    #                 replication_task_identifier: "NonEmptyString",
    #                 replication_task_settings: "NonEmptyString",
    #                 source_endpoint_arn: "NonEmptyString",
    #                 table_mappings: "NonEmptyString",
    #                 target_endpoint_arn: "NonEmptyString",
    #                 task_data: "NonEmptyString"
    #               },
    #               aws_dms_replication_instance: {
    #                 allocated_storage: 1,
    #                 auto_minor_version_upgrade: false,
    #                 availability_zone: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 multi_az: false,
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 replication_instance_class: "NonEmptyString",
    #                 replication_instance_identifier: "NonEmptyString",
    #                 replication_subnet_group: {
    #                   replication_subnet_group_identifier: "NonEmptyString"
    #                 },
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_route53_hosted_zone: {
    #                 hosted_zone: {
    #                   id: "NonEmptyString",
    #                   name: "NonEmptyString",
    #                   config: {
    #                     comment: "NonEmptyString"
    #                   }
    #                 },
    #                 vpcs: [
    #                   {
    #                     id: "NonEmptyString",
    #                     region: "NonEmptyString"
    #                   }
    #                 ],
    #                 name_servers: ["NonEmptyString"],
    #                 query_logging_config: {
    #                   cloud_watch_logs_log_group_arn: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     hosted_zone_id: "NonEmptyString",
    #                     id: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_msk_cluster: {
    #                 cluster_info: {
    #                   encryption_info: {
    #                     encryption_in_transit: {
    #                       in_cluster: false,
    #                       client_broker: "NonEmptyString"
    #                     },
    #                     encryption_at_rest: {
    #                       data_volume_kms_key_id: "NonEmptyString"
    #                     }
    #                   },
    #                   current_version: "NonEmptyString",
    #                   number_of_broker_nodes: 1,
    #                   cluster_name: "NonEmptyString",
    #                   client_authentication: {
    #                     sasl: {
    #                       iam: {
    #                         enabled: false
    #                       },
    #                       scram: {
    #                         enabled: false
    #                       }
    #                     },
    #                     unauthenticated: {
    #                       enabled: false
    #                     },
    #                     tls: {
    #                       certificate_authority_arn_list: ["NonEmptyString"],
    #                       enabled: false
    #                     }
    #                   },
    #                   enhanced_monitoring: "NonEmptyString"
    #                 }
    #               },
    #               aws_s3_access_point: {
    #                 access_point_arn: "NonEmptyString",
    #                 alias: "NonEmptyString",
    #                 bucket: "NonEmptyString",
    #                 bucket_account_id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 network_origin: "NonEmptyString",
    #                 public_access_block_configuration: {
    #                   block_public_acls: false,
    #                   block_public_policy: false,
    #                   ignore_public_acls: false,
    #                   restrict_public_buckets: false
    #                 },
    #                 vpc_configuration: {
    #                   vpc_id: "NonEmptyString"
    #                 }
    #               },
    #               aws_ec2_client_vpn_endpoint: {
    #                 client_vpn_endpoint_id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 client_cidr_block: "NonEmptyString",
    #                 dns_server: ["NonEmptyString"],
    #                 split_tunnel: false,
    #                 transport_protocol: "NonEmptyString",
    #                 vpn_port: 1,
    #                 server_certificate_arn: "NonEmptyString",
    #                 authentication_options: [
    #                   {
    #                     type: "NonEmptyString",
    #                     active_directory: {
    #                       directory_id: "NonEmptyString"
    #                     },
    #                     mutual_authentication: {
    #                       client_root_certificate_chain: "NonEmptyString"
    #                     },
    #                     federated_authentication: {
    #                       saml_provider_arn: "NonEmptyString",
    #                       self_service_saml_provider_arn: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 connection_log_options: {
    #                   enabled: false,
    #                   cloudwatch_log_group: "NonEmptyString",
    #                   cloudwatch_log_stream: "NonEmptyString"
    #                 },
    #                 security_group_id_set: ["NonEmptyString"],
    #                 vpc_id: "NonEmptyString",
    #                 self_service_portal_url: "NonEmptyString",
    #                 client_connect_options: {
    #                   enabled: false,
    #                   lambda_function_arn: "NonEmptyString",
    #                   status: {
    #                     code: "NonEmptyString",
    #                     message: "NonEmptyString"
    #                   }
    #                 },
    #                 session_timeout_hours: 1,
    #                 client_login_banner_options: {
    #                   enabled: false,
    #                   banner_text: "NonEmptyString"
    #                 }
    #               },
    #               code_repository: {
    #                 provider_type: "NonEmptyString",
    #                 project_name: "NonEmptyString",
    #                 code_security_integration_arn: "NonEmptyString"
    #               }
    #             },
    #             application_name: "NonEmptyString",
    #             application_arn: "NonEmptyString"
    #           }
    #         ],
    #         compliance: {
    #           status: "PASSED" # One of: ["PASSED", "WARNING", "FAILED", "NOT_AVAILABLE"],
    #           related_requirements: ["NonEmptyString"],
    #           status_reasons: [
    #             {
    #               reason_code: "NonEmptyString", # required
    #               description: "NonEmptyString"
    #             }
    #           ],
    #           security_control_id: "NonEmptyString",
    #           associated_standards: [
    #             {
    #               standards_id: "NonEmptyString"
    #             }
    #           ],
    #           security_control_parameters: [
    #             {
    #               name: "NonEmptyString",
    #               value: ["NonEmptyString"]
    #             }
    #           ]
    #         },
    #         verification_state: "UNKNOWN" # One of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"],
    #         workflow_state: "NEW" # One of: ["NEW", "ASSIGNED", "IN_PROGRESS", "DEFERRED", "RESOLVED"],
    #         workflow: {
    #           status: "NEW" # One of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #         },
    #         record_state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           }
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #           updated_at: "NonEmptyString", # required
    #         },
    #         vulnerabilities: [
    #           {
    #             id: "NonEmptyString", # required
    #             vulnerable_packages: [
    #               {
    #                 name: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 epoch: "NonEmptyString",
    #                 release: "NonEmptyString",
    #                 architecture: "NonEmptyString",
    #                 package_manager: "NonEmptyString",
    #                 file_path: "NonEmptyString",
    #                 fixed_in_version: "NonEmptyString",
    #                 remediation: "NonEmptyString",
    #                 source_layer_hash: "NonEmptyString",
    #                 source_layer_arn: "NonEmptyString"
    #               }
    #             ],
    #             cvss: [
    #               {
    #                 version: "NonEmptyString",
    #                 base_score: 1.0,
    #                 base_vector: "NonEmptyString",
    #                 source: "NonEmptyString",
    #                 adjustments: [
    #                   {
    #                     metric: "NonEmptyString",
    #                     reason: "NonEmptyString"
    #                   }
    #                 ]
    #               }
    #             ],
    #             related_vulnerabilities: ["NonEmptyString"],
    #             vendor: {
    #               name: "NonEmptyString", # required
    #               url: "NonEmptyString",
    #               vendor_severity: "NonEmptyString",
    #               vendor_created_at: "NonEmptyString",
    #               vendor_updated_at: "NonEmptyString"
    #             },
    #             reference_urls: ["NonEmptyString"],
    #             fix_available: "YES" # One of: ["YES", "NO", "PARTIAL"],
    #             epss_score: 1.0,
    #             exploit_available: "YES" # One of: ["YES", "NO"],
    #             last_known_exploit_at: "NonEmptyString",
    #             code_vulnerabilities: [
    #               {
    #                 cwes: ["NonEmptyString"],
    #                 file_path: {
    #                   end_line: 1,
    #                   file_name: "NonEmptyString",
    #                   file_path: "NonEmptyString",
    #                   start_line: 1
    #                 },
    #                 source_arn: "NonEmptyString"
    #               }
    #             ]
    #           }
    #         ],
    #         patch_summary: {
    #           id: "NonEmptyString", # required
    #           installed_count: 1,
    #           missing_count: 1,
    #           failed_count: 1,
    #           installed_other_count: 1,
    #           installed_rejected_count: 1,
    #           installed_pending_reboot: 1,
    #           operation_start_time: "NonEmptyString",
    #           operation_end_time: "NonEmptyString",
    #           reboot_option: "NonEmptyString",
    #           operation: "NonEmptyString"
    #         },
    #         action: {
    #           action_type: "NonEmptyString",
    #           network_connection_action: {
    #             connection_direction: "NonEmptyString",
    #             remote_ip_details: {
    #               ip_address_v4: "NonEmptyString",
    #               organization: {
    #                 asn: 1,
    #                 asn_org: "NonEmptyString",
    #                 isp: "NonEmptyString",
    #                 org: "NonEmptyString"
    #               },
    #               country: {
    #                 country_code: "NonEmptyString",
    #                 country_name: "NonEmptyString"
    #               },
    #               city: {
    #                 city_name: "NonEmptyString"
    #               },
    #               geo_location: {
    #                 lon: 1.0,
    #                 lat: 1.0
    #               }
    #             },
    #             remote_port_details: {
    #               port: 1,
    #               port_name: "NonEmptyString"
    #             },
    #             local_port_details: {
    #               port: 1,
    #               port_name: "NonEmptyString"
    #             },
    #             protocol: "NonEmptyString",
    #             blocked: false
    #           },
    #           aws_api_call_action: {
    #             api: "NonEmptyString",
    #             service_name: "NonEmptyString",
    #             caller_type: "NonEmptyString",
    #             remote_ip_details: {
    #               ip_address_v4: "NonEmptyString",
    #               organization: {
    #                 asn: 1,
    #                 asn_org: "NonEmptyString",
    #                 isp: "NonEmptyString",
    #                 org: "NonEmptyString"
    #               },
    #               country: {
    #                 country_code: "NonEmptyString",
    #                 country_name: "NonEmptyString"
    #               },
    #               city: {
    #                 city_name: "NonEmptyString"
    #               },
    #               geo_location: {
    #                 lon: 1.0,
    #                 lat: 1.0
    #               }
    #             },
    #             domain_details: {
    #               domain: "NonEmptyString"
    #             },
    #             affected_resources: {
    #               "NonEmptyString" => "NonEmptyString"
    #             },
    #             first_seen: "NonEmptyString",
    #             last_seen: "NonEmptyString"
    #           },
    #           dns_request_action: {
    #             domain: "NonEmptyString",
    #             protocol: "NonEmptyString",
    #             blocked: false
    #           },
    #           port_probe_action: {
    #             port_probe_details: [
    #               {
    #                 local_port_details: {
    #                   port: 1,
    #                   port_name: "NonEmptyString"
    #                 },
    #                 local_ip_details: {
    #                   ip_address_v4: "NonEmptyString"
    #                 },
    #                 remote_ip_details: {
    #                   ip_address_v4: "NonEmptyString",
    #                   organization: {
    #                     asn: 1,
    #                     asn_org: "NonEmptyString",
    #                     isp: "NonEmptyString",
    #                     org: "NonEmptyString"
    #                   },
    #                   country: {
    #                     country_code: "NonEmptyString",
    #                     country_name: "NonEmptyString"
    #                   },
    #                   city: {
    #                     city_name: "NonEmptyString"
    #                   },
    #                   geo_location: {
    #                     lon: 1.0,
    #                     lat: 1.0
    #                   }
    #                 }
    #               }
    #             ],
    #             blocked: false
    #           }
    #         },
    #         finding_provider_fields: {
    #           confidence: 1,
    #           criticality: 1,
    #           related_findings: [
    #             {
    #               product_arn: "NonEmptyString", # required
    #               id: "NonEmptyString", # required
    #             }
    #           ],
    #           severity: {
    #             label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #             original: "NonEmptyString"
    #           },
    #           types: ["NonEmptyString"]
    #         },
    #         sample: false,
    #         generator_details: {
    #           name: "NonEmptyString",
    #           description: "NonEmptyString",
    #           labels: ["NonEmptyString"]
    #         },
    #         processed_at: "NonEmptyString",
    #         aws_account_name: "NonEmptyString",
    #         detection: {
    #           sequence: {
    #             uid: "NonEmptyString",
    #             actors: [
    #               {
    #                 id: "NonEmptyString",
    #                 user: {
    #                   name: "NonEmptyString",
    #                   uid: "NonEmptyString",
    #                   type: "NonEmptyString",
    #                   credential_uid: "NonEmptyString",
    #                   account: {
    #                     uid: "NonEmptyString",
    #                     name: "NonEmptyString"
    #                   }
    #                 },
    #                 session: {
    #                   uid: "NonEmptyString",
    #                   mfa_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                   created_time: 1,
    #                   issuer: "NonEmptyString"
    #                 }
    #               }
    #             ],
    #             endpoints: [
    #               {
    #                 id: "NonEmptyString",
    #                 ip: "NonEmptyString",
    #                 domain: "NonEmptyString",
    #                 port: 1,
    #                 location: {
    #                   city: "NonEmptyString",
    #                   country: "NonEmptyString",
    #                   lat: 1.0,
    #                   lon: 1.0
    #                 },
    #                 autonomous_system: {
    #                   name: "NonEmptyString",
    #                   number: 1
    #                 },
    #                 connection: {
    #                   direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"]
    #                 }
    #               }
    #             ],
    #             signals: [
    #               {
    #                 type: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 title: "NonEmptyString",
    #                 product_arn: "NonEmptyString",
    #                 resource_ids: ["NonEmptyString"],
    #                 signal_indicators: [
    #                   {
    #                     key: "NonEmptyString",
    #                     values: ["NonEmptyString"],
    #                     title: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 name: "NonEmptyString",
    #                 created_at: 1,
    #                 updated_at: 1,
    #                 first_seen_at: 1,
    #                 last_seen_at: 1,
    #                 severity: 1.0,
    #                 count: 1,
    #                 actor_ids: ["NonEmptyString"],
    #                 endpoint_ids: ["NonEmptyString"]
    #               }
    #             ],
    #             sequence_indicators: [
    #               {
    #                 key: "NonEmptyString",
    #                 values: ["NonEmptyString"],
    #                 title: "NonEmptyString",
    #                 type: "NonEmptyString"
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_import_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_count: 1, # required
    #     success_count: 1, # required
    #     failed_findings: [
    #       {
    #         id: "NonEmptyString", # required
    #         error_code: "NonEmptyString", # required
    #         error_message: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchImportFindingsResponse]
    def batch_import_findings(params = {}, options = {})
      request = build_request(:batch_import_findings, params)
      request.send_request(options)
    end

    # <p>
    #          Updates one or more automation rules based on rule Amazon Resource Names (ARNs) 
    #          and input parameters.
    #       </p>
    # @param [Hash, Types::BatchUpdateAutomationRulesRequest] params
    # @option params [Array<Types::UpdateAutomationRulesRequestItem>] :update_automation_rules_request_items
    #   <p>
    #            An array of ARNs for the rules that are to be updated. Optionally, you can also include 
    #            <code>RuleStatus</code> and <code>RuleOrder</code>.
    #         </p>
    # @example To update one ore more automation rules
    #   # The following example updates the specified automation rules.
    #   params = {
    #     update_automation_rules_request_items: [
    #       {
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         rule_status: ENABLED,
    #         rule_order: 15
    #       },
    #       {
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #         rule_status: DISABLED
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_automation_rules(params, options)
    #   response.to_h #=>
    #   {
    #     processed_automation_rules: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     update_automation_rules_request_items: [ # required
    #       {
    #         rule_arn: "NonEmptyString", # required
    #         rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         rule_order: 1,
    #         description: "NonEmptyString",
    #         rule_name: "NonEmptyString",
    #         is_terminal: false,
    #         criteria: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           compliance_security_control_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           compliance_associated_standards_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           resource_application_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_application_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           aws_account_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ]
    #         },
    #         actions: [
    #           {
    #             type: "FINDING_FIELDS_UPDATE" # One of: ["FINDING_FIELDS_UPDATE"],
    #             finding_fields_update: {
    #               note: {
    #                 text: "NonEmptyString", # required
    #                 updated_by: "NonEmptyString", # required
    #               },
    #               severity: {
    #                 normalized: 1,
    #                 product: 1.0,
    #                 label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #               },
    #               verification_state: "UNKNOWN" # One of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"],
    #               confidence: 1,
    #               criticality: 1,
    #               types: ["NonEmptyString"],
    #               user_defined_fields: {
    #                 "NonEmptyString" => "NonEmptyString"
    #               },
    #               workflow: {
    #                 status: "NEW" # One of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #               },
    #               related_findings: [
    #                 {
    #                   product_arn: "NonEmptyString", # required
    #                   id: "NonEmptyString", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_automation_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processed_automation_rules: ["NonEmptyString"],
    #     unprocessed_automation_rules: [
    #       {
    #         rule_arn: "NonEmptyString",
    #         error_code: 1,
    #         error_message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateAutomationRulesResponse]
    def batch_update_automation_rules(params = {}, options = {})
      request = build_request(:batch_update_automation_rules, params)
      request.send_request(options)
    end

    # <p>
    #          Used by Security Hub customers to update information about their investigation into one or more findings.
    #          Requested by administrator accounts or member accounts. 
    #          Administrator accounts can update findings for their account and their member accounts. 
    #          A member account can update findings only for their own account.
    #          Administrator and member accounts can use this operation to update the following fields and objects for one or more findings:
    #       </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Confidence</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Criticality</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Note</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RelatedFindings</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Severity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Types</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UserDefinedFields</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>VerificationState</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Workflow</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #          If you use this operation to update a finding, your updates don’t affect the value for the <code>UpdatedAt</code> field of the finding. 
    #          Also note that it can take several minutes for Security Hub to process your request and update each finding specified in the request. 
    #       </p>
    #          <p>
    #          You can configure IAM policies to restrict access to fields and field values. 
    #          For example, you might not want member accounts to be able to suppress findings or change the finding severity. 
    #          For more information see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access">Configuring access to BatchUpdateFindings</a> in the <i>Security Hub User Guide</i>.
    #       </p>
    # @param [Hash, Types::BatchUpdateFindingsRequest] params
    # @option params [Array<Types::AwsSecurityFindingIdentifier>] :finding_identifiers
    #   <p>The list of findings to update. <code>BatchUpdateFindings</code> can be used to update
    #            up to 100 findings at a time.</p>
    #            <p>For each finding, the list provides the finding identifier and the ARN of the finding
    #            provider.</p>
    # @option params [Types::NoteUpdate] :note
    #   <p>The updated note.</p>
    # @option params [Types::SeverityUpdate] :severity
    #   <p>Used to update the finding severity.</p>
    # @option params [String] :verification_state
    #   <p>Indicates the veracity of a finding.</p>
    #            <p>The available values for <code>VerificationState</code> are  as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code> – The default disposition of a security finding</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRUE_POSITIVE</code> – The security finding is confirmed</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FALSE_POSITIVE</code> – The security finding was determined to be a false
    #                  alarm</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BENIGN_POSITIVE</code> – A special case of <code>TRUE_POSITIVE</code> where
    #                  the finding doesn't pose any threat, is expected, or both</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :confidence
    #   <p>The updated value for the finding confidence. Confidence is defined as the likelihood
    #            that a finding accurately identifies the behavior or issue that it was intended to
    #            identify.</p>
    #            <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
    #            confidence and 100 means 100 percent confidence.</p>
    # @option params [Integer] :criticality
    #   <p>The updated value for the level of importance assigned to the resources associated with
    #            the findings.</p>
    #            <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
    #            is reserved for the most critical resources. </p>
    # @option params [Array<String>] :types
    #   <p>One or more finding types in the format of namespace/category/classifier that classify a
    #            finding.</p>
    #            <p>Valid namespace values are as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>Software and Configuration Checks</p>
    #               </li>
    #               <li>
    #                  <p>TTPs</p>
    #               </li>
    #               <li>
    #                  <p>Effects</p>
    #               </li>
    #               <li>
    #                  <p>Unusual Behaviors</p>
    #               </li>
    #               <li>
    #                  <p>Sensitive Data Identifications </p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :user_defined_fields
    #   <p>A list of name/value string pairs associated with the finding. These are custom,
    #            user-defined fields added to a finding.</p>
    # @option params [Types::WorkflowUpdate] :workflow
    #   <p>Used to update the workflow status of a finding.</p>
    #            <p>The workflow status indicates the progress of the investigation into the finding. </p>
    # @option params [Array<Types::RelatedFinding>] :related_findings
    #   <p>A list of findings that are related to the updated findings.</p>
    # @example To update Security Hub findings
    #   # The following example updates Security Hub findings. The finding identifier parameter specifies which findings to update. Only specific finding fields can be updated with this operation.
    #   params = {
    #     finding_identifiers: [
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub"
    #       },
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub"
    #       }
    #     ],
    #     note: {
    #       text: "Known issue that is not a risk.",
    #       updated_by: "user1"
    #     },
    #     severity: {
    #       label: LOW
    #     },
    #     verification_state: TRUE_POSITIVE,
    #     confidence: 80,
    #     criticality: 80,
    #     types: [
    #       "Software and Configuration Checks/Vulnerabilities/CVE"
    #     ],
    #     user_defined_fields: {
    #       "reviewedByCio" => "true"
    #     },
    #     workflow: {
    #       status: RESOLVED
    #     },
    #     related_findings: [
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE33333",
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_findings(params, options)
    #   response.to_h #=>
    #   {
    #     processed_findings: [
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub"
    #       },
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub"
    #       }
    #     ],
    #     unprocessed_findings: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_identifiers: [ # required
    #       {
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #       }
    #     ],
    #     note: {
    #       text: "NonEmptyString", # required
    #       updated_by: "NonEmptyString", # required
    #     },
    #     severity: {
    #       normalized: 1,
    #       product: 1.0,
    #       label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #     },
    #     verification_state: "UNKNOWN" # One of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"],
    #     confidence: 1,
    #     criticality: 1,
    #     types: ["NonEmptyString"],
    #     user_defined_fields: {
    #       "NonEmptyString" => "NonEmptyString"
    #     },
    #     workflow: {
    #       status: "NEW" # One of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #     },
    #     related_findings: [
    #       {
    #         product_arn: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processed_findings: [ # required
    #       {
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #       }
    #     ],
    #     unprocessed_findings: [ # required
    #       {
    #         finding_identifier: { # required
    #           id: "NonEmptyString", # required
    #           product_arn: "NonEmptyString", # required
    #         },
    #         error_code: "NonEmptyString", # required
    #         error_message: "NonEmptyString", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateFindingsResponse]
    def batch_update_findings(params = {}, options = {})
      request = build_request(:batch_update_findings, params)
      request.send_request(options)
    end

    # <p>Used by customers to update information about their investigation into a finding. 
    #          Requested by delegated administrator accounts or member accounts. 
    #          Delegated administrator accounts can update findings for their account and their member accounts. 
    #          Member accounts can update findings for their account. <code>BatchUpdateFindings</code> and <code>BatchUpdateFindingV2</code> both use <code>securityhub:BatchUpdateFindings</code> in the <code>Action</code> element of an IAM policy statement. 
    #          You must have permission to perform the <code>securityhub:BatchUpdateFindings</code> action. 
    #          Updates from <code>BatchUpdateFindingsV2</code> don't affect the value of f<code>inding_info.modified_time</code>, <code>finding_info.modified_time_dt</code>, <code>time</code>, <code>time_dt for a finding</code>. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::BatchUpdateFindingsV2Request] params
    # @option params [Array<String>] :metadata_uids
    #   <p>The list of finding <code>metadata.uid</code> to indicate findings to update. 
    #            Finding <code>metadata.uid</code> is a globally unique identifier associated with the finding. 
    #            Customers cannot use <code>MetadataUids</code> together with <code>FindingIdentifiers</code>.</p>
    # @option params [Array<Types::OcsfFindingIdentifier>] :finding_identifiers
    #   <p>Provides information to identify a specific V2 finding.</p>
    # @option params [String] :comment
    #   <p>The updated value for a user provided comment about the finding. 
    #            Minimum character length 1. 
    #            Maximum character length 512.</p>
    # @option params [Integer] :severity_id
    #   <p>The updated value for the normalized severity identifier. 
    #            The severity ID is an integer with the allowed enum values [0, 1, 2, 3, 4, 5, 99]. 
    #            When customer provides the updated severity ID, the string sibling severity will automatically be updated in the finding.</p>
    # @option params [Integer] :status_id
    #   <p>The updated value for the normalized status identifier. 
    #            The status ID is an integer with the allowed enum values [0, 1, 2, 3, 4, 5, 6, 99]. 
    #            When customer provides the updated status ID, the string sibling status will automatically be updated in the finding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metadata_uids: ["NonEmptyString"],
    #     finding_identifiers: [
    #       {
    #         cloud_account_uid: "NonEmptyString", # required
    #         finding_info_uid: "NonEmptyString", # required
    #         metadata_product_uid: "NonEmptyString", # required
    #       }
    #     ],
    #     comment: "NonEmptyString",
    #     severity_id: 1,
    #     status_id: 1
    #   }
    #   options = {}
    #   response = client.batch_update_findings_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processed_findings: [ # required
    #       {
    #         finding_identifier: {
    #           cloud_account_uid: "NonEmptyString", # required
    #           finding_info_uid: "NonEmptyString", # required
    #           metadata_product_uid: "NonEmptyString", # required
    #         },
    #         metadata_uid: "NonEmptyString"
    #       }
    #     ],
    #     unprocessed_findings: [ # required
    #       {
    #         finding_identifier: {
    #           cloud_account_uid: "NonEmptyString", # required
    #           finding_info_uid: "NonEmptyString", # required
    #           metadata_product_uid: "NonEmptyString", # required
    #         },
    #         metadata_uid: "NonEmptyString",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "ValidationException", "InternalServerException", "ConflictException"],
    #         error_message: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateFindingsV2Response]
    def batch_update_findings_v2(params = {}, options = {})
      request = build_request(:batch_update_findings_v2, params)
      request.send_request(options)
    end

    # <p>
    #          For a batch of security controls and standards, this operation updates the enablement status of a control in a standard.
    #       </p>
    # @param [Hash, Types::BatchUpdateStandardsControlAssociationsRequest] params
    # @option params [Array<Types::StandardsControlAssociationUpdate>] :standards_control_association_updates
    #   <p>
    #            Updates the enablement status of a security control in a specified standard.
    #         </p>
    #            <p>
    #            Calls to this operation return a <code>RESOURCE_NOT_FOUND_EXCEPTION</code> error when the standard subscription for the control has <code>StandardsControlsUpdatable</code> value <code>NOT_READY_FOR_UPDATES</code>.
    #         </p>
    # @example To update enablement status of a batch of controls
    #   # The following example disables CloudWatch.12 in CIS AWS Foundations Benchmark v1.2.0. The example returns an error for CloudTrail.1 because an invalid standard ARN is provided.
    #   params = {
    #     standards_control_association_updates: [
    #       {
    #         security_control_id: "CloudTrail.1",
    #         standards_arn: "arn:aws:securityhub:::ruleset/sample-standard/v/1.1.0",
    #         association_status: DISABLED,
    #         updated_reason: "Not relevant to environment"
    #       },
    #       {
    #         security_control_id: "CloudWatch.12",
    #         standards_arn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
    #         association_status: DISABLED,
    #         updated_reason: "Not relevant to environment"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_standards_control_associations(params, options)
    #   response.to_h #=>
    #   {
    #     unprocessed_association_updates: [
    #       {
    #         error_code: INVALID_INPUT,
    #         error_reason: "Invalid Standards Arn: 'arn:aws:securityhub:::ruleset/sample-standard/v/1.1.0'",
    #         standards_control_association_update: {
    #           association_status: DISABLED,
    #           security_control_id: "CloudTrail.1",
    #           standards_arn: "arn:aws:securityhub:::ruleset/sample-standard/v/1.1.0",
    #           updated_reason: "Test Reason"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_control_association_updates: [ # required
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         security_control_id: "NonEmptyString", # required
    #         association_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         updated_reason: "NonEmptyString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_standards_control_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_association_updates: [
    #       {
    #         standards_control_association_update: { # required
    #           standards_arn: "NonEmptyString", # required
    #           security_control_id: "NonEmptyString", # required
    #           association_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           updated_reason: "NonEmptyString"
    #         },
    #         error_code: "INVALID_INPUT" # One of: ["INVALID_INPUT", "ACCESS_DENIED", "NOT_FOUND", "RESOURCE_NOT_FOUND", "LIMIT_EXCEEDED"], # required
    #         error_reason: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateStandardsControlAssociationsResponse]
    def batch_update_standards_control_associations(params = {}, options = {})
      request = build_request(:batch_update_standards_control_associations, params)
      request.send_request(options)
    end

    # <p>Grants permission to complete the authorization based on input parameters. This API is in preview release and subject to change.</p>
    # @param [Hash, Types::ConnectorRegistrationsV2Request] params
    # @option params [String] :auth_code
    #   <p>The authCode retrieved from authUrl to complete the OAuth 2.0 authorization code flow.</p>
    # @option params [String] :auth_state
    #   <p>The authState retrieved from authUrl to complete the OAuth 2.0 authorization code flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     auth_code: "NonEmptyString", # required
    #     auth_state: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.connector_registrations_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "NonEmptyString",
    #     connector_id: "NonEmptyString", # required
    #   }
    # @return [Types::ConnectorRegistrationsV2Response]
    def connector_registrations_v2(params = {}, options = {})
      request = build_request(:connector_registrations_v2, params)
      request.send_request(options)
    end

    # <p>Creates a custom action target in Security Hub.</p>
    #          <p>You can use custom actions on findings and insights in Security Hub to trigger target actions
    #          in Amazon CloudWatch Events.</p>
    # @param [Hash, Types::CreateActionTargetRequest] params
    # @option params [String] :name
    #   <p>The name of the custom action target. Can contain up to 20 characters.</p>
    # @option params [String] :description
    #   <p>The description for the custom action target.</p>
    # @option params [String] :id
    #   <p>The ID for the custom action target. Can contain up to 20 alphanumeric characters.</p>
    # @example To create a custom action target
    #   # The following example creates a custom action target in Security Hub. Custom actions on findings and insights automatically trigger actions in Amazon CloudWatch Events.
    #   params = {
    #     name: "Send to remediation",
    #     description: "Action to send the finding for remediation tracking",
    #     id: "Remediation"
    #   }
    #   options = {}
    #   response = client.create_action_target(params, options)
    #   response.to_h #=>
    #   {
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString", # required
    #     id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.create_action_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_target_arn: "NonEmptyString", # required
    #   }
    # @return [Types::CreateActionTargetResponse]
    def create_action_target(params = {}, options = {})
      request = build_request(:create_action_target, params)
      request.send_request(options)
    end

    # <p>Enables aggregation across Amazon Web Services Regions. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::CreateAggregatorV2Request] params
    # @option params [String] :region_linking_mode
    #   <p>Determines how Regions are linked to an Aggregator V2.</p>
    # @option params [Array<String>] :linked_regions
    #   <p>The list of Regions that are linked to the aggregation Region.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to be applied to the AggregatorV2.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier used to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     region_linking_mode: "NonEmptyString", # required
    #     linked_regions: ["NonEmptyString"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_aggregator_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregator_v2_arn: "NonEmptyString",
    #     aggregation_region: "NonEmptyString",
    #     region_linking_mode: "NonEmptyString",
    #     linked_regions: ["NonEmptyString"]
    #   }
    # @return [Types::CreateAggregatorV2Response]
    def create_aggregator_v2(params = {}, options = {})
      request = build_request(:create_aggregator_v2, params)
      request.send_request(options)
    end

    # <p>
    #          Creates an automation rule based on input parameters.
    #       </p>
    # @param [Hash, Types::CreateAutomationRuleRequest] params
    # @option params [Hash<String, String>] :tags
    #   <p>
    #               User-defined tags associated with an automation rule. 
    #           </p>
    # @option params [String] :rule_status
    #   <p>
    #            Whether the rule is active after it is created. If 
    #            this parameter is equal to <code>ENABLED</code>, Security Hub starts applying the rule to findings 
    #            and finding updates after the rule is created. To change the value of this
    #            parameter after creating a rule, use <a href="https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateAutomationRules.html">
    #                  <code>BatchUpdateAutomationRules</code>
    #               </a>.
    #         </p>
    # @option params [Integer] :rule_order
    #   <p>An integer ranging from 1 to 1000 that represents the order in which the rule action is
    #            applied to findings. Security Hub applies rules with lower values for this parameter
    #            first. </p>
    # @option params [String] :rule_name
    #   <p>
    #            The name of the rule.
    #         </p>
    # @option params [String] :description
    #   <p>
    #            A description of the rule.
    #         </p>
    # @option params [Boolean] :is_terminal
    #   <p>Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. This is useful when a finding 
    #               matches the criteria for multiple rules, and each rule has different actions. If a rule is terminal, Security Hub applies the rule action to a finding that matches 
    #               the rule criteria and doesn't evaluate other rules for the finding. By default, a rule isn't terminal.
    #           </p>
    # @option params [Types::AutomationRulesFindingFilters] :criteria
    #   <p>
    #            A set of ASFF finding field attributes and corresponding expected values that 
    #            Security Hub uses to filter findings. If a rule is enabled and a finding matches the conditions specified in
    #            this parameter, Security Hub applies the rule action to the finding.
    #         </p>
    # @option params [Array<Types::AutomationRulesAction>] :actions
    #   <p>
    #            One or more actions to update finding fields if a finding matches the conditions 
    #            specified in <code>Criteria</code>. 
    #         </p>
    # @example To create an automation rule
    #   # The following example creates an automation rule.
    #   params = {
    #     tags: {
    #       "important-resources-rule" => "s3-bucket"
    #     },
    #     rule_status: ENABLED,
    #     rule_order: 1,
    #     rule_name: "Elevate severity for important resources",
    #     description: "Elevate finding severity to Critical for important resources",
    #     is_terminal: false,
    #     criteria: {
    #       product_name: [
    #         {
    #           value: "Security Hub",
    #           comparison: EQUALS
    #         }
    #       ],
    #       compliance_status: [
    #         {
    #           value: "FAILED",
    #           comparison: EQUALS
    #         }
    #       ],
    #       record_state: [
    #         {
    #           value: "ACTIVE",
    #           comparison: EQUALS
    #         }
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NEW",
    #           comparison: EQUALS
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           value: "arn:aws:s3:::examplebucket/developers/design_info.doc",
    #           comparison: EQUALS
    #         }
    #       ]
    #     },
    #     actions: [
    #       {
    #         type: FINDING_FIELDS_UPDATE,
    #         finding_fields_update: {
    #           severity: {
    #             label: CRITICAL
    #           },
    #           note: {
    #             text: "This is a critical S3 bucket, please look into this ASAP",
    #             updated_by: "test-user"
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_automation_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     rule_order: 1, # required
    #     rule_name: "NonEmptyString", # required
    #     description: "NonEmptyString", # required
    #     is_terminal: false,
    #     criteria: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ]
    #     },
    #     actions: [ # required
    #       {
    #         type: "FINDING_FIELDS_UPDATE" # One of: ["FINDING_FIELDS_UPDATE"],
    #         finding_fields_update: {
    #           note: {
    #             text: "NonEmptyString", # required
    #             updated_by: "NonEmptyString", # required
    #           },
    #           severity: {
    #             normalized: 1,
    #             product: 1.0,
    #             label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]
    #           },
    #           verification_state: "UNKNOWN" # One of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"],
    #           confidence: 1,
    #           criticality: 1,
    #           types: ["NonEmptyString"],
    #           user_defined_fields: {
    #             "NonEmptyString" => "NonEmptyString"
    #           },
    #           workflow: {
    #             status: "NEW" # One of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #           },
    #           related_findings: [
    #             {
    #               product_arn: "NonEmptyString", # required
    #               id: "NonEmptyString", # required
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_automation_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "NonEmptyString"
    #   }
    # @return [Types::CreateAutomationRuleResponse]
    def create_automation_rule(params = {}, options = {})
      request = build_request(:create_automation_rule, params)
      request.send_request(options)
    end

    # <p>Creates a V2 automation rule. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::CreateAutomationRuleV2Request] params
    # @option params [String] :rule_name
    #   <p>The name of the V2 automation rule.</p>
    # @option params [String] :rule_status
    #   <p>The status of the V2 automation rule.</p>
    # @option params [String] :description
    #   <p>A description of the V2 automation rule.</p>
    # @option params [Float] :rule_order
    #   <p>The value for the rule priority.</p>
    # @option params [Types::Criteria] :criteria
    #   <p>The filtering type and configuration of the automation rule.</p>
    # @option params [Array<Types::AutomationRulesActionV2>] :actions
    #   <p>A list of actions to be performed when the rule criteria is met.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs associated with the V2 automation rule.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier used to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "NonEmptyString", # required
    #     rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     description: "NonEmptyString", # required
    #     rule_order: 1.0, # required
    #     criteria: { # required
    #       # One of:
    #       ocsf_finding_criteria: {
    #         composite_filters: [
    #           {
    #             string_filters: [
    #               {
    #                 field_name: "metadata.uid" # One of: ["metadata.uid", "activity_name", "cloud.account.uid", "cloud.provider", "cloud.region", "compliance.assessments.category", "compliance.assessments.name", "compliance.control", "compliance.status", "compliance.standards", "finding_info.desc", "finding_info.src_url", "finding_info.title", "finding_info.types", "finding_info.uid", "finding_info.related_events.uid", "finding_info.related_events.product.uid", "finding_info.related_events.title", "metadata.product.name", "metadata.product.uid", "metadata.product.vendor_name", "remediation.desc", "remediation.references", "resources.cloud_partition", "resources.region", "resources.type", "resources.uid", "severity", "status", "comment", "vulnerabilities.fix_coverage", "class_name"],
    #                 filter: {
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #                 }
    #               }
    #             ],
    #             date_filters: [
    #               {
    #                 field_name: "finding_info.created_time_dt" # One of: ["finding_info.created_time_dt", "finding_info.first_seen_time_dt", "finding_info.last_seen_time_dt", "finding_info.modified_time_dt"],
    #                 filter: {
    #                   start: "NonEmptyString",
    #                   end: "NonEmptyString",
    #                   date_range: {
    #                     value: 1,
    #                     unit: "DAYS" # One of: ["DAYS"]
    #                   }
    #                 }
    #               }
    #             ],
    #             boolean_filters: [
    #               {
    #                 field_name: "compliance.assessments.meets_criteria" # One of: ["compliance.assessments.meets_criteria", "vulnerabilities.is_exploit_available", "vulnerabilities.is_fix_available"],
    #                 filter: {
    #                   value: false
    #                 }
    #               }
    #             ],
    #             number_filters: [
    #               {
    #                 field_name: "activity_id" # One of: ["activity_id", "compliance.status_id", "confidence_score", "severity_id", "status_id", "finding_info.related_events_count"],
    #                 filter: {
    #                   gte: 1.0,
    #                   lte: 1.0,
    #                   eq: 1.0,
    #                   gt: 1.0,
    #                   lt: 1.0
    #                 }
    #               }
    #             ],
    #             map_filters: [
    #               {
    #                 field_name: "resources.tags" # One of: ["resources.tags"],
    #                 filter: {
    #                   key: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #                 }
    #               }
    #             ],
    #             operator: "AND" # One of: ["AND", "OR"]
    #           }
    #         ],
    #         composite_operator: "AND" # One of: ["AND", "OR"]
    #       }
    #     },
    #     actions: [ # required
    #       {
    #         type: "FINDING_FIELDS_UPDATE" # One of: ["FINDING_FIELDS_UPDATE", "EXTERNAL_INTEGRATION"], # required
    #         finding_fields_update: {
    #           severity_id: 1,
    #           comment: "NonEmptyString",
    #           status_id: 1
    #         },
    #         external_integration_configuration: {
    #           connector_arn: "NonEmptyString"
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_automation_rule_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "NonEmptyString",
    #     rule_id: "NonEmptyString"
    #   }
    # @return [Types::CreateAutomationRuleV2Response]
    def create_automation_rule_v2(params = {}, options = {})
      request = build_request(:create_automation_rule_v2, params)
      request.send_request(options)
    end

    # <p>
    #             Creates a configuration policy with the defined configuration. Only the Security Hub delegated administrator 
    #             can invoke this operation from the home Region.
    #         </p>
    # @param [Hash, Types::CreateConfigurationPolicyRequest] params
    # @option params [String] :name
    #   <p>
    #               The name of the configuration policy. Alphanumeric characters and the following ASCII characters are permitted: 
    #               <code>-, ., !, *, /</code>.
    #           </p>
    # @option params [String] :description
    #   <p>
    #               The description of the configuration policy.
    #           </p>
    # @option params [Types::Policy] :configuration_policy
    #   <p>
    #               An object that defines how Security Hub is configured. It includes whether Security Hub is enabled or 
    #               disabled, a list of enabled security standards, a list of enabled or disabled security controls, and a list of custom parameter values for specified controls. 
    #               If you provide a list of security controls that are enabled in the configuration policy, Security Hub disables all other controls (including newly 
    #               released controls). If you provide a list of security controls that are disabled in the configuration policy, Security Hub 
    #               enables all other controls (including newly released controls).
    #           </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #               User-defined tags associated with a configuration policy. For more information, see 
    #               <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/tagging-resources.html">Tagging Security Hub resources</a> 
    #               in the <i>Security Hub user guide</i>.
    #           </p>
    # @example To create a configuration policy
    #   # This operation creates a configuration policy in Security Hub.
    #   params = {
    #     name: "TestConfigurationPolicy",
    #     description: "Configuration policy for testing FSBP and CIS",
    #     configuration_policy: {
    #     "SecurityHub" => {
    #       "ServiceEnabled" => true,
    #       "EnabledStandardIdentifiers" => [
    #         arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0,
    #         arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
    #       ],
    #       "SecurityControlsConfiguration" => {
    #         "DisabledSecurityControlIdentifiers" => [CloudWatch.1],
    #         "SecurityControlCustomParameters" => [{
    #           "SecurityControlId" => ACM.1,
    #           "Parameters" => {
    #             "daysToExpiration" => {
    #               "ValueType" => CUSTOM,
    #               "Value" => {
    #                 "Integer" => 14
    #               }
    #             }
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.create_configuration_policy(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     name: "TestConfigurationPolicy",
    #     description: "Configuration policy for testing FSBP and CIS",
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #     created_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #     configuration_policy: {
    #     "SecurityHub" => {
    #       "ServiceEnabled" => true,
    #       "EnabledStandardIdentifiers" => [
    #         arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0,
    #         arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
    #       ],
    #       "SecurityControlsConfiguration" => {
    #         "DisabledSecurityControlIdentifiers" => [CloudWatch.1],
    #         "SecurityControlCustomParameters" => [{
    #           "SecurityControlId" => ACM.1,
    #           "Parameters" => {
    #             "daysToExpiration" => {
    #               "ValueType" => CUSTOM,
    #               "Value" => {
    #                 "Integer" => 14
    #               }
    #             }
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString",
    #     configuration_policy: { # required
    #       # One of:
    #       security_hub: {
    #         service_enabled: false,
    #         enabled_standard_identifiers: ["NonEmptyString"],
    #         security_controls_configuration: {
    #           enabled_security_control_identifiers: ["NonEmptyString"],
    #           disabled_security_control_identifiers: ["NonEmptyString"],
    #           security_control_custom_parameters: [
    #             {
    #               security_control_id: "NonEmptyString",
    #               parameters: {
    #                 "NonEmptyString" => {
    #                   value_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #                   value: {
    #                     # One of:
    #                     integer: 1,
    #                     integer_list: [1],
    #                     double: 1.0,
    #                     string: "NonEmptyString",
    #                     string_list: ["NonEmptyString"],
    #                     boolean: false,
    #                     enum: "NonEmptyString",
    #                     enum_list: ["NonEmptyString"]
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_configuration_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NonEmptyString",
    #     id: "NonEmptyString",
    #     name: "NonEmptyString",
    #     description: "NonEmptyString",
    #     updated_at: Time.now,
    #     created_at: Time.now,
    #     configuration_policy: {
    #       # One of:
    #       security_hub: {
    #         service_enabled: false,
    #         enabled_standard_identifiers: ["NonEmptyString"],
    #         security_controls_configuration: {
    #           enabled_security_control_identifiers: ["NonEmptyString"],
    #           disabled_security_control_identifiers: ["NonEmptyString"],
    #           security_control_custom_parameters: [
    #             {
    #               security_control_id: "NonEmptyString",
    #               parameters: {
    #                 "NonEmptyString" => {
    #                   value_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #                   value: {
    #                     # One of:
    #                     integer: 1,
    #                     integer_list: [1],
    #                     double: 1.0,
    #                     string: "NonEmptyString",
    #                     string_list: ["NonEmptyString"],
    #                     boolean: false,
    #                     enum: "NonEmptyString",
    #                     enum_list: ["NonEmptyString"]
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateConfigurationPolicyResponse]
    def create_configuration_policy(params = {}, options = {})
      request = build_request(:create_configuration_policy, params)
      request.send_request(options)
    end

    # <p>Grants permission to create a connectorV2 based on input parameters. This API is in preview release and subject to change.</p>
    # @param [Hash, Types::CreateConnectorV2Request] params
    # @option params [String] :name
    #   <p>The unique name of the connectorV2.</p>
    # @option params [String] :description
    #   <p>The description of the connectorV2.</p>
    # @option params [Types::ProviderConfiguration] :provider
    #   <p>The third-party provider’s service configuration.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of KMS key used to encrypt secrets for the connectorV2.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the connectorV2 when you create.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier used to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString",
    #     provider: { # required
    #       # One of:
    #       jira_cloud: {
    #         project_key: "NonEmptyString"
    #       },
    #       service_now: {
    #         instance_name: "NonEmptyString", # required
    #         client_id: "NonEmptyString", # required
    #         client_secret: "SensitiveNonEmptyString", # required
    #       }
    #     },
    #     kms_key_arn: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_connector_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "NonEmptyString",
    #     connector_id: "NonEmptyString", # required
    #     auth_url: "NonEmptyString"
    #   }
    # @return [Types::CreateConnectorV2Response]
    def create_connector_v2(params = {}, options = {})
      request = build_request(:create_connector_v2, params)
      request.send_request(options)
    end

    # <note>
    #             <p>The <i>aggregation Region</i> is now called the <i>home Region</i>.</p>
    #          </note>
    #          <p>Used to enable cross-Region aggregation. This operation can be invoked from the home Region only.</p>
    #          <p>For information about how cross-Region aggregation works, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html">Understanding cross-Region aggregation in Security Hub</a> in the <i>Security Hub User Guide</i>.
    #       </p>
    # @param [Hash, Types::CreateFindingAggregatorRequest] params
    # @option params [String] :region_linking_mode
    #   <p>Indicates whether to aggregate findings from all of the available Regions in the current partition. Also determines whether to automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.</p>
    #            <p>The selected option also determines how to use the Regions provided in the Regions list.</p>
    #            <p>The options are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS</code> - Aggregates findings from all of the Regions where Security Hub is enabled. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS_EXCEPT_SPECIFIED</code> - Aggregates findings from all of the Regions where Security Hub is enabled, except for the Regions listed in the <code>Regions</code> parameter. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIED_REGIONS</code> - Aggregates findings only from the Regions listed in the <code>Regions</code> parameter. Security Hub does not automatically aggregate findings from new Regions.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_REGIONS</code> - Aggregates no data because no Regions are selected as linked Regions.
    #             </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :regions
    #   <p>If <code>RegionLinkingMode</code> is <code>ALL_REGIONS_EXCEPT_SPECIFIED</code>, then this is a space-separated list of Regions that don't replicate and send findings to the home Region.</p>
    #            <p>If <code>RegionLinkingMode</code> is <code>SPECIFIED_REGIONS</code>, then this is a space-separated list of Regions that do replicate and send findings to the home Region.
    #         </p>
    #            <p>An <code>InvalidInputException</code> error results if you populate this field while <code>RegionLinkingMode</code> is 
    #              <code>NO_REGIONS</code>.</p>
    # @example To enable cross-Region aggregation
    #   # The following example creates a finding aggregator. This is required to enable cross-Region aggregation.
    #   params = {
    #     region_linking_mode: "SPECIFIED_REGIONS",
    #     regions: [
    #       "us-west-1",
    #       "us-west-2"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_finding_aggregator(params, options)
    #   response.to_h #=>
    #   {
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:222222222222:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     finding_aggregation_region: "us-east-1",
    #     region_linking_mode: "SPECIFIED_REGIONS",
    #     regions: [
    #       "us-west-1",
    #       "us-west-2"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     region_linking_mode: "NonEmptyString", # required
    #     regions: ["NonEmptyString"]
    #   }
    #   options = {}
    #   response = client.create_finding_aggregator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_aggregator_arn: "NonEmptyString",
    #     finding_aggregation_region: "NonEmptyString",
    #     region_linking_mode: "NonEmptyString",
    #     regions: ["NonEmptyString"]
    #   }
    # @return [Types::CreateFindingAggregatorResponse]
    def create_finding_aggregator(params = {}, options = {})
      request = build_request(:create_finding_aggregator, params)
      request.send_request(options)
    end

    # <p>Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate
    #          to a security issue that requires attention or remediation.</p>
    #          <p>To group the related findings in the insight, use the
    #          <code>GroupByAttribute</code>.</p>
    # @param [Hash, Types::CreateInsightRequest] params
    # @option params [String] :name
    #   <p>The name of the custom insight to create.</p>
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   <p>One or more attributes used to filter the findings included in the insight. The insight
    #            only includes findings that match the criteria defined in the filters.</p>
    # @option params [String] :group_by_attribute
    #   <p>The attribute used to group the findings for the insight. The grouping attribute
    #            identifies the type of item that the insight applies to. For example, if an insight is
    #            grouped by resource identifier, then the insight produces a list of resource
    #            identifiers.</p>
    # @example To create a custom insight
    #   # The following example creates a custom insight in Security Hub. An insight is a collection of findings that relate to a security issue.
    #   params = {
    #     name: "Critical role findings",
    #     filters: {
    #       resource_type: [
    #         {
    #           comparison: EQUALS,
    #           value: "AwsIamRole"
    #         }
    #       ],
    #       severity_label: [
    #         {
    #           comparison: EQUALS,
    #           value: "CRITICAL"
    #         }
    #       ]
    #     },
    #     group_by_attribute: "ResourceId"
    #   }
    #   options = {}
    #   response = client.create_insight(params, options)
    #   response.to_h #=>
    #   {
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
    #     filters: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ]
    #     },
    #     group_by_attribute: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.create_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_arn: "NonEmptyString", # required
    #   }
    # @return [Types::CreateInsightResponse]
    def create_insight(params = {}, options = {})
      request = build_request(:create_insight, params)
      request.send_request(options)
    end

    # <p>Creates a member association in Security Hub between the specified accounts and the account
    #          used to make the request, which is the administrator account. If you are integrated with
    #          Organizations, then the administrator account is designated by the organization management account.</p>
    #          <p>
    #             <code>CreateMembers</code> is always used to add accounts that are not organization
    #          members.</p>
    #          <p>For accounts that are managed using Organizations, <code>CreateMembers</code> is only used
    #          in the following cases:</p>
    #          <ul>
    #             <li>
    #                <p>Security Hub is not configured to automatically add new organization accounts.</p>
    #             </li>
    #             <li>
    #                <p>The account was disassociated or deleted in Security Hub.</p>
    #             </li>
    #          </ul>
    #          <p>This action can only be used by an account that has Security Hub enabled. To enable Security Hub, you
    #          can use the <code>EnableSecurityHub</code> operation.</p>
    #          <p>For accounts that are not organization members, you create the account association and
    #          then send an invitation to the member account. To send the invitation, you use the
    #                <code>InviteMembers</code> operation. If the account owner accepts
    #          the invitation, the account becomes a member account in Security Hub.</p>
    #          <p>Accounts that are managed using Organizations don't receive an invitation. They
    #          automatically become a member account in Security Hub.</p>
    #          <ul>
    #             <li>
    #                <p>If the organization account does not have Security Hub enabled, then Security Hub and the default standards are automatically enabled. Note that Security Hub cannot be enabled automatically for the organization management account. The organization management account must enable Security Hub before the administrator account enables it as a member account.</p>
    #             </li>
    #             <li>
    #                <p>For organization accounts that already have Security Hub enabled, Security Hub does not make any other changes to those accounts. It does not change their enabled standards or controls.</p>
    #             </li>
    #          </ul>
    #          <p>A permissions policy is added that permits the administrator account to view the findings
    #          generated in the member account.</p>
    #          <p>To remove the association between the administrator and member accounts, use the <code>DisassociateFromMasterAccount</code> or <code>DisassociateMembers</code> operation.</p>
    # @param [Hash, Types::CreateMembersRequest] params
    # @option params [Array<Types::AccountDetails>] :account_details
    #   <p>The list of accounts to associate with the Security Hub administrator account. For each account, the
    #            list includes the account ID and optionally the email address.</p>
    # @example To add a member account
    #   # The following example creates a member association between the specified accounts and the administrator account (the account that makes the request). This operation is used to add accounts that aren't part of an organization.
    #   params = {
    #     account_details: [
    #       {
    #         account_id: "123456789012"
    #       },
    #       {
    #         account_id: "111122223333"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_members(params, options)
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_details: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email: "NonEmptyString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         processing_result: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::CreateMembersResponse]
    def create_members(params = {}, options = {})
      request = build_request(:create_members, params)
      request.send_request(options)
    end

    # <p>Grants permission to create a ticket in the chosen ITSM based on finding information for the provided finding metadata UID. This API is in preview release and subject to change.</p>
    # @param [Hash, Types::CreateTicketV2Request] params
    # @option params [String] :connector_id
    #   <p>The UUID of the connectorV2 to identify connectorV2 resource.</p>
    # @option params [String] :finding_metadata_uid
    #   <p>The the unique ID for the finding.</p>
    # @option params [String] :client_token
    #   <p>The client idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "NonEmptyString", # required
    #     finding_metadata_uid: "NonEmptyString", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_ticket_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ticket_id: "NonEmptyString", # required
    #     ticket_src_url: "NonEmptyString"
    #   }
    # @return [Types::CreateTicketV2Response]
    def create_ticket_v2(params = {}, options = {})
      request = build_request(:create_ticket_v2, params)
      request.send_request(options)
    end

    # <note>
    #             <p>We recommend using Organizations instead of Security Hub invitations to manage your member accounts. 
    #            For information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html">Managing Security Hub administrator and member accounts with Organizations</a> 
    #            in the <i>Security Hub User Guide</i>.</p>
    #          </note>
    #          <p>Declines invitations to become a Security Hub member account.</p>
    #          <p>A prospective member account uses this operation to decline an invitation to become a member.</p>
    #          <p>Only member accounts that aren't part of an Amazon Web Services organization should use this operation.
    #          Organization accounts don't receive invitations.</p>
    # @param [Hash, Types::DeclineInvitationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The list of prospective member account IDs for which to decline an invitation.</p>
    # @example To decline invitation to become a member account
    #   # The following example declines an invitation from the Security Hub administrator account to become a member account. The invited account makes the request.
    #   params = {
    #     account_ids: [
    #       "123456789012",
    #       "111122223333"
    #     ]
    #   }
    #   options = {}
    #   response = client.decline_invitations(params, options)
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.decline_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         processing_result: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::DeclineInvitationsResponse]
    def decline_invitations(params = {}, options = {})
      request = build_request(:decline_invitations, params)
      request.send_request(options)
    end

    # <p>Deletes a custom action target from Security Hub.</p>
    #          <p>Deleting a custom action target does not affect any findings or insights that were
    #          already sent to Amazon CloudWatch Events using the custom action.</p>
    # @param [Hash, Types::DeleteActionTargetRequest] params
    # @option params [String] :action_target_arn
    #   <p>The Amazon Resource Name (ARN) of the custom action target to delete.</p>
    # @example To delete a custom action target
    #   # The following example deletes a custom action target that triggers target actions in Amazon CloudWatch Events. Deleting a custom action target doesn't affect findings or insights that were already sent to CloudWatch Events based on the custom action.
    #   params = {
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation"
    #   }
    #   options = {}
    #   response = client.delete_action_target(params, options)
    #   response.to_h #=>
    #   {
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     action_target_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_action_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_target_arn: "NonEmptyString", # required
    #   }
    # @return [Types::DeleteActionTargetResponse]
    def delete_action_target(params = {}, options = {})
      request = build_request(:delete_action_target, params)
      request.send_request(options)
    end

    # <p>Deletes the Aggregator V2. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::DeleteAggregatorV2Request] params
    # @option params [String] :aggregator_v2_arn
    #   <p>The ARN of the Aggregator V2.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aggregator_v2_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_aggregator_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAggregatorV2Response]
    def delete_aggregator_v2(params = {}, options = {})
      request = build_request(:delete_aggregator_v2, params)
      request.send_request(options)
    end

    # <p>Deletes a V2 automation rule. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::DeleteAutomationRuleV2Request] params
    # @option params [String] :identifier
    #   <p>The ARN of the V2 automation rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_automation_rule_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAutomationRuleV2Response]
    def delete_automation_rule_v2(params = {}, options = {})
      request = build_request(:delete_automation_rule_v2, params)
      request.send_request(options)
    end

    # <p>
    #             Deletes a configuration policy. Only the Security Hub delegated administrator can invoke this operation 
    #             from the home Region. For the deletion to succeed, you must first disassociate a configuration policy from target accounts, 
    #             organizational units, or the root by invoking the <code>StartConfigurationPolicyDisassociation</code> operation.
    #         </p>
    # @param [Hash, Types::DeleteConfigurationPolicyRequest] params
    # @option params [String] :identifier
    #   <p>
    #               The Amazon Resource Name (ARN) or universally unique identifier (UUID) of the configuration policy.
    #           </p>
    # @example To delete a configuration policy
    #   # This operation deletes the specified configuration policy.
    #   params = {
    #     identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    #   options = {}
    #   response = client.delete_configuration_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfigurationPolicyResponse]
    def delete_configuration_policy(params = {}, options = {})
      request = build_request(:delete_configuration_policy, params)
      request.send_request(options)
    end

    # <p>Grants permission to delete a connectorV2. This API is in preview release and subject to change.</p>
    # @param [Hash, Types::DeleteConnectorV2Request] params
    # @option params [String] :connector_id
    #   <p>The UUID of the connectorV2 to identify connectorV2 resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_connector_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConnectorV2Response]
    def delete_connector_v2(params = {}, options = {})
      request = build_request(:delete_connector_v2, params)
      request.send_request(options)
    end

    # <note>
    #             <p>The <i>aggregation Region</i> is now called the <i>home Region</i>.</p>
    #          </note>
    #          <p>Deletes a finding aggregator. When you delete the finding aggregator, you stop cross-Region aggregation. Finding replication stops 
    # occurring from the linked Regions to the home Region.</p>
    #          <p>When you stop cross-Region aggregation, findings that were already replicated and sent to the home Region are still visible from 
    #         the home Region. However, new findings and finding updates are no longer replicated and sent to the home Region.
    #       </p>
    # @param [Hash, Types::DeleteFindingAggregatorRequest] params
    # @option params [String] :finding_aggregator_arn
    #   <p>The ARN of the finding aggregator to delete. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    # @example To delete a finding aggregator
    #   # The following example deletes a finding aggregator in Security Hub. Deleting the finding aggregator stops cross-Region aggregation. This operation produces no output.
    #   params = {
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    #   options = {}
    #   response = client.delete_finding_aggregator(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_aggregator_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_finding_aggregator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFindingAggregatorResponse]
    def delete_finding_aggregator(params = {}, options = {})
      request = build_request(:delete_finding_aggregator, params)
      request.send_request(options)
    end

    # <p>Deletes the insight specified by the <code>InsightArn</code>.</p>
    # @param [Hash, Types::DeleteInsightRequest] params
    # @option params [String] :insight_arn
    #   <p>The ARN of the insight to delete.</p>
    # @example To delete a custom insight
    #   # The following example deletes a custom insight in Security Hub.
    #   params = {
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    #   options = {}
    #   response = client.delete_insight(params, options)
    #   response.to_h #=>
    #   {
    #     insight_arn: "arn:aws:securityhub:eu-central-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_arn: "NonEmptyString", # required
    #   }
    # @return [Types::DeleteInsightResponse]
    def delete_insight(params = {}, options = {})
      request = build_request(:delete_insight, params)
      request.send_request(options)
    end

    # <note>
    #             <p>We recommend using Organizations instead of Security Hub invitations to manage your member accounts. 
    #            For information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html">Managing Security Hub administrator and member accounts with Organizations</a> 
    #            in the <i>Security Hub User Guide</i>.</p>
    #          </note>
    #          <p>Deletes invitations to become a Security Hub member account.</p>
    #          <p>A Security Hub administrator account can use this operation to delete invitations sent to one or more prospective member accounts.</p>
    #          <p>This operation is only used to delete invitations that are sent to prospective member accounts that aren't part of an Amazon Web Services organization.
    #          Organization accounts don't receive invitations.</p>
    # @param [Hash, Types::DeleteInvitationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The list of member account IDs that received the invitations you want to delete.</p>
    # @example To delete a custom insight
    #   # The following example deletes an invitation sent by the Security Hub administrator account to a prospective member account. This operation is used only for invitations sent to accounts that aren't part of an organization. Organization accounts don't receive invitations.
    #   params = {
    #     account_ids: [
    #       "123456789012"
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_invitations(params, options)
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.delete_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         processing_result: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteInvitationsResponse]
    def delete_invitations(params = {}, options = {})
      request = build_request(:delete_invitations, params)
      request.send_request(options)
    end

    # <p>Deletes the specified member accounts from Security Hub.</p>
    #          <p>You can invoke this API only to delete accounts that became members through invitation. You can't invoke this 
    #         API to delete accounts that belong to an Organizations organization.</p>
    # @param [Hash, Types::DeleteMembersRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The list of account IDs for the member accounts to delete.</p>
    # @example To delete a member account
    #   # The following example deletes the specified member account from Security Hub. This operation can be used to delete member accounts that are part of an organization or that were invited manually.
    #   params = {
    #     account_ids: [
    #       "123456789111",
    #       "123456789222"
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_members(params, options)
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.delete_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         processing_result: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteMembersResponse]
    def delete_members(params = {}, options = {})
      request = build_request(:delete_members, params)
      request.send_request(options)
    end

    # <p>Returns a list of the custom action targets in Security Hub in your account.</p>
    # @param [Hash, Types::DescribeActionTargetsRequest] params
    # @option params [Array<String>] :action_target_arns
    #   <p>A list of custom action target ARNs for the custom action targets to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeActionTargets</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example To return custom action targets
    #   # The following example returns a list of custom action targets. You use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.
    #   params = {
    #     action_target_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_action_targets(params, options)
    #   response.to_h #=>
    #   {
    #     action_targets: [
    #       {
    #         action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation",
    #         description: "Action to send the finding for remediation tracking",
    #         name: "Send to remediation"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     action_target_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_action_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_targets: [ # required
    #       {
    #         action_target_arn: "NonEmptyString", # required
    #         name: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeActionTargetsResponse]
    def describe_action_targets(params = {}, options = {})
      request = build_request(:describe_action_targets, params)
      request.send_request(options)
    end

    # <p>Returns details about the Hub resource in your account, including the
    #          <code>HubArn</code> and the time when you enabled Security Hub.</p>
    # @param [Hash, Types::DescribeHubRequest] params
    # @option params [String] :hub_arn
    #   <p>The ARN of the Hub resource to retrieve.</p>
    # @example To return details about Hub resource
    #   # The following example returns details about the Hub resource in the calling account. The Hub resource represents the implementation of  the AWS Security Hub service in the calling account.
    #   params = {
    #     hub_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default"
    #   }
    #   options = {}
    #   response = client.describe_hub(params, options)
    #   response.to_h #=>
    #   {
    #     hub_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default",
    #     subscribed_at: "2019-11-19T23:15:10.046Z",
    #     auto_enable_controls: true,
    #     control_finding_generator: SECURITY_CONTROL
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     hub_arn: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.describe_hub(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hub_arn: "NonEmptyString",
    #     subscribed_at: "NonEmptyString",
    #     auto_enable_controls: false,
    #     control_finding_generator: "STANDARD_CONTROL" # One of: ["STANDARD_CONTROL", "SECURITY_CONTROL"]
    #   }
    # @return [Types::DescribeHubResponse]
    def describe_hub(params = {}, options = {})
      request = build_request(:describe_hub, params)
      request.send_request(options)
    end

    # <p>Returns information about the way your organization is configured in Security Hub. Only the 
    #          Security Hub administrator account can invoke this operation.</p>
    # @param [Hash, Types::DescribeOrganizationConfigurationRequest] params
    # @example To get information about organization configuration
    #   # This operation provides information about the way your organization is configured in Security Hub. Only a Security Hub administrator account can invoke this operation.
    #   params = {}
    #   options = {}
    #   response = client.describe_organization_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     auto_enable: false,
    #     member_account_limit_reached: false,
    #     auto_enable_standards: NONE,
    #     organization_configuration: {
    #       configuration_type: CENTRAL,
    #       status: ENABLED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable: false,
    #     member_account_limit_reached: false,
    #     auto_enable_standards: "NONE" # One of: ["NONE", "DEFAULT"],
    #     organization_configuration: {
    #       configuration_type: "CENTRAL" # One of: ["CENTRAL", "LOCAL"],
    #       status: "PENDING" # One of: ["PENDING", "ENABLED", "FAILED"],
    #       status_message: "NonEmptyString"
    #     }
    #   }
    # @return [Types::DescribeOrganizationConfigurationResponse]
    def describe_organization_configuration(params = {}, options = {})
      request = build_request(:describe_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about product integrations in Security Hub.</p>
    #          <p>You can optionally provide an integration ARN. If you provide an integration ARN, then
    #          the results only include that integration.</p>
    #          <p>If you don't provide an integration ARN, then the results include all of the available
    #          product integrations. </p>
    # @param [Hash, Types::DescribeProductsRequest] params
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeProducts</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :product_arn
    #   <p>The ARN of the integration to return.</p>
    # @example To get information about Security Hub integrations
    #   # The following example returns details about AWS services and third-party products that Security Hub integrates with.
    #   params = {
    #     next_token: "NULL",
    #     max_results: 1,
    #     product_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon"
    #   }
    #   options = {}
    #   response = client.describe_products(params, options)
    #   response.to_h #=>
    #   {
    #     products: [
    #       {
    #         product_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon",
    #         product_name: "CrowdStrike Falcon",
    #         company_name: "CrowdStrike",
    #         description: "CrowdStrike Falcon's single lightweight sensor unifies next-gen antivirus, endpoint detection and response, and 24/7 managed hunting, via the cloud.",
    #         categories: [
    #           "Endpoint Detection and Response (EDR)",
    #           "AV Scanning and Sandboxing",
    #           "Threat Intelligence Feeds and Reports",
    #           "Endpoint Forensics",
    #           "Network Forensics"
    #         ],
    #         integration_types: [
    #           SEND_FINDINGS_TO_SECURITY_HUB
    #         ],
    #         marketplace_url: "https://aws.amazon.com/marketplace/seller-profile?id=a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         activation_url: "https://falcon.crowdstrike.com/support/documentation",
    #         product_subscription_resource_policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"123456789333\"},\"Action\":[\"securityhub:BatchImportFindings\"],\"Resource\":\"arn:aws:securityhub:us-west-1:123456789012:product-subscription/crowdstrike/crowdstrike-falcon\",\"Condition\":{\"StringEquals\":{\"securityhub:TargetAccount\":\"123456789012\"}}},{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"123456789012\"},\"Action\":[\"securityhub:BatchImportFindings\"],\"Resource\":\"arn:aws:securityhub:us-west-1:123456789333:product/crowdstrike/crowdstrike-falcon\",\"Condition\":{\"StringEquals\":{\"securityhub:TargetAccount\":\"123456789012\"}}}]}"
    #       }
    #     ],
    #     next_token: "U2FsdGVkX18vvPlOqb7RDrWRWVFBJI46MOIAb+nZmRJmR15NoRi2gm13sdQEn3O/pq/78dGs+bKpgA+7HMPHO0qX33/zoRI+uIG/F9yLNhcOrOWzFUdy36JcXLQji3Rpnn/cD1SVkGA98qI3zPOSDg=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     product_arn: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.describe_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     products: [ # required
    #       {
    #         product_arn: "NonEmptyString", # required
    #         product_name: "NonEmptyString",
    #         company_name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         categories: ["NonEmptyString"],
    #         integration_types: ["SEND_FINDINGS_TO_SECURITY_HUB" # One of: ["SEND_FINDINGS_TO_SECURITY_HUB", "RECEIVE_FINDINGS_FROM_SECURITY_HUB", "UPDATE_FINDINGS_IN_SECURITY_HUB"]],
    #         marketplace_url: "NonEmptyString",
    #         activation_url: "NonEmptyString",
    #         product_subscription_resource_policy: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeProductsResponse]
    def describe_products(params = {}, options = {})
      request = build_request(:describe_products, params)
      request.send_request(options)
    end

    # <p>Gets information about the product integration. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::DescribeProductsV2Request] params
    # @option params [String] :next_token
    #   <p>The token required for pagination. 
    #            On your first call, set the value of this parameter to <code>NULL</code>. 
    #            For subsequent calls, to continue listing data, set the value of this parameter to the value returned in the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_products_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     products_v2: [ # required
    #       {
    #         product_v2_name: "NonEmptyString",
    #         company_name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         categories: ["NonEmptyString"],
    #         integration_v2_types: ["SEND_FINDINGS_TO_SECURITY_HUB" # One of: ["SEND_FINDINGS_TO_SECURITY_HUB", "RECEIVE_FINDINGS_FROM_SECURITY_HUB", "UPDATE_FINDINGS_IN_SECURITY_HUB"]],
    #         marketplace_url: "NonEmptyString",
    #         activation_url: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeProductsV2Response]
    def describe_products_v2(params = {}, options = {})
      request = build_request(:describe_products_v2, params)
      request.send_request(options)
    end

    # <p>Returns details about the service resource in your account. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::DescribeSecurityHubV2Request] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_security_hub_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hub_v2_arn: "NonEmptyString",
    #     subscribed_at: "NonEmptyString"
    #   }
    # @return [Types::DescribeSecurityHubV2Response]
    def describe_security_hub_v2(params = {}, options = {})
      request = build_request(:describe_security_hub_v2, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available standards in Security Hub.</p>
    #          <p>For each standard, the results include the standard ARN, the name, and a description. </p>
    # @param [Hash, Types::DescribeStandardsRequest] params
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeStandards</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of standards to return.</p>
    # @example To get available Security Hub standards
    #   # The following example returns a list of available security standards in Security Hub.
    #   params = {}
    #   options = {}
    #   response = client.describe_standards(params, options)
    #   response.to_h #=>
    #   {
    #     standards: [
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/aws-foundational-security-best-practices/v/1.0.0",
    #         name: "AWS Foundational Security Best Practices v1.0.0",
    #         description: "The AWS Foundational Security Best Practices standard is a set of automated security checks that detect when AWS accounts and deployed resources do not align to security best practices. The standard is defined by AWS security experts. This curated set of controls helps improve your security posture in AWS, and cover AWS's most popular and foundational services.",
    #         enabled_by_default: true
    #       },
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
    #         name: "CIS AWS Foundations Benchmark v1.2.0",
    #         description: "The Center for Internet Security (CIS) AWS Foundations Benchmark v1.2.0 is a set of security configuration best practices for AWS. This Security Hub standard automatically checks for your compliance readiness against a subset of CIS requirements.",
    #         enabled_by_default: true
    #       },
    #       {
    #         standards_arn: "arn:aws::securityhub:us-west-1::standards/cis-aws-foundations-benchmark/v/1.4.0",
    #         name: "CIS AWS Foundations Benchmark v1.4.0",
    #         description: "The Center for Internet Security (CIS) AWS Foundations Benchmark v1.4.0 is a set of security configuration best practices for AWS. This Security Hub standard automatically checks for your compliance readiness against a subset of CIS requirements.",
    #         enabled_by_default: false
    #       },
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1",
    #         name: "PCI DSS v3.2.1",
    #         description: "The Payment Card Industry Data Security Standard (PCI DSS) v3.2.1 is an information security standard for entities that store, process, and/or transmit cardholder data. This Security Hub standard automatically checks for your compliance readiness against a subset of PCI DSS requirements.",
    #         enabled_by_default: false
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_standards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     standards: [
    #       {
    #         standards_arn: "NonEmptyString",
    #         name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         enabled_by_default: false,
    #         standards_managed_by: {
    #           company: "NonEmptyString",
    #           product: "NonEmptyString"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeStandardsResponse]
    def describe_standards(params = {}, options = {})
      request = build_request(:describe_standards, params)
      request.send_request(options)
    end

    # <p>Returns a list of security standards controls.</p>
    #          <p>For each control, the results include information about whether it is currently enabled,
    #          the severity, and a link to remediation information.</p>
    #          <p>This operation returns an empty list for standard subscriptions where <code>StandardsControlsUpdatable</code> has value <code>NOT_READY_FOR_UPDATES</code>.</p>
    # @param [Hash, Types::DescribeStandardsControlsRequest] params
    # @option params [String] :standards_subscription_arn
    #   <p>The ARN of a resource that represents your subscription to a supported standard. To get
    #            the subscription ARNs of the standards you have enabled, use the <code>GetEnabledStandards</code> operation.</p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>DescribeStandardsControls</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of security standard controls to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_subscription_arn: "NonEmptyString", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_standards_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     controls: [
    #       {
    #         standards_control_arn: "NonEmptyString",
    #         control_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         disabled_reason: "NonEmptyString",
    #         control_status_updated_at: Time.now,
    #         control_id: "NonEmptyString",
    #         title: "NonEmptyString",
    #         description: "NonEmptyString",
    #         remediation_url: "NonEmptyString",
    #         severity_rating: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #         related_requirements: ["NonEmptyString"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeStandardsControlsResponse]
    def describe_standards_controls(params = {}, options = {})
      request = build_request(:describe_standards_controls, params)
      request.send_request(options)
    end

    # <p>Disables the integration of the specified product with Security Hub. After the integration is
    #          disabled, findings from that product are no longer sent to Security Hub.</p>
    # @param [Hash, Types::DisableImportFindingsForProductRequest] params
    # @option params [String] :product_subscription_arn
    #   <p>The ARN of the integrated product to disable the integration for.</p>
    # @example To end a Security Hub integration
    #   # The following example ends an integration between Security Hub and the specified product that sends findings to Security Hub. After the integration ends, the product no longer sends findings to Security  Hub.
    #   params = {
    #     product_subscription_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon"
    #   }
    #   options = {}
    #   response = client.disable_import_findings_for_product(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     product_subscription_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.disable_import_findings_for_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableImportFindingsForProductResponse]
    def disable_import_findings_for_product(params = {}, options = {})
      request = build_request(:disable_import_findings_for_product, params)
      request.send_request(options)
    end

    # <p>Disables a Security Hub administrator account. Can only be called by the organization
    #          management account.</p>
    # @param [Hash, Types::DisableOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account identifier of the Security Hub administrator account.</p>
    # @option params [String] :feature
    #   <p>The feature for which the delegated admin account is disabled. 
    #            Defaults to Security Hub if not specified.</p>
    # @example To remove a Security Hub administrator account
    #   # The following example removes the Security Hub administrator account in the Region from which the operation was executed. This operation doesn't remove the delegated administrator account in AWS Organizations.
    #   params = {
    #     admin_account_id: "123456789012"
    #   }
    #   options = {}
    #   response = client.disable_organization_admin_account(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "NonEmptyString", # required
    #     feature: "SecurityHub" # One of: ["SecurityHub", "SecurityHubV2"]
    #   }
    #   options = {}
    #   response = client.disable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableOrganizationAdminAccountResponse]
    def disable_organization_admin_account(params = {}, options = {})
      request = build_request(:disable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Disables Security Hub in your account only in the current Amazon Web Services Region. To disable Security Hub in all
    #          Regions, you must submit one request per Region where you have enabled Security Hub.</p>
    #          <p>You can't disable Security Hub in an account that is currently the Security Hub administrator.</p>
    #          <p>When you disable Security Hub, your existing findings and insights and any Security Hub configuration
    #          settings are deleted after 90 days and cannot be recovered. Any standards that were enabled
    #          are disabled, and your administrator and member account associations are removed.</p>
    #          <p>If you want to save your existing findings, you must export them before you disable
    #          Security Hub.</p>
    # @param [Hash, Types::DisableSecurityHubRequest] params
    # @example To deactivate Security Hub
    #   # The following example deactivates Security Hub for the current account and Region.
    #   params = {}
    #   options = {}
    #   response = client.disable_security_hub(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_security_hub(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableSecurityHubResponse]
    def disable_security_hub(params = {}, options = {})
      request = build_request(:disable_security_hub, params)
      request.send_request(options)
    end

    # <p>Disable the service for the current Amazon Web Services Region or specified Amazon Web Services Region. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::DisableSecurityHubV2Request] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_security_hub_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableSecurityHubV2Response]
    def disable_security_hub_v2(params = {}, options = {})
      request = build_request(:disable_security_hub_v2, params)
      request.send_request(options)
    end

    # <p>Disassociates the current Security Hub member account from the associated administrator
    #          account.</p>
    #          <p>This operation is only used by accounts that are not part of an organization. For
    #          organization accounts, only the administrator account can
    #          disassociate a member account.</p>
    # @param [Hash, Types::DisassociateFromAdministratorAccountRequest] params
    # @example To disassociate requesting account from administrator account
    #   # The following example dissociates the requesting account from its associated administrator account.
    #   params = {}
    #   options = {}
    #   response = client.disassociate_from_administrator_account(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_from_administrator_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateFromAdministratorAccountResponse]
    def disassociate_from_administrator_account(params = {}, options = {})
      request = build_request(:disassociate_from_administrator_account, params)
      request.send_request(options)
    end

    # <p>This method is deprecated. Instead, use <code>DisassociateFromAdministratorAccount</code>.</p>
    #          <p>The Security Hub console continues to use <code>DisassociateFromMasterAccount</code>. It will eventually change to use <code>DisassociateFromAdministratorAccount</code>. Any IAM policies that specifically control access to this function must continue to use <code>DisassociateFromMasterAccount</code>. You should also add <code>DisassociateFromAdministratorAccount</code> to your policies to ensure that the correct permissions are in place after the console begins to use <code>DisassociateFromAdministratorAccount</code>.</p>
    #          <p>Disassociates the current Security Hub member account from the associated administrator
    #          account.</p>
    #          <p>This operation is only used by accounts that are not part of an organization. For
    #          organization accounts, only the administrator account can
    #          disassociate a member account.</p>
    # @param [Hash, Types::DisassociateFromMasterAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_from_master_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This API has been deprecated, use DisassociateFromAdministratorAccount API instead.
    # @return [Types::DisassociateFromMasterAccountResponse]
    def disassociate_from_master_account(params = {}, options = {})
      request = build_request(:disassociate_from_master_account, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified member accounts from the associated administrator account.</p>
    #          <p>Can be used to disassociate both accounts that are managed using Organizations and accounts that
    #          were invited manually.</p>
    # @param [Hash, Types::DisassociateMembersRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The account IDs of the member accounts to disassociate from the administrator account.</p>
    # @example To disassociate member accounts from administrator account
    #   # The following example dissociates the specified member accounts from the associated administrator account.
    #   params = {
    #     account_ids: [
    #       "123456789012",
    #       "111122223333"
    #     ]
    #   }
    #   options = {}
    #   response = client.disassociate_members(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMembersResponse]
    def disassociate_members(params = {}, options = {})
      request = build_request(:disassociate_members, params)
      request.send_request(options)
    end

    # <p>Enables the integration of a partner product with Security Hub. Integrated products send
    #          findings to Security Hub.</p>
    #          <p>When you enable a product integration, a permissions policy that grants permission for
    #          the product to send findings to Security Hub is applied.</p>
    # @param [Hash, Types::EnableImportFindingsForProductRequest] params
    # @option params [String] :product_arn
    #   <p>The ARN of the product to enable the integration for.</p>
    # @example To activate an integration
    #   # The following example activates an integration between Security Hub and a third party partner product that sends findings to Security Hub.
    #   params = {
    #     product_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon"
    #   }
    #   options = {}
    #   response = client.enable_import_findings_for_product(params, options)
    #   response.to_h #=>
    #   {
    #     product_subscription_arn: "arn:aws:securityhub:us-east-1:517716713836:product-subscription/crowdstrike/crowdstrike-falcon"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     product_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.enable_import_findings_for_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_subscription_arn: "NonEmptyString"
    #   }
    # @return [Types::EnableImportFindingsForProductResponse]
    def enable_import_findings_for_product(params = {}, options = {})
      request = build_request(:enable_import_findings_for_product, params)
      request.send_request(options)
    end

    # <p>Designates the Security Hub administrator account for an organization. Can only be called by
    #          the organization management account.</p>
    # @param [Hash, Types::EnableOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account identifier of the account to designate as the Security Hub administrator
    #            account.</p>
    # @option params [String] :feature
    #   <p>The feature for which the delegated admin account is enabled. 
    #            Defaults to Security Hub if not specified.</p>
    # @example To designate a Security Hub administrator
    #   # The following example designates the specified account as the Security Hub administrator account. The requesting account must be the organization management account.
    #   params = {
    #     admin_account_id: "123456789012"
    #   }
    #   options = {}
    #   response = client.enable_organization_admin_account(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "NonEmptyString", # required
    #     feature: "SecurityHub" # One of: ["SecurityHub", "SecurityHubV2"]
    #   }
    #   options = {}
    #   response = client.enable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_account_id: "NonEmptyString",
    #     feature: "SecurityHub" # One of: ["SecurityHub", "SecurityHubV2"]
    #   }
    # @return [Types::EnableOrganizationAdminAccountResponse]
    def enable_organization_admin_account(params = {}, options = {})
      request = build_request(:enable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Enables Security Hub for your account in the current Region or the Region you specify in the
    #          request.</p>
    #          <p>When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings
    #          from other services that are integrated with Security Hub.</p>
    #          <p>When you use the <code>EnableSecurityHub</code> operation to enable Security Hub, you also
    #          automatically enable the following standards:</p>
    #          <ul>
    #             <li>
    #                <p>Center for Internet Security (CIS) Amazon Web Services Foundations Benchmark v1.2.0</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services Foundational Security Best Practices</p>
    #             </li>
    #          </ul>
    #          <p>Other standards are not automatically enabled. </p>
    #          <p>To opt out of automatically enabled standards, set
    #             <code>EnableDefaultStandards</code> to <code>false</code>.</p>
    #          <p>After you enable Security Hub, to enable a standard, use the <code>BatchEnableStandards</code> operation. To disable a standard, use the
    #                <code>BatchDisableStandards</code> operation.</p>
    #          <p>To learn more, see the <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html">setup information</a> in the <i>Security Hub User Guide</i>.</p>
    # @param [Hash, Types::EnableSecurityHubRequest] params
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the hub resource when you enable Security Hub.</p>
    # @option params [Boolean] :enable_default_standards
    #   <p>Whether to enable the security standards that Security Hub has designated as automatically
    #            enabled. If you don't provide a value for <code>EnableDefaultStandards</code>, it is set
    #            to <code>true</code>. To not enable the automatically enabled standards, set
    #               <code>EnableDefaultStandards</code> to <code>false</code>.</p>
    # @option params [String] :control_finding_generator
    #   <p>This field, used when enabling Security Hub, specifies whether the calling account has consolidated control findings turned on. 
    #         If the value for this field is set to 
    #         <code>SECURITY_CONTROL</code>, Security Hub generates a single finding for a control check even when the check 
    #         applies to multiple enabled standards.</p>
    #            <p>If the value for this field is set to <code>STANDARD_CONTROL</code>, Security Hub generates separate findings 
    #         for a control check when the check applies to multiple enabled standards.</p>
    #            <p>The value for this field in a member account matches the value in the administrator
    #            account. For accounts that aren't part of an organization, the default value of this field
    #            is <code>SECURITY_CONTROL</code> if you enabled Security Hub on or after February 23,
    #            2023.</p>
    # @example To activate Security Hub
    #   # The following example activates the Security Hub service in the requesting AWS account. The service is activated in the current AWS Region or the Region that you specify in the request. Some standards are automatically turned on in your account unless you opt out. To determine which standards are automatically turned on, see the Security Hub documentation.
    #   params = {
    #     tags: {
    #       "Department" => "Security"
    #     },
    #     enable_default_standards: true
    #   }
    #   options = {}
    #   response = client.enable_security_hub(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     enable_default_standards: false,
    #     control_finding_generator: "STANDARD_CONTROL" # One of: ["STANDARD_CONTROL", "SECURITY_CONTROL"]
    #   }
    #   options = {}
    #   response = client.enable_security_hub(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableSecurityHubResponse]
    def enable_security_hub(params = {}, options = {})
      request = build_request(:enable_security_hub, params)
      request.send_request(options)
    end

    # <p>Enables the service in account for the current Amazon Web Services Region or specified Amazon Web Services Region. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::EnableSecurityHubV2Request] params
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the hub V2 resource when you enable Security Hub.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.enable_security_hub_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hub_v2_arn: "NonEmptyString"
    #   }
    # @return [Types::EnableSecurityHubV2Response]
    def enable_security_hub_v2(params = {}, options = {})
      request = build_request(:enable_security_hub_v2, params)
      request.send_request(options)
    end

    # <p>Provides the details for the Security Hub administrator account for the current member account.</p>
    #          <p>Can be used by both member accounts that are managed using Organizations and accounts that were
    #          invited manually.</p>
    # @param [Hash, Types::GetAdministratorAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_administrator_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     administrator: {
    #       account_id: "AccountId",
    #       invitation_id: "NonEmptyString",
    #       invited_at: Time.now,
    #       member_status: "NonEmptyString"
    #     }
    #   }
    # @return [Types::GetAdministratorAccountResponse]
    def get_administrator_account(params = {}, options = {})
      request = build_request(:get_administrator_account, params)
      request.send_request(options)
    end

    # <p>Returns the configuration of the specified Aggregator V2. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::GetAggregatorV2Request] params
    # @option params [String] :aggregator_v2_arn
    #   <p>The ARN of the Aggregator V2.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aggregator_v2_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_aggregator_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregator_v2_arn: "NonEmptyString",
    #     aggregation_region: "NonEmptyString",
    #     region_linking_mode: "NonEmptyString",
    #     linked_regions: ["NonEmptyString"]
    #   }
    # @return [Types::GetAggregatorV2Response]
    def get_aggregator_v2(params = {}, options = {})
      request = build_request(:get_aggregator_v2, params)
      request.send_request(options)
    end

    # <p>Returns an automation rule for the V2 service. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::GetAutomationRuleV2Request] params
    # @option params [String] :identifier
    #   <p>The ARN of the V2 automation rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_automation_rule_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "NonEmptyString",
    #     rule_id: "NonEmptyString",
    #     rule_order: 1.0,
    #     rule_name: "NonEmptyString",
    #     rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     description: "NonEmptyString",
    #     criteria: {
    #       # One of:
    #       ocsf_finding_criteria: {
    #         composite_filters: [
    #           {
    #             string_filters: [
    #               {
    #                 field_name: "metadata.uid" # One of: ["metadata.uid", "activity_name", "cloud.account.uid", "cloud.provider", "cloud.region", "compliance.assessments.category", "compliance.assessments.name", "compliance.control", "compliance.status", "compliance.standards", "finding_info.desc", "finding_info.src_url", "finding_info.title", "finding_info.types", "finding_info.uid", "finding_info.related_events.uid", "finding_info.related_events.product.uid", "finding_info.related_events.title", "metadata.product.name", "metadata.product.uid", "metadata.product.vendor_name", "remediation.desc", "remediation.references", "resources.cloud_partition", "resources.region", "resources.type", "resources.uid", "severity", "status", "comment", "vulnerabilities.fix_coverage", "class_name"],
    #                 filter: {
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #                 }
    #               }
    #             ],
    #             date_filters: [
    #               {
    #                 field_name: "finding_info.created_time_dt" # One of: ["finding_info.created_time_dt", "finding_info.first_seen_time_dt", "finding_info.last_seen_time_dt", "finding_info.modified_time_dt"],
    #                 filter: {
    #                   start: "NonEmptyString",
    #                   end: "NonEmptyString",
    #                   date_range: {
    #                     value: 1,
    #                     unit: "DAYS" # One of: ["DAYS"]
    #                   }
    #                 }
    #               }
    #             ],
    #             boolean_filters: [
    #               {
    #                 field_name: "compliance.assessments.meets_criteria" # One of: ["compliance.assessments.meets_criteria", "vulnerabilities.is_exploit_available", "vulnerabilities.is_fix_available"],
    #                 filter: {
    #                   value: false
    #                 }
    #               }
    #             ],
    #             number_filters: [
    #               {
    #                 field_name: "activity_id" # One of: ["activity_id", "compliance.status_id", "confidence_score", "severity_id", "status_id", "finding_info.related_events_count"],
    #                 filter: {
    #                   gte: 1.0,
    #                   lte: 1.0,
    #                   eq: 1.0,
    #                   gt: 1.0,
    #                   lt: 1.0
    #                 }
    #               }
    #             ],
    #             map_filters: [
    #               {
    #                 field_name: "resources.tags" # One of: ["resources.tags"],
    #                 filter: {
    #                   key: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #                 }
    #               }
    #             ],
    #             operator: "AND" # One of: ["AND", "OR"]
    #           }
    #         ],
    #         composite_operator: "AND" # One of: ["AND", "OR"]
    #       }
    #     },
    #     actions: [
    #       {
    #         type: "FINDING_FIELDS_UPDATE" # One of: ["FINDING_FIELDS_UPDATE", "EXTERNAL_INTEGRATION"], # required
    #         finding_fields_update: {
    #           severity_id: 1,
    #           comment: "NonEmptyString",
    #           status_id: 1
    #         },
    #         external_integration_configuration: {
    #           connector_arn: "NonEmptyString"
    #         }
    #       }
    #     ],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetAutomationRuleV2Response]
    def get_automation_rule_v2(params = {}, options = {})
      request = build_request(:get_automation_rule_v2, params)
      request.send_request(options)
    end

    # <p>
    #             Provides information about a configuration policy. Only the Security Hub delegated administrator can invoke 
    #             this operation from the home Region.
    #         </p>
    # @param [Hash, Types::GetConfigurationPolicyRequest] params
    # @option params [String] :identifier
    #   <p>
    #               The Amazon Resource Name (ARN) or universally unique identifier (UUID) of the configuration policy.
    #           </p>
    # @example To get details about a configuration policy
    #   # This operation provides details about the specified configuration policy.
    #   params = {
    #     identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    #   options = {}
    #   response = client.get_configuration_policy(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     name: "TestConfigurationPolicy",
    #     description: "Configuration policy for testing FSBP and CIS",
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #     created_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #     configuration_policy: {
    #     "SecurityHub" => {
    #       "ServiceEnabled" => true,
    #       "EnabledStandardIdentifiers" => [
    #         arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0,
    #         arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
    #       ],
    #       "SecurityControlsConfiguration" => {
    #         "DisabledSecurityControlIdentifiers" => [CloudWatch.1],
    #         "SecurityControlCustomParameters" => [{
    #           "SecurityControlId" => ACM.1,
    #           "Parameters" => {
    #             "daysToExpiration" => {
    #               "ValueType" => CUSTOM,
    #               "Value" => {
    #                 "Integer" => 14
    #               }
    #             }
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_configuration_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NonEmptyString",
    #     id: "NonEmptyString",
    #     name: "NonEmptyString",
    #     description: "NonEmptyString",
    #     updated_at: Time.now,
    #     created_at: Time.now,
    #     configuration_policy: {
    #       # One of:
    #       security_hub: {
    #         service_enabled: false,
    #         enabled_standard_identifiers: ["NonEmptyString"],
    #         security_controls_configuration: {
    #           enabled_security_control_identifiers: ["NonEmptyString"],
    #           disabled_security_control_identifiers: ["NonEmptyString"],
    #           security_control_custom_parameters: [
    #             {
    #               security_control_id: "NonEmptyString",
    #               parameters: {
    #                 "NonEmptyString" => {
    #                   value_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #                   value: {
    #                     # One of:
    #                     integer: 1,
    #                     integer_list: [1],
    #                     double: 1.0,
    #                     string: "NonEmptyString",
    #                     string_list: ["NonEmptyString"],
    #                     boolean: false,
    #                     enum: "NonEmptyString",
    #                     enum_list: ["NonEmptyString"]
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetConfigurationPolicyResponse]
    def get_configuration_policy(params = {}, options = {})
      request = build_request(:get_configuration_policy, params)
      request.send_request(options)
    end

    # <p>
    #             Returns the association between a configuration and a target account, organizational unit, or the root. The 
    #             configuration can be a configuration policy or self-managed behavior. Only the Security Hub delegated administrator can 
    #             invoke this operation from the home Region.
    #         </p>
    # @param [Hash, Types::GetConfigurationPolicyAssociationRequest] params
    # @option params [Types::Target] :target
    #   <p>
    #               The target account ID, organizational unit ID, or the root ID to retrieve the association for. 
    #           </p>
    # @example To get details about a configuration association
    #   # This operation provides details about configuration associations for a specific target account, organizational unit, or the root.
    #   params = {
    #     target: {
    #     "AccountId" => 111122223333
    #   }
    #   }
    #   options = {}
    #   response = client.get_configuration_policy_association(params, options)
    #   response.to_h #=>
    #   {
    #     configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     target_id: "111122223333",
    #     target_type: ACCOUNT,
    #     association_type: INHERITED,
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #     association_status: FAILED,
    #     association_status_message: "Configuration Policy a1b2c3d4-5678-90ab-cdef-EXAMPLE11111 couldn't be applied to account 111122223333 in us-east-1 Region. Retry your request."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target: { # required
    #       # One of:
    #       account_id: "NonEmptyString",
    #       organizational_unit_id: "NonEmptyString",
    #       root_id: "NonEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.get_configuration_policy_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_policy_id: "NonEmptyString",
    #     target_id: "NonEmptyString",
    #     target_type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"],
    #     association_type: "INHERITED" # One of: ["INHERITED", "APPLIED"],
    #     updated_at: Time.now,
    #     association_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED"],
    #     association_status_message: "NonEmptyString"
    #   }
    # @return [Types::GetConfigurationPolicyAssociationResponse]
    def get_configuration_policy_association(params = {}, options = {})
      request = build_request(:get_configuration_policy_association, params)
      request.send_request(options)
    end

    # <p>Grants permission to retrieve details for a connectorV2 based on connector id. This API is in preview release and subject to change.</p>
    # @param [Hash, Types::GetConnectorV2Request] params
    # @option params [String] :connector_id
    #   <p>The UUID of the connectorV2 to identify connectorV2 resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_connector_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "NonEmptyString",
    #     connector_id: "NonEmptyString", # required
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString",
    #     kms_key_arn: "NonEmptyString",
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     health: { # required
    #       connector_status: "CONNECTED" # One of: ["CONNECTED", "FAILED_TO_CONNECT", "PENDING_CONFIGURATION", "PENDING_AUTHORIZATION"], # required
    #       message: "NonEmptyString",
    #       last_checked_at: Time.now, # required
    #     },
    #     provider_detail: { # required
    #       # One of:
    #       jira_cloud: {
    #         cloud_id: "NonEmptyString",
    #         project_key: "NonEmptyString",
    #         domain: "NonEmptyString",
    #         auth_url: "NonEmptyString",
    #         auth_status: "ACTIVE" # One of: ["ACTIVE", "FAILED"]
    #       },
    #       service_now: {
    #         instance_name: "NonEmptyString",
    #         client_id: "NonEmptyString",
    #         auth_status: "ACTIVE" # One of: ["ACTIVE", "FAILED"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetConnectorV2Response]
    def get_connector_v2(params = {}, options = {})
      request = build_request(:get_connector_v2, params)
      request.send_request(options)
    end

    # <p>Returns a list of the standards that are currently enabled.</p>
    # @param [Hash, Types::GetEnabledStandardsRequest] params
    # @option params [Array<String>] :standards_subscription_arns
    #   <p>The list of the standards subscription ARNs for the standards to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetEnabledStandards</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example To return a list of enabled standards
    #   # The following example returns a list of Security Hub standards that are currently enabled in your account.  
    #   params = {
    #     standards_subscription_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_enabled_standards(params, options)
    #   response.to_h #=>
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1",
    #         standards_input: {
    #         },
    #         standards_status: READY,
    #         standards_subscription_arn: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_subscription_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_enabled_standards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_subscription_arn: "NonEmptyString", # required
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: { # required
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         standards_status: "PENDING" # One of: ["PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"], # required
    #         standards_controls_updatable: "READY_FOR_UPDATES" # One of: ["READY_FOR_UPDATES", "NOT_READY_FOR_UPDATES"],
    #         standards_status_reason: {
    #           status_reason_code: "NO_AVAILABLE_CONFIGURATION_RECORDER" # One of: ["NO_AVAILABLE_CONFIGURATION_RECORDER", "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED", "INTERNAL_ERROR"], # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetEnabledStandardsResponse]
    def get_enabled_standards(params = {}, options = {})
      request = build_request(:get_enabled_standards, params)
      request.send_request(options)
    end

    # <note>
    #             <p>The <i>aggregation Region</i> is now called the <i>home Region</i>.</p>
    #          </note>
    #          <p>Returns the current configuration in the calling account for cross-Region aggregation. A finding aggregator is a resource that establishes 
    # the home Region and any linked Regions.</p>
    # @param [Hash, Types::GetFindingAggregatorRequest] params
    # @option params [String] :finding_aggregator_arn
    #   <p>The ARN of the finding aggregator to return details for. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    # @example To get cross-Region aggregation details
    #   # The following example returns cross-Region aggregation details for the requesting account. 
    #   params = {
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    #   options = {}
    #   response = client.get_finding_aggregator(params, options)
    #   response.to_h #=>
    #   {
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     finding_aggregation_region: "us-east-1",
    #     region_linking_mode: "SPECIFIED_REGIONS",
    #     regions: [
    #       "us-west-1",
    #       "us-west-2"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_aggregator_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_finding_aggregator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_aggregator_arn: "NonEmptyString",
    #     finding_aggregation_region: "NonEmptyString",
    #     region_linking_mode: "NonEmptyString",
    #     regions: ["NonEmptyString"]
    #   }
    # @return [Types::GetFindingAggregatorResponse]
    def get_finding_aggregator(params = {}, options = {})
      request = build_request(:get_finding_aggregator, params)
      request.send_request(options)
    end

    # <p>
    #          Returns the history of a Security Hub finding. The history includes changes made to any fields in 
    #          the Amazon Web Services Security Finding Format (ASFF) except top-level timestamp fields, such as the <code>CreatedAt</code> and 
    #          <code>UpdatedAt</code> fields.
    #       </p>
    #          <p>This operation might return fewer results than the maximum number of results (<code>MaxResults</code>) specified in a request, even 
    #          when more results are available. If this occurs, the response includes a <code>NextToken</code> value, which you should use to retrieve 
    #          the next set of results in the response. The presence of a <code>NextToken</code> value in a response doesn't necessarily indicate 
    #          that the results are incomplete. However, you should continue to specify a <code>NextToken</code> value until you receive a 
    #          response that doesn't include this value.</p>
    # @param [Hash, Types::GetFindingHistoryRequest] params
    # @option params [Types::AwsSecurityFindingIdentifier] :finding_identifier
    #   <p>Identifies which finding to get the finding history for.</p>
    # @option params [Time] :start_time
    #   <p>A timestamp that indicates the start time of the requested finding history.</p>
    #            <p>If you provide values for both <code>StartTime</code> and <code>EndTime</code>,
    #                   Security Hub returns finding history for the specified time period. If you
    #               provide a value for <code>StartTime</code> but not for <code>EndTime</code>, Security Hub returns finding history from the <code>StartTime</code> to the time at
    #               which the API is called. If you provide a value for <code>EndTime</code> but not for
    #                   <code>StartTime</code>, Security Hub returns finding history from the <a href="https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt">CreatedAt</a> timestamp of the finding to the <code>EndTime</code>. If you
    #               provide neither <code>StartTime</code> nor <code>EndTime</code>, Security Hub
    #               returns finding history from the <code>CreatedAt</code> timestamp of the finding to the time at which
    #               the API is called. In all of these scenarios, the response is limited to 100 results.</p>
    #            <p>For more information about the validation and formatting of timestamp fields in Security Hub, see <a href="https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps">Timestamps</a>.</p>
    # @option params [Time] :end_time
    #   <p>
    #            An ISO 8601-formatted timestamp that indicates the end time of the requested finding history.</p>
    #            <p>If you provide values for both <code>StartTime</code> and <code>EndTime</code>,
    #                   Security Hub returns finding history for the specified time period. If you
    #               provide a value for <code>StartTime</code> but not for <code>EndTime</code>, Security Hub returns finding history from the <code>StartTime</code> to the time at
    #               which the API is called. If you provide a value for <code>EndTime</code> but not for
    #                   <code>StartTime</code>, Security Hub returns finding history from the <a href="https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt">CreatedAt</a> timestamp of the finding to the <code>EndTime</code>. If you
    #               provide neither <code>StartTime</code> nor <code>EndTime</code>, Security Hub
    #               returns finding history from the <code>CreatedAt</code> timestamp of the finding to the time at which
    #               the API is called. In all of these scenarios, the response is limited to 100 results.</p>
    #            <p>For more information about the validation and formatting of timestamp fields in Security Hub, see <a href="https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps">Timestamps</a>.</p>
    # @option params [String] :next_token
    #   <p>
    #            A token for pagination purposes. Provide <code>NULL</code> as the initial value. In subsequent requests, provide the 
    #            token included in the response to get up to an additional 100 results of finding history. If you don’t provide 
    #            <code>NextToken</code>, Security Hub returns up to 100 results of finding history for each request.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of results to be returned. If you don’t provide it, Security Hub returns up to 100 results of finding history.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_identifier: { # required
    #       id: "NonEmptyString", # required
    #       product_arn: "NonEmptyString", # required
    #     },
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_finding_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [
    #       {
    #         finding_identifier: {
    #           id: "NonEmptyString", # required
    #           product_arn: "NonEmptyString", # required
    #         },
    #         update_time: Time.now,
    #         finding_created: false,
    #         update_source: {
    #           type: "BATCH_UPDATE_FINDINGS" # One of: ["BATCH_UPDATE_FINDINGS", "BATCH_IMPORT_FINDINGS"],
    #           identity: "NonEmptyString"
    #         },
    #         updates: [
    #           {
    #             updated_field: "NonEmptyString",
    #             old_value: "NonEmptyString",
    #             new_value: "NonEmptyString"
    #           }
    #         ],
    #         next_token: "NextToken"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetFindingHistoryResponse]
    def get_finding_history(params = {}, options = {})
      request = build_request(:get_finding_history, params)
      request.send_request(options)
    end

    # <p>Returns aggregated statistical data about findings.
    #          <code>GetFindingStatisticsV2</code> use <code>securityhub:GetAdhocInsightResults</code> in the <code>Action</code> element of an IAM policy statement. 
    #          You must have permission to perform the <code>s</code> action. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::GetFindingStatisticsV2Request] params
    # @option params [Array<Types::GroupByRule>] :group_by_rules
    #   <p>Specifies how security findings should be aggregated and organized in the statistical analysis. 
    #         It can accept up to 5 <code>groupBy</code> fields in a single call.</p>
    # @option params [String] :sort_order
    #   <p>Orders the aggregation count in descending or ascending order. 
    #            Descending order is the default.</p>
    # @option params [Integer] :max_statistic_results
    #   <p>The maximum number of results to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_by_rules: [ # required
    #       {
    #         filters: {
    #           composite_filters: [
    #             {
    #               string_filters: [
    #                 {
    #                   field_name: "metadata.uid" # One of: ["metadata.uid", "activity_name", "cloud.account.uid", "cloud.provider", "cloud.region", "compliance.assessments.category", "compliance.assessments.name", "compliance.control", "compliance.status", "compliance.standards", "finding_info.desc", "finding_info.src_url", "finding_info.title", "finding_info.types", "finding_info.uid", "finding_info.related_events.uid", "finding_info.related_events.product.uid", "finding_info.related_events.title", "metadata.product.name", "metadata.product.uid", "metadata.product.vendor_name", "remediation.desc", "remediation.references", "resources.cloud_partition", "resources.region", "resources.type", "resources.uid", "severity", "status", "comment", "vulnerabilities.fix_coverage", "class_name"],
    #                   filter: {
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #                   }
    #                 }
    #               ],
    #               date_filters: [
    #                 {
    #                   field_name: "finding_info.created_time_dt" # One of: ["finding_info.created_time_dt", "finding_info.first_seen_time_dt", "finding_info.last_seen_time_dt", "finding_info.modified_time_dt"],
    #                   filter: {
    #                     start: "NonEmptyString",
    #                     end: "NonEmptyString",
    #                     date_range: {
    #                       value: 1,
    #                       unit: "DAYS" # One of: ["DAYS"]
    #                     }
    #                   }
    #                 }
    #               ],
    #               boolean_filters: [
    #                 {
    #                   field_name: "compliance.assessments.meets_criteria" # One of: ["compliance.assessments.meets_criteria", "vulnerabilities.is_exploit_available", "vulnerabilities.is_fix_available"],
    #                   filter: {
    #                     value: false
    #                   }
    #                 }
    #               ],
    #               number_filters: [
    #                 {
    #                   field_name: "activity_id" # One of: ["activity_id", "compliance.status_id", "confidence_score", "severity_id", "status_id", "finding_info.related_events_count"],
    #                   filter: {
    #                     gte: 1.0,
    #                     lte: 1.0,
    #                     eq: 1.0,
    #                     gt: 1.0,
    #                     lt: 1.0
    #                   }
    #                 }
    #               ],
    #               map_filters: [
    #                 {
    #                   field_name: "resources.tags" # One of: ["resources.tags"],
    #                   filter: {
    #                     key: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #                   }
    #                 }
    #               ],
    #               operator: "AND" # One of: ["AND", "OR"]
    #             }
    #           ],
    #           composite_operator: "AND" # One of: ["AND", "OR"]
    #         },
    #         group_by_field: "activity_name" # One of: ["activity_name", "cloud.account.uid", "cloud.provider", "cloud.region", "compliance.assessments.name", "compliance.status", "compliance.control", "finding_info.title", "finding_info.types", "metadata.product.name", "metadata.product.uid", "resources.type", "resources.uid", "severity", "status", "vulnerabilities.fix_coverage", "class_name"], # required
    #       }
    #     ],
    #     sort_order: "asc" # One of: ["asc", "desc"],
    #     max_statistic_results: 1
    #   }
    #   options = {}
    #   response = client.get_finding_statistics_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_by_results: [
    #       {
    #         group_by_field: "NonEmptyString",
    #         group_by_values: [
    #           {
    #             field_value: "NonEmptyString",
    #             count: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetFindingStatisticsV2Response]
    def get_finding_statistics_v2(params = {}, options = {})
      request = build_request(:get_finding_statistics_v2, params)
      request.send_request(options)
    end

    # <p>Returns a list of findings that match the specified criteria.</p>
    #          <p>If cross-Region aggregation is enabled, then when you call <code>GetFindings</code> from the home Region, the results include all of the matching findings from both the home Region and linked Regions.</p>
    # @param [Hash, Types::GetFindingsRequest] params
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   <p>The finding attributes used to define a condition to filter the returned
    #            findings.</p>
    #            <p>You can filter by up to 10 finding attributes. For each attribute, you can provide up to
    #            20 filter values.</p>
    #            <p>Note that in the available filter fields, <code>WorkflowState</code> is deprecated. To
    #            search for a finding based on its workflow status, use <code>WorkflowStatus</code>.</p>
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   <p>The finding attributes used to sort the list of returned findings.</p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetFindings</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of findings to return.</p>
    # @example To get a list of findings
    #   # The following example returns a filtered and sorted list of Security Hub findings.
    #   params = {
    #     filters: {
    #       aws_account_id: [
    #         {
    #           value: "123456789012",
    #           comparison: PREFIX
    #         }
    #       ]
    #     },
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_findings(params, options)
    #   response.to_h #=>
    #   {
    #     findings: [
    #       {
    #         schema_version: "2018-10-08",
    #         id: "arn:aws:securityhub:us-east-2:123456789012:security-control/CloudTrail.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         product_arn: "arn:aws:securityhub:us-east-2::product/aws/securityhub",
    #         product_name: "Security Hub",
    #         company_name: "AWS",
    #         region: "us-east-2",
    #         generator_id: "security-control/CloudTrail.2",
    #         aws_account_id: "123456789012",
    #         types: [
    #           "Software and Configuration Checks/Industry and Regulatory Standards"
    #         ],
    #         first_observed_at: "2022-10-06T02:18:23.076Z",
    #         last_observed_at: "2022-10-28T16:10:06.956Z",
    #         created_at: "2022-10-06T02:18:23.076Z",
    #         updated_at: "2022-10-28T16:10:00.093Z",
    #         severity: {
    #           label: MEDIUM,
    #           normalized: 40,
    #           original: "MEDIUM"
    #         },
    #         title: "CloudTrail should have encryption at-rest enabled",
    #         description: "This AWS control checks whether AWS CloudTrail is configured to use the server side encryption (SSE) AWS Key Management Service (AWS KMS) customer master key (CMK) encryption. The check will pass if the KmsKeyId is defined.",
    #         remediation: {
    #           recommendation: {
    #             text: "For directions on how to correct this issue, consult the AWS Security Hub controls documentation.",
    #             url: "https://docs.aws.amazon.com/console/securityhub/CloudTrail.2/remediation"
    #           }
    #         },
    #         product_fields: {
    #           "RelatedAWSResources:0/name" => "securityhub-cloud-trail-encryption-enabled-fe95bf3f",
    #           "RelatedAWSResources:0/type" => "AWS::Config::ConfigRule",
    #           "aws/securityhub/ProductName" => "Security Hub",
    #           "aws/securityhub/CompanyName" => "AWS",
    #           "Resources:0/Id" => "arn:aws:cloudtrail:us-east-2:123456789012:trail/AWSMacieTrail-DO-NOT-EDIT",
    #           "aws/securityhub/FindingId" => "arn:aws:securityhub:us-east-2::product/aws/securityhub/arn:aws:securityhub:us-east-2:123456789012:security-control/CloudTrail.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #         },
    #         resources: [
    #           {
    #             type: "AwsCloudTrailTrail",
    #             id: "arn:aws:cloudtrail:us-east-2:123456789012:trail/AWSMacieTrail-DO-NOT-EDIT",
    #             partition: aws,
    #             region: "us-east-2"
    #           }
    #         ],
    #         compliance: {
    #           status: FAILED,
    #           related_requirements: [
    #             "PCI DSS v3.2.1/3.4",
    #             "CIS AWS Foundations Benchmark v1.2.0/2.7",
    #             "CIS AWS Foundations Benchmark v1.4.0/3.7"
    #           ],
    #           security_control_id: "CloudTrail.2",
    #           associated_standards: [
    #             {
    #               standards_id: "standards/aws-foundational-security-best-practices/v/1.0.0"
    #             },
    #             {
    #               standards_id: "standards/pci-dss/v/3.2.1"
    #             },
    #             {
    #               standards_id: "ruleset/cis-aws-foundations-benchmark/v/1.2.0"
    #             },
    #             {
    #               standards_id: "standards/cis-aws-foundations-benchmark/v/1.4.0"
    #             },
    #             {
    #               standards_id: "standards/service-managed-aws-control-tower/v/1.0.0"
    #             }
    #           ]
    #         },
    #         workflow_state: NEW,
    #         workflow: {
    #           status: NEW
    #         },
    #         record_state: ACTIVE,
    #         finding_provider_fields: {
    #           severity: {
    #             label: MEDIUM,
    #             original: "MEDIUM"
    #           },
    #           types: [
    #             "Software and Configuration Checks/Industry and Regulatory Standards"
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ]
    #     },
    #     sort_criteria: [
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc" # One of: ["asc", "desc"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         schema_version: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #         product_name: "NonEmptyString",
    #         company_name: "NonEmptyString",
    #         region: "NonEmptyString",
    #         generator_id: "NonEmptyString", # required
    #         aws_account_id: "NonEmptyString", # required
    #         types: ["NonEmptyString"],
    #         first_observed_at: "NonEmptyString",
    #         last_observed_at: "NonEmptyString",
    #         created_at: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #         severity: {
    #           product: 1.0,
    #           label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #           normalized: 1,
    #           original: "NonEmptyString"
    #         },
    #         confidence: 1,
    #         criticality: 1,
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation: {
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString"
    #           }
    #         },
    #         source_url: "NonEmptyString",
    #         product_fields: {
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         malware: [
    #           {
    #             name: "NonEmptyString", # required
    #             type: "ADWARE" # One of: ["ADWARE", "BLENDED_THREAT", "BOTNET_AGENT", "COIN_MINER", "EXPLOIT_KIT", "KEYLOGGER", "MACRO", "POTENTIALLY_UNWANTED", "SPYWARE", "RANSOMWARE", "REMOTE_ACCESS", "ROOTKIT", "TROJAN", "VIRUS", "WORM"],
    #             path: "NonEmptyString",
    #             state: "OBSERVED" # One of: ["OBSERVED", "REMOVAL_FAILED", "REMOVED"]
    #           }
    #         ],
    #         network: {
    #           direction: "IN" # One of: ["IN", "OUT"],
    #           protocol: "NonEmptyString",
    #           open_port_range: {
    #             begin: 1,
    #             end: 1
    #           },
    #           source_ip_v4: "NonEmptyString",
    #           source_ip_v6: "NonEmptyString",
    #           source_port: 1,
    #           source_domain: "NonEmptyString",
    #           source_mac: "NonEmptyString",
    #           destination_ip_v4: "NonEmptyString",
    #           destination_ip_v6: "NonEmptyString",
    #           destination_port: 1,
    #           destination_domain: "NonEmptyString"
    #         },
    #         network_path: [
    #           {
    #             component_id: "NonEmptyString",
    #             component_type: "NonEmptyString",
    #             egress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               }
    #             },
    #             ingress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         ],
    #         process: {
    #           name: "NonEmptyString",
    #           path: "NonEmptyString",
    #           pid: 1,
    #           parent_pid: 1,
    #           launched_at: "NonEmptyString",
    #           terminated_at: "NonEmptyString"
    #         },
    #         threats: [
    #           {
    #             name: "NonEmptyString",
    #             severity: "NonEmptyString",
    #             item_count: 1,
    #             file_paths: [
    #               {
    #                 file_path: "NonEmptyString",
    #                 file_name: "NonEmptyString",
    #                 resource_id: "NonEmptyString",
    #                 hash: "NonEmptyString"
    #               }
    #             ]
    #           }
    #         ],
    #         threat_intel_indicators: [
    #           {
    #             type: "DOMAIN" # One of: ["DOMAIN", "EMAIL_ADDRESS", "HASH_MD5", "HASH_SHA1", "HASH_SHA256", "HASH_SHA512", "IPV4_ADDRESS", "IPV6_ADDRESS", "MUTEX", "PROCESS", "URL"],
    #             value: "NonEmptyString",
    #             category: "BACKDOOR" # One of: ["BACKDOOR", "CARD_STEALER", "COMMAND_AND_CONTROL", "DROP_SITE", "EXPLOIT_SITE", "KEYLOGGER"],
    #             last_observed_at: "NonEmptyString",
    #             source: "NonEmptyString",
    #             source_url: "NonEmptyString"
    #           }
    #         ],
    #         resources: [ # required
    #           {
    #             type: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             partition: "aws" # One of: ["aws", "aws-cn", "aws-us-gov"],
    #             region: "NonEmptyString",
    #             resource_role: "NonEmptyString",
    #             tags: {
    #               "NonEmptyString" => "NonEmptyString"
    #             },
    #             data_classification: {
    #               detailed_results_location: "NonEmptyString",
    #               result: {
    #                 mime_type: "NonEmptyString",
    #                 size_classified: 1,
    #                 additional_occurrences: false,
    #                 status: {
    #                   code: "NonEmptyString",
    #                   reason: "NonEmptyString"
    #                 },
    #                 sensitive_data: [
    #                   {
    #                     category: "NonEmptyString",
    #                     detections: [
    #                       {
    #                         count: 1,
    #                         type: "NonEmptyString",
    #                         occurrences: {
    #                           line_ranges: [
    #                             {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             }
    #                           ],
    #                           offset_ranges: [
    #                             {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             }
    #                           ],
    #                           pages: [
    #                             {
    #                               page_number: 1,
    #                               line_range: {
    #                                 start: 1,
    #                                 end: 1,
    #                                 start_column: 1
    #                               },
    #                               offset_range: {
    #                                 start: 1,
    #                                 end: 1,
    #                                 start_column: 1
    #                               }
    #                             }
    #                           ],
    #                           records: [
    #                             {
    #                               json_path: "NonEmptyString",
    #                               record_index: 1
    #                             }
    #                           ],
    #                           cells: [
    #                             {
    #                               column: 1,
    #                               row: 1,
    #                               column_name: "NonEmptyString",
    #                               cell_reference: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     ],
    #                     total_count: 1
    #                   }
    #                 ],
    #                 custom_data_identifiers: {
    #                   detections: [
    #                     {
    #                       count: 1,
    #                       arn: "NonEmptyString",
    #                       name: "NonEmptyString",
    #                       occurrences: {
    #                         line_ranges: [
    #                           {
    #                             start: 1,
    #                             end: 1,
    #                             start_column: 1
    #                           }
    #                         ],
    #                         offset_ranges: [
    #                           {
    #                             start: 1,
    #                             end: 1,
    #                             start_column: 1
    #                           }
    #                         ],
    #                         pages: [
    #                           {
    #                             page_number: 1,
    #                             line_range: {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             },
    #                             offset_range: {
    #                               start: 1,
    #                               end: 1,
    #                               start_column: 1
    #                             }
    #                           }
    #                         ],
    #                         records: [
    #                           {
    #                             json_path: "NonEmptyString",
    #                             record_index: 1
    #                           }
    #                         ],
    #                         cells: [
    #                           {
    #                             column: 1,
    #                             row: 1,
    #                             column_name: "NonEmptyString",
    #                             cell_reference: "NonEmptyString"
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   ],
    #                   total_count: 1
    #                 }
    #               }
    #             },
    #             details: {
    #               aws_auto_scaling_auto_scaling_group: {
    #                 launch_configuration_name: "NonEmptyString",
    #                 load_balancer_names: ["NonEmptyString"],
    #                 health_check_type: "NonEmptyString",
    #                 health_check_grace_period: 1,
    #                 created_time: "NonEmptyString",
    #                 mixed_instances_policy: {
    #                   instances_distribution: {
    #                     on_demand_allocation_strategy: "NonEmptyString",
    #                     on_demand_base_capacity: 1,
    #                     on_demand_percentage_above_base_capacity: 1,
    #                     spot_allocation_strategy: "NonEmptyString",
    #                     spot_instance_pools: 1,
    #                     spot_max_price: "NonEmptyString"
    #                   },
    #                   launch_template: {
    #                     launch_template_specification: {
    #                       launch_template_id: "NonEmptyString",
    #                       launch_template_name: "NonEmptyString",
    #                       version: "NonEmptyString"
    #                     },
    #                     overrides: [
    #                       {
    #                         instance_type: "NonEmptyString",
    #                         weighted_capacity: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 availability_zones: [
    #                   {
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 launch_template: {
    #                   launch_template_id: "NonEmptyString",
    #                   launch_template_name: "NonEmptyString",
    #                   version: "NonEmptyString"
    #                 },
    #                 capacity_rebalance: false
    #               },
    #               aws_code_build_project: {
    #                 encryption_key: "NonEmptyString",
    #                 artifacts: [
    #                   {
    #                     artifact_identifier: "NonEmptyString",
    #                     encryption_disabled: false,
    #                     location: "NonEmptyString",
    #                     name: "NonEmptyString",
    #                     namespace_type: "NonEmptyString",
    #                     override_artifact_name: false,
    #                     packaging: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 environment: {
    #                   certificate: "NonEmptyString",
    #                   environment_variables: [
    #                     {
    #                       name: "NonEmptyString",
    #                       type: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ],
    #                   privileged_mode: false,
    #                   image_pull_credentials_type: "NonEmptyString",
    #                   registry_credential: {
    #                     credential: "NonEmptyString",
    #                     credential_provider: "NonEmptyString"
    #                   },
    #                   type: "NonEmptyString"
    #                 },
    #                 name: "NonEmptyString",
    #                 source: {
    #                   type: "NonEmptyString",
    #                   location: "NonEmptyString",
    #                   git_clone_depth: 1,
    #                   insecure_ssl: false
    #                 },
    #                 service_role: "NonEmptyString",
    #                 logs_config: {
    #                   cloud_watch_logs: {
    #                     group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     stream_name: "NonEmptyString"
    #                   },
    #                   s3_logs: {
    #                     encryption_disabled: false,
    #                     location: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 },
    #                 vpc_config: {
    #                   vpc_id: "NonEmptyString",
    #                   subnets: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"]
    #                 },
    #                 secondary_artifacts: [
    #                   {
    #                     artifact_identifier: "NonEmptyString",
    #                     encryption_disabled: false,
    #                     location: "NonEmptyString",
    #                     name: "NonEmptyString",
    #                     namespace_type: "NonEmptyString",
    #                     override_artifact_name: false,
    #                     packaging: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_cloud_front_distribution: {
    #                 cache_behaviors: {
    #                   items: [
    #                     {
    #                       viewer_protocol_policy: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 default_cache_behavior: {
    #                   viewer_protocol_policy: "NonEmptyString"
    #                 },
    #                 default_root_object: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 e_tag: "NonEmptyString",
    #                 last_modified_time: "NonEmptyString",
    #                 logging: {
    #                   bucket: "NonEmptyString",
    #                   enabled: false,
    #                   include_cookies: false,
    #                   prefix: "NonEmptyString"
    #                 },
    #                 origins: {
    #                   items: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       id: "NonEmptyString",
    #                       origin_path: "NonEmptyString",
    #                       s3_origin_config: {
    #                         origin_access_identity: "NonEmptyString"
    #                       },
    #                       custom_origin_config: {
    #                         http_port: 1,
    #                         https_port: 1,
    #                         origin_keepalive_timeout: 1,
    #                         origin_protocol_policy: "NonEmptyString",
    #                         origin_read_timeout: 1,
    #                         origin_ssl_protocols: {
    #                           items: ["NonEmptyString"],
    #                           quantity: 1
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 origin_groups: {
    #                   items: [
    #                     {
    #                       failover_criteria: {
    #                         status_codes: {
    #                           items: [1],
    #                           quantity: 1
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 viewer_certificate: {
    #                   acm_certificate_arn: "NonEmptyString",
    #                   certificate: "NonEmptyString",
    #                   certificate_source: "NonEmptyString",
    #                   cloud_front_default_certificate: false,
    #                   iam_certificate_id: "NonEmptyString",
    #                   minimum_protocol_version: "NonEmptyString",
    #                   ssl_support_method: "NonEmptyString"
    #                 },
    #                 status: "NonEmptyString",
    #                 web_acl_id: "NonEmptyString"
    #               },
    #               aws_ec2_instance: {
    #                 type: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 ip_v4_addresses: ["NonEmptyString"],
    #                 ip_v6_addresses: ["NonEmptyString"],
    #                 key_name: "NonEmptyString",
    #                 iam_instance_profile_arn: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #                 network_interfaces: [
    #                   {
    #                     network_interface_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 virtualization_type: "NonEmptyString",
    #                 metadata_options: {
    #                   http_endpoint: "NonEmptyString",
    #                   http_protocol_ipv6: "NonEmptyString",
    #                   http_put_response_hop_limit: 1,
    #                   http_tokens: "NonEmptyString",
    #                   instance_metadata_tags: "NonEmptyString"
    #                 },
    #                 monitoring: {
    #                   state: "NonEmptyString"
    #                 }
    #               },
    #               aws_ec2_network_interface: {
    #                 attachment: {
    #                   attach_time: "NonEmptyString",
    #                   attachment_id: "NonEmptyString",
    #                   delete_on_termination: false,
    #                   device_index: 1,
    #                   instance_id: "NonEmptyString",
    #                   instance_owner_id: "NonEmptyString",
    #                   status: "NonEmptyString"
    #                 },
    #                 network_interface_id: "NonEmptyString",
    #                 security_groups: [
    #                   {
    #                     group_name: "NonEmptyString",
    #                     group_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 source_dest_check: false,
    #                 ip_v6_addresses: [
    #                   {
    #                     ip_v6_address: "NonEmptyString"
    #                   }
    #                 ],
    #                 private_ip_addresses: [
    #                   {
    #                     private_ip_address: "NonEmptyString",
    #                     private_dns_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 public_dns_name: "NonEmptyString",
    #                 public_ip: "NonEmptyString"
    #               },
    #               aws_ec2_security_group: {
    #                 group_name: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 ip_permissions: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString"
    #                       }
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString"
    #                       }
    #                     ],
    #                     ipv6_ranges: [
    #                       {
    #                         cidr_ipv6: "NonEmptyString"
    #                       }
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 ip_permissions_egress: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString"
    #                       }
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString"
    #                       }
    #                     ],
    #                     ipv6_ranges: [
    #                       {
    #                         cidr_ipv6: "NonEmptyString"
    #                       }
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               },
    #               aws_ec2_volume: {
    #                 create_time: "NonEmptyString",
    #                 device_name: "NonEmptyString",
    #                 encrypted: false,
    #                 size: 1,
    #                 snapshot_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 attachments: [
    #                   {
    #                     attach_time: "NonEmptyString",
    #                     delete_on_termination: false,
    #                     instance_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 volume_id: "NonEmptyString",
    #                 volume_type: "NonEmptyString",
    #                 volume_scan_status: "NonEmptyString"
    #               },
    #               aws_ec2_vpc: {
    #                 cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString"
    #                   }
    #                 ],
    #                 ipv6_cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     ipv6_cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString"
    #                   }
    #                 ],
    #                 dhcp_options_id: "NonEmptyString",
    #                 state: "NonEmptyString"
    #               },
    #               aws_ec2_eip: {
    #                 instance_id: "NonEmptyString",
    #                 public_ip: "NonEmptyString",
    #                 allocation_id: "NonEmptyString",
    #                 association_id: "NonEmptyString",
    #                 domain: "NonEmptyString",
    #                 public_ipv4_pool: "NonEmptyString",
    #                 network_border_group: "NonEmptyString",
    #                 network_interface_id: "NonEmptyString",
    #                 network_interface_owner_id: "NonEmptyString",
    #                 private_ip_address: "NonEmptyString"
    #               },
    #               aws_ec2_subnet: {
    #                 assign_ipv6_address_on_creation: false,
    #                 availability_zone: "NonEmptyString",
    #                 availability_zone_id: "NonEmptyString",
    #                 available_ip_address_count: 1,
    #                 cidr_block: "NonEmptyString",
    #                 default_for_az: false,
    #                 map_public_ip_on_launch: false,
    #                 owner_id: "NonEmptyString",
    #                 state: "NonEmptyString",
    #                 subnet_arn: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 ipv6_cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     ipv6_cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_ec2_network_acl: {
    #                 is_default: false,
    #                 network_acl_id: "NonEmptyString",
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 associations: [
    #                   {
    #                     network_acl_association_id: "NonEmptyString",
    #                     network_acl_id: "NonEmptyString",
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 entries: [
    #                   {
    #                     cidr_block: "NonEmptyString",
    #                     egress: false,
    #                     icmp_type_code: {
    #                       code: 1,
    #                       type: 1
    #                     },
    #                     ipv6_cidr_block: "NonEmptyString",
    #                     port_range: {
    #                       from: 1,
    #                       to: 1
    #                     },
    #                     protocol: "NonEmptyString",
    #                     rule_action: "NonEmptyString",
    #                     rule_number: 1
    #                   }
    #                 ]
    #               },
    #               aws_elbv2_load_balancer: {
    #                 availability_zones: [
    #                   {
    #                     zone_name: "NonEmptyString",
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 canonical_hosted_zone_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 ip_address_type: "NonEmptyString",
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 state: {
    #                   code: "NonEmptyString",
    #                   reason: "NonEmptyString"
    #                 },
    #                 type: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 load_balancer_attributes: [
    #                   {
    #                     key: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_elastic_beanstalk_environment: {
    #                 application_name: "NonEmptyString",
    #                 cname: "NonEmptyString",
    #                 date_created: "NonEmptyString",
    #                 date_updated: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 endpoint_url: "NonEmptyString",
    #                 environment_arn: "NonEmptyString",
    #                 environment_id: "NonEmptyString",
    #                 environment_links: [
    #                   {
    #                     environment_name: "NonEmptyString",
    #                     link_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 environment_name: "NonEmptyString",
    #                 option_settings: [
    #                   {
    #                     namespace: "NonEmptyString",
    #                     option_name: "NonEmptyString",
    #                     resource_name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 platform_arn: "NonEmptyString",
    #                 solution_stack_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 tier: {
    #                   name: "NonEmptyString",
    #                   type: "NonEmptyString",
    #                   version: "NonEmptyString"
    #                 },
    #                 version_label: "NonEmptyString"
    #               },
    #               aws_elasticsearch_domain: {
    #                 access_policies: "NonEmptyString",
    #                 domain_endpoint_options: {
    #                   enforce_https: false,
    #                   tls_security_policy: "NonEmptyString"
    #                 },
    #                 domain_id: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 endpoints: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 elasticsearch_version: "NonEmptyString",
    #                 elasticsearch_cluster_config: {
    #                   dedicated_master_count: 1,
    #                   dedicated_master_enabled: false,
    #                   dedicated_master_type: "NonEmptyString",
    #                   instance_count: 1,
    #                   instance_type: "NonEmptyString",
    #                   zone_awareness_config: {
    #                     availability_zone_count: 1
    #                   },
    #                   zone_awareness_enabled: false
    #                 },
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: "NonEmptyString"
    #                 },
    #                 log_publishing_options: {
    #                   index_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   search_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   audit_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   }
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false
    #                 },
    #                 service_software_options: {
    #                   automated_update_date: "NonEmptyString",
    #                   cancellable: false,
    #                   current_version: "NonEmptyString",
    #                   description: "NonEmptyString",
    #                   new_version: "NonEmptyString",
    #                   update_available: false,
    #                   update_status: "NonEmptyString"
    #                 },
    #                 vpc_options: {
    #                   availability_zones: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString"
    #                 }
    #               },
    #               aws_s3_bucket: {
    #                 owner_id: "NonEmptyString",
    #                 owner_name: "NonEmptyString",
    #                 owner_account_id: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 server_side_encryption_configuration: {
    #                   rules: [
    #                     {
    #                       apply_server_side_encryption_by_default: {
    #                         sse_algorithm: "NonEmptyString",
    #                         kms_master_key_id: "NonEmptyString"
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 bucket_lifecycle_configuration: {
    #                   rules: [
    #                     {
    #                       abort_incomplete_multipart_upload: {
    #                         days_after_initiation: 1
    #                       },
    #                       expiration_date: "NonEmptyString",
    #                       expiration_in_days: 1,
    #                       expired_object_delete_marker: false,
    #                       filter: {
    #                         predicate: {
    #                           operands: [
    #                             {
    #                               prefix: "NonEmptyString",
    #                               tag: {
    #                                 key: "NonEmptyString",
    #                                 value: "NonEmptyString"
    #                               },
    #                               type: "NonEmptyString"
    #                             }
    #                           ],
    #                           prefix: "NonEmptyString",
    #                           tag: {
    #                             key: "NonEmptyString",
    #                             value: "NonEmptyString"
    #                           },
    #                           type: "NonEmptyString"
    #                         }
    #                       },
    #                       id: "NonEmptyString",
    #                       noncurrent_version_expiration_in_days: 1,
    #                       noncurrent_version_transitions: [
    #                         {
    #                           days: 1,
    #                           storage_class: "NonEmptyString"
    #                         }
    #                       ],
    #                       prefix: "NonEmptyString",
    #                       status: "NonEmptyString",
    #                       transitions: [
    #                         {
    #                           date: "NonEmptyString",
    #                           days: 1,
    #                           storage_class: "NonEmptyString"
    #                         }
    #                       ]
    #                     }
    #                   ]
    #                 },
    #                 public_access_block_configuration: {
    #                   block_public_acls: false,
    #                   block_public_policy: false,
    #                   ignore_public_acls: false,
    #                   restrict_public_buckets: false
    #                 },
    #                 access_control_list: "NonEmptyString",
    #                 bucket_logging_configuration: {
    #                   destination_bucket_name: "NonEmptyString",
    #                   log_file_prefix: "NonEmptyString"
    #                 },
    #                 bucket_website_configuration: {
    #                   error_document: "NonEmptyString",
    #                   index_document_suffix: "NonEmptyString",
    #                   redirect_all_requests_to: {
    #                     hostname: "NonEmptyString",
    #                     protocol: "NonEmptyString"
    #                   },
    #                   routing_rules: [
    #                     {
    #                       condition: {
    #                         http_error_code_returned_equals: "NonEmptyString",
    #                         key_prefix_equals: "NonEmptyString"
    #                       },
    #                       redirect: {
    #                         hostname: "NonEmptyString",
    #                         http_redirect_code: "NonEmptyString",
    #                         protocol: "NonEmptyString",
    #                         replace_key_prefix_with: "NonEmptyString",
    #                         replace_key_with: "NonEmptyString"
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 bucket_notification_configuration: {
    #                   configurations: [
    #                     {
    #                       events: ["NonEmptyString"],
    #                       filter: {
    #                         s3_key_filter: {
    #                           filter_rules: [
    #                             {
    #                               name: "Prefix" # One of: ["Prefix", "Suffix"],
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       destination: "NonEmptyString",
    #                       type: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 bucket_versioning_configuration: {
    #                   is_mfa_delete_enabled: false,
    #                   status: "NonEmptyString"
    #                 },
    #                 object_lock_configuration: {
    #                   object_lock_enabled: "NonEmptyString",
    #                   rule: {
    #                     default_retention: {
    #                       days: 1,
    #                       mode: "NonEmptyString",
    #                       years: 1
    #                     }
    #                   }
    #                 },
    #                 name: "NonEmptyString"
    #               },
    #               aws_s3_account_public_access_block: {
    #                 block_public_acls: false,
    #                 block_public_policy: false,
    #                 ignore_public_acls: false,
    #                 restrict_public_buckets: false
    #               },
    #               aws_s3_object: {
    #                 last_modified: "NonEmptyString",
    #                 e_tag: "NonEmptyString",
    #                 version_id: "NonEmptyString",
    #                 content_type: "NonEmptyString",
    #                 server_side_encryption: "NonEmptyString",
    #                 ssekms_key_id: "NonEmptyString"
    #               },
    #               aws_secrets_manager_secret: {
    #                 rotation_rules: {
    #                   automatically_after_days: 1
    #                 },
    #                 rotation_occurred_within_frequency: false,
    #                 kms_key_id: "NonEmptyString",
    #                 rotation_enabled: false,
    #                 rotation_lambda_arn: "NonEmptyString",
    #                 deleted: false,
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString"
    #               },
    #               aws_iam_access_key: {
    #                 user_name: "NonEmptyString",
    #                 status: "Active" # One of: ["Active", "Inactive"],
    #                 created_at: "NonEmptyString",
    #                 principal_id: "NonEmptyString",
    #                 principal_type: "NonEmptyString",
    #                 principal_name: "NonEmptyString",
    #                 account_id: "NonEmptyString",
    #                 access_key_id: "NonEmptyString",
    #                 session_context: {
    #                   attributes: {
    #                     mfa_authenticated: false,
    #                     creation_date: "NonEmptyString"
    #                   },
    #                   session_issuer: {
    #                     type: "NonEmptyString",
    #                     principal_id: "NonEmptyString",
    #                     arn: "NonEmptyString",
    #                     account_id: "NonEmptyString",
    #                     user_name: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_iam_user: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_list: ["NonEmptyString"],
    #                 path: "NonEmptyString",
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString"
    #                 },
    #                 user_id: "NonEmptyString",
    #                 user_name: "NonEmptyString",
    #                 user_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_iam_policy: {
    #                 attachment_count: 1,
    #                 create_date: "NonEmptyString",
    #                 default_version_id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 is_attachable: false,
    #                 path: "NonEmptyString",
    #                 permissions_boundary_usage_count: 1,
    #                 policy_id: "NonEmptyString",
    #                 policy_name: "NonEmptyString",
    #                 policy_version_list: [
    #                   {
    #                     version_id: "NonEmptyString",
    #                     is_default_version: false,
    #                     create_date: "NonEmptyString"
    #                   }
    #                 ],
    #                 update_date: "NonEmptyString"
    #               },
    #               aws_api_gateway_v2_stage: {
    #                 client_certificate_id: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 default_route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0
    #                 },
    #                 deployment_id: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0
    #                 },
    #                 stage_name: "NonEmptyString",
    #                 stage_variables: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString"
    #                 },
    #                 auto_deploy: false,
    #                 last_deployment_status_message: "NonEmptyString",
    #                 api_gateway_managed: false
    #               },
    #               aws_api_gateway_v2_api: {
    #                 api_endpoint: "NonEmptyString",
    #                 api_id: "NonEmptyString",
    #                 api_key_selection_expression: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 protocol_type: "NonEmptyString",
    #                 route_selection_expression: "NonEmptyString",
    #                 cors_configuration: {
    #                   allow_origins: ["NonEmptyString"],
    #                   allow_credentials: false,
    #                   expose_headers: ["NonEmptyString"],
    #                   max_age: 1,
    #                   allow_methods: ["NonEmptyString"],
    #                   allow_headers: ["NonEmptyString"]
    #                 }
    #               },
    #               aws_dynamo_db_table: {
    #                 attribute_definitions: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     attribute_type: "NonEmptyString"
    #                   }
    #                 ],
    #                 billing_mode_summary: {
    #                   billing_mode: "NonEmptyString",
    #                   last_update_to_pay_per_request_date_time: "NonEmptyString"
    #                 },
    #                 creation_date_time: "NonEmptyString",
    #                 global_secondary_indexes: [
    #                   {
    #                     backfilling: false,
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     index_size_bytes: 1,
    #                     index_status: "NonEmptyString",
    #                     item_count: 1,
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString"
    #                       }
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString"
    #                     },
    #                     provisioned_throughput: {
    #                       last_decrease_date_time: "NonEmptyString",
    #                       last_increase_date_time: "NonEmptyString",
    #                       number_of_decreases_today: 1,
    #                       read_capacity_units: 1,
    #                       write_capacity_units: 1
    #                     }
    #                   }
    #                 ],
    #                 global_table_version: "NonEmptyString",
    #                 item_count: 1,
    #                 key_schema: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     key_type: "NonEmptyString"
    #                   }
    #                 ],
    #                 latest_stream_arn: "NonEmptyString",
    #                 latest_stream_label: "NonEmptyString",
    #                 local_secondary_indexes: [
    #                   {
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString"
    #                       }
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 provisioned_throughput: {
    #                   last_decrease_date_time: "NonEmptyString",
    #                   last_increase_date_time: "NonEmptyString",
    #                   number_of_decreases_today: 1,
    #                   read_capacity_units: 1,
    #                   write_capacity_units: 1
    #                 },
    #                 replicas: [
    #                   {
    #                     global_secondary_indexes: [
    #                       {
    #                         index_name: "NonEmptyString",
    #                         provisioned_throughput_override: {
    #                           read_capacity_units: 1
    #                         }
    #                       }
    #                     ],
    #                     kms_master_key_id: "NonEmptyString",
    #                     provisioned_throughput_override: {
    #                       read_capacity_units: 1
    #                     },
    #                     region_name: "NonEmptyString",
    #                     replica_status: "NonEmptyString",
    #                     replica_status_description: "NonEmptyString"
    #                   }
    #                 ],
    #                 restore_summary: {
    #                   source_backup_arn: "NonEmptyString",
    #                   source_table_arn: "NonEmptyString",
    #                   restore_date_time: "NonEmptyString",
    #                   restore_in_progress: false
    #                 },
    #                 sse_description: {
    #                   inaccessible_encryption_date_time: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                   sse_type: "NonEmptyString",
    #                   kms_master_key_arn: "NonEmptyString"
    #                 },
    #                 stream_specification: {
    #                   stream_enabled: false,
    #                   stream_view_type: "NonEmptyString"
    #                 },
    #                 table_id: "NonEmptyString",
    #                 table_name: "NonEmptyString",
    #                 table_size_bytes: 1,
    #                 table_status: "NonEmptyString",
    #                 deletion_protection_enabled: false
    #               },
    #               aws_api_gateway_stage: {
    #                 deployment_id: "NonEmptyString",
    #                 client_certificate_id: "NonEmptyString",
    #                 stage_name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 cache_cluster_enabled: false,
    #                 cache_cluster_size: "NonEmptyString",
    #                 cache_cluster_status: "NonEmptyString",
    #                 method_settings: [
    #                   {
    #                     metrics_enabled: false,
    #                     logging_level: "NonEmptyString",
    #                     data_trace_enabled: false,
    #                     throttling_burst_limit: 1,
    #                     throttling_rate_limit: 1.0,
    #                     caching_enabled: false,
    #                     cache_ttl_in_seconds: 1,
    #                     cache_data_encrypted: false,
    #                     require_authorization_for_cache_control: false,
    #                     unauthorized_cache_control_header_strategy: "NonEmptyString",
    #                     http_method: "NonEmptyString",
    #                     resource_path: "NonEmptyString"
    #                   }
    #                 ],
    #                 variables: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 documentation_version: "NonEmptyString",
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString"
    #                 },
    #                 canary_settings: {
    #                   percent_traffic: 1.0,
    #                   deployment_id: "NonEmptyString",
    #                   stage_variable_overrides: {
    #                     "NonEmptyString" => "NonEmptyString"
    #                   },
    #                   use_stage_cache: false
    #                 },
    #                 tracing_enabled: false,
    #                 created_date: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 web_acl_arn: "NonEmptyString"
    #               },
    #               aws_api_gateway_rest_api: {
    #                 id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 binary_media_types: ["NonEmptyString"],
    #                 minimum_compression_size: 1,
    #                 api_key_source: "NonEmptyString",
    #                 endpoint_configuration: {
    #                   types: ["NonEmptyString"]
    #                 }
    #               },
    #               aws_cloud_trail_trail: {
    #                 cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                 cloud_watch_logs_role_arn: "NonEmptyString",
    #                 has_custom_event_selectors: false,
    #                 home_region: "NonEmptyString",
    #                 include_global_service_events: false,
    #                 is_multi_region_trail: false,
    #                 is_organization_trail: false,
    #                 kms_key_id: "NonEmptyString",
    #                 log_file_validation_enabled: false,
    #                 name: "NonEmptyString",
    #                 s3_bucket_name: "NonEmptyString",
    #                 s3_key_prefix: "NonEmptyString",
    #                 sns_topic_arn: "NonEmptyString",
    #                 sns_topic_name: "NonEmptyString",
    #                 trail_arn: "NonEmptyString"
    #               },
    #               aws_ssm_patch_compliance: {
    #                 patch: {
    #                   compliance_summary: {
    #                     status: "NonEmptyString",
    #                     compliant_critical_count: 1,
    #                     compliant_high_count: 1,
    #                     compliant_medium_count: 1,
    #                     execution_type: "NonEmptyString",
    #                     non_compliant_critical_count: 1,
    #                     compliant_informational_count: 1,
    #                     non_compliant_informational_count: 1,
    #                     compliant_unspecified_count: 1,
    #                     non_compliant_low_count: 1,
    #                     non_compliant_high_count: 1,
    #                     compliant_low_count: 1,
    #                     compliance_type: "NonEmptyString",
    #                     patch_baseline_id: "NonEmptyString",
    #                     overall_severity: "NonEmptyString",
    #                     non_compliant_medium_count: 1,
    #                     non_compliant_unspecified_count: 1,
    #                     patch_group: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_certificate_manager_certificate: {
    #                 certificate_authority_arn: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 domain_validation_options: [
    #                   {
    #                     domain_name: "NonEmptyString",
    #                     resource_record: {
    #                       name: "NonEmptyString",
    #                       type: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     },
    #                     validation_domain: "NonEmptyString",
    #                     validation_emails: ["NonEmptyString"],
    #                     validation_method: "NonEmptyString",
    #                     validation_status: "NonEmptyString"
    #                   }
    #                 ],
    #                 extended_key_usages: [
    #                   {
    #                     name: "NonEmptyString",
    #                     o_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 failure_reason: "NonEmptyString",
    #                 imported_at: "NonEmptyString",
    #                 in_use_by: ["NonEmptyString"],
    #                 issued_at: "NonEmptyString",
    #                 issuer: "NonEmptyString",
    #                 key_algorithm: "NonEmptyString",
    #                 key_usages: [
    #                   {
    #                     name: "NonEmptyString"
    #                   }
    #                 ],
    #                 not_after: "NonEmptyString",
    #                 not_before: "NonEmptyString",
    #                 options: {
    #                   certificate_transparency_logging_preference: "NonEmptyString"
    #                 },
    #                 renewal_eligibility: "NonEmptyString",
    #                 renewal_summary: {
    #                   domain_validation_options: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       resource_record: {
    #                         name: "NonEmptyString",
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       },
    #                       validation_domain: "NonEmptyString",
    #                       validation_emails: ["NonEmptyString"],
    #                       validation_method: "NonEmptyString",
    #                       validation_status: "NonEmptyString"
    #                     }
    #                   ],
    #                   renewal_status: "NonEmptyString",
    #                   renewal_status_reason: "NonEmptyString",
    #                   updated_at: "NonEmptyString"
    #                 },
    #                 serial: "NonEmptyString",
    #                 signature_algorithm: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 subject: "NonEmptyString",
    #                 subject_alternative_names: ["NonEmptyString"],
    #                 type: "NonEmptyString"
    #               },
    #               aws_redshift_cluster: {
    #                 allow_version_upgrade: false,
    #                 automated_snapshot_retention_period: 1,
    #                 availability_zone: "NonEmptyString",
    #                 cluster_availability_status: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 cluster_identifier: "NonEmptyString",
    #                 cluster_nodes: [
    #                   {
    #                     node_role: "NonEmptyString",
    #                     private_ip_address: "NonEmptyString",
    #                     public_ip_address: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_parameter_groups: [
    #                   {
    #                     cluster_parameter_status_list: [
    #                       {
    #                         parameter_name: "NonEmptyString",
    #                         parameter_apply_status: "NonEmptyString",
    #                         parameter_apply_error_description: "NonEmptyString"
    #                       }
    #                     ],
    #                     parameter_apply_status: "NonEmptyString",
    #                     parameter_group_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_public_key: "NonEmptyString",
    #                 cluster_revision_number: "NonEmptyString",
    #                 cluster_security_groups: [
    #                   {
    #                     cluster_security_group_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_snapshot_copy_status: {
    #                   destination_region: "NonEmptyString",
    #                   manual_snapshot_retention_period: 1,
    #                   retention_period: 1,
    #                   snapshot_copy_grant_name: "NonEmptyString"
    #                 },
    #                 cluster_status: "NonEmptyString",
    #                 cluster_subnet_group_name: "NonEmptyString",
    #                 cluster_version: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deferred_maintenance_windows: [
    #                   {
    #                     defer_maintenance_end_time: "NonEmptyString",
    #                     defer_maintenance_identifier: "NonEmptyString",
    #                     defer_maintenance_start_time: "NonEmptyString"
    #                   }
    #                 ],
    #                 elastic_ip_status: {
    #                   elastic_ip: "NonEmptyString",
    #                   status: "NonEmptyString"
    #                 },
    #                 elastic_resize_number_of_node_options: "NonEmptyString",
    #                 encrypted: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1
    #                 },
    #                 enhanced_vpc_routing: false,
    #                 expected_next_snapshot_schedule_time: "NonEmptyString",
    #                 expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #                 hsm_status: {
    #                   hsm_client_certificate_identifier: "NonEmptyString",
    #                   hsm_configuration_identifier: "NonEmptyString",
    #                   status: "NonEmptyString"
    #                 },
    #                 iam_roles: [
    #                   {
    #                     apply_status: "NonEmptyString",
    #                     iam_role_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 kms_key_id: "NonEmptyString",
    #                 maintenance_track_name: "NonEmptyString",
    #                 manual_snapshot_retention_period: 1,
    #                 master_username: "NonEmptyString",
    #                 next_maintenance_window_start_time: "NonEmptyString",
    #                 node_type: "NonEmptyString",
    #                 number_of_nodes: 1,
    #                 pending_actions: ["NonEmptyString"],
    #                 pending_modified_values: {
    #                   automated_snapshot_retention_period: 1,
    #                   cluster_identifier: "NonEmptyString",
    #                   cluster_type: "NonEmptyString",
    #                   cluster_version: "NonEmptyString",
    #                   encryption_type: "NonEmptyString",
    #                   enhanced_vpc_routing: false,
    #                   maintenance_track_name: "NonEmptyString",
    #                   master_user_password: "NonEmptyString",
    #                   node_type: "NonEmptyString",
    #                   number_of_nodes: 1,
    #                   publicly_accessible: false
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 resize_info: {
    #                   allow_cancel_resize: false,
    #                   resize_type: "NonEmptyString"
    #                 },
    #                 restore_status: {
    #                   current_restore_rate_in_mega_bytes_per_second: 1.0,
    #                   elapsed_time_in_seconds: 1,
    #                   estimated_time_to_completion_in_seconds: 1,
    #                   progress_in_mega_bytes: 1,
    #                   snapshot_size_in_mega_bytes: 1,
    #                   status: "NonEmptyString"
    #                 },
    #                 snapshot_schedule_identifier: "NonEmptyString",
    #                 snapshot_schedule_state: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     status: "NonEmptyString",
    #                     vpc_security_group_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 logging_status: {
    #                   bucket_name: "NonEmptyString",
    #                   last_failure_message: "NonEmptyString",
    #                   last_failure_time: "NonEmptyString",
    #                   last_successful_delivery_time: "NonEmptyString",
    #                   logging_enabled: false,
    #                   s3_key_prefix: "NonEmptyString"
    #                 }
    #               },
    #               aws_elb_load_balancer: {
    #                 availability_zones: ["NonEmptyString"],
    #                 backend_server_descriptions: [
    #                   {
    #                     instance_port: 1,
    #                     policy_names: ["NonEmptyString"]
    #                   }
    #                 ],
    #                 canonical_hosted_zone_name: "NonEmptyString",
    #                 canonical_hosted_zone_name_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 health_check: {
    #                   healthy_threshold: 1,
    #                   interval: 1,
    #                   target: "NonEmptyString",
    #                   timeout: 1,
    #                   unhealthy_threshold: 1
    #                 },
    #                 instances: [
    #                   {
    #                     instance_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 listener_descriptions: [
    #                   {
    #                     listener: {
    #                       instance_port: 1,
    #                       instance_protocol: "NonEmptyString",
    #                       load_balancer_port: 1,
    #                       protocol: "NonEmptyString",
    #                       ssl_certificate_id: "NonEmptyString"
    #                     },
    #                     policy_names: ["NonEmptyString"]
    #                   }
    #                 ],
    #                 load_balancer_attributes: {
    #                   access_log: {
    #                     emit_interval: 1,
    #                     enabled: false,
    #                     s3_bucket_name: "NonEmptyString",
    #                     s3_bucket_prefix: "NonEmptyString"
    #                   },
    #                   connection_draining: {
    #                     enabled: false,
    #                     timeout: 1
    #                   },
    #                   connection_settings: {
    #                     idle_timeout: 1
    #                   },
    #                   cross_zone_load_balancing: {
    #                     enabled: false
    #                   },
    #                   additional_attributes: [
    #                     {
    #                       key: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 load_balancer_name: "NonEmptyString",
    #                 policies: {
    #                   app_cookie_stickiness_policies: [
    #                     {
    #                       cookie_name: "NonEmptyString",
    #                       policy_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   lb_cookie_stickiness_policies: [
    #                     {
    #                       cookie_expiration_period: 1,
    #                       policy_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   other_policies: ["NonEmptyString"]
    #                 },
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 source_security_group: {
    #                   group_name: "NonEmptyString",
    #                   owner_alias: "NonEmptyString"
    #                 },
    #                 subnets: ["NonEmptyString"],
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_iam_group: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 group_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 path: "NonEmptyString"
    #               },
    #               aws_iam_role: {
    #                 assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 instance_profile_list: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     create_date: "NonEmptyString",
    #                     instance_profile_id: "NonEmptyString",
    #                     instance_profile_name: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     roles: [
    #                       {
    #                         arn: "NonEmptyString",
    #                         assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                         create_date: "NonEmptyString",
    #                         path: "NonEmptyString",
    #                         role_id: "NonEmptyString",
    #                         role_name: "NonEmptyString"
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString"
    #                 },
    #                 role_id: "NonEmptyString",
    #                 role_name: "NonEmptyString",
    #                 role_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 max_session_duration: 1,
    #                 path: "NonEmptyString"
    #               },
    #               aws_kms_key: {
    #                 aws_account_id: "NonEmptyString",
    #                 creation_date: 1.0,
    #                 key_id: "NonEmptyString",
    #                 key_manager: "NonEmptyString",
    #                 key_state: "NonEmptyString",
    #                 origin: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 key_rotation_status: false
    #               },
    #               aws_lambda_function: {
    #                 code: {
    #                   s3_bucket: "NonEmptyString",
    #                   s3_key: "NonEmptyString",
    #                   s3_object_version: "NonEmptyString",
    #                   zip_file: "NonEmptyString"
    #                 },
    #                 code_sha256: "NonEmptyString",
    #                 dead_letter_config: {
    #                   target_arn: "NonEmptyString"
    #                 },
    #                 environment: {
    #                   variables: {
    #                     "NonEmptyString" => "NonEmptyString"
    #                   },
    #                   error: {
    #                     error_code: "NonEmptyString",
    #                     message: "NonEmptyString"
    #                   }
    #                 },
    #                 function_name: "NonEmptyString",
    #                 handler: "NonEmptyString",
    #                 kms_key_arn: "NonEmptyString",
    #                 last_modified: "NonEmptyString",
    #                 layers: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     code_size: 1
    #                   }
    #                 ],
    #                 master_arn: "NonEmptyString",
    #                 memory_size: 1,
    #                 revision_id: "NonEmptyString",
    #                 role: "NonEmptyString",
    #                 runtime: "NonEmptyString",
    #                 timeout: 1,
    #                 tracing_config: {
    #                   mode: "NonEmptyString"
    #                 },
    #                 vpc_config: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString"
    #                 },
    #                 version: "NonEmptyString",
    #                 architectures: ["NonEmptyString"],
    #                 package_type: "NonEmptyString"
    #               },
    #               aws_lambda_layer_version: {
    #                 version: 1,
    #                 compatible_runtimes: ["NonEmptyString"],
    #                 created_date: "NonEmptyString"
    #               },
    #               aws_rds_db_instance: {
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     feature_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 ca_certificate_identifier: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 db_instance_class: "NonEmptyString",
    #                 db_instance_port: 1,
    #                 dbi_resource_id: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deletion_protection: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString"
    #                 },
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 instance_create_time: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 storage_encrypted: false,
    #                 tde_credential_arn: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 multi_az: false,
    #                 enhanced_monitoring_resource_arn: "NonEmptyString",
    #                 db_instance_status: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 preferred_backup_window: "NonEmptyString",
    #                 backup_retention_period: 1,
    #                 db_security_groups: ["NonEmptyString"],
    #                 db_parameter_groups: [
    #                   {
    #                     db_parameter_group_name: "NonEmptyString",
    #                     parameter_apply_status: "NonEmptyString"
    #                   }
    #                 ],
    #                 availability_zone: "NonEmptyString",
    #                 db_subnet_group: {
    #                   db_subnet_group_name: "NonEmptyString",
    #                   db_subnet_group_description: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   subnet_group_status: "NonEmptyString",
    #                   subnets: [
    #                     {
    #                       subnet_identifier: "NonEmptyString",
    #                       subnet_availability_zone: {
    #                         name: "NonEmptyString"
    #                       },
    #                       subnet_status: "NonEmptyString"
    #                     }
    #                   ],
    #                   db_subnet_group_arn: "NonEmptyString"
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 pending_modified_values: {
    #                   db_instance_class: "NonEmptyString",
    #                   allocated_storage: 1,
    #                   master_user_password: "NonEmptyString",
    #                   port: 1,
    #                   backup_retention_period: 1,
    #                   multi_az: false,
    #                   engine_version: "NonEmptyString",
    #                   license_model: "NonEmptyString",
    #                   iops: 1,
    #                   db_instance_identifier: "NonEmptyString",
    #                   storage_type: "NonEmptyString",
    #                   ca_certificate_identifier: "NonEmptyString",
    #                   db_subnet_group_name: "NonEmptyString",
    #                   pending_cloud_watch_logs_exports: {
    #                     log_types_to_enable: ["NonEmptyString"],
    #                     log_types_to_disable: ["NonEmptyString"]
    #                   },
    #                   processor_features: [
    #                     {
    #                       name: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 latest_restorable_time: "NonEmptyString",
    #                 auto_minor_version_upgrade: false,
    #                 read_replica_source_db_instance_identifier: "NonEmptyString",
    #                 read_replica_db_instance_identifiers: ["NonEmptyString"],
    #                 read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #                 license_model: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_memberships: [
    #                   {
    #                     option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 character_set_name: "NonEmptyString",
    #                 secondary_availability_zone: "NonEmptyString",
    #                 status_infos: [
    #                   {
    #                     status_type: "NonEmptyString",
    #                     normal: false,
    #                     status: "NonEmptyString",
    #                     message: "NonEmptyString"
    #                   }
    #                 ],
    #                 storage_type: "NonEmptyString",
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 copy_tags_to_snapshot: false,
    #                 monitoring_interval: 1,
    #                 monitoring_role_arn: "NonEmptyString",
    #                 promotion_tier: 1,
    #                 timezone: "NonEmptyString",
    #                 performance_insights_enabled: false,
    #                 performance_insights_kms_key_id: "NonEmptyString",
    #                 performance_insights_retention_period: 1,
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 listener_endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString"
    #                 },
    #                 max_allocated_storage: 1
    #               },
    #               aws_sns_topic: {
    #                 kms_master_key_id: "NonEmptyString",
    #                 subscription: [
    #                   {
    #                     endpoint: "NonEmptyString",
    #                     protocol: "NonEmptyString"
    #                   }
    #                 ],
    #                 topic_name: "NonEmptyString",
    #                 owner: "NonEmptyString",
    #                 sqs_success_feedback_role_arn: "NonEmptyString",
    #                 sqs_failure_feedback_role_arn: "NonEmptyString",
    #                 application_success_feedback_role_arn: "NonEmptyString",
    #                 firehose_success_feedback_role_arn: "NonEmptyString",
    #                 firehose_failure_feedback_role_arn: "NonEmptyString",
    #                 http_success_feedback_role_arn: "NonEmptyString",
    #                 http_failure_feedback_role_arn: "NonEmptyString"
    #               },
    #               aws_sqs_queue: {
    #                 kms_data_key_reuse_period_seconds: 1,
    #                 kms_master_key_id: "NonEmptyString",
    #                 queue_name: "NonEmptyString",
    #                 dead_letter_target_arn: "NonEmptyString"
    #               },
    #               aws_waf_web_acl: {
    #                 name: "NonEmptyString",
    #                 default_action: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     excluded_rules: [
    #                       {
    #                         rule_id: "NonEmptyString"
    #                       }
    #                     ],
    #                     override_action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 web_acl_id: "NonEmptyString"
    #               },
    #               aws_rds_db_snapshot: {
    #                 db_snapshot_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 availability_zone: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 instance_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_name: "NonEmptyString",
    #                 percent_progress: 1,
    #                 source_region: "NonEmptyString",
    #                 source_db_snapshot_identifier: "NonEmptyString",
    #                 storage_type: "NonEmptyString",
    #                 tde_credential_arn: "NonEmptyString",
    #                 encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 timezone: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 dbi_resource_id: "NonEmptyString"
    #               },
    #               aws_rds_db_cluster_snapshot: {
    #                 availability_zones: ["NonEmptyString"],
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 vpc_id: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 percent_progress: 1,
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_snapshot_identifier: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 db_cluster_snapshot_attributes: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     attribute_values: ["NonEmptyString"]
    #                   }
    #                 ]
    #               },
    #               aws_rds_db_cluster: {
    #                 allocated_storage: 1,
    #                 availability_zones: ["NonEmptyString"],
    #                 backup_retention_period: 1,
    #                 database_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 reader_endpoint: "NonEmptyString",
    #                 custom_endpoints: ["NonEmptyString"],
    #                 multi_az: false,
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 port: 1,
    #                 master_username: "NonEmptyString",
    #                 preferred_backup_window: "NonEmptyString",
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 read_replica_identifiers: ["NonEmptyString"],
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 hosted_zone_id: "NonEmptyString",
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_resource_id: "NonEmptyString",
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 cluster_create_time: "NonEmptyString",
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 engine_mode: "NonEmptyString",
    #                 deletion_protection: false,
    #                 http_endpoint_enabled: false,
    #                 activity_stream_status: "NonEmptyString",
    #                 copy_tags_to_snapshot: false,
    #                 cross_account_clone: false,
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 db_cluster_parameter_group: "NonEmptyString",
    #                 db_subnet_group: "NonEmptyString",
    #                 db_cluster_option_group_memberships: [
    #                   {
    #                     db_cluster_option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_members: [
    #                   {
    #                     is_cluster_writer: false,
    #                     promotion_tier: 1,
    #                     db_instance_identifier: "NonEmptyString",
    #                     db_cluster_parameter_group_status: "NonEmptyString"
    #                   }
    #                 ],
    #                 iam_database_authentication_enabled: false,
    #                 auto_minor_version_upgrade: false
    #               },
    #               aws_ecs_cluster: {
    #                 cluster_arn: "NonEmptyString",
    #                 active_services_count: 1,
    #                 capacity_providers: ["NonEmptyString"],
    #                 cluster_settings: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 configuration: {
    #                   execute_command_configuration: {
    #                     kms_key_id: "NonEmptyString",
    #                     log_configuration: {
    #                       cloud_watch_encryption_enabled: false,
    #                       cloud_watch_log_group_name: "NonEmptyString",
    #                       s3_bucket_name: "NonEmptyString",
    #                       s3_encryption_enabled: false,
    #                       s3_key_prefix: "NonEmptyString"
    #                     },
    #                     logging: "NonEmptyString"
    #                   }
    #                 },
    #                 default_capacity_provider_strategy: [
    #                   {
    #                     base: 1,
    #                     capacity_provider: "NonEmptyString",
    #                     weight: 1
    #                   }
    #                 ],
    #                 cluster_name: "NonEmptyString",
    #                 registered_container_instances_count: 1,
    #                 running_tasks_count: 1,
    #                 status: "NonEmptyString"
    #               },
    #               aws_ecs_container: {
    #                 name: "NonEmptyString",
    #                 image: "NonEmptyString",
    #                 mount_points: [
    #                   {
    #                     source_volume: "NonEmptyString",
    #                     container_path: "NonEmptyString"
    #                   }
    #                 ],
    #                 privileged: false
    #               },
    #               aws_ecs_task_definition: {
    #                 container_definitions: [
    #                   {
    #                     command: ["NonEmptyString"],
    #                     cpu: 1,
    #                     depends_on: [
    #                       {
    #                         condition: "NonEmptyString",
    #                         container_name: "NonEmptyString"
    #                       }
    #                     ],
    #                     disable_networking: false,
    #                     dns_search_domains: ["NonEmptyString"],
    #                     dns_servers: ["NonEmptyString"],
    #                     docker_labels: {
    #                       "NonEmptyString" => "NonEmptyString"
    #                     },
    #                     docker_security_options: ["NonEmptyString"],
    #                     entry_point: ["NonEmptyString"],
    #                     environment: [
    #                       {
    #                         name: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     environment_files: [
    #                       {
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     essential: false,
    #                     extra_hosts: [
    #                       {
    #                         hostname: "NonEmptyString",
    #                         ip_address: "NonEmptyString"
    #                       }
    #                     ],
    #                     firelens_configuration: {
    #                       options: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       type: "NonEmptyString"
    #                     },
    #                     health_check: {
    #                       command: ["NonEmptyString"],
    #                       interval: 1,
    #                       retries: 1,
    #                       start_period: 1,
    #                       timeout: 1
    #                     },
    #                     hostname: "NonEmptyString",
    #                     image: "NonEmptyString",
    #                     interactive: false,
    #                     links: ["NonEmptyString"],
    #                     linux_parameters: {
    #                       capabilities: {
    #                         add: ["NonEmptyString"],
    #                         drop: ["NonEmptyString"]
    #                       },
    #                       devices: [
    #                         {
    #                           container_path: "NonEmptyString",
    #                           host_path: "NonEmptyString",
    #                           permissions: ["NonEmptyString"]
    #                         }
    #                       ],
    #                       init_process_enabled: false,
    #                       max_swap: 1,
    #                       shared_memory_size: 1,
    #                       swappiness: 1,
    #                       tmpfs: [
    #                         {
    #                           container_path: "NonEmptyString",
    #                           mount_options: ["NonEmptyString"],
    #                           size: 1
    #                         }
    #                       ]
    #                     },
    #                     log_configuration: {
    #                       log_driver: "NonEmptyString",
    #                       options: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       secret_options: [
    #                         {
    #                           name: "NonEmptyString",
    #                           value_from: "NonEmptyString"
    #                         }
    #                       ]
    #                     },
    #                     memory: 1,
    #                     memory_reservation: 1,
    #                     mount_points: [
    #                       {
    #                         container_path: "NonEmptyString",
    #                         read_only: false,
    #                         source_volume: "NonEmptyString"
    #                       }
    #                     ],
    #                     name: "NonEmptyString",
    #                     port_mappings: [
    #                       {
    #                         container_port: 1,
    #                         host_port: 1,
    #                         protocol: "NonEmptyString"
    #                       }
    #                     ],
    #                     privileged: false,
    #                     pseudo_terminal: false,
    #                     readonly_root_filesystem: false,
    #                     repository_credentials: {
    #                       credentials_parameter: "NonEmptyString"
    #                     },
    #                     resource_requirements: [
    #                       {
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     secrets: [
    #                       {
    #                         name: "NonEmptyString",
    #                         value_from: "NonEmptyString"
    #                       }
    #                     ],
    #                     start_timeout: 1,
    #                     stop_timeout: 1,
    #                     system_controls: [
    #                       {
    #                         namespace: "NonEmptyString",
    #                         value: "NonEmptyString"
    #                       }
    #                     ],
    #                     ulimits: [
    #                       {
    #                         hard_limit: 1,
    #                         name: "NonEmptyString",
    #                         soft_limit: 1
    #                       }
    #                     ],
    #                     user: "NonEmptyString",
    #                     volumes_from: [
    #                       {
    #                         read_only: false,
    #                         source_container: "NonEmptyString"
    #                       }
    #                     ],
    #                     working_directory: "NonEmptyString"
    #                   }
    #                 ],
    #                 cpu: "NonEmptyString",
    #                 execution_role_arn: "NonEmptyString",
    #                 family: "NonEmptyString",
    #                 inference_accelerators: [
    #                   {
    #                     device_name: "NonEmptyString",
    #                     device_type: "NonEmptyString"
    #                   }
    #                 ],
    #                 ipc_mode: "NonEmptyString",
    #                 memory: "NonEmptyString",
    #                 network_mode: "NonEmptyString",
    #                 pid_mode: "NonEmptyString",
    #                 placement_constraints: [
    #                   {
    #                     expression: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 proxy_configuration: {
    #                   container_name: "NonEmptyString",
    #                   proxy_configuration_properties: [
    #                     {
    #                       name: "NonEmptyString",
    #                       value: "NonEmptyString"
    #                     }
    #                   ],
    #                   type: "NonEmptyString"
    #                 },
    #                 requires_compatibilities: ["NonEmptyString"],
    #                 task_role_arn: "NonEmptyString",
    #                 volumes: [
    #                   {
    #                     docker_volume_configuration: {
    #                       autoprovision: false,
    #                       driver: "NonEmptyString",
    #                       driver_opts: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       labels: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       scope: "NonEmptyString"
    #                     },
    #                     efs_volume_configuration: {
    #                       authorization_config: {
    #                         access_point_id: "NonEmptyString",
    #                         iam: "NonEmptyString"
    #                       },
    #                       filesystem_id: "NonEmptyString",
    #                       root_directory: "NonEmptyString",
    #                       transit_encryption: "NonEmptyString",
    #                       transit_encryption_port: 1
    #                     },
    #                     host: {
    #                       source_path: "NonEmptyString"
    #                     },
    #                     name: "NonEmptyString"
    #                   }
    #                 ],
    #                 status: "NonEmptyString"
    #               },
    #               container: {
    #                 container_runtime: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 image_name: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #                 volume_mounts: [
    #                   {
    #                     name: "NonEmptyString",
    #                     mount_path: "NonEmptyString"
    #                   }
    #                 ],
    #                 privileged: false
    #               },
    #               other: {
    #                 "NonEmptyString" => "NonEmptyString"
    #               },
    #               aws_rds_event_subscription: {
    #                 cust_subscription_id: "NonEmptyString",
    #                 customer_aws_id: "NonEmptyString",
    #                 enabled: false,
    #                 event_categories_list: ["NonEmptyString"],
    #                 event_subscription_arn: "NonEmptyString",
    #                 sns_topic_arn: "NonEmptyString",
    #                 source_ids_list: ["NonEmptyString"],
    #                 source_type: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 subscription_creation_time: "NonEmptyString"
    #               },
    #               aws_ecs_service: {
    #                 capacity_provider_strategy: [
    #                   {
    #                     base: 1,
    #                     capacity_provider: "NonEmptyString",
    #                     weight: 1
    #                   }
    #                 ],
    #                 cluster: "NonEmptyString",
    #                 deployment_configuration: {
    #                   deployment_circuit_breaker: {
    #                     enable: false,
    #                     rollback: false
    #                   },
    #                   maximum_percent: 1,
    #                   minimum_healthy_percent: 1
    #                 },
    #                 deployment_controller: {
    #                   type: "NonEmptyString"
    #                 },
    #                 desired_count: 1,
    #                 enable_ecs_managed_tags: false,
    #                 enable_execute_command: false,
    #                 health_check_grace_period_seconds: 1,
    #                 launch_type: "NonEmptyString",
    #                 load_balancers: [
    #                   {
    #                     container_name: "NonEmptyString",
    #                     container_port: 1,
    #                     load_balancer_name: "NonEmptyString",
    #                     target_group_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 name: "NonEmptyString",
    #                 network_configuration: {
    #                   aws_vpc_configuration: {
    #                     assign_public_ip: "NonEmptyString",
    #                     security_groups: ["NonEmptyString"],
    #                     subnets: ["NonEmptyString"]
    #                   }
    #                 },
    #                 placement_constraints: [
    #                   {
    #                     expression: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 placement_strategies: [
    #                   {
    #                     field: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 platform_version: "NonEmptyString",
    #                 propagate_tags: "NonEmptyString",
    #                 role: "NonEmptyString",
    #                 scheduling_strategy: "NonEmptyString",
    #                 service_arn: "NonEmptyString",
    #                 service_name: "NonEmptyString",
    #                 service_registries: [
    #                   {
    #                     container_name: "NonEmptyString",
    #                     container_port: 1,
    #                     port: 1,
    #                     registry_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 task_definition: "NonEmptyString"
    #               },
    #               aws_auto_scaling_launch_configuration: {
    #                 associate_public_ip_address: false,
    #                 block_device_mappings: [
    #                   {
    #                     device_name: "NonEmptyString",
    #                     ebs: {
    #                       delete_on_termination: false,
    #                       encrypted: false,
    #                       iops: 1,
    #                       snapshot_id: "NonEmptyString",
    #                       volume_size: 1,
    #                       volume_type: "NonEmptyString"
    #                     },
    #                     no_device: false,
    #                     virtual_name: "NonEmptyString"
    #                   }
    #                 ],
    #                 classic_link_vpc_id: "NonEmptyString",
    #                 classic_link_vpc_security_groups: ["NonEmptyString"],
    #                 created_time: "NonEmptyString",
    #                 ebs_optimized: false,
    #                 iam_instance_profile: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 instance_monitoring: {
    #                   enabled: false
    #                 },
    #                 instance_type: "NonEmptyString",
    #                 kernel_id: "NonEmptyString",
    #                 key_name: "NonEmptyString",
    #                 launch_configuration_name: "NonEmptyString",
    #                 placement_tenancy: "NonEmptyString",
    #                 ramdisk_id: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 spot_price: "NonEmptyString",
    #                 user_data: "NonEmptyString",
    #                 metadata_options: {
    #                   http_endpoint: "NonEmptyString",
    #                   http_put_response_hop_limit: 1,
    #                   http_tokens: "NonEmptyString"
    #                 }
    #               },
    #               aws_ec2_vpn_connection: {
    #                 vpn_connection_id: "NonEmptyString",
    #                 state: "NonEmptyString",
    #                 customer_gateway_id: "NonEmptyString",
    #                 customer_gateway_configuration: "NonEmptyString",
    #                 type: "NonEmptyString",
    #                 vpn_gateway_id: "NonEmptyString",
    #                 category: "NonEmptyString",
    #                 vgw_telemetry: [
    #                   {
    #                     accepted_route_count: 1,
    #                     certificate_arn: "NonEmptyString",
    #                     last_status_change: "NonEmptyString",
    #                     outside_ip_address: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     status_message: "NonEmptyString"
    #                   }
    #                 ],
    #                 options: {
    #                   static_routes_only: false,
    #                   tunnel_options: [
    #                     {
    #                       dpd_timeout_seconds: 1,
    #                       ike_versions: ["NonEmptyString"],
    #                       outside_ip_address: "NonEmptyString",
    #                       phase1_dh_group_numbers: [1],
    #                       phase1_encryption_algorithms: ["NonEmptyString"],
    #                       phase1_integrity_algorithms: ["NonEmptyString"],
    #                       phase1_lifetime_seconds: 1,
    #                       phase2_dh_group_numbers: [1],
    #                       phase2_encryption_algorithms: ["NonEmptyString"],
    #                       phase2_integrity_algorithms: ["NonEmptyString"],
    #                       phase2_lifetime_seconds: 1,
    #                       pre_shared_key: "NonEmptyString",
    #                       rekey_fuzz_percentage: 1,
    #                       rekey_margin_time_seconds: 1,
    #                       replay_window_size: 1,
    #                       tunnel_inside_cidr: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 routes: [
    #                   {
    #                     destination_cidr_block: "NonEmptyString",
    #                     state: "NonEmptyString"
    #                   }
    #                 ],
    #                 transit_gateway_id: "NonEmptyString"
    #               },
    #               aws_ecr_container_image: {
    #                 registry_id: "NonEmptyString",
    #                 repository_name: "NonEmptyString",
    #                 architecture: "NonEmptyString",
    #                 image_digest: "NonEmptyString",
    #                 image_tags: ["NonEmptyString"],
    #                 image_published_at: "NonEmptyString"
    #               },
    #               aws_open_search_service_domain: {
    #                 arn: "NonEmptyString",
    #                 access_policies: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 domain_endpoint: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: "NonEmptyString"
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false
    #                 },
    #                 service_software_options: {
    #                   automated_update_date: "NonEmptyString",
    #                   cancellable: false,
    #                   current_version: "NonEmptyString",
    #                   description: "NonEmptyString",
    #                   new_version: "NonEmptyString",
    #                   update_available: false,
    #                   update_status: "NonEmptyString",
    #                   optional_deployment: false
    #                 },
    #                 cluster_config: {
    #                   instance_count: 1,
    #                   warm_enabled: false,
    #                   warm_count: 1,
    #                   dedicated_master_enabled: false,
    #                   zone_awareness_config: {
    #                     availability_zone_count: 1
    #                   },
    #                   dedicated_master_count: 1,
    #                   instance_type: "NonEmptyString",
    #                   warm_type: "NonEmptyString",
    #                   zone_awareness_enabled: false,
    #                   dedicated_master_type: "NonEmptyString"
    #                 },
    #                 domain_endpoint_options: {
    #                   custom_endpoint_certificate_arn: "NonEmptyString",
    #                   custom_endpoint_enabled: false,
    #                   enforce_https: false,
    #                   custom_endpoint: "NonEmptyString",
    #                   tls_security_policy: "NonEmptyString"
    #                 },
    #                 vpc_options: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"]
    #                 },
    #                 log_publishing_options: {
    #                   index_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   search_slow_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   },
    #                   audit_logs: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     enabled: false
    #                   }
    #                 },
    #                 domain_endpoints: {
    #                   "NonEmptyString" => "NonEmptyString"
    #                 },
    #                 advanced_security_options: {
    #                   enabled: false,
    #                   internal_user_database_enabled: false,
    #                   master_user_options: {
    #                     master_user_arn: "NonEmptyString",
    #                     master_user_name: "NonEmptyString",
    #                     master_user_password: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_ec2_vpc_endpoint_service: {
    #                 acceptance_required: false,
    #                 availability_zones: ["NonEmptyString"],
    #                 base_endpoint_dns_names: ["NonEmptyString"],
    #                 manages_vpc_endpoints: false,
    #                 gateway_load_balancer_arns: ["NonEmptyString"],
    #                 network_load_balancer_arns: ["NonEmptyString"],
    #                 private_dns_name: "NonEmptyString",
    #                 service_id: "NonEmptyString",
    #                 service_name: "NonEmptyString",
    #                 service_state: "NonEmptyString",
    #                 service_type: [
    #                   {
    #                     service_type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_xray_encryption_config: {
    #                 key_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 type: "NonEmptyString"
    #               },
    #               aws_waf_rate_based_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rate_key: "NonEmptyString",
    #                 rate_limit: 1,
    #                 rule_id: "NonEmptyString",
    #                 match_predicates: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_waf_regional_rate_based_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rate_key: "NonEmptyString",
    #                 rate_limit: 1,
    #                 rule_id: "NonEmptyString",
    #                 match_predicates: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_ecr_repository: {
    #                 arn: "NonEmptyString",
    #                 image_scanning_configuration: {
    #                   scan_on_push: false
    #                 },
    #                 image_tag_mutability: "NonEmptyString",
    #                 lifecycle_policy: {
    #                   lifecycle_policy_text: "NonEmptyString",
    #                   registry_id: "NonEmptyString"
    #                 },
    #                 repository_name: "NonEmptyString",
    #                 repository_policy_text: "NonEmptyString"
    #               },
    #               aws_eks_cluster: {
    #                 arn: "NonEmptyString",
    #                 certificate_authority_data: "NonEmptyString",
    #                 cluster_status: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 resources_vpc_config: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   endpoint_public_access: false
    #                 },
    #                 role_arn: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 logging: {
    #                   cluster_logging: [
    #                     {
    #                       enabled: false,
    #                       types: ["NonEmptyString"]
    #                     }
    #                   ]
    #                 }
    #               },
    #               aws_network_firewall_firewall_policy: {
    #                 firewall_policy: {
    #                   stateful_rule_group_references: [
    #                     {
    #                       resource_arn: "NonEmptyString"
    #                     }
    #                   ],
    #                   stateless_custom_actions: [
    #                     {
    #                       action_definition: {
    #                         publish_metric_action: {
    #                           dimensions: [
    #                             {
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       action_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   stateless_default_actions: ["NonEmptyString"],
    #                   stateless_fragment_default_actions: ["NonEmptyString"],
    #                   stateless_rule_group_references: [
    #                     {
    #                       priority: 1,
    #                       resource_arn: "NonEmptyString"
    #                     }
    #                   ]
    #                 },
    #                 firewall_policy_arn: "NonEmptyString",
    #                 firewall_policy_id: "NonEmptyString",
    #                 firewall_policy_name: "NonEmptyString",
    #                 description: "NonEmptyString"
    #               },
    #               aws_network_firewall_firewall: {
    #                 delete_protection: false,
    #                 description: "NonEmptyString",
    #                 firewall_arn: "NonEmptyString",
    #                 firewall_id: "NonEmptyString",
    #                 firewall_name: "NonEmptyString",
    #                 firewall_policy_arn: "NonEmptyString",
    #                 firewall_policy_change_protection: false,
    #                 subnet_change_protection: false,
    #                 subnet_mappings: [
    #                   {
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_network_firewall_rule_group: {
    #                 capacity: 1,
    #                 description: "NonEmptyString",
    #                 rule_group: {
    #                   rule_variables: {
    #                     ip_sets: {
    #                       definition: ["NonEmptyString"]
    #                     },
    #                     port_sets: {
    #                       definition: ["NonEmptyString"]
    #                     }
    #                   },
    #                   rules_source: {
    #                     rules_source_list: {
    #                       generated_rules_type: "NonEmptyString",
    #                       target_types: ["NonEmptyString"],
    #                       targets: ["NonEmptyString"]
    #                     },
    #                     rules_string: "NonEmptyString",
    #                     stateful_rules: [
    #                       {
    #                         action: "NonEmptyString",
    #                         header: {
    #                           destination: "NonEmptyString",
    #                           destination_port: "NonEmptyString",
    #                           direction: "NonEmptyString",
    #                           protocol: "NonEmptyString",
    #                           source: "NonEmptyString",
    #                           source_port: "NonEmptyString"
    #                         },
    #                         rule_options: [
    #                           {
    #                             keyword: "NonEmptyString",
    #                             settings: ["NonEmptyString"]
    #                           }
    #                         ]
    #                       }
    #                     ],
    #                     stateless_rules_and_custom_actions: {
    #                       custom_actions: [
    #                         {
    #                           action_definition: {
    #                             publish_metric_action: {
    #                               dimensions: [
    #                                 {
    #                                   value: "NonEmptyString"
    #                                 }
    #                               ]
    #                             }
    #                           },
    #                           action_name: "NonEmptyString"
    #                         }
    #                       ],
    #                       stateless_rules: [
    #                         {
    #                           priority: 1,
    #                           rule_definition: {
    #                             actions: ["NonEmptyString"],
    #                             match_attributes: {
    #                               destination_ports: [
    #                                 {
    #                                   from_port: 1,
    #                                   to_port: 1
    #                                 }
    #                               ],
    #                               destinations: [
    #                                 {
    #                                   address_definition: "NonEmptyString"
    #                                 }
    #                               ],
    #                               protocols: [1],
    #                               source_ports: [
    #                                 {
    #                                   from_port: 1,
    #                                   to_port: 1
    #                                 }
    #                               ],
    #                               sources: [
    #                                 {
    #                                   address_definition: "NonEmptyString"
    #                                 }
    #                               ],
    #                               tcp_flags: [
    #                                 {
    #                                   flags: ["NonEmptyString"],
    #                                   masks: ["NonEmptyString"]
    #                                 }
    #                               ]
    #                             }
    #                           }
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 },
    #                 rule_group_arn: "NonEmptyString",
    #                 rule_group_id: "NonEmptyString",
    #                 rule_group_name: "NonEmptyString",
    #                 type: "NonEmptyString"
    #               },
    #               aws_rds_db_security_group: {
    #                 db_security_group_arn: "NonEmptyString",
    #                 db_security_group_description: "NonEmptyString",
    #                 db_security_group_name: "NonEmptyString",
    #                 ec2_security_groups: [
    #                   {
    #                     ec2_security_group_id: "NonEmptyString",
    #                     ec2_security_group_name: "NonEmptyString",
    #                     ec2_security_group_owner_id: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 ip_ranges: [
    #                   {
    #                     cidr_ip: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_kinesis_stream: {
    #                 name: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 stream_encryption: {
    #                   encryption_type: "NonEmptyString",
    #                   key_id: "NonEmptyString"
    #                 },
    #                 shard_count: 1,
    #                 retention_period_hours: 1
    #               },
    #               aws_ec2_transit_gateway: {
    #                 id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 default_route_table_propagation: "NonEmptyString",
    #                 auto_accept_shared_attachments: "NonEmptyString",
    #                 default_route_table_association: "NonEmptyString",
    #                 transit_gateway_cidr_blocks: ["NonEmptyString"],
    #                 association_default_route_table_id: "NonEmptyString",
    #                 propagation_default_route_table_id: "NonEmptyString",
    #                 vpn_ecmp_support: "NonEmptyString",
    #                 dns_support: "NonEmptyString",
    #                 multicast_support: "NonEmptyString",
    #                 amazon_side_asn: 1
    #               },
    #               aws_efs_access_point: {
    #                 access_point_id: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 client_token: "NonEmptyString",
    #                 file_system_id: "NonEmptyString",
    #                 posix_user: {
    #                   gid: "NonEmptyString",
    #                   secondary_gids: ["NonEmptyString"],
    #                   uid: "NonEmptyString"
    #                 },
    #                 root_directory: {
    #                   creation_info: {
    #                     owner_gid: "NonEmptyString",
    #                     owner_uid: "NonEmptyString",
    #                     permissions: "NonEmptyString"
    #                   },
    #                   path: "NonEmptyString"
    #                 }
    #               },
    #               aws_cloud_formation_stack: {
    #                 capabilities: ["NonEmptyString"],
    #                 creation_time: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 disable_rollback: false,
    #                 drift_information: {
    #                   stack_drift_status: "NonEmptyString"
    #                 },
    #                 enable_termination_protection: false,
    #                 last_updated_time: "NonEmptyString",
    #                 notification_arns: ["NonEmptyString"],
    #                 outputs: [
    #                   {
    #                     description: "NonEmptyString",
    #                     output_key: "NonEmptyString",
    #                     output_value: "NonEmptyString"
    #                   }
    #                 ],
    #                 role_arn: "NonEmptyString",
    #                 stack_id: "NonEmptyString",
    #                 stack_name: "NonEmptyString",
    #                 stack_status: "NonEmptyString",
    #                 stack_status_reason: "NonEmptyString",
    #                 timeout_in_minutes: 1
    #               },
    #               aws_cloud_watch_alarm: {
    #                 actions_enabled: false,
    #                 alarm_actions: ["NonEmptyString"],
    #                 alarm_arn: "NonEmptyString",
    #                 alarm_configuration_updated_timestamp: "NonEmptyString",
    #                 alarm_description: "NonEmptyString",
    #                 alarm_name: "NonEmptyString",
    #                 comparison_operator: "NonEmptyString",
    #                 datapoints_to_alarm: 1,
    #                 dimensions: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString"
    #                   }
    #                 ],
    #                 evaluate_low_sample_count_percentile: "NonEmptyString",
    #                 evaluation_periods: 1,
    #                 extended_statistic: "NonEmptyString",
    #                 insufficient_data_actions: ["NonEmptyString"],
    #                 metric_name: "NonEmptyString",
    #                 namespace: "NonEmptyString",
    #                 ok_actions: ["NonEmptyString"],
    #                 period: 1,
    #                 statistic: "NonEmptyString",
    #                 threshold: 1.0,
    #                 threshold_metric_id: "NonEmptyString",
    #                 treat_missing_data: "NonEmptyString",
    #                 unit: "NonEmptyString"
    #               },
    #               aws_ec2_vpc_peering_connection: {
    #                 accepter_vpc_info: {
    #                   cidr_block: "NonEmptyString",
    #                   cidr_block_set: [
    #                     {
    #                       cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   ipv6_cidr_block_set: [
    #                     {
    #                       ipv6_cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   owner_id: "NonEmptyString",
    #                   peering_options: {
    #                     allow_dns_resolution_from_remote_vpc: false,
    #                     allow_egress_from_local_classic_link_to_remote_vpc: false,
    #                     allow_egress_from_local_vpc_to_remote_classic_link: false
    #                   },
    #                   region: "NonEmptyString",
    #                   vpc_id: "NonEmptyString"
    #                 },
    #                 expiration_time: "NonEmptyString",
    #                 requester_vpc_info: {
    #                   cidr_block: "NonEmptyString",
    #                   cidr_block_set: [
    #                     {
    #                       cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   ipv6_cidr_block_set: [
    #                     {
    #                       ipv6_cidr_block: "NonEmptyString"
    #                     }
    #                   ],
    #                   owner_id: "NonEmptyString",
    #                   peering_options: {
    #                     allow_dns_resolution_from_remote_vpc: false,
    #                     allow_egress_from_local_classic_link_to_remote_vpc: false,
    #                     allow_egress_from_local_vpc_to_remote_classic_link: false
    #                   },
    #                   region: "NonEmptyString",
    #                   vpc_id: "NonEmptyString"
    #                 },
    #                 status: {
    #                   code: "NonEmptyString",
    #                   message: "NonEmptyString"
    #                 },
    #                 vpc_peering_connection_id: "NonEmptyString"
    #               },
    #               aws_waf_regional_rule_group: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rule_group_id: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_waf_regional_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 predicate_list: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 rule_id: "NonEmptyString"
    #               },
    #               aws_waf_regional_web_acl: {
    #                 default_action: "NonEmptyString",
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rules_list: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     override_action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 web_acl_id: "NonEmptyString"
    #               },
    #               aws_waf_rule: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 predicate_list: [
    #                   {
    #                     data_id: "NonEmptyString",
    #                     negated: false,
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 rule_id: "NonEmptyString"
    #               },
    #               aws_waf_rule_group: {
    #                 metric_name: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 rule_group_id: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString"
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_ecs_task: {
    #                 cluster_arn: "NonEmptyString",
    #                 task_definition_arn: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 started_at: "NonEmptyString",
    #                 started_by: "NonEmptyString",
    #                 group: "NonEmptyString",
    #                 volumes: [
    #                   {
    #                     name: "NonEmptyString",
    #                     host: {
    #                       source_path: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 containers: [
    #                   {
    #                     name: "NonEmptyString",
    #                     image: "NonEmptyString",
    #                     mount_points: [
    #                       {
    #                         source_volume: "NonEmptyString",
    #                         container_path: "NonEmptyString"
    #                       }
    #                     ],
    #                     privileged: false
    #                   }
    #                 ]
    #               },
    #               aws_backup_backup_vault: {
    #                 backup_vault_arn: "NonEmptyString",
    #                 backup_vault_name: "NonEmptyString",
    #                 encryption_key_arn: "NonEmptyString",
    #                 notifications: {
    #                   backup_vault_events: ["NonEmptyString"],
    #                   sns_topic_arn: "NonEmptyString"
    #                 },
    #                 access_policy: "NonEmptyString"
    #               },
    #               aws_backup_backup_plan: {
    #                 backup_plan: {
    #                   backup_plan_name: "NonEmptyString",
    #                   advanced_backup_settings: [
    #                     {
    #                       backup_options: {
    #                         "NonEmptyString" => "NonEmptyString"
    #                       },
    #                       resource_type: "NonEmptyString"
    #                     }
    #                   ],
    #                   backup_plan_rule: [
    #                     {
    #                       target_backup_vault: "NonEmptyString",
    #                       start_window_minutes: 1,
    #                       schedule_expression: "NonEmptyString",
    #                       rule_name: "NonEmptyString",
    #                       rule_id: "NonEmptyString",
    #                       enable_continuous_backup: false,
    #                       completion_window_minutes: 1,
    #                       copy_actions: [
    #                         {
    #                           destination_backup_vault_arn: "NonEmptyString",
    #                           lifecycle: {
    #                             delete_after_days: 1,
    #                             move_to_cold_storage_after_days: 1
    #                           }
    #                         }
    #                       ],
    #                       lifecycle: {
    #                         delete_after_days: 1,
    #                         move_to_cold_storage_after_days: 1
    #                       }
    #                     }
    #                   ]
    #                 },
    #                 backup_plan_arn: "NonEmptyString",
    #                 backup_plan_id: "NonEmptyString",
    #                 version_id: "NonEmptyString"
    #               },
    #               aws_backup_recovery_point: {
    #                 backup_size_in_bytes: 1,
    #                 backup_vault_arn: "NonEmptyString",
    #                 backup_vault_name: "NonEmptyString",
    #                 calculated_lifecycle: {
    #                   delete_at: "NonEmptyString",
    #                   move_to_cold_storage_at: "NonEmptyString"
    #                 },
    #                 completion_date: "NonEmptyString",
    #                 created_by: {
    #                   backup_plan_arn: "NonEmptyString",
    #                   backup_plan_id: "NonEmptyString",
    #                   backup_plan_version: "NonEmptyString",
    #                   backup_rule_id: "NonEmptyString"
    #                 },
    #                 creation_date: "NonEmptyString",
    #                 encryption_key_arn: "NonEmptyString",
    #                 iam_role_arn: "NonEmptyString",
    #                 is_encrypted: false,
    #                 last_restore_time: "NonEmptyString",
    #                 lifecycle: {
    #                   delete_after_days: 1,
    #                   move_to_cold_storage_after_days: 1
    #                 },
    #                 recovery_point_arn: "NonEmptyString",
    #                 resource_arn: "NonEmptyString",
    #                 resource_type: "NonEmptyString",
    #                 source_backup_vault_arn: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 status_message: "NonEmptyString",
    #                 storage_class: "NonEmptyString"
    #               },
    #               aws_ec2_launch_template: {
    #                 launch_template_name: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 launch_template_data: {
    #                   block_device_mapping_set: [
    #                     {
    #                       device_name: "NonEmptyString",
    #                       ebs: {
    #                         delete_on_termination: false,
    #                         encrypted: false,
    #                         iops: 1,
    #                         kms_key_id: "NonEmptyString",
    #                         snapshot_id: "NonEmptyString",
    #                         throughput: 1,
    #                         volume_size: 1,
    #                         volume_type: "NonEmptyString"
    #                       },
    #                       no_device: "NonEmptyString",
    #                       virtual_name: "NonEmptyString"
    #                     }
    #                   ],
    #                   capacity_reservation_specification: {
    #                     capacity_reservation_preference: "NonEmptyString",
    #                     capacity_reservation_target: {
    #                       capacity_reservation_id: "NonEmptyString",
    #                       capacity_reservation_resource_group_arn: "NonEmptyString"
    #                     }
    #                   },
    #                   cpu_options: {
    #                     core_count: 1,
    #                     threads_per_core: 1
    #                   },
    #                   credit_specification: {
    #                     cpu_credits: "NonEmptyString"
    #                   },
    #                   disable_api_stop: false,
    #                   disable_api_termination: false,
    #                   ebs_optimized: false,
    #                   elastic_gpu_specification_set: [
    #                     {
    #                       type: "NonEmptyString"
    #                     }
    #                   ],
    #                   elastic_inference_accelerator_set: [
    #                     {
    #                       count: 1,
    #                       type: "NonEmptyString"
    #                     }
    #                   ],
    #                   enclave_options: {
    #                     enabled: false
    #                   },
    #                   hibernation_options: {
    #                     configured: false
    #                   },
    #                   iam_instance_profile: {
    #                     arn: "NonEmptyString",
    #                     name: "NonEmptyString"
    #                   },
    #                   image_id: "NonEmptyString",
    #                   instance_initiated_shutdown_behavior: "NonEmptyString",
    #                   instance_market_options: {
    #                     market_type: "NonEmptyString",
    #                     spot_options: {
    #                       block_duration_minutes: 1,
    #                       instance_interruption_behavior: "NonEmptyString",
    #                       max_price: "NonEmptyString",
    #                       spot_instance_type: "NonEmptyString",
    #                       valid_until: "NonEmptyString"
    #                     }
    #                   },
    #                   instance_requirements: {
    #                     accelerator_count: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     accelerator_manufacturers: ["NonEmptyString"],
    #                     accelerator_names: ["NonEmptyString"],
    #                     accelerator_total_memory_mi_b: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     accelerator_types: ["NonEmptyString"],
    #                     bare_metal: "NonEmptyString",
    #                     baseline_ebs_bandwidth_mbps: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     burstable_performance: "NonEmptyString",
    #                     cpu_manufacturers: ["NonEmptyString"],
    #                     excluded_instance_types: ["NonEmptyString"],
    #                     instance_generations: ["NonEmptyString"],
    #                     local_storage: "NonEmptyString",
    #                     local_storage_types: ["NonEmptyString"],
    #                     memory_gi_b_per_v_cpu: {
    #                       max: 1.0,
    #                       min: 1.0
    #                     },
    #                     memory_mi_b: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     network_interface_count: {
    #                       max: 1,
    #                       min: 1
    #                     },
    #                     on_demand_max_price_percentage_over_lowest_price: 1,
    #                     require_hibernate_support: false,
    #                     spot_max_price_percentage_over_lowest_price: 1,
    #                     total_local_storage_gb: {
    #                       max: 1.0,
    #                       min: 1.0
    #                     },
    #                     v_cpu_count: {
    #                       max: 1,
    #                       min: 1
    #                     }
    #                   },
    #                   instance_type: "NonEmptyString",
    #                   kernel_id: "NonEmptyString",
    #                   key_name: "NonEmptyString",
    #                   license_set: [
    #                     {
    #                       license_configuration_arn: "NonEmptyString"
    #                     }
    #                   ],
    #                   maintenance_options: {
    #                     auto_recovery: "NonEmptyString"
    #                   },
    #                   metadata_options: {
    #                     http_endpoint: "NonEmptyString",
    #                     http_protocol_ipv6: "NonEmptyString",
    #                     http_tokens: "NonEmptyString",
    #                     http_put_response_hop_limit: 1,
    #                     instance_metadata_tags: "NonEmptyString"
    #                   },
    #                   monitoring: {
    #                     enabled: false
    #                   },
    #                   network_interface_set: [
    #                     {
    #                       associate_carrier_ip_address: false,
    #                       associate_public_ip_address: false,
    #                       delete_on_termination: false,
    #                       description: "NonEmptyString",
    #                       device_index: 1,
    #                       groups: ["NonEmptyString"],
    #                       interface_type: "NonEmptyString",
    #                       ipv4_prefix_count: 1,
    #                       ipv4_prefixes: [
    #                         {
    #                           ipv4_prefix: "NonEmptyString"
    #                         }
    #                       ],
    #                       ipv6_address_count: 1,
    #                       ipv6_addresses: [
    #                         {
    #                           ipv6_address: "NonEmptyString"
    #                         }
    #                       ],
    #                       ipv6_prefix_count: 1,
    #                       ipv6_prefixes: [
    #                         {
    #                           ipv6_prefix: "NonEmptyString"
    #                         }
    #                       ],
    #                       network_card_index: 1,
    #                       network_interface_id: "NonEmptyString",
    #                       private_ip_address: "NonEmptyString",
    #                       private_ip_addresses: [
    #                         {
    #                           primary: false,
    #                           private_ip_address: "NonEmptyString"
    #                         }
    #                       ],
    #                       secondary_private_ip_address_count: 1,
    #                       subnet_id: "NonEmptyString"
    #                     }
    #                   ],
    #                   placement: {
    #                     affinity: "NonEmptyString",
    #                     availability_zone: "NonEmptyString",
    #                     group_name: "NonEmptyString",
    #                     host_id: "NonEmptyString",
    #                     host_resource_group_arn: "NonEmptyString",
    #                     partition_number: 1,
    #                     spread_domain: "NonEmptyString",
    #                     tenancy: "NonEmptyString"
    #                   },
    #                   private_dns_name_options: {
    #                     enable_resource_name_dns_aaaa_record: false,
    #                     enable_resource_name_dns_a_record: false,
    #                     hostname_type: "NonEmptyString"
    #                   },
    #                   ram_disk_id: "NonEmptyString",
    #                   security_group_id_set: ["NonEmptyString"],
    #                   security_group_set: ["NonEmptyString"],
    #                   user_data: "NonEmptyString"
    #                 },
    #                 default_version_number: 1,
    #                 latest_version_number: 1
    #               },
    #               aws_sage_maker_notebook_instance: {
    #                 accelerator_types: ["NonEmptyString"],
    #                 additional_code_repositories: ["NonEmptyString"],
    #                 default_code_repository: "NonEmptyString",
    #                 direct_internet_access: "NonEmptyString",
    #                 failure_reason: "NonEmptyString",
    #                 instance_metadata_service_configuration: {
    #                   minimum_instance_metadata_service_version: "NonEmptyString"
    #                 },
    #                 instance_type: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 network_interface_id: "NonEmptyString",
    #                 notebook_instance_arn: "NonEmptyString",
    #                 notebook_instance_lifecycle_config_name: "NonEmptyString",
    #                 notebook_instance_name: "NonEmptyString",
    #                 notebook_instance_status: "NonEmptyString",
    #                 platform_identifier: "NonEmptyString",
    #                 role_arn: "NonEmptyString",
    #                 root_access: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 subnet_id: "NonEmptyString",
    #                 url: "NonEmptyString",
    #                 volume_size_in_gb: 1
    #               },
    #               aws_wafv2_web_acl: {
    #                 name: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 managedby_firewall_manager: false,
    #                 id: "NonEmptyString",
    #                 capacity: 1,
    #                 captcha_config: {
    #                   immunity_time_property: {
    #                     immunity_time: 1
    #                   }
    #                 },
    #                 default_action: {
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [
    #                         {
    #                           name: "NonEmptyString",
    #                           value: "NonEmptyString"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   block: {
    #                     custom_response: {
    #                       custom_response_body_key: "NonEmptyString",
    #                       response_code: 1,
    #                       response_headers: [
    #                         {
    #                           name: "NonEmptyString",
    #                           value: "NonEmptyString"
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 },
    #                 description: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       allow: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       block: {
    #                         custom_response: {
    #                           custom_response_body_key: "NonEmptyString",
    #                           response_code: 1,
    #                           response_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       captcha: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       count: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     },
    #                     name: "NonEmptyString",
    #                     override_action: "NonEmptyString",
    #                     priority: 1,
    #                     visibility_config: {
    #                       cloud_watch_metrics_enabled: false,
    #                       metric_name: "NonEmptyString",
    #                       sampled_requests_enabled: false
    #                     }
    #                   }
    #                 ],
    #                 visibility_config: {
    #                   cloud_watch_metrics_enabled: false,
    #                   metric_name: "NonEmptyString",
    #                   sampled_requests_enabled: false
    #                 }
    #               },
    #               aws_wafv2_rule_group: {
    #                 capacity: 1,
    #                 description: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       allow: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       block: {
    #                         custom_response: {
    #                           custom_response_body_key: "NonEmptyString",
    #                           response_code: 1,
    #                           response_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       captcha: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       count: {
    #                         custom_request_handling: {
    #                           insert_headers: [
    #                             {
    #                               name: "NonEmptyString",
    #                               value: "NonEmptyString"
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     },
    #                     name: "NonEmptyString",
    #                     override_action: "NonEmptyString",
    #                     priority: 1,
    #                     visibility_config: {
    #                       cloud_watch_metrics_enabled: false,
    #                       metric_name: "NonEmptyString",
    #                       sampled_requests_enabled: false
    #                     }
    #                   }
    #                 ],
    #                 scope: "NonEmptyString",
    #                 visibility_config: {
    #                   cloud_watch_metrics_enabled: false,
    #                   metric_name: "NonEmptyString",
    #                   sampled_requests_enabled: false
    #                 }
    #               },
    #               aws_ec2_route_table: {
    #                 association_set: [
    #                   {
    #                     association_state: {
    #                       state: "NonEmptyString",
    #                       status_message: "NonEmptyString"
    #                     },
    #                     gateway_id: "NonEmptyString",
    #                     main: false,
    #                     route_table_association_id: "NonEmptyString",
    #                     route_table_id: "NonEmptyString",
    #                     subnet_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 owner_id: "NonEmptyString",
    #                 propagating_vgw_set: [
    #                   {
    #                     gateway_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 route_table_id: "NonEmptyString",
    #                 route_set: [
    #                   {
    #                     carrier_gateway_id: "NonEmptyString",
    #                     core_network_arn: "NonEmptyString",
    #                     destination_cidr_block: "NonEmptyString",
    #                     destination_ipv6_cidr_block: "NonEmptyString",
    #                     destination_prefix_list_id: "NonEmptyString",
    #                     egress_only_internet_gateway_id: "NonEmptyString",
    #                     gateway_id: "NonEmptyString",
    #                     instance_id: "NonEmptyString",
    #                     instance_owner_id: "NonEmptyString",
    #                     local_gateway_id: "NonEmptyString",
    #                     nat_gateway_id: "NonEmptyString",
    #                     network_interface_id: "NonEmptyString",
    #                     origin: "NonEmptyString",
    #                     state: "NonEmptyString",
    #                     transit_gateway_id: "NonEmptyString",
    #                     vpc_peering_connection_id: "NonEmptyString"
    #                   }
    #                 ],
    #                 vpc_id: "NonEmptyString"
    #               },
    #               aws_amazon_mq_broker: {
    #                 authentication_strategy: "NonEmptyString",
    #                 auto_minor_version_upgrade: false,
    #                 broker_arn: "NonEmptyString",
    #                 broker_name: "NonEmptyString",
    #                 deployment_mode: "NonEmptyString",
    #                 encryption_options: {
    #                   kms_key_id: "NonEmptyString",
    #                   use_aws_owned_key: false
    #                 },
    #                 engine_type: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 host_instance_type: "NonEmptyString",
    #                 broker_id: "NonEmptyString",
    #                 ldap_server_metadata: {
    #                   hosts: ["NonEmptyString"],
    #                   role_base: "NonEmptyString",
    #                   role_name: "NonEmptyString",
    #                   role_search_matching: "NonEmptyString",
    #                   role_search_subtree: false,
    #                   service_account_username: "NonEmptyString",
    #                   user_base: "NonEmptyString",
    #                   user_role_name: "NonEmptyString",
    #                   user_search_matching: "NonEmptyString",
    #                   user_search_subtree: false
    #                 },
    #                 logs: {
    #                   audit: false,
    #                   general: false,
    #                   audit_log_group: "NonEmptyString",
    #                   general_log_group: "NonEmptyString",
    #                   pending: {
    #                     audit: false,
    #                     general: false
    #                   }
    #                 },
    #                 maintenance_window_start_time: {
    #                   day_of_week: "NonEmptyString",
    #                   time_of_day: "NonEmptyString",
    #                   time_zone: "NonEmptyString"
    #                 },
    #                 publicly_accessible: false,
    #                 security_groups: ["NonEmptyString"],
    #                 storage_type: "NonEmptyString",
    #                 subnet_ids: ["NonEmptyString"],
    #                 users: [
    #                   {
    #                     pending_change: "NonEmptyString",
    #                     username: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_app_sync_graph_ql_api: {
    #                 api_id: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 open_id_connect_config: {
    #                   auth_tt_l: 1,
    #                   client_id: "NonEmptyString",
    #                   iat_tt_l: 1,
    #                   issuer: "NonEmptyString"
    #                 },
    #                 name: "NonEmptyString",
    #                 lambda_authorizer_config: {
    #                   authorizer_result_ttl_in_seconds: 1,
    #                   authorizer_uri: "NonEmptyString",
    #                   identity_validation_expression: "NonEmptyString"
    #                 },
    #                 xray_enabled: false,
    #                 arn: "NonEmptyString",
    #                 user_pool_config: {
    #                   app_id_client_regex: "NonEmptyString",
    #                   aws_region: "NonEmptyString",
    #                   default_action: "NonEmptyString",
    #                   user_pool_id: "NonEmptyString"
    #                 },
    #                 authentication_type: "NonEmptyString",
    #                 log_config: {
    #                   cloud_watch_logs_role_arn: "NonEmptyString",
    #                   exclude_verbose_content: false,
    #                   field_log_level: "NonEmptyString"
    #                 },
    #                 additional_authentication_providers: [
    #                   {
    #                     authentication_type: "NonEmptyString",
    #                     lambda_authorizer_config: {
    #                       authorizer_result_ttl_in_seconds: 1,
    #                       authorizer_uri: "NonEmptyString",
    #                       identity_validation_expression: "NonEmptyString"
    #                     },
    #                     open_id_connect_config: {
    #                       auth_tt_l: 1,
    #                       client_id: "NonEmptyString",
    #                       iat_tt_l: 1,
    #                       issuer: "NonEmptyString"
    #                     },
    #                     user_pool_config: {
    #                       app_id_client_regex: "NonEmptyString",
    #                       aws_region: "NonEmptyString",
    #                       default_action: "NonEmptyString",
    #                       user_pool_id: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 waf_web_acl_arn: "NonEmptyString"
    #               },
    #               aws_event_schemas_registry: {
    #                 description: "NonEmptyString",
    #                 registry_arn: "NonEmptyString",
    #                 registry_name: "NonEmptyString"
    #               },
    #               aws_guard_duty_detector: {
    #                 data_sources: {
    #                   cloud_trail: {
    #                     status: "NonEmptyString"
    #                   },
    #                   dns_logs: {
    #                     status: "NonEmptyString"
    #                   },
    #                   flow_logs: {
    #                     status: "NonEmptyString"
    #                   },
    #                   kubernetes: {
    #                     audit_logs: {
    #                       status: "NonEmptyString"
    #                     }
    #                   },
    #                   malware_protection: {
    #                     scan_ec2_instance_with_findings: {
    #                       ebs_volumes: {
    #                         reason: "NonEmptyString",
    #                         status: "NonEmptyString"
    #                       }
    #                     },
    #                     service_role: "NonEmptyString"
    #                   },
    #                   s3_logs: {
    #                     status: "NonEmptyString"
    #                   }
    #                 },
    #                 features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     status: "NonEmptyString"
    #                   }
    #                 ],
    #                 finding_publishing_frequency: "NonEmptyString",
    #                 service_role: "NonEmptyString",
    #                 status: "NonEmptyString"
    #               },
    #               aws_step_function_state_machine: {
    #                 label: "NonEmptyString",
    #                 logging_configuration: {
    #                   destinations: [
    #                     {
    #                       cloud_watch_logs_log_group: {
    #                         log_group_arn: "NonEmptyString"
    #                       }
    #                     }
    #                   ],
    #                   include_execution_data: false,
    #                   level: "NonEmptyString"
    #                 },
    #                 name: "NonEmptyString",
    #                 role_arn: "NonEmptyString",
    #                 state_machine_arn: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 tracing_configuration: {
    #                   enabled: false
    #                 },
    #                 type: "NonEmptyString"
    #               },
    #               aws_athena_work_group: {
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 state: "NonEmptyString",
    #                 configuration: {
    #                   result_configuration: {
    #                     encryption_configuration: {
    #                       encryption_option: "NonEmptyString",
    #                       kms_key: "NonEmptyString"
    #                     }
    #                   }
    #                 }
    #               },
    #               aws_events_eventbus: {
    #                 arn: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 policy: "NonEmptyString"
    #               },
    #               aws_dms_endpoint: {
    #                 certificate_arn: "NonEmptyString",
    #                 database_name: "NonEmptyString",
    #                 endpoint_arn: "NonEmptyString",
    #                 endpoint_identifier: "NonEmptyString",
    #                 endpoint_type: "NonEmptyString",
    #                 engine_name: "NonEmptyString",
    #                 external_id: "NonEmptyString",
    #                 extra_connection_attributes: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 port: 1,
    #                 server_name: "NonEmptyString",
    #                 ssl_mode: "NonEmptyString",
    #                 username: "NonEmptyString"
    #               },
    #               aws_events_endpoint: {
    #                 arn: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 endpoint_id: "NonEmptyString",
    #                 endpoint_url: "NonEmptyString",
    #                 event_buses: [
    #                   {
    #                     event_bus_arn: "NonEmptyString"
    #                   }
    #                 ],
    #                 name: "NonEmptyString",
    #                 replication_config: {
    #                   state: "NonEmptyString"
    #                 },
    #                 role_arn: "NonEmptyString",
    #                 routing_config: {
    #                   failover_config: {
    #                     primary: {
    #                       health_check: "NonEmptyString"
    #                     },
    #                     secondary: {
    #                       route: "NonEmptyString"
    #                     }
    #                   }
    #                 },
    #                 state: "NonEmptyString",
    #                 state_reason: "NonEmptyString"
    #               },
    #               aws_dms_replication_task: {
    #                 cdc_start_position: "NonEmptyString",
    #                 cdc_start_time: "NonEmptyString",
    #                 cdc_stop_position: "NonEmptyString",
    #                 migration_type: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 resource_identifier: "NonEmptyString",
    #                 replication_instance_arn: "NonEmptyString",
    #                 replication_task_identifier: "NonEmptyString",
    #                 replication_task_settings: "NonEmptyString",
    #                 source_endpoint_arn: "NonEmptyString",
    #                 table_mappings: "NonEmptyString",
    #                 target_endpoint_arn: "NonEmptyString",
    #                 task_data: "NonEmptyString"
    #               },
    #               aws_dms_replication_instance: {
    #                 allocated_storage: 1,
    #                 auto_minor_version_upgrade: false,
    #                 availability_zone: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 multi_az: false,
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 replication_instance_class: "NonEmptyString",
    #                 replication_instance_identifier: "NonEmptyString",
    #                 replication_subnet_group: {
    #                   replication_subnet_group_identifier: "NonEmptyString"
    #                 },
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString"
    #                   }
    #                 ]
    #               },
    #               aws_route53_hosted_zone: {
    #                 hosted_zone: {
    #                   id: "NonEmptyString",
    #                   name: "NonEmptyString",
    #                   config: {
    #                     comment: "NonEmptyString"
    #                   }
    #                 },
    #                 vpcs: [
    #                   {
    #                     id: "NonEmptyString",
    #                     region: "NonEmptyString"
    #                   }
    #                 ],
    #                 name_servers: ["NonEmptyString"],
    #                 query_logging_config: {
    #                   cloud_watch_logs_log_group_arn: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     hosted_zone_id: "NonEmptyString",
    #                     id: "NonEmptyString"
    #                   }
    #                 }
    #               },
    #               aws_msk_cluster: {
    #                 cluster_info: {
    #                   encryption_info: {
    #                     encryption_in_transit: {
    #                       in_cluster: false,
    #                       client_broker: "NonEmptyString"
    #                     },
    #                     encryption_at_rest: {
    #                       data_volume_kms_key_id: "NonEmptyString"
    #                     }
    #                   },
    #                   current_version: "NonEmptyString",
    #                   number_of_broker_nodes: 1,
    #                   cluster_name: "NonEmptyString",
    #                   client_authentication: {
    #                     sasl: {
    #                       iam: {
    #                         enabled: false
    #                       },
    #                       scram: {
    #                         enabled: false
    #                       }
    #                     },
    #                     unauthenticated: {
    #                       enabled: false
    #                     },
    #                     tls: {
    #                       certificate_authority_arn_list: ["NonEmptyString"],
    #                       enabled: false
    #                     }
    #                   },
    #                   enhanced_monitoring: "NonEmptyString"
    #                 }
    #               },
    #               aws_s3_access_point: {
    #                 access_point_arn: "NonEmptyString",
    #                 alias: "NonEmptyString",
    #                 bucket: "NonEmptyString",
    #                 bucket_account_id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 network_origin: "NonEmptyString",
    #                 public_access_block_configuration: {
    #                   block_public_acls: false,
    #                   block_public_policy: false,
    #                   ignore_public_acls: false,
    #                   restrict_public_buckets: false
    #                 },
    #                 vpc_configuration: {
    #                   vpc_id: "NonEmptyString"
    #                 }
    #               },
    #               aws_ec2_client_vpn_endpoint: {
    #                 client_vpn_endpoint_id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 client_cidr_block: "NonEmptyString",
    #                 dns_server: ["NonEmptyString"],
    #                 split_tunnel: false,
    #                 transport_protocol: "NonEmptyString",
    #                 vpn_port: 1,
    #                 server_certificate_arn: "NonEmptyString",
    #                 authentication_options: [
    #                   {
    #                     type: "NonEmptyString",
    #                     active_directory: {
    #                       directory_id: "NonEmptyString"
    #                     },
    #                     mutual_authentication: {
    #                       client_root_certificate_chain: "NonEmptyString"
    #                     },
    #                     federated_authentication: {
    #                       saml_provider_arn: "NonEmptyString",
    #                       self_service_saml_provider_arn: "NonEmptyString"
    #                     }
    #                   }
    #                 ],
    #                 connection_log_options: {
    #                   enabled: false,
    #                   cloudwatch_log_group: "NonEmptyString",
    #                   cloudwatch_log_stream: "NonEmptyString"
    #                 },
    #                 security_group_id_set: ["NonEmptyString"],
    #                 vpc_id: "NonEmptyString",
    #                 self_service_portal_url: "NonEmptyString",
    #                 client_connect_options: {
    #                   enabled: false,
    #                   lambda_function_arn: "NonEmptyString",
    #                   status: {
    #                     code: "NonEmptyString",
    #                     message: "NonEmptyString"
    #                   }
    #                 },
    #                 session_timeout_hours: 1,
    #                 client_login_banner_options: {
    #                   enabled: false,
    #                   banner_text: "NonEmptyString"
    #                 }
    #               },
    #               code_repository: {
    #                 provider_type: "NonEmptyString",
    #                 project_name: "NonEmptyString",
    #                 code_security_integration_arn: "NonEmptyString"
    #               }
    #             },
    #             application_name: "NonEmptyString",
    #             application_arn: "NonEmptyString"
    #           }
    #         ],
    #         compliance: {
    #           status: "PASSED" # One of: ["PASSED", "WARNING", "FAILED", "NOT_AVAILABLE"],
    #           related_requirements: ["NonEmptyString"],
    #           status_reasons: [
    #             {
    #               reason_code: "NonEmptyString", # required
    #               description: "NonEmptyString"
    #             }
    #           ],
    #           security_control_id: "NonEmptyString",
    #           associated_standards: [
    #             {
    #               standards_id: "NonEmptyString"
    #             }
    #           ],
    #           security_control_parameters: [
    #             {
    #               name: "NonEmptyString",
    #               value: ["NonEmptyString"]
    #             }
    #           ]
    #         },
    #         verification_state: "UNKNOWN" # One of: ["UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"],
    #         workflow_state: "NEW" # One of: ["NEW", "ASSIGNED", "IN_PROGRESS", "DEFERRED", "RESOLVED"],
    #         workflow: {
    #           status: "NEW" # One of: ["NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"]
    #         },
    #         record_state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           }
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #           updated_at: "NonEmptyString", # required
    #         },
    #         vulnerabilities: [
    #           {
    #             id: "NonEmptyString", # required
    #             vulnerable_packages: [
    #               {
    #                 name: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 epoch: "NonEmptyString",
    #                 release: "NonEmptyString",
    #                 architecture: "NonEmptyString",
    #                 package_manager: "NonEmptyString",
    #                 file_path: "NonEmptyString",
    #                 fixed_in_version: "NonEmptyString",
    #                 remediation: "NonEmptyString",
    #                 source_layer_hash: "NonEmptyString",
    #                 source_layer_arn: "NonEmptyString"
    #               }
    #             ],
    #             cvss: [
    #               {
    #                 version: "NonEmptyString",
    #                 base_score: 1.0,
    #                 base_vector: "NonEmptyString",
    #                 source: "NonEmptyString",
    #                 adjustments: [
    #                   {
    #                     metric: "NonEmptyString",
    #                     reason: "NonEmptyString"
    #                   }
    #                 ]
    #               }
    #             ],
    #             related_vulnerabilities: ["NonEmptyString"],
    #             vendor: {
    #               name: "NonEmptyString", # required
    #               url: "NonEmptyString",
    #               vendor_severity: "NonEmptyString",
    #               vendor_created_at: "NonEmptyString",
    #               vendor_updated_at: "NonEmptyString"
    #             },
    #             reference_urls: ["NonEmptyString"],
    #             fix_available: "YES" # One of: ["YES", "NO", "PARTIAL"],
    #             epss_score: 1.0,
    #             exploit_available: "YES" # One of: ["YES", "NO"],
    #             last_known_exploit_at: "NonEmptyString",
    #             code_vulnerabilities: [
    #               {
    #                 cwes: ["NonEmptyString"],
    #                 file_path: {
    #                   end_line: 1,
    #                   file_name: "NonEmptyString",
    #                   file_path: "NonEmptyString",
    #                   start_line: 1
    #                 },
    #                 source_arn: "NonEmptyString"
    #               }
    #             ]
    #           }
    #         ],
    #         patch_summary: {
    #           id: "NonEmptyString", # required
    #           installed_count: 1,
    #           missing_count: 1,
    #           failed_count: 1,
    #           installed_other_count: 1,
    #           installed_rejected_count: 1,
    #           installed_pending_reboot: 1,
    #           operation_start_time: "NonEmptyString",
    #           operation_end_time: "NonEmptyString",
    #           reboot_option: "NonEmptyString",
    #           operation: "NonEmptyString"
    #         },
    #         action: {
    #           action_type: "NonEmptyString",
    #           network_connection_action: {
    #             connection_direction: "NonEmptyString",
    #             remote_ip_details: {
    #               ip_address_v4: "NonEmptyString",
    #               organization: {
    #                 asn: 1,
    #                 asn_org: "NonEmptyString",
    #                 isp: "NonEmptyString",
    #                 org: "NonEmptyString"
    #               },
    #               country: {
    #                 country_code: "NonEmptyString",
    #                 country_name: "NonEmptyString"
    #               },
    #               city: {
    #                 city_name: "NonEmptyString"
    #               },
    #               geo_location: {
    #                 lon: 1.0,
    #                 lat: 1.0
    #               }
    #             },
    #             remote_port_details: {
    #               port: 1,
    #               port_name: "NonEmptyString"
    #             },
    #             local_port_details: {
    #               port: 1,
    #               port_name: "NonEmptyString"
    #             },
    #             protocol: "NonEmptyString",
    #             blocked: false
    #           },
    #           aws_api_call_action: {
    #             api: "NonEmptyString",
    #             service_name: "NonEmptyString",
    #             caller_type: "NonEmptyString",
    #             remote_ip_details: {
    #               ip_address_v4: "NonEmptyString",
    #               organization: {
    #                 asn: 1,
    #                 asn_org: "NonEmptyString",
    #                 isp: "NonEmptyString",
    #                 org: "NonEmptyString"
    #               },
    #               country: {
    #                 country_code: "NonEmptyString",
    #                 country_name: "NonEmptyString"
    #               },
    #               city: {
    #                 city_name: "NonEmptyString"
    #               },
    #               geo_location: {
    #                 lon: 1.0,
    #                 lat: 1.0
    #               }
    #             },
    #             domain_details: {
    #               domain: "NonEmptyString"
    #             },
    #             affected_resources: {
    #               "NonEmptyString" => "NonEmptyString"
    #             },
    #             first_seen: "NonEmptyString",
    #             last_seen: "NonEmptyString"
    #           },
    #           dns_request_action: {
    #             domain: "NonEmptyString",
    #             protocol: "NonEmptyString",
    #             blocked: false
    #           },
    #           port_probe_action: {
    #             port_probe_details: [
    #               {
    #                 local_port_details: {
    #                   port: 1,
    #                   port_name: "NonEmptyString"
    #                 },
    #                 local_ip_details: {
    #                   ip_address_v4: "NonEmptyString"
    #                 },
    #                 remote_ip_details: {
    #                   ip_address_v4: "NonEmptyString",
    #                   organization: {
    #                     asn: 1,
    #                     asn_org: "NonEmptyString",
    #                     isp: "NonEmptyString",
    #                     org: "NonEmptyString"
    #                   },
    #                   country: {
    #                     country_code: "NonEmptyString",
    #                     country_name: "NonEmptyString"
    #                   },
    #                   city: {
    #                     city_name: "NonEmptyString"
    #                   },
    #                   geo_location: {
    #                     lon: 1.0,
    #                     lat: 1.0
    #                   }
    #                 }
    #               }
    #             ],
    #             blocked: false
    #           }
    #         },
    #         finding_provider_fields: {
    #           confidence: 1,
    #           criticality: 1,
    #           related_findings: [
    #             {
    #               product_arn: "NonEmptyString", # required
    #               id: "NonEmptyString", # required
    #             }
    #           ],
    #           severity: {
    #             label: "INFORMATIONAL" # One of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #             original: "NonEmptyString"
    #           },
    #           types: ["NonEmptyString"]
    #         },
    #         sample: false,
    #         generator_details: {
    #           name: "NonEmptyString",
    #           description: "NonEmptyString",
    #           labels: ["NonEmptyString"]
    #         },
    #         processed_at: "NonEmptyString",
    #         aws_account_name: "NonEmptyString",
    #         detection: {
    #           sequence: {
    #             uid: "NonEmptyString",
    #             actors: [
    #               {
    #                 id: "NonEmptyString",
    #                 user: {
    #                   name: "NonEmptyString",
    #                   uid: "NonEmptyString",
    #                   type: "NonEmptyString",
    #                   credential_uid: "NonEmptyString",
    #                   account: {
    #                     uid: "NonEmptyString",
    #                     name: "NonEmptyString"
    #                   }
    #                 },
    #                 session: {
    #                   uid: "NonEmptyString",
    #                   mfa_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                   created_time: 1,
    #                   issuer: "NonEmptyString"
    #                 }
    #               }
    #             ],
    #             endpoints: [
    #               {
    #                 id: "NonEmptyString",
    #                 ip: "NonEmptyString",
    #                 domain: "NonEmptyString",
    #                 port: 1,
    #                 location: {
    #                   city: "NonEmptyString",
    #                   country: "NonEmptyString",
    #                   lat: 1.0,
    #                   lon: 1.0
    #                 },
    #                 autonomous_system: {
    #                   name: "NonEmptyString",
    #                   number: 1
    #                 },
    #                 connection: {
    #                   direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"]
    #                 }
    #               }
    #             ],
    #             signals: [
    #               {
    #                 type: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 title: "NonEmptyString",
    #                 product_arn: "NonEmptyString",
    #                 resource_ids: ["NonEmptyString"],
    #                 signal_indicators: [
    #                   {
    #                     key: "NonEmptyString",
    #                     values: ["NonEmptyString"],
    #                     title: "NonEmptyString",
    #                     type: "NonEmptyString"
    #                   }
    #                 ],
    #                 name: "NonEmptyString",
    #                 created_at: 1,
    #                 updated_at: 1,
    #                 first_seen_at: 1,
    #                 last_seen_at: 1,
    #                 severity: 1.0,
    #                 count: 1,
    #                 actor_ids: ["NonEmptyString"],
    #                 endpoint_ids: ["NonEmptyString"]
    #               }
    #             ],
    #             sequence_indicators: [
    #               {
    #                 key: "NonEmptyString",
    #                 values: ["NonEmptyString"],
    #                 title: "NonEmptyString",
    #                 type: "NonEmptyString"
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetFindingsResponse]
    def get_findings(params = {}, options = {})
      request = build_request(:get_findings, params)
      request.send_request(options)
    end

    # <p>Return a list of findings that match the specified criteria.
    #       <code>GetFindings</code> and <code>GetFindingsV2</code> both use <code>securityhub:GetFindings</code> in the <code>Action</code> element of an IAM policy statement. 
    #          You must have permission to perform the <code>securityhub:GetFindings</code> action. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::GetFindingsV2Request] params
    # @option params [Types::OcsfFindingFilters] :filters
    #   <p>The finding attributes used to define a condition to filter the returned OCSF findings. 
    #            You can filter up to 10 composite filters. 
    #            For each filter type inside of a composite filter, you can provide up to 20 filters.</p>
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   <p>The finding attributes used to sort the list of returned findings.</p>
    # @option params [String] :next_token
    #   <p>
    #            The token required for pagination. 
    #            On your first call, set the value of this parameter to <code>NULL</code>. 
    #            For subsequent calls, to continue listing data, set the value of this parameter to the value returned in the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       composite_filters: [
    #         {
    #           string_filters: [
    #             {
    #               field_name: "metadata.uid" # One of: ["metadata.uid", "activity_name", "cloud.account.uid", "cloud.provider", "cloud.region", "compliance.assessments.category", "compliance.assessments.name", "compliance.control", "compliance.status", "compliance.standards", "finding_info.desc", "finding_info.src_url", "finding_info.title", "finding_info.types", "finding_info.uid", "finding_info.related_events.uid", "finding_info.related_events.product.uid", "finding_info.related_events.title", "metadata.product.name", "metadata.product.uid", "metadata.product.vendor_name", "remediation.desc", "remediation.references", "resources.cloud_partition", "resources.region", "resources.type", "resources.uid", "severity", "status", "comment", "vulnerabilities.fix_coverage", "class_name"],
    #               filter: {
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #               }
    #             }
    #           ],
    #           date_filters: [
    #             {
    #               field_name: "finding_info.created_time_dt" # One of: ["finding_info.created_time_dt", "finding_info.first_seen_time_dt", "finding_info.last_seen_time_dt", "finding_info.modified_time_dt"],
    #               filter: {
    #                 start: "NonEmptyString",
    #                 end: "NonEmptyString",
    #                 date_range: {
    #                   value: 1,
    #                   unit: "DAYS" # One of: ["DAYS"]
    #                 }
    #               }
    #             }
    #           ],
    #           boolean_filters: [
    #             {
    #               field_name: "compliance.assessments.meets_criteria" # One of: ["compliance.assessments.meets_criteria", "vulnerabilities.is_exploit_available", "vulnerabilities.is_fix_available"],
    #               filter: {
    #                 value: false
    #               }
    #             }
    #           ],
    #           number_filters: [
    #             {
    #               field_name: "activity_id" # One of: ["activity_id", "compliance.status_id", "confidence_score", "severity_id", "status_id", "finding_info.related_events_count"],
    #               filter: {
    #                 gte: 1.0,
    #                 lte: 1.0,
    #                 eq: 1.0,
    #                 gt: 1.0,
    #                 lt: 1.0
    #               }
    #             }
    #           ],
    #           map_filters: [
    #             {
    #               field_name: "resources.tags" # One of: ["resources.tags"],
    #               filter: {
    #                 key: "NonEmptyString",
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #               }
    #             }
    #           ],
    #           operator: "AND" # One of: ["AND", "OR"]
    #         }
    #       ],
    #       composite_operator: "AND" # One of: ["AND", "OR"]
    #     },
    #     sort_criteria: [
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc" # One of: ["asc", "desc"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_findings_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [""null""],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetFindingsV2Response]
    def get_findings_v2(params = {}, options = {})
      request = build_request(:get_findings_v2, params)
      request.send_request(options)
    end

    # <p>Lists the results of the Security Hub insight specified by the insight ARN.</p>
    # @param [Hash, Types::GetInsightResultsRequest] params
    # @option params [String] :insight_arn
    #   <p>The ARN of the insight for which to return results.</p>
    # @example To get the results of a Security Hub insight
    #   # The following example returns the results of the Security Hub insight specified by the insight ARN.
    #   params = {
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #   }
    #   options = {}
    #   response = client.get_insight_results(params, options)
    #   response.to_h #=>
    #   {
    #     insight_results: {
    #       group_by_attribute: "ResourceId",
    #       insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #       result_values: [
    #         {
    #           count: 10,
    #           group_by_attribute_value: "AWS::::Account:111122223333"
    #         },
    #         {
    #           count: 3,
    #           group_by_attribute_value: "AWS::::Account:444455556666"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_insight_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_results: { # required
    #       insight_arn: "NonEmptyString", # required
    #       group_by_attribute: "NonEmptyString", # required
    #       result_values: [ # required
    #         {
    #           group_by_attribute_value: "NonEmptyString", # required
    #           count: 1, # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetInsightResultsResponse]
    def get_insight_results(params = {}, options = {})
      request = build_request(:get_insight_results, params)
      request.send_request(options)
    end

    # <p>Lists and describes insights for the specified insight ARNs.</p>
    # @param [Hash, Types::GetInsightsRequest] params
    # @option params [Array<String>] :insight_arns
    #   <p>The ARNs of the insights to describe. If you don't provide any insight ARNs, then
    #               <code>GetInsights</code> returns all of your custom insights. It does not return any
    #            managed insights.</p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>GetInsights</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    # @example To get details of a Security Hub insight
    #   # The following example returns details of the Security Hub insight with the specified ARN.
    #   params = {
    #     insight_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_insights(params, options)
    #   response.to_h #=>
    #   {
    #     insights: [
    #       {
    #         filters: {
    #           resource_type: [
    #             {
    #               comparison: EQUALS,
    #               value: "AwsIamRole"
    #             }
    #           ],
    #           severity_label: [
    #             {
    #               comparison: EQUALS,
    #               value: "CRITICAL"
    #             }
    #           ]
    #         },
    #         group_by_attribute: "ResourceId",
    #         insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         name: "Critical role findings"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insights: [ # required
    #       {
    #         insight_arn: "NonEmptyString", # required
    #         name: "NonEmptyString", # required
    #         filters: { # required
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString"
    #             }
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString"
    #             }
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString"
    #             }
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString"
    #             }
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString"
    #             }
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString"
    #             }
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_iam_access_key_principal_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           resource_aws_iam_user_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #             }
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS" # One of: ["DAYS"]
    #               }
    #             }
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString"
    #             }
    #           ],
    #           finding_provider_fields_confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           finding_provider_fields_criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0
    #             }
    #           ],
    #           finding_provider_fields_related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           finding_provider_fields_related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           finding_provider_fields_severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           finding_provider_fields_severity_original: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           finding_provider_fields_types: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           sample: [
    #             {
    #               value: false
    #             }
    #           ],
    #           compliance_security_control_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           compliance_associated_standards_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           vulnerabilities_exploit_available: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           vulnerabilities_fix_available: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           compliance_security_control_parameters_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           compliance_security_control_parameters_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           aws_account_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_application_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ],
    #           resource_application_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #             }
    #           ]
    #         },
    #         group_by_attribute: "NonEmptyString", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetInsightsResponse]
    def get_insights(params = {}, options = {})
      request = build_request(:get_insights, params)
      request.send_request(options)
    end

    # <note>
    #             <p>We recommend using Organizations instead of Security Hub invitations to manage your member accounts. 
    #            For information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html">Managing Security Hub administrator and member accounts with Organizations</a> 
    #            in the <i>Security Hub User Guide</i>.</p>
    #          </note>
    #          <p>Returns the count of all Security Hub membership invitations that were sent to the
    #          calling member account, not including the currently accepted invitation. </p>
    # @param [Hash, Types::GetInvitationsCountRequest] params
    # @example To get a count of membership invitations
    #   # The following example returns a count of invitations that the Security Hub administrator sent to the current member account, not including the currently accepted invitation.
    #   params = {}
    #   options = {}
    #   response = client.get_invitations_count(params, options)
    #   response.to_h #=>
    #   {
    #     invitations_count: 3
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_invitations_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations_count: 1
    #   }
    # @return [Types::GetInvitationsCountResponse]
    def get_invitations_count(params = {}, options = {})
      request = build_request(:get_invitations_count, params)
      request.send_request(options)
    end

    # <p>This method is deprecated. Instead, use <code>GetAdministratorAccount</code>.</p>
    #          <p>The Security Hub console continues to use <code>GetMasterAccount</code>. It will eventually change to use <code>GetAdministratorAccount</code>. Any IAM policies that specifically control access to this function must continue to use <code>GetMasterAccount</code>. You should also add <code>GetAdministratorAccount</code> to your policies to ensure that the correct permissions are in place after the console begins to use <code>GetAdministratorAccount</code>.</p>
    #          <p>Provides the details for the Security Hub administrator account for the current member account.</p>
    #          <p>Can be used by both member accounts that are managed using Organizations and accounts that were
    #          invited manually.</p>
    # @param [Hash, Types::GetMasterAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_master_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     master: {
    #       account_id: "AccountId",
    #       invitation_id: "NonEmptyString",
    #       invited_at: Time.now,
    #       member_status: "NonEmptyString"
    #     }
    #   }
    # @deprecated
    #   This API has been deprecated, use GetAdministratorAccount API instead.
    # @return [Types::GetMasterAccountResponse]
    def get_master_account(params = {}, options = {})
      request = build_request(:get_master_account, params)
      request.send_request(options)
    end

    # <p>Returns the details for the Security Hub member accounts for the specified account IDs.</p>
    #          <p>An administrator account can be either the delegated Security Hub administrator account for an
    #          organization or an administrator account that enabled Security Hub manually.</p>
    #          <p>The results include both member accounts that are managed using Organizations and accounts that
    #          were invited manually.</p>
    # @param [Hash, Types::GetMembersRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The list of account IDs for the Security Hub member accounts to return the details for. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.get_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         account_id: "AccountId",
    #         email: "NonEmptyString",
    #         master_id: "NonEmptyString",
    #         administrator_id: "NonEmptyString",
    #         member_status: "NonEmptyString",
    #         invited_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         processing_result: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::GetMembersResponse]
    def get_members(params = {}, options = {})
      request = build_request(:get_members, params)
      request.send_request(options)
    end

    # <p>Retrieves statistical information about Amazon Web Services resources and their associated security findings. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::GetResourcesStatisticsV2Request] params
    # @option params [Array<Types::ResourceGroupByRule>] :group_by_rules
    #   <p>How resource statistics should be aggregated and organized in the response.</p>
    # @option params [String] :sort_order
    #   <p>Sorts aggregated statistics.</p>
    # @option params [Integer] :max_statistic_results
    #   <p>The maximum number of results to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_by_rules: [ # required
    #       {
    #         group_by_field: "account_id" # One of: ["account_id", "region", "resource_category", "resource_type", "resource_name", "findings_summary.finding_type"], # required
    #         filters: {
    #           composite_filters: [
    #             {
    #               string_filters: [
    #                 {
    #                   field_name: "resource_arn" # One of: ["resource_arn", "resource_id", "account_id", "region", "resource_category", "resource_type", "resource_name", "findings_summary.finding_type", "findings_summary.product_name"],
    #                   filter: {
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #                   }
    #                 }
    #               ],
    #               date_filters: [
    #                 {
    #                   field_name: "resource_detail_capture_time_dt" # One of: ["resource_detail_capture_time_dt", "resource_creation_time_dt"],
    #                   filter: {
    #                     start: "NonEmptyString",
    #                     end: "NonEmptyString",
    #                     date_range: {
    #                       value: 1,
    #                       unit: "DAYS" # One of: ["DAYS"]
    #                     }
    #                   }
    #                 }
    #               ],
    #               number_filters: [
    #                 {
    #                   field_name: "findings_summary.total_findings" # One of: ["findings_summary.total_findings", "findings_summary.severities.other", "findings_summary.severities.fatal", "findings_summary.severities.critical", "findings_summary.severities.high", "findings_summary.severities.medium", "findings_summary.severities.low", "findings_summary.severities.informational", "findings_summary.severities.unknown"],
    #                   filter: {
    #                     gte: 1.0,
    #                     lte: 1.0,
    #                     eq: 1.0,
    #                     gt: 1.0,
    #                     lt: 1.0
    #                   }
    #                 }
    #               ],
    #               map_filters: [
    #                 {
    #                   field_name: "tags" # One of: ["tags"],
    #                   filter: {
    #                     key: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #                   }
    #                 }
    #               ],
    #               operator: "AND" # One of: ["AND", "OR"]
    #             }
    #           ],
    #           composite_operator: "AND" # One of: ["AND", "OR"]
    #         }
    #       }
    #     ],
    #     sort_order: "asc" # One of: ["asc", "desc"],
    #     max_statistic_results: 1
    #   }
    #   options = {}
    #   response = client.get_resources_statistics_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_by_results: [ # required
    #       {
    #         group_by_field: "NonEmptyString",
    #         group_by_values: [
    #           {
    #             field_value: "NonEmptyString",
    #             count: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetResourcesStatisticsV2Response]
    def get_resources_statistics_v2(params = {}, options = {})
      request = build_request(:get_resources_statistics_v2, params)
      request.send_request(options)
    end

    # <p>Returns a list of resources. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::GetResourcesV2Request] params
    # @option params [Types::ResourcesFilters] :filters
    #   <p>Filters resources based on a set of criteria.</p>
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   <p>The finding attributes used to sort the list of returned findings.</p>
    # @option params [String] :next_token
    #   <p>The token required for pagination. 
    #            On your first call, set the value of this parameter to <code>NULL</code>. 
    #            For subsequent calls, to continue listing data, set the value of this parameter to the value returned in the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       composite_filters: [
    #         {
    #           string_filters: [
    #             {
    #               field_name: "resource_arn" # One of: ["resource_arn", "resource_id", "account_id", "region", "resource_category", "resource_type", "resource_name", "findings_summary.finding_type", "findings_summary.product_name"],
    #               filter: {
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #               }
    #             }
    #           ],
    #           date_filters: [
    #             {
    #               field_name: "resource_detail_capture_time_dt" # One of: ["resource_detail_capture_time_dt", "resource_creation_time_dt"],
    #               filter: {
    #                 start: "NonEmptyString",
    #                 end: "NonEmptyString",
    #                 date_range: {
    #                   value: 1,
    #                   unit: "DAYS" # One of: ["DAYS"]
    #                 }
    #               }
    #             }
    #           ],
    #           number_filters: [
    #             {
    #               field_name: "findings_summary.total_findings" # One of: ["findings_summary.total_findings", "findings_summary.severities.other", "findings_summary.severities.fatal", "findings_summary.severities.critical", "findings_summary.severities.high", "findings_summary.severities.medium", "findings_summary.severities.low", "findings_summary.severities.informational", "findings_summary.severities.unknown"],
    #               filter: {
    #                 gte: 1.0,
    #                 lte: 1.0,
    #                 eq: 1.0,
    #                 gt: 1.0,
    #                 lt: 1.0
    #               }
    #             }
    #           ],
    #           map_filters: [
    #             {
    #               field_name: "tags" # One of: ["tags"],
    #               filter: {
    #                 key: "NonEmptyString",
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #               }
    #             }
    #           ],
    #           operator: "AND" # One of: ["AND", "OR"]
    #         }
    #       ],
    #       composite_operator: "AND" # One of: ["AND", "OR"]
    #     },
    #     sort_criteria: [
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc" # One of: ["asc", "desc"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_resources_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [ # required
    #       {
    #         resource_arn: "NonEmptyString",
    #         resource_id: "NonEmptyString", # required
    #         account_id: "NonEmptyString", # required
    #         region: "NonEmptyString", # required
    #         resource_category: "Compute" # One of: ["Compute", "Database", "Storage", "Code", "AI/ML", "Identity", "Network", "Other"],
    #         resource_type: "NonEmptyString",
    #         resource_name: "NonEmptyString",
    #         resource_creation_time_dt: "NonEmptyString",
    #         resource_detail_capture_time_dt: "NonEmptyString", # required
    #         findings_summary: [
    #           {
    #             finding_type: "NonEmptyString", # required
    #             product_name: "NonEmptyString", # required
    #             total_findings: 1, # required
    #             severities: {
    #               other: 1,
    #               fatal: 1,
    #               critical: 1,
    #               high: 1,
    #               medium: 1,
    #               low: 1,
    #               informational: 1,
    #               unknown: 1
    #             }
    #           }
    #         ],
    #         resource_tags: [
    #           {
    #             key: "NonEmptyString", # required
    #             value: "NonEmptyString", # required
    #           }
    #         ],
    #         resource_config: ""null"", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetResourcesV2Response]
    def get_resources_v2(params = {}, options = {})
      request = build_request(:get_resources_v2, params)
      request.send_request(options)
    end

    # <p>
    #             Retrieves the definition of a security control. The definition includes the control title, description, Region availability, parameter definitions, and other details.
    #         </p>
    # @param [Hash, Types::GetSecurityControlDefinitionRequest] params
    # @option params [String] :security_control_id
    #   <p>
    #               The ID of the security control to retrieve the definition for. This field doesn’t accept an Amazon Resource Name (ARN).
    #           </p>
    # @example To get the definition of a security control.
    #   # The following example retrieves definition details for the specified security control.
    #   params = {
    #     security_control_id: "EC2.4"
    #   }
    #   options = {}
    #   response = client.get_security_control_definition(params, options)
    #   response.to_h #=>
    #   {
    #     security_control_definition: {
    #       current_region_availability: AVAILABLE,
    #       description: "This control checks whether an Amazon EC2 instance has been stopped for longer than the allowed number of days. The control fails if an EC2 instance is stopped for longer than the maximum allowed time period. Unless you provide a custom parameter value for the maximum allowed time period, Security Hub uses a default value of 30 days.",
    #       remediation_url: "https://docs.aws.amazon.com/console/securityhub/EC2.4/remediation",
    #       security_control_id: "EC2.4",
    #       severity_rating: MEDIUM,
    #       title: "Stopped Amazon EC2 instances should be removed after a specified time period",
    #       parameter_definitions: {
    #         "AllowedDays" => {
    #           description: "Number of days the EC2 instance is allowed to be in a stopped state before generating a failed finding",
    #           configuration_options: {
    #     "Integer" => {
    #       "DefaultValue" => 30,
    #       "Min" => 1,
    #       "Max" => 365
    #     }
    #   }
    #         }
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     security_control_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_security_control_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_control_definition: { # required
    #       security_control_id: "NonEmptyString", # required
    #       title: "NonEmptyString", # required
    #       description: "NonEmptyString", # required
    #       remediation_url: "NonEmptyString", # required
    #       severity_rating: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "CRITICAL"], # required
    #       current_region_availability: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"], # required
    #       customizable_properties: ["Parameters" # One of: ["Parameters"]],
    #       parameter_definitions: {
    #         "NonEmptyString" => {
    #           description: "NonEmptyString", # required
    #           configuration_options: { # required
    #             # One of:
    #             integer: {
    #               default_value: 1,
    #               min: 1,
    #               max: 1
    #             },
    #             integer_list: {
    #               default_value: [1],
    #               min: 1,
    #               max: 1,
    #               max_items: 1
    #             },
    #             double: {
    #               default_value: 1.0,
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             string: {
    #               default_value: "NonEmptyString",
    #               re2_expression: "NonEmptyString",
    #               expression_description: "NonEmptyString"
    #             },
    #             string_list: {
    #               default_value: ["NonEmptyString"],
    #               re2_expression: "NonEmptyString",
    #               max_items: 1,
    #               expression_description: "NonEmptyString"
    #             },
    #             boolean: {
    #               default_value: false
    #             },
    #             enum: {
    #               default_value: "NonEmptyString",
    #               allowed_values: ["NonEmptyString"]
    #             },
    #             enum_list: {
    #               default_value: ["NonEmptyString"],
    #               max_items: 1,
    #               allowed_values: ["NonEmptyString"]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetSecurityControlDefinitionResponse]
    def get_security_control_definition(params = {}, options = {})
      request = build_request(:get_security_control_definition, params)
      request.send_request(options)
    end

    # <note>
    #             <p>We recommend using Organizations instead of Security Hub invitations to manage your member accounts. 
    #            For information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html">Managing Security Hub administrator and member accounts with Organizations</a> 
    #            in the <i>Security Hub User Guide</i>.</p>
    #          </note>
    #          <p>Invites other Amazon Web Services accounts to become member accounts for the Security Hub administrator account that
    #          the invitation is sent from.</p>
    #          <p>This operation is only used to invite accounts that don't belong to an Amazon Web Services organization.
    #          Organization accounts don't receive invitations.</p>
    #          <p>Before you can use this action to invite a member, you must first use the <code>CreateMembers</code> action to create the member account in Security Hub.</p>
    #          <p>When the account owner enables Security Hub and accepts the invitation to become a member
    #          account, the administrator account can view the findings generated in the member account.</p>
    # @param [Hash, Types::InviteMembersRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The list of account IDs of the Amazon Web Services accounts to invite to Security Hub as members. </p>
    # @example To invite accounts to become members
    #   # The following example invites the specified AWS accounts to become member accounts associated with the calling Security Hub administrator account. You only use this operation to invite accounts that don't belong to an AWS Organizations organization.
    #   params = {
    #     account_ids: [
    #       "111122223333",
    #       "444455556666"
    #     ]
    #   }
    #   options = {}
    #   response = client.invite_members(params, options)
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.invite_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId",
    #         processing_result: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::InviteMembersResponse]
    def invite_members(params = {}, options = {})
      request = build_request(:invite_members, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of V2 aggregators. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::ListAggregatorsV2Request] params
    # @option params [String] :next_token
    #   <p>The token required for pagination. 
    #            On your first call, set the value of this parameter to <code>NULL</code>. 
    #            For subsequent calls, to continue listing data, set the value of this parameter to the value returned in the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_aggregators_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregators_v2: [
    #       {
    #         aggregator_v2_arn: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAggregatorsV2Response]
    def list_aggregators_v2(params = {}, options = {})
      request = build_request(:list_aggregators_v2, params)
      request.send_request(options)
    end

    # <p>
    #          A list of automation rules and their metadata for the calling account.
    #       </p>
    # @param [Hash, Types::ListAutomationRulesRequest] params
    # @option params [String] :next_token
    #   <p>
    #            A token to specify where to start paginating the response. This is the <code>NextToken</code> 
    #            from a previously truncated response. On your first call to the <code>ListAutomationRules</code> 
    #            API, set the value of this parameter to <code>NULL</code>.
    #         </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of rules to return in the response. This currently ranges from 1 to
    #            100. </p>
    # @example To list automation rules
    #   # The following example lists automation rules and rule metadata in the calling account.
    #   params = {
    #     next_token: "example-token",
    #     max_results: 2
    #   }
    #   options = {}
    #   response = client.list_automation_rules(params, options)
    #   response.to_h #=>
    #   {
    #     automation_rules_metadata: [
    #       {
    #         rule_name: "sample-rule-name-1",
    #         rule_order: 1,
    #         description: "IAM.8 is a known issue and can be resolved",
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         rule_status: ENABLED,
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14",
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"),
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z")
    #       },
    #       {
    #         rule_name: "sample-rule-name-2",
    #         rule_order: 2,
    #         description: "Lambda.2 is a known issue and can be resolved",
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #         rule_status: ENABLED,
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14",
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"),
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z")
    #       }
    #     ],
    #     next_token: "example-token"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_automation_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_rules_metadata: [
    #       {
    #         rule_arn: "NonEmptyString",
    #         rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         rule_order: 1,
    #         rule_name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         is_terminal: false,
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         created_by: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationRulesResponse]
    def list_automation_rules(params = {}, options = {})
      request = build_request(:list_automation_rules, params)
      request.send_request(options)
    end

    # <p>Returns a list of automation rules and metadata for the calling account. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::ListAutomationRulesV2Request] params
    # @option params [String] :next_token
    #   <p>The token required for pagination. 
    #            On your first call, set the value of this parameter to <code>NULL</code>. 
    #            For subsequent calls, to continue listing data, set the value of this parameter to the value returned in the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_automation_rules_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_arn: "NonEmptyString",
    #         rule_id: "NonEmptyString",
    #         rule_order: 1.0,
    #         rule_name: "NonEmptyString",
    #         rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         description: "NonEmptyString",
    #         actions: [
    #           {
    #             type: "FINDING_FIELDS_UPDATE" # One of: ["FINDING_FIELDS_UPDATE", "EXTERNAL_INTEGRATION"]
    #           }
    #         ],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationRulesV2Response]
    def list_automation_rules_v2(params = {}, options = {})
      request = build_request(:list_automation_rules_v2, params)
      request.send_request(options)
    end

    # <p>
    #             Lists the configuration policies that the Security Hub delegated administrator has created for your 
    #             organization. Only the delegated administrator can invoke this operation from the home Region.
    #         </p>
    # @param [Hash, Types::ListConfigurationPoliciesRequest] params
    # @option params [String] :next_token
    #   <p>
    #               The NextToken value that's returned from a previous paginated <code>ListConfigurationPolicies</code> request where 
    #               <code>MaxResults</code> was used but the results exceeded the value of that parameter. Pagination continues from the 
    #               <code>MaxResults</code> was used but the results exceeded the value of that parameter. Pagination continues from the 
    #               end of the previous response that returned the <code>NextToken</code> value. This value is <code>null</code> when 
    #               there are no more results to return.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>
    #               The maximum number of results that's returned by <code>ListConfigurationPolicies</code> in each page of the response. 
    #               When this parameter is used, <code>ListConfigurationPolicies</code> returns the specified number of results in a 
    #               single page and a <code>NextToken</code> response element. You can see the remaining results of the initial request 
    #               by sending another <code>ListConfigurationPolicies</code> request with the returned <code>NextToken</code> value. A 
    #               valid range for <code>MaxResults</code> is between 1 and 100.
    #           </p>
    # @example To view a list of configuration policies
    #   # This operation provides a list of your configuration policies, including metadata for each policy.
    #   params = {
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOhvw3o2JqjI86QDxdf",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configuration_policies(params, options)
    #   response.to_h #=>
    #   {
    #     configuration_policy_summaries: [
    #       {
    #         arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         name: "TestConfigurationPolicy",
    #         description: "Configuration policy for testing FSBP and CIS",
    #         updated_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #         service_enabled: true
    #       }
    #     ],
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOfvw3o2JqjI86QDxef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configuration_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_policy_summaries: [
    #       {
    #         arn: "NonEmptyString",
    #         id: "NonEmptyString",
    #         name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         updated_at: Time.now,
    #         service_enabled: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConfigurationPoliciesResponse]
    def list_configuration_policies(params = {}, options = {})
      request = build_request(:list_configuration_policies, params)
      request.send_request(options)
    end

    # <p>
    #             Provides information about the associations for your configuration policies and self-managed behavior. Only the 
    #             Security Hub delegated administrator can invoke this operation from the home Region.
    #         </p>
    # @param [Hash, Types::ListConfigurationPolicyAssociationsRequest] params
    # @option params [String] :next_token
    #   <p>
    #               The <code>NextToken</code> value that's returned from a previous paginated <code>ListConfigurationPolicyAssociations</code> 
    #               request where <code>MaxResults</code> was used but the results exceeded the value of that parameter. Pagination 
    #               continues from the end of the previous response that returned the <code>NextToken</code> value. This value is <code>null</code> 
    #               when there are no more results to return.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>
    #               The maximum number of results that's returned by <code>ListConfigurationPolicies</code> in each page of the response. 
    #               When this parameter is used, <code>ListConfigurationPolicyAssociations</code> returns the specified number of results 
    #               in a single page and a <code>NextToken</code> response element. You can see the remaining results of the initial 
    #               request by sending another <code>ListConfigurationPolicyAssociations</code> request with the returned <code>NextToken</code> 
    #               value. A valid range for <code>MaxResults</code> is between 1 and 100.
    #           </p>
    # @option params [Types::AssociationFilters] :filters
    #   <p>
    #               Options for filtering the <code>ListConfigurationPolicyAssociations</code> response. You can filter by the Amazon Resource Name (ARN) or 
    #               universally unique identifier (UUID) of a configuration, <code>AssociationType</code>, or <code>AssociationStatus</code>.
    #           </p>
    # @example To list configuration associations
    #   # This operation lists all of the associations between targets and configuration policies or self-managed behavior. Targets can include accounts, organizational units, or the root.
    #   params = {
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOhvw3o2JqjI86QDxdf",
    #     max_results: 1,
    #     filters: {
    #       association_type: APPLIED
    #     }
    #   }
    #   options = {}
    #   response = client.list_configuration_policy_associations(params, options)
    #   response.to_h #=>
    #   {
    #     configuration_policy_association_summaries: [
    #       {
    #         configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         target_id: "123456789012",
    #         target_type: ACCOUNT,
    #         association_type: APPLIED,
    #         updated_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #         association_status: PENDING
    #       }
    #     ],
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOfvw3o2JqjI86QDxef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       configuration_policy_id: "NonEmptyString",
    #       association_type: "INHERITED" # One of: ["INHERITED", "APPLIED"],
    #       association_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_configuration_policy_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_policy_association_summaries: [
    #       {
    #         configuration_policy_id: "NonEmptyString",
    #         target_id: "NonEmptyString",
    #         target_type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"],
    #         association_type: "INHERITED" # One of: ["INHERITED", "APPLIED"],
    #         updated_at: Time.now,
    #         association_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED"],
    #         association_status_message: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConfigurationPolicyAssociationsResponse]
    def list_configuration_policy_associations(params = {}, options = {})
      request = build_request(:list_configuration_policy_associations, params)
      request.send_request(options)
    end

    # <p>Grants permission to retrieve a list of connectorsV2 and their metadata for the calling account. This API is in preview release and subject to change.</p>
    # @param [Hash, Types::ListConnectorsV2Request] params
    # @option params [String] :next_token
    #   <p>The pagination token per the Amazon Web Services Pagination standard</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned.</p>
    # @option params [String] :provider_name
    #   <p>The name of the third-party provider.</p>
    # @option params [String] :connector_status
    #   <p>The status for the connectorV2.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     provider_name: "JIRA_CLOUD" # One of: ["JIRA_CLOUD", "SERVICENOW"],
    #     connector_status: "CONNECTED" # One of: ["CONNECTED", "FAILED_TO_CONNECT", "PENDING_CONFIGURATION", "PENDING_AUTHORIZATION"]
    #   }
    #   options = {}
    #   response = client.list_connectors_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     connectors: [ # required
    #       {
    #         connector_arn: "NonEmptyString",
    #         connector_id: "NonEmptyString", # required
    #         name: "NonEmptyString", # required
    #         description: "NonEmptyString",
    #         provider_summary: { # required
    #           provider_name: "JIRA_CLOUD" # One of: ["JIRA_CLOUD", "SERVICENOW"],
    #           connector_status: "CONNECTED" # One of: ["CONNECTED", "FAILED_TO_CONNECT", "PENDING_CONFIGURATION", "PENDING_AUTHORIZATION"]
    #         },
    #         created_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListConnectorsV2Response]
    def list_connectors_v2(params = {}, options = {})
      request = build_request(:list_connectors_v2, params)
      request.send_request(options)
    end

    # <p>Lists all findings-generating solutions (products) that you are subscribed to receive
    #          findings from in Security Hub.</p>
    # @param [Hash, Types::ListEnabledProductsForImportRequest] params
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListEnabledProductsForImport</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    # @example To list ARNs for enabled integrations
    #   # The following example returns a list of subscription Amazon Resource Names (ARNs) for the product integrations that you have currently enabled in Security Hub.
    #   params = {}
    #   options = {}
    #   response = client.list_enabled_products_for_import(params, options)
    #   response.to_h #=>
    #   {
    #     product_subscriptions: [
    #       "arn:aws:securityhub:us-east-1:517716713836:product-subscription/crowdstrike/crowdstrike-falcon",
    #       "arn:aws:securityhub:us-east-1::product/3coresec/3coresec"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_enabled_products_for_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_subscriptions: ["NonEmptyString"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEnabledProductsForImportResponse]
    def list_enabled_products_for_import(params = {}, options = {})
      request = build_request(:list_enabled_products_for_import, params)
      request.send_request(options)
    end

    # <p>If cross-Region aggregation is enabled, then <code>ListFindingAggregators</code> returns the Amazon Resource Name (ARN) 
    # of the finding aggregator. You can run this operation from any Amazon Web Services Region.</p>
    # @param [Hash, Types::ListFindingAggregatorsRequest] params
    # @option params [String] :next_token
    #   <p>The token returned with the previous set of results. Identifies the next set of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. This operation currently only returns a single result.</p>
    # @example To update the enablement status of a standard control
    #   # The following example disables the specified control in the specified security standard.
    #   params = {}
    #   options = {}
    #   response = client.list_finding_aggregators(params, options)
    #   response.to_h #=>
    #   {
    #     finding_aggregators: [
    #       {
    #         finding_aggregator_arn: "arn:aws:securityhub:us-east-1:222222222222:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_finding_aggregators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_aggregators: [
    #       {
    #         finding_aggregator_arn: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFindingAggregatorsResponse]
    def list_finding_aggregators(params = {}, options = {})
      request = build_request(:list_finding_aggregators, params)
      request.send_request(options)
    end

    # <note>
    #             <p>We recommend using Organizations instead of Security Hub invitations to manage your member accounts. 
    #            For information, see <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html">Managing Security Hub administrator and member accounts with Organizations</a> 
    #            in the <i>Security Hub User Guide</i>.</p>
    #          </note>
    #          <p>Lists all Security Hub membership invitations that were sent to the calling account.</p>
    #          <p>Only accounts that are managed by invitation can use this operation.
    #          Accounts that are managed using the integration with Organizations don't receive invitations.</p>
    # @param [Hash, Types::ListInvitationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. </p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListInvitations</code> operation, set the value of this parameter to
    #               <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations: [
    #       {
    #         account_id: "AccountId",
    #         invitation_id: "NonEmptyString",
    #         invited_at: Time.now,
    #         member_status: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListInvitationsResponse]
    def list_invitations(params = {}, options = {})
      request = build_request(:list_invitations, params)
      request.send_request(options)
    end

    # <p>Lists details about all member accounts for the current Security Hub administrator
    #          account.</p>
    #          <p>The results include both member accounts that belong to an organization and member
    #          accounts that were invited manually.</p>
    # @param [Hash, Types::ListMembersRequest] params
    # @option params [Boolean] :only_associated
    #   <p>Specifies which member accounts to include in the response based on their relationship
    #            status with the administrator account. The default value is <code>TRUE</code>.</p>
    #            <p>If <code>OnlyAssociated</code> is set to <code>TRUE</code>, the response includes member
    #            accounts whose relationship status with the administrator account is set to <code>ENABLED</code>.</p>
    #            <p>If <code>OnlyAssociated</code> is set to <code>FALSE</code>, the response includes all
    #            existing member accounts. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. </p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListMembers</code> operation, set the value of this parameter to
    #            <code>NULL</code>.</p>
    #            <p>For subsequent calls to the operation, to continue listing data, set the value of this
    #            parameter to the value returned from the previous response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     only_associated: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         account_id: "AccountId",
    #         email: "NonEmptyString",
    #         master_id: "NonEmptyString",
    #         administrator_id: "NonEmptyString",
    #         member_status: "NonEmptyString",
    #         invited_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListMembersResponse]
    def list_members(params = {}, options = {})
      request = build_request(:list_members, params)
      request.send_request(options)
    end

    # <p>Lists the Security Hub administrator accounts. Can only be called by the organization
    #          management account.</p>
    # @param [Hash, Types::ListOrganizationAdminAccountsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    # @option params [String] :next_token
    #   <p>The token that is required for pagination. On your first call to the
    #               <code>ListOrganizationAdminAccounts</code> operation, set the value of this parameter to
    #               <code>NULL</code>. For subsequent calls to the operation, to continue listing data, set
    #            the value of this parameter to the value returned from the previous response. </p>
    # @option params [String] :feature
    #   <p>The feature where the delegated administrator account is listed. 
    #            Defaults to Security Hub if not specified.</p>
    # @example To list administrator acccounts for an organization
    #   # The following example lists the Security  Hub administrator accounts for an organization. Only the organization management account can call this operation.
    #   params = {}
    #   options = {}
    #   response = client.list_organization_admin_accounts(params, options)
    #   response.to_h #=>
    #   {
    #     admin_accounts: [
    #       {
    #         account_id: "777788889999"
    #       },
    #       {
    #         status: ENABLED
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     feature: "SecurityHub" # One of: ["SecurityHub", "SecurityHubV2"]
    #   }
    #   options = {}
    #   response = client.list_organization_admin_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_accounts: [
    #       {
    #         account_id: "NonEmptyString",
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLE_IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     feature: "SecurityHub" # One of: ["SecurityHub", "SecurityHubV2"]
    #   }
    # @return [Types::ListOrganizationAdminAccountsResponse]
    def list_organization_admin_accounts(params = {}, options = {})
      request = build_request(:list_organization_admin_accounts, params)
      request.send_request(options)
    end

    # <p>
    #          Lists all of the security controls that apply to a specified standard. 
    #       </p>
    # @param [Hash, Types::ListSecurityControlDefinitionsRequest] params
    # @option params [String] :standards_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the standard that you want to view controls for.
    #         </p>
    # @option params [String] :next_token
    #   <p>
    #            Optional pagination parameter.
    #         </p>
    # @option params [Integer] :max_results
    #   <p> An optional parameter that limits the total results of the API response to the
    #            specified number. If this parameter isn't provided in the request, the results include the
    #            first 25 security controls that apply to the specified standard. The results also include a
    #               <code>NextToken</code> parameter that you can use in a subsequent API call to get the
    #            next 25 controls. This repeats until all controls for the standard are returned. </p>
    # @example To list security controls that apply to a standard
    #   # The following example lists security controls that apply to a specified Security Hub standard. 
    #   params = {
    #     standards_arn: "arn:aws:securityhub:::standards/aws-foundational-security-best-practices/v/1.0.0",
    #     next_token: "NULL",
    #     max_results: 3
    #   }
    #   options = {}
    #   response = client.list_security_control_definitions(params, options)
    #   response.to_h #=>
    #   {
    #     security_control_definitions: [
    #       {
    #         security_control_id: "ACM.1",
    #         title: "Imported and ACM-issued certificates should be renewed after a specified time period",
    #         description: "This AWS control checks whether ACM Certificates in your account are marked for expiration within a specified time period. Certificates provided by ACM are automatically renewed. ACM does not automatically renew certificates that you import.",
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/ACM.1/remediation",
    #         severity_rating: MEDIUM,
    #         current_region_availability: AVAILABLE,
    #         customizable_properties: [
    #           Parameters
    #         ]
    #       },
    #       {
    #         security_control_id: "APIGateway.1",
    #         title: "API Gateway REST and WebSocket API execution logging should be enabled",
    #         description: "This control checks whether all stages of Amazon API Gateway REST and WebSocket APIs have logging enabled. The control fails if logging is not enabled for all methods of a stage or if loggingLevel is neither ERROR nor INFO.",
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/APIGateway.1/remediation",
    #         severity_rating: MEDIUM,
    #         current_region_availability: AVAILABLE,
    #         customizable_properties: [
    #           Parameters
    #         ]
    #       },
    #       {
    #         security_control_id: "APIGateway.2",
    #         title: "API Gateway REST API stages should be configured to use SSL certificates for backend authentication",
    #         description: "This control checks whether Amazon API Gateway REST API stages have SSL certificates configured that backend systems can use to authenticate that incoming requests are from the API Gateway.",
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/APIGateway.2/remediation",
    #         severity_rating: MEDIUM,
    #         current_region_availability: AVAILABLE
    #       }
    #     ],
    #     next_token: "U2FsdGVkX1..."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_arn: "NonEmptyString",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_control_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_control_definitions: [ # required
    #       {
    #         security_control_id: "NonEmptyString", # required
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation_url: "NonEmptyString", # required
    #         severity_rating: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "CRITICAL"], # required
    #         current_region_availability: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"], # required
    #         customizable_properties: ["Parameters" # One of: ["Parameters"]],
    #         parameter_definitions: {
    #           "NonEmptyString" => {
    #             description: "NonEmptyString", # required
    #             configuration_options: { # required
    #               # One of:
    #               integer: {
    #                 default_value: 1,
    #                 min: 1,
    #                 max: 1
    #               },
    #               integer_list: {
    #                 default_value: [1],
    #                 min: 1,
    #                 max: 1,
    #                 max_items: 1
    #               },
    #               double: {
    #                 default_value: 1.0,
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               string: {
    #                 default_value: "NonEmptyString",
    #                 re2_expression: "NonEmptyString",
    #                 expression_description: "NonEmptyString"
    #               },
    #               string_list: {
    #                 default_value: ["NonEmptyString"],
    #                 re2_expression: "NonEmptyString",
    #                 max_items: 1,
    #                 expression_description: "NonEmptyString"
    #               },
    #               boolean: {
    #                 default_value: false
    #               },
    #               enum: {
    #                 default_value: "NonEmptyString",
    #                 allowed_values: ["NonEmptyString"]
    #               },
    #               enum_list: {
    #                 default_value: ["NonEmptyString"],
    #                 max_items: 1,
    #                 allowed_values: ["NonEmptyString"]
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityControlDefinitionsResponse]
    def list_security_control_definitions(params = {}, options = {})
      request = build_request(:list_security_control_definitions, params)
      request.send_request(options)
    end

    # <p>
    #          Specifies whether a control is currently enabled or disabled in each enabled standard in the calling account.
    #       </p>
    #          <p>This operation omits standards control associations for standard subscriptions where <code>StandardsControlsUpdatable</code> has value <code>NOT_READY_FOR_UPDATES</code>.</p>
    # @param [Hash, Types::ListStandardsControlAssociationsRequest] params
    # @option params [String] :security_control_id
    #   <p>
    #            The identifier of the control (identified with <code>SecurityControlId</code>, <code>SecurityControlArn</code>, or a mix of both parameters) that you 
    #            want to determine the enablement status of in each enabled standard. 
    #         </p>
    # @option params [String] :next_token
    #   <p>
    #            Optional pagination parameter.
    #         </p>
    # @option params [Integer] :max_results
    #   <p> An optional parameter that limits the total results of the API response to the
    #            specified number. If this parameter isn't provided in the request, the results include the
    #            first 25 standard and control associations. The results also include a
    #               <code>NextToken</code> parameter that you can use in a subsequent API call to get the
    #            next 25 associations. This repeats until all associations for the specified control are
    #            returned. The number of results is limited by the number of supported Security Hub
    #            standards that you've enabled in the calling account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_control_id: "NonEmptyString", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_standards_control_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     standards_control_association_summaries: [ # required
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         security_control_id: "NonEmptyString", # required
    #         security_control_arn: "NonEmptyString", # required
    #         association_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         related_requirements: ["NonEmptyString"],
    #         updated_at: Time.now,
    #         updated_reason: "NonEmptyString",
    #         standards_control_title: "NonEmptyString",
    #         standards_control_description: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStandardsControlAssociationsResponse]
    def list_standards_control_associations(params = {}, options = {})
      request = build_request(:list_standards_control_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags associated with a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to retrieve tags for.</p>
    # @example To get a list of tags for a resource
    #   # The following example returns a list of tags associated with the specified resource.
    #   params = {
    #     resource_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "Department" => "Operations",
    #       "Area" => "USMidwest"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>
    #             Associates a target account, organizational unit, or the root with a specified configuration. The target can be 
    #             associated with a configuration policy or self-managed behavior. Only the Security Hub delegated administrator can 
    #             invoke this operation from the home Region.
    #         </p>
    # @param [Hash, Types::StartConfigurationPolicyAssociationRequest] params
    # @option params [String] :configuration_policy_identifier
    #   <p>
    #               The Amazon Resource Name (ARN) of a configuration policy, the universally unique identifier (UUID) of a 
    #               configuration policy, or a value of <code>SELF_MANAGED_SECURITY_HUB</code> for a self-managed configuration.
    #           </p>
    # @option params [Types::Target] :target
    #   <p>
    #               The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
    #           </p>
    # @example To associate a configuration with a target
    #   # This operation associates a configuration policy or self-managed behavior with the target account, organizational unit, or the root.
    #   params = {
    #     configuration_policy_identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     target: {
    #     "AccountId" => 111122223333
    #   }
    #   }
    #   options = {}
    #   response = client.start_configuration_policy_association(params, options)
    #   response.to_h #=>
    #   {
    #     configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     target_id: "111122223333",
    #     target_type: ACCOUNT,
    #     association_type: APPLIED,
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #     association_status: SUCCESS,
    #     association_status_message: "This field is populated only if the association fails"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_policy_identifier: "NonEmptyString", # required
    #     target: { # required
    #       # One of:
    #       account_id: "NonEmptyString",
    #       organizational_unit_id: "NonEmptyString",
    #       root_id: "NonEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.start_configuration_policy_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_policy_id: "NonEmptyString",
    #     target_id: "NonEmptyString",
    #     target_type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"],
    #     association_type: "INHERITED" # One of: ["INHERITED", "APPLIED"],
    #     updated_at: Time.now,
    #     association_status: "PENDING" # One of: ["PENDING", "SUCCESS", "FAILED"],
    #     association_status_message: "NonEmptyString"
    #   }
    # @return [Types::StartConfigurationPolicyAssociationResponse]
    def start_configuration_policy_association(params = {}, options = {})
      request = build_request(:start_configuration_policy_association, params)
      request.send_request(options)
    end

    # <p>
    #             Disassociates a target account, organizational unit, or the root from a specified configuration. When you 
    #             disassociate a configuration from its target, the target inherits the configuration of the closest parent. If there’s no 
    #             configuration to inherit, the target retains its settings but becomes a self-managed account. A target can be disassociated from 
    #             a configuration policy or self-managed behavior. Only the Security Hub delegated administrator can invoke this 
    #             operation from the home Region.
    #         </p>
    # @param [Hash, Types::StartConfigurationPolicyDisassociationRequest] params
    # @option params [Types::Target] :target
    #   <p>
    #               The identifier of the target account, organizational unit, or the root to disassociate from the specified configuration.
    #           </p>
    # @option params [String] :configuration_policy_identifier
    #   <p>
    #               The Amazon Resource Name (ARN) of a configuration policy, the universally unique identifier (UUID) of a 
    #               configuration policy, or a value of <code>SELF_MANAGED_SECURITY_HUB</code> for a self-managed configuration.
    #           </p>
    # @example To disassociate a configuration from a target
    #   # This operation disassociates a configuration policy or self-managed behavior from the target account, organizational unit, or the root.
    #   params = {
    #     target: {
    #     "RootId" => r-f6g7h8i9j0example
    #   },
    #     configuration_policy_identifier: "SELF_MANAGED_SECURITY_HUB"
    #   }
    #   options = {}
    #   response = client.start_configuration_policy_disassociation(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     target: {
    #       # One of:
    #       account_id: "NonEmptyString",
    #       organizational_unit_id: "NonEmptyString",
    #       root_id: "NonEmptyString"
    #     },
    #     configuration_policy_identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.start_configuration_policy_disassociation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartConfigurationPolicyDisassociationResponse]
    def start_configuration_policy_disassociation(params = {}, options = {})
      request = build_request(:start_configuration_policy_disassociation, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to apply the tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. You can add up to 50 tags at a time. The tag keys can be no longer than 128 characters. The tag values can be no longer than 256 characters.</p>
    # @example To tag a resource
    #   # The following example adds the 'Department' and 'Area' tags to the specified resource.
    #   params = {
    #     resource_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default",
    #     tags: {
    #       "Department" => "Operations",
    #       "Area" => "USMidwest"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Removes one or more tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove the tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys associated with the tags to remove from the resource. You can remove up to 50 tags at a time.</p>
    # @example To remove tags from a resource
    #   # The following example removes the 'Department' tag from the specified resource.
    #   params = {
    #     resource_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default",
    #     tag_keys: [
    #       "Department"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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

    # <p>Updates the name and description of a custom action target in Security Hub.</p>
    # @param [Hash, Types::UpdateActionTargetRequest] params
    # @option params [String] :action_target_arn
    #   <p>The ARN of the custom action target to update.</p>
    # @option params [String] :name
    #   <p>The updated name of the custom action target.</p>
    # @option params [String] :description
    #   <p>The updated description for the custom action target.</p>
    # @example To update the name and description of a custom action target
    #   # The following example updates the name and description of a custom action target in Security Hub. You can create custom actions to automatically respond to Security Hub findings using Amazon EventBridge. 
    #   params = {
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation",
    #     name: "Chat custom action",
    #     description: "Sends specified findings to customer service chat"
    #   }
    #   options = {}
    #   response = client.update_action_target(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     action_target_arn: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     description: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.update_action_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateActionTargetResponse]
    def update_action_target(params = {}, options = {})
      request = build_request(:update_action_target, params)
      request.send_request(options)
    end

    # <p>Udpates the configuration for the Aggregator V2. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::UpdateAggregatorV2Request] params
    # @option params [String] :aggregator_v2_arn
    #   <p>The ARN of the Aggregator V2.</p>
    # @option params [String] :region_linking_mode
    #   <p>Determines how Amazon Web Services Regions should be linked to the Aggregator V2.</p>
    # @option params [Array<String>] :linked_regions
    #   <p>A list of Amazon Web Services Regions linked to the aggegation Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aggregator_v2_arn: "NonEmptyString", # required
    #     region_linking_mode: "NonEmptyString", # required
    #     linked_regions: ["NonEmptyString"]
    #   }
    #   options = {}
    #   response = client.update_aggregator_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregator_v2_arn: "NonEmptyString",
    #     aggregation_region: "NonEmptyString",
    #     region_linking_mode: "NonEmptyString",
    #     linked_regions: ["NonEmptyString"]
    #   }
    # @return [Types::UpdateAggregatorV2Response]
    def update_aggregator_v2(params = {}, options = {})
      request = build_request(:update_aggregator_v2, params)
      request.send_request(options)
    end

    # <p>Updates a V2 automation rule. This API is in private preview and subject to change.</p>
    # @param [Hash, Types::UpdateAutomationRuleV2Request] params
    # @option params [String] :identifier
    #   <p>The ARN of the automation rule.</p>
    # @option params [String] :rule_status
    #   <p>The status of the automation rule.</p>
    # @option params [Float] :rule_order
    #   <p>Represents a value for the rule priority.</p>
    # @option params [String] :description
    #   <p>A description of the automation rule.</p>
    # @option params [String] :rule_name
    #   <p>The name of the automation rule.</p>
    # @option params [Types::Criteria] :criteria
    #   <p>The filtering type and configuration of the automation rule.</p>
    # @option params [Array<Types::AutomationRulesActionV2>] :actions
    #   <p>A list of actions to be performed when the rule criteria is met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     rule_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     rule_order: 1.0,
    #     description: "NonEmptyString",
    #     rule_name: "NonEmptyString",
    #     criteria: {
    #       # One of:
    #       ocsf_finding_criteria: {
    #         composite_filters: [
    #           {
    #             string_filters: [
    #               {
    #                 field_name: "metadata.uid" # One of: ["metadata.uid", "activity_name", "cloud.account.uid", "cloud.provider", "cloud.region", "compliance.assessments.category", "compliance.assessments.name", "compliance.control", "compliance.status", "compliance.standards", "finding_info.desc", "finding_info.src_url", "finding_info.title", "finding_info.types", "finding_info.uid", "finding_info.related_events.uid", "finding_info.related_events.product.uid", "finding_info.related_events.title", "metadata.product.name", "metadata.product.uid", "metadata.product.vendor_name", "remediation.desc", "remediation.references", "resources.cloud_partition", "resources.region", "resources.type", "resources.uid", "severity", "status", "comment", "vulnerabilities.fix_coverage", "class_name"],
    #                 filter: {
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #                 }
    #               }
    #             ],
    #             date_filters: [
    #               {
    #                 field_name: "finding_info.created_time_dt" # One of: ["finding_info.created_time_dt", "finding_info.first_seen_time_dt", "finding_info.last_seen_time_dt", "finding_info.modified_time_dt"],
    #                 filter: {
    #                   start: "NonEmptyString",
    #                   end: "NonEmptyString",
    #                   date_range: {
    #                     value: 1,
    #                     unit: "DAYS" # One of: ["DAYS"]
    #                   }
    #                 }
    #               }
    #             ],
    #             boolean_filters: [
    #               {
    #                 field_name: "compliance.assessments.meets_criteria" # One of: ["compliance.assessments.meets_criteria", "vulnerabilities.is_exploit_available", "vulnerabilities.is_fix_available"],
    #                 filter: {
    #                   value: false
    #                 }
    #               }
    #             ],
    #             number_filters: [
    #               {
    #                 field_name: "activity_id" # One of: ["activity_id", "compliance.status_id", "confidence_score", "severity_id", "status_id", "finding_info.related_events_count"],
    #                 filter: {
    #                   gte: 1.0,
    #                   lte: 1.0,
    #                   eq: 1.0,
    #                   gt: 1.0,
    #                   lt: 1.0
    #                 }
    #               }
    #             ],
    #             map_filters: [
    #               {
    #                 field_name: "resources.tags" # One of: ["resources.tags"],
    #                 filter: {
    #                   key: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #                 }
    #               }
    #             ],
    #             operator: "AND" # One of: ["AND", "OR"]
    #           }
    #         ],
    #         composite_operator: "AND" # One of: ["AND", "OR"]
    #       }
    #     },
    #     actions: [
    #       {
    #         type: "FINDING_FIELDS_UPDATE" # One of: ["FINDING_FIELDS_UPDATE", "EXTERNAL_INTEGRATION"], # required
    #         finding_fields_update: {
    #           severity_id: 1,
    #           comment: "NonEmptyString",
    #           status_id: 1
    #         },
    #         external_integration_configuration: {
    #           connector_arn: "NonEmptyString"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_automation_rule_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAutomationRuleV2Response]
    def update_automation_rule_v2(params = {}, options = {})
      request = build_request(:update_automation_rule_v2, params)
      request.send_request(options)
    end

    # <p>
    #             Updates a configuration policy. Only the Security Hub delegated 
    #             administrator can invoke this operation from the home Region.
    #         </p>
    # @param [Hash, Types::UpdateConfigurationPolicyRequest] params
    # @option params [String] :identifier
    #   <p>
    #               The Amazon Resource Name (ARN) or universally unique identifier (UUID) of the configuration policy.
    #           </p>
    # @option params [String] :name
    #   <p>
    #               The name of the configuration policy. Alphanumeric characters and the following ASCII characters are permitted: 
    #               <code>-, ., !, *, /</code>.
    #           </p>
    # @option params [String] :description
    #   <p>
    #               The description of the configuration policy.
    #           </p>
    # @option params [String] :updated_reason
    #   <p>
    #               The reason for updating the configuration policy.
    #           </p>
    # @option params [Types::Policy] :configuration_policy
    #   <p>
    #               An object that defines how Security Hub is configured. It includes whether Security Hub is enabled or 
    #               disabled, a list of enabled security standards, a list of enabled or disabled security controls, and a list of custom parameter values for specified controls. 
    #               If you provide a list of security controls that are enabled in the configuration policy, Security Hub disables all other controls (including newly 
    #               released controls). If you provide a list of security controls that are disabled in the configuration policy, Security Hub 
    #               enables all other controls (including newly released controls).
    #           </p>
    #            <p>When updating a configuration policy, provide a complete list of standards that you want to enable and a complete list 
    #               of controls that you want to enable or disable. The updated configuration replaces the current configuration.</p>
    # @example To update a configuration policy
    #   # This operation updates the specified configuration policy.
    #   params = {
    #     identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     name: "TestConfigurationPolicy",
    #     description: "Updated configuration policy for testing FSBP and CIS",
    #     updated_reason: "Enabling ACM.2",
    #     configuration_policy: {
    #     "SecurityHub" => {
    #       "ServiceEnabled" => true,
    #       "EnabledStandardIdentifiers" => [
    #         arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0,
    #         arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
    #       ],
    #       "SecurityControlsConfiguration" => {
    #         "DisabledSecurityControlIdentifiers" => [
    #           CloudWatch.1,
    #           CloudWatch.2
    #         ],
    #         "SecurityControlCustomParameters" => [{
    #           "SecurityControlId" => ACM.1,
    #           "Parameters" => {
    #             "daysToExpiration" => {
    #               "ValueType" => CUSTOM,
    #               "Value" => {
    #                 "Integer" => 21
    #               }
    #             }
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.update_configuration_policy(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     name: "TestConfigurationPolicy",
    #     description: "Updated configuration policy for testing FSBP and CIS",
    #     updated_at: Time.parse("2023-01-12T06:17:17.154Z"),
    #     created_at: Time.parse("2023-01-11T06:17:17.154Z"),
    #     configuration_policy: {
    #     "SecurityHub" => {
    #       "ServiceEnabled" => true,
    #       "EnabledStandardIdentifiers" => [
    #         arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0,
    #         arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
    #       ],
    #       "SecurityControlsConfiguration" => {
    #         "DisabledSecurityControlIdentifiers" => [
    #           CloudWatch.1,
    #           CloudWatch.2
    #         ],
    #         "SecurityControlCustomParameters" => [{
    #           "SecurityControlId" => ACM.1,
    #           "Parameters" => {
    #             "daysToExpiration" => {
    #               "ValueType" => CUSTOM,
    #               "Value" => {
    #                 "Integer" => 21
    #               }
    #             }
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     description: "NonEmptyString",
    #     updated_reason: "NonEmptyString",
    #     configuration_policy: {
    #       # One of:
    #       security_hub: {
    #         service_enabled: false,
    #         enabled_standard_identifiers: ["NonEmptyString"],
    #         security_controls_configuration: {
    #           enabled_security_control_identifiers: ["NonEmptyString"],
    #           disabled_security_control_identifiers: ["NonEmptyString"],
    #           security_control_custom_parameters: [
    #             {
    #               security_control_id: "NonEmptyString",
    #               parameters: {
    #                 "NonEmptyString" => {
    #                   value_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #                   value: {
    #                     # One of:
    #                     integer: 1,
    #                     integer_list: [1],
    #                     double: 1.0,
    #                     string: "NonEmptyString",
    #                     string_list: ["NonEmptyString"],
    #                     boolean: false,
    #                     enum: "NonEmptyString",
    #                     enum_list: ["NonEmptyString"]
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_configuration_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NonEmptyString",
    #     id: "NonEmptyString",
    #     name: "NonEmptyString",
    #     description: "NonEmptyString",
    #     updated_at: Time.now,
    #     created_at: Time.now,
    #     configuration_policy: {
    #       # One of:
    #       security_hub: {
    #         service_enabled: false,
    #         enabled_standard_identifiers: ["NonEmptyString"],
    #         security_controls_configuration: {
    #           enabled_security_control_identifiers: ["NonEmptyString"],
    #           disabled_security_control_identifiers: ["NonEmptyString"],
    #           security_control_custom_parameters: [
    #             {
    #               security_control_id: "NonEmptyString",
    #               parameters: {
    #                 "NonEmptyString" => {
    #                   value_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #                   value: {
    #                     # One of:
    #                     integer: 1,
    #                     integer_list: [1],
    #                     double: 1.0,
    #                     string: "NonEmptyString",
    #                     string_list: ["NonEmptyString"],
    #                     boolean: false,
    #                     enum: "NonEmptyString",
    #                     enum_list: ["NonEmptyString"]
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateConfigurationPolicyResponse]
    def update_configuration_policy(params = {}, options = {})
      request = build_request(:update_configuration_policy, params)
      request.send_request(options)
    end

    # <p>Grants permission to update a connectorV2 based on its id and input parameters. This API is in preview release and subject to change.</p>
    # @param [Hash, Types::UpdateConnectorV2Request] params
    # @option params [String] :connector_id
    #   <p>The UUID of the connectorV2 to identify connectorV2 resource.</p>
    # @option params [String] :client_secret
    #   <p>The clientSecret of ServiceNow.</p>
    # @option params [String] :description
    #   <p>The description of the connectorV2.</p>
    # @option params [Types::ProviderUpdateConfiguration] :provider
    #   <p>The third-party provider’s service configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "NonEmptyString", # required
    #     client_secret: "SensitiveNonEmptyString",
    #     description: "NonEmptyString",
    #     provider: {
    #       # One of:
    #       jira_cloud: {
    #         project_key: "NonEmptyString", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_connector_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConnectorV2Response]
    def update_connector_v2(params = {}, options = {})
      request = build_request(:update_connector_v2, params)
      request.send_request(options)
    end

    # <note>
    #             <p>The <i>aggregation Region</i> is now called the <i>home Region</i>.</p>
    #          </note>
    #          <p>Updates cross-Region aggregation settings. You can use this operation to update the Region linking mode and the list 
    #         of included or excluded Amazon Web Services Regions. However, you can't use this operation to change the home Region.</p>
    #          <p>You can invoke this operation from the current home Region only.
    #       </p>
    # @param [Hash, Types::UpdateFindingAggregatorRequest] params
    # @option params [String] :finding_aggregator_arn
    #   <p>The ARN of the finding aggregator. To obtain the ARN, use <code>ListFindingAggregators</code>.</p>
    # @option params [String] :region_linking_mode
    #   <p>Indicates whether to aggregate findings from all of the available Regions in the current partition. Also determines whether to automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.</p>
    #            <p>The selected option also determines how to use the Regions provided in the Regions list.</p>
    #            <p>The options are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS</code> - Aggregates findings from all of the Regions where Security Hub is enabled. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_REGIONS_EXCEPT_SPECIFIED</code> - Aggregates findings from all of the Regions where Security Hub is enabled, except for the Regions listed in the <code>Regions</code> parameter. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIED_REGIONS</code> - Aggregates findings only from the Regions listed in the <code>Regions</code> parameter. Security Hub does not automatically aggregate findings from new Regions.
    #            </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_REGIONS</code> - Aggregates no data because no Regions are selected as linked Regions.
    #             </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :regions
    #   <p>If <code>RegionLinkingMode</code> is <code>ALL_REGIONS_EXCEPT_SPECIFIED</code>, then this is a space-separated list of Regions that don't replicate and send findings to the home Region.</p>
    #            <p>If <code>RegionLinkingMode</code> is <code>SPECIFIED_REGIONS</code>, then this is a space-separated list of Regions that do replicate and send findings to the home Region.</p>
    #            <p>An <code>InvalidInputException</code> error results if you populate this field while <code>RegionLinkingMode</code> is 
    #           <code>NO_REGIONS</code>.</p>
    # @example To update cross-Region aggregation settings
    #   # The following example updates the cross-Region aggregation configuration. You use this operation to change the list of linked Regions and the treatment of new Regions. However, you cannot use this operation to change the aggregation Region.
    #   params = {
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     region_linking_mode: "SPECIFIED_REGIONS",
    #     regions: [
    #       "us-west-1",
    #       "us-west-2"
    #     ]
    #   }
    #   options = {}
    #   response = client.update_finding_aggregator(params, options)
    #   response.to_h #=>
    #   {
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     finding_aggregation_region: "us-east-1",
    #     region_linking_mode: "SPECIFIED_REGIONS",
    #     regions: [
    #       "us-west-1",
    #       "us-west-2"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_aggregator_arn: "NonEmptyString", # required
    #     region_linking_mode: "NonEmptyString", # required
    #     regions: ["NonEmptyString"]
    #   }
    #   options = {}
    #   response = client.update_finding_aggregator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_aggregator_arn: "NonEmptyString",
    #     finding_aggregation_region: "NonEmptyString",
    #     region_linking_mode: "NonEmptyString",
    #     regions: ["NonEmptyString"]
    #   }
    # @return [Types::UpdateFindingAggregatorResponse]
    def update_finding_aggregator(params = {}, options = {})
      request = build_request(:update_finding_aggregator, params)
      request.send_request(options)
    end

    # <p>
    #             <code>UpdateFindings</code> is a deprecated operation. Instead of <code>UpdateFindings</code>, use
    #             the <code>BatchUpdateFindings</code> operation.</p>
    #          <p>The <code>UpdateFindings</code> operation updates the <code>Note</code> and <code>RecordState</code> of the Security Hub aggregated
    #          findings that the filter attributes specify. Any member account that can view the finding
    #          can also see the update to the finding.</p>
    #          <p>Finding updates made with <code>UpdateFindings</code> aren't persisted if the same finding is later updated by the 
    #             finding provider through the <code>BatchImportFindings</code> operation. In addition, Security Hub doesn't 
    #             record updates made with <code>UpdateFindings</code> in the finding history.</p>
    # @param [Hash, Types::UpdateFindingsRequest] params
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   <p>A collection of attributes that specify which findings you want to update.</p>
    # @option params [Types::NoteUpdate] :note
    #   <p>The updated note for the finding.</p>
    # @option params [String] :record_state
    #   <p>The updated record state for the finding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ]
    #     },
    #     note: {
    #       text: "NonEmptyString", # required
    #       updated_by: "NonEmptyString", # required
    #     },
    #     record_state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"]
    #   }
    #   options = {}
    #   response = client.update_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFindingsResponse]
    def update_findings(params = {}, options = {})
      request = build_request(:update_findings, params)
      request.send_request(options)
    end

    # <p>Updates the Security Hub insight identified by the specified insight ARN.</p>
    # @param [Hash, Types::UpdateInsightRequest] params
    # @option params [String] :insight_arn
    #   <p>The ARN of the insight that you want to update.</p>
    # @option params [String] :name
    #   <p>The updated name for the insight.</p>
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   <p>The updated filters that define this insight.</p>
    # @option params [String] :group_by_attribute
    #   <p>The updated <code>GroupBy</code> attribute that defines this insight.</p>
    # @example To update an insight
    #   # The following example updates the specified Security Hub insight.
    #   params = {
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     name: "High severity role findings",
    #     filters: {
    #       resource_type: [
    #         {
    #           comparison: EQUALS,
    #           value: "AwsIamRole"
    #         }
    #       ],
    #       severity_label: [
    #         {
    #           comparison: EQUALS,
    #           value: "HIGH"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_insight(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_arn: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     filters: {
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString"
    #         }
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"]
    #         }
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS" # One of: ["DAYS"]
    #           }
    #         }
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString"
    #         }
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0
    #         }
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       sample: [
    #         {
    #           value: false
    #         }
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS" # One of: ["EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"]
    #         }
    #       ]
    #     },
    #     group_by_attribute: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.update_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateInsightResponse]
    def update_insight(params = {}, options = {})
      request = build_request(:update_insight, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of your organization in Security Hub. Only the
    #          Security Hub administrator account can invoke this operation.</p>
    # @param [Hash, Types::UpdateOrganizationConfigurationRequest] params
    # @option params [Boolean] :auto_enable
    #   <p>Whether to automatically enable Security Hub in new member accounts when they join the organization.</p>
    #            <p>If set to <code>true</code>, then Security Hub is automatically enabled in new accounts. If set to <code>false</code>,
    #              then Security Hub isn't enabled in new accounts automatically. The default value is <code>false</code>.</p>
    #            <p>If the <code>ConfigurationType</code> of your organization is set to <code>CENTRAL</code>, then this field is set 
    #              to <code>false</code> and can't be changed in the home Region and linked Regions. However, in that case, the delegated administrator can create a configuration 
    #               policy in which Security Hub is enabled and associate the policy with new organization accounts.</p>
    # @option params [String] :auto_enable_standards
    #   <p>Whether to automatically enable Security Hub <a href="https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html">default standards</a> 
    #              in new member accounts when they join the organization.</p>
    #            <p>The default value of this parameter is equal to <code>DEFAULT</code>.</p>
    #            <p>If equal to <code>DEFAULT</code>, then Security Hub default standards are automatically enabled for new member 
    #              accounts. If equal to <code>NONE</code>, then default standards are not automatically enabled for new member 
    #              accounts.</p>
    #            <p>If the <code>ConfigurationType</code> of your organization is set to <code>CENTRAL</code>, then this field is set 
    #              to <code>NONE</code> and can't be changed in the home Region and linked Regions. However, in that case, the delegated administrator can create a configuration 
    #               policy in which specific security standards are enabled and associate the policy with new organization accounts.</p>
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   <p>
    #               Provides information about the way an organization is configured in Security Hub.
    #           </p>
    # @example To update organization configuration
    #   # This operation updates the way your organization is configured in Security Hub. Only a Security Hub administrator account can invoke this operation.
    #   params = {
    #     auto_enable: false,
    #     auto_enable_standards: NONE,
    #     organization_configuration: {
    #       configuration_type: CENTRAL
    #     }
    #   }
    #   options = {}
    #   response = client.update_organization_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_enable: false, # required
    #     auto_enable_standards: "NONE" # One of: ["NONE", "DEFAULT"],
    #     organization_configuration: {
    #       configuration_type: "CENTRAL" # One of: ["CENTRAL", "LOCAL"],
    #       status: "PENDING" # One of: ["PENDING", "ENABLED", "FAILED"],
    #       status_message: "NonEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateOrganizationConfigurationResponse]
    def update_organization_configuration(params = {}, options = {})
      request = build_request(:update_organization_configuration, params)
      request.send_request(options)
    end

    # <p>
    #             Updates the properties of a security control. 
    #         </p>
    # @param [Hash, Types::UpdateSecurityControlRequest] params
    # @option params [String] :security_control_id
    #   <p>
    #               The Amazon Resource Name (ARN) or ID of the control to update. 
    #           </p>
    # @option params [Hash<String, Types::ParameterConfiguration>] :parameters
    #   <p>
    #               An object that specifies which security control parameters to update.
    #           </p>
    # @option params [String] :last_update_reason
    #   <p>
    #               The most recent reason for updating the properties of the security control. This field accepts alphanumeric 
    #   characters in addition to white spaces, dashes, and underscores.
    #           </p>
    # @example To update security control properties
    #   # The following example updates the specified security control. Specifically, this example updates control parameters.
    #   params = {
    #     security_control_id: "ACM.1",
    #     parameters: {
    #       "maxCredentialUsageAge" => {
    #         value_type: CUSTOM,
    #         value: {
    #     "Integer" => 15
    #   }
    #       }
    #     },
    #     last_update_reason: "Comply with internal requirements"
    #   }
    #   options = {}
    #   response = client.update_security_control(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     security_control_id: "NonEmptyString", # required
    #     parameters: { # required
    #       "NonEmptyString" => {
    #         value_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #         value: {
    #           # One of:
    #           integer: 1,
    #           integer_list: [1],
    #           double: 1.0,
    #           string: "NonEmptyString",
    #           string_list: ["NonEmptyString"],
    #           boolean: false,
    #           enum: "NonEmptyString",
    #           enum_list: ["NonEmptyString"]
    #         }
    #       }
    #     },
    #     last_update_reason: "AlphaNumericNonEmptyString"
    #   }
    #   options = {}
    #   response = client.update_security_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSecurityControlResponse]
    def update_security_control(params = {}, options = {})
      request = build_request(:update_security_control, params)
      request.send_request(options)
    end

    # <p>Updates configuration options for Security Hub.</p>
    # @param [Hash, Types::UpdateSecurityHubConfigurationRequest] params
    # @option params [Boolean] :auto_enable_controls
    #   <p>Whether to automatically enable new controls when they are added to standards that are
    #            enabled.</p>
    #            <p>By default, this is set to <code>true</code>, and new controls are enabled
    #            automatically. To not automatically enable new controls, set this to <code>false</code>.
    #         </p>
    #            <p>When you automatically enable new controls, you can interact with the controls in 
    #              the console and programmatically immediately after release. However, automatically enabled controls have a temporary default status of 
    #              <code>DISABLED</code>. It can take up to several days for Security Hub to process the control release and designate the 
    #              control as <code>ENABLED</code> in your account. During the processing period, you can manually enable or disable a 
    #              control, and Security Hub will maintain that designation regardless of whether you have <code>AutoEnableControls</code> set to 
    #              <code>true</code>.</p>
    # @option params [String] :control_finding_generator
    #   <p>Updates whether the calling account has consolidated control findings turned on. 
    #         If the value for this field is set to 
    #         <code>SECURITY_CONTROL</code>, Security Hub generates a single finding for a control check even when the check 
    #         applies to multiple enabled standards.</p>
    #            <p>If the value for this field is set to <code>STANDARD_CONTROL</code>, Security Hub generates separate findings 
    #         for a control check when the check applies to multiple enabled standards.</p>
    #            <p>For accounts that are part of an organization, this value can only be updated in the administrator account.</p>
    # @example To update Security Hub settings
    #   # The following example updates Security Hub settings to turn on consolidated control findings, and to automatically enable new controls in enabled standards.
    #   params = {
    #     auto_enable_controls: true,
    #     control_finding_generator: SECURITY_CONTROL
    #   }
    #   options = {}
    #   response = client.update_security_hub_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     auto_enable_controls: false,
    #     control_finding_generator: "STANDARD_CONTROL" # One of: ["STANDARD_CONTROL", "SECURITY_CONTROL"]
    #   }
    #   options = {}
    #   response = client.update_security_hub_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSecurityHubConfigurationResponse]
    def update_security_hub_configuration(params = {}, options = {})
      request = build_request(:update_security_hub_configuration, params)
      request.send_request(options)
    end

    # <p>Used to control whether an individual security standard control is enabled or
    #          disabled.</p>
    #          <p>Calls to this operation return a <code>RESOURCE_NOT_FOUND_EXCEPTION</code> error when the standard subscription for the control has <code>StandardsControlsUpdatable</code> value <code>NOT_READY_FOR_UPDATES</code>.</p>
    # @param [Hash, Types::UpdateStandardsControlRequest] params
    # @option params [String] :standards_control_arn
    #   <p>The ARN of the security standard control to enable or disable.</p>
    # @option params [String] :control_status
    #   <p>The updated status of the security standard control.</p>
    # @option params [String] :disabled_reason
    #   <p>A description of the reason why you are disabling a security standard control. If you
    #            are disabling a control, then this is required.</p>
    # @example To update the enablement status of a standard control
    #   # The following example disables the specified control in the specified security standard.
    #   params = {
    #     standards_control_arn: "arn:aws:securityhub:us-west-1:123456789012:control/pci-dss/v/3.2.1/PCI.AutoScaling.1",
    #     control_status: DISABLED,
    #     disabled_reason: "Not applicable to my service"
    #   }
    #   options = {}
    #   response = client.update_standards_control(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     standards_control_arn: "NonEmptyString", # required
    #     control_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     disabled_reason: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.update_standards_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateStandardsControlResponse]
    def update_standards_control(params = {}, options = {})
      request = build_request(:update_standards_control, params)
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
      context[:gem_name] = 'aws-sdk-securityhub'
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

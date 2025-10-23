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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:backup)

module Aws::Backup
  # An API client for Aws::Backup.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CryoControllerUserManager
    @identifier = :backup

    add_plugin(::Aws::Backup::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Backup::EndpointProvider)
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

    # <p>Associates an MPA approval team with a backup vault.</p>
    # @param [Hash, Types::AssociateBackupVaultMpaApprovalTeamInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of the backup vault to associate with the MPA approval team.</p>
    # @option params [String] :mpa_approval_team_arn
    #   <p>The Amazon Resource Name (ARN) of the MPA approval team to associate with the backup vault.</p>
    # @option params [String] :requester_comment
    #   <p>A comment provided by the requester explaining the association request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     mpa_approval_team_arn: "ARN", # required
    #     requester_comment: "RequesterComment"
    #   }
    #   options = {}
    #   response = client.associate_backup_vault_mpa_approval_team(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_backup_vault_mpa_approval_team(params = {}, options = {})
      request = build_request(:associate_backup_vault_mpa_approval_team, params)
      request.send_request(options)
    end

    # <p>Removes the specified legal hold on a recovery point. This action can only be performed
    #          by a user with sufficient permissions.</p>
    # @param [Hash, Types::CancelLegalHoldInput] params
    # @option params [String] :legal_hold_id
    #   <p>The ID of the legal hold.</p>
    # @option params [String] :cancel_description
    #   <p>A string the describes the reason for removing the legal hold.</p>
    # @option params [Integer] :retain_record_in_days
    #   <p>The integer amount, in days, after which to remove legal hold.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     legal_hold_id: "string", # required
    #     cancel_description: "string", # required
    #     retain_record_in_days: 1
    #   }
    #   options = {}
    #   response = client.cancel_legal_hold(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelLegalHoldOutput]
    def cancel_legal_hold(params = {}, options = {})
      request = build_request(:cancel_legal_hold, params)
      request.send_request(options)
    end

    # <p>Creates a backup plan using a backup plan name and backup rules. A backup plan is a
    #          document that contains information that Backup uses to schedule tasks that
    #          create recovery points for resources.</p>
    #          <p>If you call <code>CreateBackupPlan</code> with a plan that already exists, you receive
    #          an <code>AlreadyExistsException</code> exception.</p>
    # @param [Hash, Types::CreateBackupPlanInput] params
    # @option params [Types::BackupPlanInput] :backup_plan
    #   <p>The body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    # @option params [Hash<String, String>] :backup_plan_tags
    #   <p>The tags to assign to the backup plan.</p>
    # @option params [String] :creator_request_id
    #   <p>Identifies the request and allows failed requests to be retried without the risk of
    #            running the operation twice. If the request includes a <code>CreatorRequestId</code> that
    #            matches an existing backup plan, that plan is returned. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan: { # required
    #       backup_plan_name: "BackupPlanName", # required
    #       rules: [ # required
    #         {
    #           rule_name: "BackupRuleName", # required
    #           target_backup_vault_name: "BackupVaultName", # required
    #           schedule_expression: "CronExpression",
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1,
    #             opt_in_to_archive_for_supported_resources: false
    #           },
    #           recovery_point_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           copy_actions: [
    #             {
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #                 opt_in_to_archive_for_supported_resources: false
    #               },
    #               destination_backup_vault_arn: "ARN", # required
    #             }
    #           ],
    #           enable_continuous_backup: false,
    #           schedule_expression_timezone: "Timezone",
    #           index_actions: [
    #             {
    #               resource_types: ["ResourceType"]
    #             }
    #           ]
    #         }
    #       ],
    #       advanced_backup_settings: [
    #         {
    #           resource_type: "ResourceType",
    #           backup_options: {
    #             "BackupOptionKey" => "BackupOptionValue"
    #           }
    #         }
    #       ]
    #     },
    #     backup_plan_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     creator_request_id: "string"
    #   }
    #   options = {}
    #   response = client.create_backup_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_plan_id: "string",
    #     backup_plan_arn: "ARN",
    #     creation_date: Time.now,
    #     version_id: "string",
    #     advanced_backup_settings: [
    #       {
    #         resource_type: "ResourceType",
    #         backup_options: {
    #           "BackupOptionKey" => "BackupOptionValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::CreateBackupPlanOutput]
    def create_backup_plan(params = {}, options = {})
      request = build_request(:create_backup_plan, params)
      request.send_request(options)
    end

    # <p>Creates a JSON document that specifies a set of resources to assign to a backup plan.
    #          For examples, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json">Assigning resources programmatically</a>. </p>
    # @param [Hash, Types::CreateBackupSelectionInput] params
    # @option params [String] :backup_plan_id
    #   <p>The ID of the backup plan.</p>
    # @option params [Types::BackupSelection] :backup_selection
    #   <p>The body of a request to assign a set of resources to a backup plan.</p>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #     backup_selection: { # required
    #       selection_name: "BackupSelectionName", # required
    #       iam_role_arn: "IAMRoleArn", # required
    #       resources: ["ARN"],
    #       list_of_tags: [
    #         {
    #           condition_type: "STRINGEQUALS" # One of: ["STRINGEQUALS"], # required
    #           condition_key: "ConditionKey", # required
    #           condition_value: "ConditionValue", # required
    #         }
    #       ],
    #       not_resources: ["ARN"],
    #       conditions: {
    #         string_equals: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ],
    #         string_not_equals: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ],
    #         string_like: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ],
    #         string_not_like: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ]
    #       }
    #     },
    #     creator_request_id: "string"
    #   }
    #   options = {}
    #   response = client.create_backup_selection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     selection_id: "string",
    #     backup_plan_id: "string",
    #     creation_date: Time.now
    #   }
    # @return [Types::CreateBackupSelectionOutput]
    def create_backup_selection(params = {}, options = {})
      request = build_request(:create_backup_selection, params)
      request.send_request(options)
    end

    # <p>Creates a logical container where backups are stored. A <code>CreateBackupVault</code>
    #          request includes a name, optionally one or more resource tags, an encryption key, and a
    #          request ID.</p>
    #          <note>
    #             <p>Do not include sensitive data, such as passport numbers, in the name of a backup
    #             vault.</p>
    #          </note>
    # @param [Hash, Types::CreateBackupVaultInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of letters, numbers, and hyphens.</p>
    # @option params [Hash<String, String>] :backup_vault_tags
    #   <p>The tags to assign to the backup vault.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     backup_vault_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     encryption_key_arn: "ARN",
    #     creator_request_id: "string"
    #   }
    #   options = {}
    #   response = client.create_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_name: "BackupVaultName",
    #     backup_vault_arn: "ARN",
    #     creation_date: Time.now
    #   }
    # @return [Types::CreateBackupVaultOutput]
    def create_backup_vault(params = {}, options = {})
      request = build_request(:create_backup_vault, params)
      request.send_request(options)
    end

    # <p>Creates a framework with one or more controls. A framework is a collection of controls
    #          that you can use to evaluate your backup practices. By using pre-built customizable
    #          controls to define your policies, you can evaluate whether your backup practices comply
    #          with your policies and which resources are not yet in compliance.</p>
    # @param [Hash, Types::CreateFrameworkInput] params
    # @option params [String] :framework_name
    #   <p>The unique name of the framework. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    # @option params [String] :framework_description
    #   <p>An optional description of the framework with a maximum of 1,024 characters.</p>
    # @option params [Array<Types::FrameworkControl>] :framework_controls
    #   <p>The controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    # @option params [Hash<String, String>] :framework_tags
    #   <p>The tags to assign to the framework.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_name: "FrameworkName", # required
    #     framework_description: "FrameworkDescription",
    #     framework_controls: [ # required
    #       {
    #         control_name: "ControlName", # required
    #         control_input_parameters: [
    #           {
    #             parameter_name: "ParameterName",
    #             parameter_value: "ParameterValue"
    #           }
    #         ],
    #         control_scope: {
    #           compliance_resource_ids: ["string"],
    #           compliance_resource_types: ["ARN"],
    #           tags: {
    #             "string" => "string"
    #           }
    #         }
    #       }
    #     ],
    #     idempotency_token: "string",
    #     framework_tags: {
    #       "string" => "string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     framework_name: "FrameworkName",
    #     framework_arn: "ARN"
    #   }
    # @return [Types::CreateFrameworkOutput]
    def create_framework(params = {}, options = {})
      request = build_request(:create_framework, params)
      request.send_request(options)
    end

    # <p>Creates a legal hold on a recovery point (backup). A legal hold is a restraint on
    #          altering or deleting a backup until an authorized user cancels the legal hold. Any actions
    #          to delete or disassociate a recovery point will fail with an error if one or more active
    #          legal holds are on the recovery point.</p>
    # @param [Hash, Types::CreateLegalHoldInput] params
    # @option params [String] :title
    #   <p>The title of the legal hold.</p>
    # @option params [String] :description
    #   <p>The description of the legal hold.</p>
    # @option params [String] :idempotency_token
    #   <p>This is a user-chosen string used to distinguish between otherwise identical 
    #            calls. Retrying a successful request with the 
    #            same idempotency token results in a success message with no action taken.</p>
    # @option params [Types::RecoveryPointSelection] :recovery_point_selection
    #   <p>The criteria to assign a set of resources, such as resource types or backup vaults.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags to include. A tag is a key-value pair you can use to manage, 
    #            filter, and search for your resources. Allowed characters include UTF-8 letters, 
    #            numbers, spaces, and the following characters: + - = . _ : /. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     title: "string", # required
    #     description: "string", # required
    #     idempotency_token: "string",
    #     recovery_point_selection: {
    #       vault_names: ["string"],
    #       resource_identifiers: ["string"],
    #       date_range: {
    #         from_date: Time.now, # required
    #         to_date: Time.now, # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_legal_hold(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     title: "string",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "CANCELING", "CANCELED"],
    #     description: "string",
    #     legal_hold_id: "string",
    #     legal_hold_arn: "ARN",
    #     creation_date: Time.now,
    #     recovery_point_selection: {
    #       vault_names: ["string"],
    #       resource_identifiers: ["string"],
    #       date_range: {
    #         from_date: Time.now, # required
    #         to_date: Time.now, # required
    #       }
    #     }
    #   }
    # @return [Types::CreateLegalHoldOutput]
    def create_legal_hold(params = {}, options = {})
      request = build_request(:create_legal_hold, params)
      request.send_request(options)
    end

    # <p>Creates a logical container to where backups may be copied.</p>
    #          <p>This request includes a name, the Region, the maximum number of retention days, the 
    #       minimum number of retention days, and optionally can include tags and a creator request 
    #       ID.</p>
    #          <note>
    #             <p>Do not include sensitive data, such as passport numbers, in the name of a backup
    #          vault.</p>
    #          </note>
    # @param [Hash, Types::CreateLogicallyAirGappedBackupVaultInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Logically air-gapped 
    #            backup vaults are identified by names that are unique to the account used to create 
    #            them and the Region where they are created.</p>
    # @option params [Hash<String, String>] :backup_vault_tags
    #   <p>The tags to assign to the vault.</p>
    # @option params [String] :creator_request_id
    #   <p>The ID of the creation request.</p>
    #            <p>This parameter is optional. If used, this parameter must contain 
    #            1 to 50 alphanumeric or '-_.' characters.</p>
    # @option params [Integer] :min_retention_days
    #   <p>This setting specifies the minimum retention period
    #            that the vault retains its recovery points.</p>
    #            <p>The minimum value accepted is 7 days.</p>
    # @option params [Integer] :max_retention_days
    #   <p>The maximum retention period that the vault retains its recovery points.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     backup_vault_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     creator_request_id: "string",
    #     min_retention_days: 1, # required
    #     max_retention_days: 1, # required
    #   }
    #   options = {}
    #   response = client.create_logically_air_gapped_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_name: "BackupVaultName",
    #     backup_vault_arn: "ARN",
    #     creation_date: Time.now,
    #     vault_state: "CREATING" # One of: ["CREATING", "AVAILABLE", "FAILED"]
    #   }
    # @return [Types::CreateLogicallyAirGappedBackupVaultOutput]
    def create_logically_air_gapped_backup_vault(params = {}, options = {})
      request = build_request(:create_logically_air_gapped_backup_vault, params)
      request.send_request(options)
    end

    # <p>Creates a report plan. A report plan is a document that contains information about the
    #          contents of the report and where Backup will deliver it.</p>
    #          <p>If you call <code>CreateReportPlan</code> with a plan that already exists, you receive
    #          an <code>AlreadyExistsException</code> exception.</p>
    # @param [Hash, Types::CreateReportPlanInput] params
    # @option params [String] :report_plan_name
    #   <p>The unique name of the report plan. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    # @option params [String] :report_plan_description
    #   <p>An optional description of the report plan with a maximum of 1,024 characters.</p>
    # @option params [Types::ReportDeliveryChannel] :report_delivery_channel
    #   <p>A structure that contains information about where and how to deliver your reports,
    #            specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
    #            reports.</p>
    # @option params [Types::ReportSetting] :report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    # @option params [Hash<String, String>] :report_plan_tags
    #   <p>The tags to assign to the report plan.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_plan_name: "ReportPlanName", # required
    #     report_plan_description: "ReportPlanDescription",
    #     report_delivery_channel: { # required
    #       s3_bucket_name: "string", # required
    #       s3_key_prefix: "string",
    #       formats: ["string"]
    #     },
    #     report_setting: { # required
    #       report_template: "string", # required
    #       framework_arns: ["string"],
    #       number_of_frameworks: 1,
    #       accounts: ["string"],
    #       organization_units: ["string"],
    #       regions: ["string"]
    #     },
    #     report_plan_tags: {
    #       "string" => "string"
    #     },
    #     idempotency_token: "string"
    #   }
    #   options = {}
    #   response = client.create_report_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_plan_name: "ReportPlanName",
    #     report_plan_arn: "ARN",
    #     creation_time: Time.now
    #   }
    # @return [Types::CreateReportPlanOutput]
    def create_report_plan(params = {}, options = {})
      request = build_request(:create_report_plan, params)
      request.send_request(options)
    end

    # <p>Creates a restore access backup vault that provides temporary access to recovery points in a logically air-gapped backup vault, subject to MPA approval.</p>
    # @param [Hash, Types::CreateRestoreAccessBackupVaultInput] params
    # @option params [String] :source_backup_vault_arn
    #   <p>The ARN of the source backup vault containing the recovery points to which temporary access is requested.</p>
    # @option params [String] :backup_vault_name
    #   <p>The name of the backup vault to associate with an MPA approval team.</p>
    # @option params [Hash<String, String>] :backup_vault_tags
    #   <p>Optional tags to assign to the restore access backup vault.</p>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried without the risk of executing the operation twice.</p>
    # @option params [String] :requester_comment
    #   <p>A comment explaining the reason for requesting restore access to the backup vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_backup_vault_arn: "ARN", # required
    #     backup_vault_name: "BackupVaultName",
    #     backup_vault_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     creator_request_id: "string",
    #     requester_comment: "RequesterComment"
    #   }
    #   options = {}
    #   response = client.create_restore_access_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_access_backup_vault_arn: "ARN",
    #     vault_state: "CREATING" # One of: ["CREATING", "AVAILABLE", "FAILED"],
    #     restore_access_backup_vault_name: "BackupVaultName",
    #     creation_date: Time.now
    #   }
    # @return [Types::CreateRestoreAccessBackupVaultOutput]
    def create_restore_access_backup_vault(params = {}, options = {})
      request = build_request(:create_restore_access_backup_vault, params)
      request.send_request(options)
    end

    # <p>Creates a restore testing plan.</p>
    #          <p>The first of two steps to create a restore testing 
    #          plan. After this request is successful, finish the procedure using 
    #          CreateRestoreTestingSelection.</p>
    # @param [Hash, Types::CreateRestoreTestingPlanInput] params
    # @option params [String] :creator_request_id
    #   <p>This is a unique string that identifies the request and 
    #            allows failed requests to be retriedwithout the risk of running 
    #            the operation twice. This parameter is optional. If used, this 
    #            parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    # @option params [Types::RestoreTestingPlanForCreate] :restore_testing_plan
    #   <p>A restore testing plan must contain a unique <code>RestoreTestingPlanName</code> string
    #            you create and must contain a <code>ScheduleExpression</code> cron. You may optionally
    #            include a <code>StartWindowHours</code> integer and a <code>CreatorRequestId</code>
    #            string.</p>
    #            <p>The <code>RestoreTestingPlanName</code> is a unique string that is the name of the
    #            restore testing plan. This cannot be changed after creation, and it must consist of only
    #            alphanumeric characters and underscores.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the restore testing plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "String",
    #     restore_testing_plan: { # required
    #       recovery_point_selection: { # required
    #         algorithm: "LATEST_WITHIN_WINDOW" # One of: ["LATEST_WITHIN_WINDOW", "RANDOM_WITHIN_WINDOW"],
    #         exclude_vaults: ["string"],
    #         include_vaults: ["string"],
    #         recovery_point_types: ["CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"]],
    #         selection_window_days: 1
    #       },
    #       restore_testing_plan_name: "String", # required
    #       schedule_expression: "String", # required
    #       schedule_expression_timezone: "String",
    #       start_window_hours: 1
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_restore_testing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now, # required
    #     restore_testing_plan_arn: "String", # required
    #     restore_testing_plan_name: "String", # required
    #   }
    # @return [Types::CreateRestoreTestingPlanOutput]
    def create_restore_testing_plan(params = {}, options = {})
      request = build_request(:create_restore_testing_plan, params)
      request.send_request(options)
    end

    # <p>This request can be sent after CreateRestoreTestingPlan request 
    #          returns successfully. This is the second part of creating a resource testing 
    #          plan, and it must be completed sequentially.</p>
    #          <p>This consists of <code>RestoreTestingSelectionName</code>,
    #          <code>ProtectedResourceType</code>, and one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ProtectedResourceArns</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ProtectedResourceConditions</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Each protected resource type can have one single value.</p>
    #          <p>A restore testing selection can include a wildcard value ("*") for
    #          <code>ProtectedResourceArns</code> along with <code>ProtectedResourceConditions</code>.
    #          Alternatively, you can include up to 30 specific protected resource ARNs in
    #          <code>ProtectedResourceArns</code>.</p>
    #          <p>Cannot select by both protected resource types AND specific ARNs. 
    #          Request will fail if both are included.</p>
    # @param [Hash, Types::CreateRestoreTestingSelectionInput] params
    # @option params [String] :creator_request_id
    #   <p>This is an optional unique string that identifies the request and allows 
    #            failed requests to be retried without the risk of running the operation 
    #            twice. If used, this parameter must contain 
    #            1 to 50 alphanumeric or '-_.' characters.</p>
    # @option params [String] :restore_testing_plan_name
    #   <p>Input the restore testing plan name that was returned from the 
    #            related CreateRestoreTestingPlan request.</p>
    # @option params [Types::RestoreTestingSelectionForCreate] :restore_testing_selection
    #   <p>This consists of <code>RestoreTestingSelectionName</code>,
    #               <code>ProtectedResourceType</code>, and one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProtectedResourceArns</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProtectedResourceConditions</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Each protected resource type can have one single value.</p>
    #            <p>A restore testing selection can include a wildcard value ("*") for
    #               <code>ProtectedResourceArns</code> along with <code>ProtectedResourceConditions</code>.
    #            Alternatively, you can include up to 30 specific protected resource ARNs in
    #               <code>ProtectedResourceArns</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "String",
    #     restore_testing_plan_name: "String", # required
    #     restore_testing_selection: { # required
    #       iam_role_arn: "String", # required
    #       protected_resource_arns: ["string"],
    #       protected_resource_conditions: {
    #         string_equals: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         string_not_equals: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       protected_resource_type: "String", # required
    #       restore_metadata_overrides: {
    #         "String" => "String"
    #       },
    #       restore_testing_selection_name: "String", # required
    #       validation_window_hours: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_restore_testing_selection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now, # required
    #     restore_testing_plan_arn: "String", # required
    #     restore_testing_plan_name: "String", # required
    #     restore_testing_selection_name: "String", # required
    #   }
    # @return [Types::CreateRestoreTestingSelectionOutput]
    def create_restore_testing_selection(params = {}, options = {})
      request = build_request(:create_restore_testing_selection, params)
      request.send_request(options)
    end

    # <p>Deletes a backup plan. A backup plan can only be deleted after all associated selections
    #          of resources have been deleted. Deleting a backup plan deletes the current version of a
    #          backup plan. Previous versions, if any, will still exist.</p>
    # @param [Hash, Types::DeleteBackupPlanInput] params
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_backup_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_plan_id: "string",
    #     backup_plan_arn: "ARN",
    #     deletion_date: Time.now,
    #     version_id: "string"
    #   }
    # @return [Types::DeleteBackupPlanOutput]
    def delete_backup_plan(params = {}, options = {})
      request = build_request(:delete_backup_plan, params)
      request.send_request(options)
    end

    # <p>Deletes the resource selection associated with a backup plan that is specified by the
    #             <code>SelectionId</code>.</p>
    # @param [Hash, Types::DeleteBackupSelectionInput] params
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    # @option params [String] :selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #     selection_id: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_backup_selection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_backup_selection(params = {}, options = {})
      request = build_request(:delete_backup_selection, params)
      request.send_request(options)
    end

    # <p>Deletes the backup vault identified by its name. A vault can be deleted only if it is
    #          empty.</p>
    # @param [Hash, Types::DeleteBackupVaultInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_backup_vault(params = {}, options = {})
      request = build_request(:delete_backup_vault, params)
      request.send_request(options)
    end

    # <p>Deletes the policy document that manages permissions on a backup vault.</p>
    # @param [Hash, Types::DeleteBackupVaultAccessPolicyInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #   }
    #   options = {}
    #   response = client.delete_backup_vault_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_backup_vault_access_policy(params = {}, options = {})
      request = build_request(:delete_backup_vault_access_policy, params)
      request.send_request(options)
    end

    # <p>Deletes Backup Vault Lock from a backup vault specified by a backup vault
    #          name.</p>
    #          <p>If the Vault Lock configuration is immutable, then you cannot delete Vault Lock using
    #          API operations, and you will receive an <code>InvalidRequestException</code> if you attempt
    #          to do so. For more information, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html">Vault Lock</a> in the
    #                <i>Backup Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteBackupVaultLockConfigurationInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of the backup vault from which to delete Backup Vault Lock.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #   }
    #   options = {}
    #   response = client.delete_backup_vault_lock_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_backup_vault_lock_configuration(params = {}, options = {})
      request = build_request(:delete_backup_vault_lock_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes event notifications for the specified backup vault.</p>
    # @param [Hash, Types::DeleteBackupVaultNotificationsInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #   }
    #   options = {}
    #   response = client.delete_backup_vault_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_backup_vault_notifications(params = {}, options = {})
      request = build_request(:delete_backup_vault_notifications, params)
      request.send_request(options)
    end

    # <p>Deletes the framework specified by a framework name.</p>
    # @param [Hash, Types::DeleteFrameworkInput] params
    # @option params [String] :framework_name
    #   <p>The unique name of a framework.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_name: "FrameworkName", # required
    #   }
    #   options = {}
    #   response = client.delete_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_framework(params = {}, options = {})
      request = build_request(:delete_framework, params)
      request.send_request(options)
    end

    # <p>Deletes the recovery point specified by a recovery point ID.</p>
    #          <p>If the recovery point ID belongs to a continuous backup, calling this endpoint deletes
    #          the existing continuous backup and stops future continuous backup.</p>
    #          <p>When an IAM role's permissions are insufficient to call this API, the service sends back
    #       an HTTP 200 response with an empty HTTP body, but the recovery point is not deleted.
    #       Instead, it enters an <code>EXPIRED</code> state.</p>
    #          <p>
    #             <code>EXPIRED</code> recovery points can be deleted with this API once the IAM role
    #       has the <code>iam:CreateServiceLinkedRole</code> action. To learn more about adding this role, see 
    #       <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/deleting-backups.html#deleting-backups-troubleshooting">
    #          Troubleshooting manual deletions</a>.</p>
    #          <p>If the user or role is deleted or the permission within the role is removed, 
    #       the deletion will not be successful and will enter an <code>EXPIRED</code> state.</p>
    # @param [Hash, Types::DeleteRecoveryPointInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_recovery_point(params = {}, options = {})
      request = build_request(:delete_recovery_point, params)
      request.send_request(options)
    end

    # <p>Deletes the report plan specified by a report plan name.</p>
    # @param [Hash, Types::DeleteReportPlanInput] params
    # @option params [String] :report_plan_name
    #   <p>The unique name of a report plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_plan_name: "ReportPlanName", # required
    #   }
    #   options = {}
    #   response = client.delete_report_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_report_plan(params = {}, options = {})
      request = build_request(:delete_report_plan, params)
      request.send_request(options)
    end

    # <p>This request deletes the specified restore testing plan.</p>
    #          <p>Deletion can only successfully occur if all associated 
    #          restore testing selections are deleted first.</p>
    # @param [Hash, Types::DeleteRestoreTestingPlanInput] params
    # @option params [String] :restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan you wish 
    #            to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_testing_plan_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_restore_testing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_restore_testing_plan(params = {}, options = {})
      request = build_request(:delete_restore_testing_plan, params)
      request.send_request(options)
    end

    # <p>Input the Restore Testing Plan name and Restore Testing Selection 
    #          name.</p>
    #          <p>All testing selections associated with a restore testing plan must 
    #          be deleted before the restore testing plan can be deleted.</p>
    # @param [Hash, Types::DeleteRestoreTestingSelectionInput] params
    # @option params [String] :restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan that contains the 
    #            restore testing selection you wish to delete.</p>
    # @option params [String] :restore_testing_selection_name
    #   <p>Required unique name of the restore testing selection you 
    #            wish to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_testing_plan_name: "String", # required
    #     restore_testing_selection_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_restore_testing_selection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_restore_testing_selection(params = {}, options = {})
      request = build_request(:delete_restore_testing_selection, params)
      request.send_request(options)
    end

    # <p>Returns backup job details for the specified <code>BackupJobId</code>.</p>
    # @param [Hash, Types::DescribeBackupJobInput] params
    # @option params [String] :backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_job_id: "string", # required
    #   }
    #   options = {}
    #   response = client.describe_backup_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId",
    #     backup_job_id: "string",
    #     backup_vault_name: "BackupVaultName",
    #     backup_vault_arn: "ARN",
    #     recovery_point_arn: "ARN",
    #     resource_arn: "ARN",
    #     creation_date: Time.now,
    #     completion_date: Time.now,
    #     state: "CREATED" # One of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED", "PARTIAL"],
    #     status_message: "string",
    #     percent_done: "string",
    #     backup_size_in_bytes: 1,
    #     iam_role_arn: "IAMRoleArn",
    #     created_by: {
    #       backup_plan_id: "string",
    #       backup_plan_arn: "ARN",
    #       backup_plan_version: "string",
    #       backup_rule_id: "string"
    #     },
    #     resource_type: "ResourceType",
    #     bytes_transferred: 1,
    #     expected_completion_date: Time.now,
    #     start_by: Time.now,
    #     backup_options: {
    #       "BackupOptionKey" => "BackupOptionValue"
    #     },
    #     backup_type: "string",
    #     parent_job_id: "string",
    #     is_parent: false,
    #     number_of_child_jobs: 1,
    #     child_jobs_in_state: {
    #       "BackupJobState" => 1
    #     },
    #     resource_name: "string",
    #     initiation_date: Time.now,
    #     message_category: "string"
    #   }
    # @return [Types::DescribeBackupJobOutput]
    def describe_backup_job(params = {}, options = {})
      request = build_request(:describe_backup_job, params)
      request.send_request(options)
    end

    # <p>Returns metadata about a backup vault specified by its name.</p>
    # @param [Hash, Types::DescribeBackupVaultInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "string", # required
    #     backup_vault_account_id: "string"
    #   }
    #   options = {}
    #   response = client.describe_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_name: "string",
    #     backup_vault_arn: "ARN",
    #     vault_type: "BACKUP_VAULT" # One of: ["BACKUP_VAULT", "LOGICALLY_AIR_GAPPED_BACKUP_VAULT", "RESTORE_ACCESS_BACKUP_VAULT"],
    #     vault_state: "CREATING" # One of: ["CREATING", "AVAILABLE", "FAILED"],
    #     encryption_key_arn: "ARN",
    #     creation_date: Time.now,
    #     creator_request_id: "string",
    #     number_of_recovery_points: 1,
    #     locked: false,
    #     min_retention_days: 1,
    #     max_retention_days: 1,
    #     lock_date: Time.now,
    #     source_backup_vault_arn: "ARN",
    #     mpa_approval_team_arn: "ARN",
    #     mpa_session_arn: "ARN",
    #     latest_mpa_approval_team_update: {
    #       mpa_session_arn: "ARN",
    #       status: "PENDING" # One of: ["PENDING", "APPROVED", "FAILED"],
    #       status_message: "string",
    #       initiation_date: Time.now,
    #       expiry_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeBackupVaultOutput]
    def describe_backup_vault(params = {}, options = {})
      request = build_request(:describe_backup_vault, params)
      request.send_request(options)
    end

    # <p>Returns metadata associated with creating a copy of a resource.</p>
    # @param [Hash, Types::DescribeCopyJobInput] params
    # @option params [String] :copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     copy_job_id: "string", # required
    #   }
    #   options = {}
    #   response = client.describe_copy_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     copy_job: {
    #       account_id: "AccountId",
    #       copy_job_id: "string",
    #       source_backup_vault_arn: "ARN",
    #       source_recovery_point_arn: "ARN",
    #       destination_backup_vault_arn: "ARN",
    #       destination_recovery_point_arn: "ARN",
    #       resource_arn: "ARN",
    #       creation_date: Time.now,
    #       completion_date: Time.now,
    #       state: "CREATED" # One of: ["CREATED", "RUNNING", "COMPLETED", "FAILED", "PARTIAL"],
    #       status_message: "string",
    #       backup_size_in_bytes: 1,
    #       iam_role_arn: "IAMRoleArn",
    #       created_by: {
    #         backup_plan_id: "string",
    #         backup_plan_arn: "ARN",
    #         backup_plan_version: "string",
    #         backup_rule_id: "string"
    #       },
    #       resource_type: "ResourceType",
    #       parent_job_id: "string",
    #       is_parent: false,
    #       composite_member_identifier: "string",
    #       number_of_child_jobs: 1,
    #       child_jobs_in_state: {
    #         "CopyJobState" => 1
    #       },
    #       resource_name: "string",
    #       message_category: "string"
    #     }
    #   }
    # @return [Types::DescribeCopyJobOutput]
    def describe_copy_job(params = {}, options = {})
      request = build_request(:describe_copy_job, params)
      request.send_request(options)
    end

    # <p>Returns the framework details for the specified <code>FrameworkName</code>.</p>
    # @param [Hash, Types::DescribeFrameworkInput] params
    # @option params [String] :framework_name
    #   <p>The unique name of a framework.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_name: "FrameworkName", # required
    #   }
    #   options = {}
    #   response = client.describe_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     framework_name: "FrameworkName",
    #     framework_arn: "ARN",
    #     framework_description: "FrameworkDescription",
    #     framework_controls: [
    #       {
    #         control_name: "ControlName", # required
    #         control_input_parameters: [
    #           {
    #             parameter_name: "ParameterName",
    #             parameter_value: "ParameterValue"
    #           }
    #         ],
    #         control_scope: {
    #           compliance_resource_ids: ["string"],
    #           compliance_resource_types: ["ARN"],
    #           tags: {
    #             "string" => "string"
    #           }
    #         }
    #       }
    #     ],
    #     creation_time: Time.now,
    #     deployment_status: "string",
    #     framework_status: "string",
    #     idempotency_token: "string"
    #   }
    # @return [Types::DescribeFrameworkOutput]
    def describe_framework(params = {}, options = {})
      request = build_request(:describe_framework, params)
      request.send_request(options)
    end

    # <p>Describes whether the Amazon Web Services account is opted in to cross-account backup.
    #          Returns an error if the account is not a member of an Organizations organization.
    #          Example: <code>describe-global-settings --region us-west-2</code>
    #          </p>
    # @param [Hash, Types::DescribeGlobalSettingsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_global_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_settings: {
    #       "GlobalSettingsName" => "GlobalSettingsValue"
    #     },
    #     last_update_time: Time.now
    #   }
    # @return [Types::DescribeGlobalSettingsOutput]
    def describe_global_settings(params = {}, options = {})
      request = build_request(:describe_global_settings, params)
      request.send_request(options)
    end

    # <p>Returns information about a saved resource, including the last time it was backed up,
    #          its Amazon Resource Name (ARN), and the Amazon Web Services service type of the saved
    #          resource.</p>
    # @param [Hash, Types::DescribeProtectedResourceInput] params
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.describe_protected_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ARN",
    #     resource_type: "ResourceType",
    #     last_backup_time: Time.now,
    #     resource_name: "string",
    #     last_backup_vault_arn: "ARN",
    #     last_recovery_point_arn: "ARN",
    #     latest_restore_execution_time_minutes: 1,
    #     latest_restore_job_creation_date: Time.now,
    #     latest_restore_recovery_point_creation_date: Time.now
    #   }
    # @return [Types::DescribeProtectedResourceOutput]
    def describe_protected_resource(params = {}, options = {})
      request = build_request(:describe_protected_resource, params)
      request.send_request(options)
    end

    # <p>Returns metadata associated with a recovery point, including ID, status, encryption, and
    #          lifecycle.</p>
    # @param [Hash, Types::DescribeRecoveryPointInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    # @option params [String] :backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #     backup_vault_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recovery_point_arn: "ARN",
    #     backup_vault_name: "BackupVaultName",
    #     backup_vault_arn: "ARN",
    #     source_backup_vault_arn: "ARN",
    #     resource_arn: "ARN",
    #     resource_type: "ResourceType",
    #     created_by: {
    #       backup_plan_id: "string",
    #       backup_plan_arn: "ARN",
    #       backup_plan_version: "string",
    #       backup_rule_id: "string"
    #     },
    #     iam_role_arn: "IAMRoleArn",
    #     status: "COMPLETED" # One of: ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED", "AVAILABLE", "STOPPED", "CREATING"],
    #     status_message: "string",
    #     creation_date: Time.now,
    #     initiation_date: Time.now,
    #     completion_date: Time.now,
    #     backup_size_in_bytes: 1,
    #     calculated_lifecycle: {
    #       move_to_cold_storage_at: Time.now,
    #       delete_at: Time.now
    #     },
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #       opt_in_to_archive_for_supported_resources: false
    #     },
    #     encryption_key_arn: "ARN",
    #     is_encrypted: false,
    #     storage_class: "WARM" # One of: ["WARM", "COLD", "DELETED"],
    #     last_restore_time: Time.now,
    #     parent_recovery_point_arn: "ARN",
    #     composite_member_identifier: "string",
    #     is_parent: false,
    #     resource_name: "string",
    #     vault_type: "BACKUP_VAULT" # One of: ["BACKUP_VAULT", "LOGICALLY_AIR_GAPPED_BACKUP_VAULT", "RESTORE_ACCESS_BACKUP_VAULT"],
    #     index_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING"],
    #     index_status_message: "string"
    #   }
    # @return [Types::DescribeRecoveryPointOutput]
    def describe_recovery_point(params = {}, options = {})
      request = build_request(:describe_recovery_point, params)
      request.send_request(options)
    end

    # <p>Returns the current service opt-in settings for the Region. If service opt-in is enabled
    #          for a service, Backup tries to protect that service's resources in this Region,
    #          when the resource is included in an on-demand backup or scheduled backup plan. Otherwise,
    #             Backup does not try to protect that service's resources in this
    #          Region.</p>
    # @param [Hash, Types::DescribeRegionSettingsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_region_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_type_opt_in_preference: {
    #       "ResourceType" => false
    #     },
    #     resource_type_management_preference: {
    #       "ResourceType" => false
    #     }
    #   }
    # @return [Types::DescribeRegionSettingsOutput]
    def describe_region_settings(params = {}, options = {})
      request = build_request(:describe_region_settings, params)
      request.send_request(options)
    end

    # <p>Returns the details associated with creating a report as specified by its
    #             <code>ReportJobId</code>.</p>
    # @param [Hash, Types::DescribeReportJobInput] params
    # @option params [String] :report_job_id
    #   <p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_job_id: "ReportJobId", # required
    #   }
    #   options = {}
    #   response = client.describe_report_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_job: {
    #       report_job_id: "ReportJobId",
    #       report_plan_arn: "ARN",
    #       report_template: "string",
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       status: "string",
    #       status_message: "string",
    #       report_destination: {
    #         s3_bucket_name: "string",
    #         s3_keys: ["string"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeReportJobOutput]
    def describe_report_job(params = {}, options = {})
      request = build_request(:describe_report_job, params)
      request.send_request(options)
    end

    # <p>Returns a list of all report plans for an Amazon Web Services account and Amazon Web Services Region.</p>
    # @param [Hash, Types::DescribeReportPlanInput] params
    # @option params [String] :report_plan_name
    #   <p>The unique name of a report plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_plan_name: "ReportPlanName", # required
    #   }
    #   options = {}
    #   response = client.describe_report_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_plan: {
    #       report_plan_arn: "ARN",
    #       report_plan_name: "ReportPlanName",
    #       report_plan_description: "ReportPlanDescription",
    #       report_setting: {
    #         report_template: "string", # required
    #         framework_arns: ["string"],
    #         number_of_frameworks: 1,
    #         accounts: ["string"],
    #         organization_units: ["string"],
    #         regions: ["string"]
    #       },
    #       report_delivery_channel: {
    #         s3_bucket_name: "string", # required
    #         s3_key_prefix: "string",
    #         formats: ["string"]
    #       },
    #       deployment_status: "string",
    #       creation_time: Time.now,
    #       last_attempted_execution_time: Time.now,
    #       last_successful_execution_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeReportPlanOutput]
    def describe_report_plan(params = {}, options = {})
      request = build_request(:describe_report_plan, params)
      request.send_request(options)
    end

    # <p>Returns metadata associated with a restore job that is specified by a job ID.</p>
    # @param [Hash, Types::DescribeRestoreJobInput] params
    # @option params [String] :restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_job_id: "RestoreJobId", # required
    #   }
    #   options = {}
    #   response = client.describe_restore_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId",
    #     restore_job_id: "string",
    #     recovery_point_arn: "ARN",
    #     creation_date: Time.now,
    #     completion_date: Time.now,
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"],
    #     status_message: "string",
    #     percent_done: "string",
    #     backup_size_in_bytes: 1,
    #     iam_role_arn: "IAMRoleArn",
    #     expected_completion_time_minutes: 1,
    #     created_resource_arn: "ARN",
    #     resource_type: "ResourceType",
    #     recovery_point_creation_date: Time.now,
    #     created_by: {
    #       restore_testing_plan_arn: "ARN"
    #     },
    #     validation_status: "FAILED" # One of: ["FAILED", "SUCCESSFUL", "TIMED_OUT", "VALIDATING"],
    #     validation_status_message: "string",
    #     deletion_status: "DELETING" # One of: ["DELETING", "FAILED", "SUCCESSFUL"],
    #     deletion_status_message: "string"
    #   }
    # @return [Types::DescribeRestoreJobOutput]
    def describe_restore_job(params = {}, options = {})
      request = build_request(:describe_restore_job, params)
      request.send_request(options)
    end

    # <p>Removes the association between an MPA approval team and a backup vault, disabling the MPA approval workflow for restore operations.</p>
    # @param [Hash, Types::DisassociateBackupVaultMpaApprovalTeamInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of the backup vault from which to disassociate the MPA approval team.</p>
    # @option params [String] :requester_comment
    #   <p>An optional comment explaining the reason for disassociating the MPA approval team from the backup vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     requester_comment: "RequesterComment"
    #   }
    #   options = {}
    #   response = client.disassociate_backup_vault_mpa_approval_team(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_backup_vault_mpa_approval_team(params = {}, options = {})
      request = build_request(:disassociate_backup_vault_mpa_approval_team, params)
      request.send_request(options)
    end

    # <p>Deletes the specified continuous backup recovery point from Backup and
    #          releases control of that continuous backup to the source service, such as Amazon RDS. The source service will continue to create and retain continuous backups using the
    #          lifecycle that you specified in your original backup plan.</p>
    #          <p>Does not support snapshot backup recovery points.</p>
    # @param [Hash, Types::DisassociateRecoveryPointInput] params
    # @option params [String] :backup_vault_name
    #   <p>The unique name of an Backup vault.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an Backup recovery
    #            point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_recovery_point(params = {}, options = {})
      request = build_request(:disassociate_recovery_point, params)
      request.send_request(options)
    end

    # <p>This action to a specific child (nested) recovery point removes the relationship 
    #          between the specified recovery point and its parent (composite) recovery point.</p>
    # @param [Hash, Types::DisassociateRecoveryPointFromParentInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where the child (nested) recovery point
    #            is stored. Backup vaults are identified by names that are unique to the account used 
    #            to create them and the Amazon Web Services Region where they are created.</p>
    # @option params [String] :recovery_point_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the child 
    #            (nested) recovery point; for example, 
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_recovery_point_from_parent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_recovery_point_from_parent(params = {}, options = {})
      request = build_request(:disassociate_recovery_point_from_parent, params)
      request.send_request(options)
    end

    # <p>Returns the backup plan that is specified by the plan ID as a backup template.</p>
    # @param [Hash, Types::ExportBackupPlanTemplateInput] params
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #   }
    #   options = {}
    #   response = client.export_backup_plan_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_plan_template_json: "string"
    #   }
    # @return [Types::ExportBackupPlanTemplateOutput]
    def export_backup_plan_template(params = {}, options = {})
      request = build_request(:export_backup_plan_template, params)
      request.send_request(options)
    end

    # <p>Returns <code>BackupPlan</code> details for the specified <code>BackupPlanId</code>. The
    #          details are the body of a backup plan in JSON format, in addition to plan metadata.</p>
    # @param [Hash, Types::GetBackupPlanInput] params
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    # @option params [String] :version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #     version_id: "string"
    #   }
    #   options = {}
    #   response = client.get_backup_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_plan: {
    #       backup_plan_name: "BackupPlanName", # required
    #       rules: [ # required
    #         {
    #           rule_name: "BackupRuleName", # required
    #           target_backup_vault_name: "BackupVaultName", # required
    #           schedule_expression: "CronExpression",
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1,
    #             opt_in_to_archive_for_supported_resources: false
    #           },
    #           recovery_point_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           rule_id: "string",
    #           copy_actions: [
    #             {
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #                 opt_in_to_archive_for_supported_resources: false
    #               },
    #               destination_backup_vault_arn: "ARN", # required
    #             }
    #           ],
    #           enable_continuous_backup: false,
    #           schedule_expression_timezone: "Timezone",
    #           index_actions: [
    #             {
    #               resource_types: ["ResourceType"]
    #             }
    #           ]
    #         }
    #       ],
    #       advanced_backup_settings: [
    #         {
    #           resource_type: "ResourceType",
    #           backup_options: {
    #             "BackupOptionKey" => "BackupOptionValue"
    #           }
    #         }
    #       ]
    #     },
    #     backup_plan_id: "string",
    #     backup_plan_arn: "ARN",
    #     version_id: "string",
    #     creator_request_id: "string",
    #     creation_date: Time.now,
    #     deletion_date: Time.now,
    #     last_execution_date: Time.now,
    #     advanced_backup_settings: [
    #       {
    #         resource_type: "ResourceType",
    #         backup_options: {
    #           "BackupOptionKey" => "BackupOptionValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetBackupPlanOutput]
    def get_backup_plan(params = {}, options = {})
      request = build_request(:get_backup_plan, params)
      request.send_request(options)
    end

    # <p>Returns a valid JSON document specifying a backup plan or an error.</p>
    # @param [Hash, Types::GetBackupPlanFromJSONInput] params
    # @option params [String] :backup_plan_template_json
    #   <p>A customer-supplied backup plan document in JSON format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_template_json: "string", # required
    #   }
    #   options = {}
    #   response = client.get_backup_plan_from_json(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_plan: {
    #       backup_plan_name: "BackupPlanName", # required
    #       rules: [ # required
    #         {
    #           rule_name: "BackupRuleName", # required
    #           target_backup_vault_name: "BackupVaultName", # required
    #           schedule_expression: "CronExpression",
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1,
    #             opt_in_to_archive_for_supported_resources: false
    #           },
    #           recovery_point_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           rule_id: "string",
    #           copy_actions: [
    #             {
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #                 opt_in_to_archive_for_supported_resources: false
    #               },
    #               destination_backup_vault_arn: "ARN", # required
    #             }
    #           ],
    #           enable_continuous_backup: false,
    #           schedule_expression_timezone: "Timezone",
    #           index_actions: [
    #             {
    #               resource_types: ["ResourceType"]
    #             }
    #           ]
    #         }
    #       ],
    #       advanced_backup_settings: [
    #         {
    #           resource_type: "ResourceType",
    #           backup_options: {
    #             "BackupOptionKey" => "BackupOptionValue"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetBackupPlanFromJSONOutput]
    def get_backup_plan_from_json(params = {}, options = {})
      request = build_request(:get_backup_plan_from_json, params)
      request.send_request(options)
    end

    # <p>Returns the template specified by its <code>templateId</code> as a backup plan.</p>
    # @param [Hash, Types::GetBackupPlanFromTemplateInput] params
    # @option params [String] :backup_plan_template_id
    #   <p>Uniquely identifies a stored backup plan template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_template_id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_backup_plan_from_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_plan_document: {
    #       backup_plan_name: "BackupPlanName", # required
    #       rules: [ # required
    #         {
    #           rule_name: "BackupRuleName", # required
    #           target_backup_vault_name: "BackupVaultName", # required
    #           schedule_expression: "CronExpression",
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1,
    #             opt_in_to_archive_for_supported_resources: false
    #           },
    #           recovery_point_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           rule_id: "string",
    #           copy_actions: [
    #             {
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #                 opt_in_to_archive_for_supported_resources: false
    #               },
    #               destination_backup_vault_arn: "ARN", # required
    #             }
    #           ],
    #           enable_continuous_backup: false,
    #           schedule_expression_timezone: "Timezone",
    #           index_actions: [
    #             {
    #               resource_types: ["ResourceType"]
    #             }
    #           ]
    #         }
    #       ],
    #       advanced_backup_settings: [
    #         {
    #           resource_type: "ResourceType",
    #           backup_options: {
    #             "BackupOptionKey" => "BackupOptionValue"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetBackupPlanFromTemplateOutput]
    def get_backup_plan_from_template(params = {}, options = {})
      request = build_request(:get_backup_plan_from_template, params)
      request.send_request(options)
    end

    # <p>Returns selection metadata and a document in JSON format that specifies a list of
    #          resources that are associated with a backup plan.</p>
    # @param [Hash, Types::GetBackupSelectionInput] params
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    # @option params [String] :selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #     selection_id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_backup_selection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_selection: {
    #       selection_name: "BackupSelectionName", # required
    #       iam_role_arn: "IAMRoleArn", # required
    #       resources: ["ARN"],
    #       list_of_tags: [
    #         {
    #           condition_type: "STRINGEQUALS" # One of: ["STRINGEQUALS"], # required
    #           condition_key: "ConditionKey", # required
    #           condition_value: "ConditionValue", # required
    #         }
    #       ],
    #       not_resources: ["ARN"],
    #       conditions: {
    #         string_equals: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ],
    #         string_not_equals: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ],
    #         string_like: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ],
    #         string_not_like: [
    #           {
    #             condition_key: "ConditionKey",
    #             condition_value: "ConditionValue"
    #           }
    #         ]
    #       }
    #     },
    #     selection_id: "string",
    #     backup_plan_id: "string",
    #     creation_date: Time.now,
    #     creator_request_id: "string"
    #   }
    # @return [Types::GetBackupSelectionOutput]
    def get_backup_selection(params = {}, options = {})
      request = build_request(:get_backup_selection, params)
      request.send_request(options)
    end

    # <p>Returns the access policy document that is associated with the named backup
    #          vault.</p>
    # @param [Hash, Types::GetBackupVaultAccessPolicyInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #   }
    #   options = {}
    #   response = client.get_backup_vault_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_name: "BackupVaultName",
    #     backup_vault_arn: "ARN",
    #     policy: "IAMPolicy"
    #   }
    # @return [Types::GetBackupVaultAccessPolicyOutput]
    def get_backup_vault_access_policy(params = {}, options = {})
      request = build_request(:get_backup_vault_access_policy, params)
      request.send_request(options)
    end

    # <p>Returns event notifications for the specified backup vault.</p>
    # @param [Hash, Types::GetBackupVaultNotificationsInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #   }
    #   options = {}
    #   response = client.get_backup_vault_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_name: "BackupVaultName",
    #     backup_vault_arn: "ARN",
    #     sns_topic_arn: "ARN",
    #     backup_vault_events: ["BACKUP_JOB_STARTED" # One of: ["BACKUP_JOB_STARTED", "BACKUP_JOB_COMPLETED", "BACKUP_JOB_SUCCESSFUL", "BACKUP_JOB_FAILED", "BACKUP_JOB_EXPIRED", "RESTORE_JOB_STARTED", "RESTORE_JOB_COMPLETED", "RESTORE_JOB_SUCCESSFUL", "RESTORE_JOB_FAILED", "COPY_JOB_STARTED", "COPY_JOB_SUCCESSFUL", "COPY_JOB_FAILED", "RECOVERY_POINT_MODIFIED", "BACKUP_PLAN_CREATED", "BACKUP_PLAN_MODIFIED", "S3_BACKUP_OBJECT_FAILED", "S3_RESTORE_OBJECT_FAILED", "CONTINUOUS_BACKUP_INTERRUPTED", "RECOVERY_POINT_INDEX_COMPLETED", "RECOVERY_POINT_INDEX_DELETED", "RECOVERY_POINT_INDEXING_FAILED"]]
    #   }
    # @return [Types::GetBackupVaultNotificationsOutput]
    def get_backup_vault_notifications(params = {}, options = {})
      request = build_request(:get_backup_vault_notifications, params)
      request.send_request(options)
    end

    # <p>This action returns details for a specified legal hold. The details are the 
    #          body of a legal hold in JSON format, in addition to metadata.</p>
    # @param [Hash, Types::GetLegalHoldInput] params
    # @option params [String] :legal_hold_id
    #   <p>The ID of the legal hold.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     legal_hold_id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_legal_hold(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     title: "string",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "CANCELING", "CANCELED"],
    #     description: "string",
    #     cancel_description: "string",
    #     legal_hold_id: "string",
    #     legal_hold_arn: "ARN",
    #     creation_date: Time.now,
    #     cancellation_date: Time.now,
    #     retain_record_until: Time.now,
    #     recovery_point_selection: {
    #       vault_names: ["string"],
    #       resource_identifiers: ["string"],
    #       date_range: {
    #         from_date: Time.now, # required
    #         to_date: Time.now, # required
    #       }
    #     }
    #   }
    # @return [Types::GetLegalHoldOutput]
    def get_legal_hold(params = {}, options = {})
      request = build_request(:get_legal_hold, params)
      request.send_request(options)
    end

    # <p>This operation returns the metadata and details specific to 
    #          the backup index associated with the specified recovery point.</p>
    # @param [Hash, Types::GetRecoveryPointIndexDetailsInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #            <p>Accepted characters include lowercase letters, numbers, and hyphens.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_recovery_point_index_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recovery_point_arn: "ARN",
    #     backup_vault_arn: "ARN",
    #     source_resource_arn: "ARN",
    #     index_creation_date: Time.now,
    #     index_deletion_date: Time.now,
    #     index_completion_date: Time.now,
    #     index_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING"],
    #     index_status_message: "string",
    #     total_items_indexed: 1
    #   }
    # @return [Types::GetRecoveryPointIndexDetailsOutput]
    def get_recovery_point_index_details(params = {}, options = {})
      request = build_request(:get_recovery_point_index_details, params)
      request.send_request(options)
    end

    # <p>Returns a set of metadata key-value pairs that were used to create the backup.</p>
    # @param [Hash, Types::GetRecoveryPointRestoreMetadataInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    # @option params [String] :backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #     backup_vault_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_recovery_point_restore_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_arn: "ARN",
    #     recovery_point_arn: "ARN",
    #     restore_metadata: {
    #       "MetadataKey" => "MetadataValue"
    #     },
    #     resource_type: "ResourceType"
    #   }
    # @return [Types::GetRecoveryPointRestoreMetadataOutput]
    def get_recovery_point_restore_metadata(params = {}, options = {})
      request = build_request(:get_recovery_point_restore_metadata, params)
      request.send_request(options)
    end

    # <p>This request returns the metadata for the specified restore job.</p>
    # @param [Hash, Types::GetRestoreJobMetadataInput] params
    # @option params [String] :restore_job_id
    #   <p>This is a unique identifier of a restore job within Backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_job_id: "RestoreJobId", # required
    #   }
    #   options = {}
    #   response = client.get_restore_job_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_job_id: "RestoreJobId",
    #     metadata: {
    #       "MetadataKey" => "MetadataValue"
    #     }
    #   }
    # @return [Types::GetRestoreJobMetadataOutput]
    def get_restore_job_metadata(params = {}, options = {})
      request = build_request(:get_restore_job_metadata, params)
      request.send_request(options)
    end

    # <p>This request returns the minimal required set of metadata needed to 
    #          start a restore job with secure default settings. <code>BackupVaultName</code> 
    #          and <code>RecoveryPointArn</code> are required parameters. 
    #          <code>BackupVaultAccountId</code> is an optional parameter.</p>
    # @param [Hash, Types::GetRestoreTestingInferredMetadataInput] params
    # @option params [String] :backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup 
    #            vaults are identified by names that are unique to the account used to 
    #            create them and the Amazon Web ServicesRegion where they are created. 
    #            They consist of letters, numbers, and hyphens.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery 
    #            point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_account_id: "String",
    #     backup_vault_name: "String", # required
    #     recovery_point_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_restore_testing_inferred_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inferred_metadata: { # required
    #       "string" => "string"
    #     }
    #   }
    # @return [Types::GetRestoreTestingInferredMetadataOutput]
    def get_restore_testing_inferred_metadata(params = {}, options = {})
      request = build_request(:get_restore_testing_inferred_metadata, params)
      request.send_request(options)
    end

    # <p>Returns <code>RestoreTestingPlan</code> details for the specified
    #             <code>RestoreTestingPlanName</code>. The details are the body of a restore testing plan
    #          in JSON format, in addition to plan metadata.</p>
    # @param [Hash, Types::GetRestoreTestingPlanInput] params
    # @option params [String] :restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_testing_plan_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_restore_testing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_testing_plan: { # required
    #       creation_time: Time.now, # required
    #       creator_request_id: "String",
    #       last_execution_time: Time.now,
    #       last_update_time: Time.now,
    #       recovery_point_selection: { # required
    #         algorithm: "LATEST_WITHIN_WINDOW" # One of: ["LATEST_WITHIN_WINDOW", "RANDOM_WITHIN_WINDOW"],
    #         exclude_vaults: ["string"],
    #         include_vaults: ["string"],
    #         recovery_point_types: ["CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"]],
    #         selection_window_days: 1
    #       },
    #       restore_testing_plan_arn: "String", # required
    #       restore_testing_plan_name: "String", # required
    #       schedule_expression: "String", # required
    #       schedule_expression_timezone: "String",
    #       start_window_hours: 1
    #     }
    #   }
    # @return [Types::GetRestoreTestingPlanOutput]
    def get_restore_testing_plan(params = {}, options = {})
      request = build_request(:get_restore_testing_plan, params)
      request.send_request(options)
    end

    # <p>Returns RestoreTestingSelection, which displays resources 
    #          and elements of the restore testing plan.</p>
    # @param [Hash, Types::GetRestoreTestingSelectionInput] params
    # @option params [String] :restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan.</p>
    # @option params [String] :restore_testing_selection_name
    #   <p>Required unique name of the restore testing selection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_testing_plan_name: "String", # required
    #     restore_testing_selection_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_restore_testing_selection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_testing_selection: { # required
    #       creation_time: Time.now, # required
    #       creator_request_id: "String",
    #       iam_role_arn: "String", # required
    #       protected_resource_arns: ["string"],
    #       protected_resource_conditions: {
    #         string_equals: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         string_not_equals: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       protected_resource_type: "String", # required
    #       restore_metadata_overrides: {
    #         "String" => "String"
    #       },
    #       restore_testing_plan_name: "String", # required
    #       restore_testing_selection_name: "String", # required
    #       validation_window_hours: 1
    #     }
    #   }
    # @return [Types::GetRestoreTestingSelectionOutput]
    def get_restore_testing_selection(params = {}, options = {})
      request = build_request(:get_restore_testing_selection, params)
      request.send_request(options)
    end

    # <p>Returns the Amazon Web Services resource types supported by Backup.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_supported_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_types: ["ResourceType"]
    #   }
    # @return [Types::GetSupportedResourceTypesOutput]
    def get_supported_resource_types(params = {}, options = {})
      request = build_request(:get_supported_resource_types, params)
      request.send_request(options)
    end

    # <p>This is a request for a summary of backup jobs created 
    #          or running within the most recent 30 days. You can 
    #          include parameters AccountID, State, ResourceType, MessageCategory, 
    #          AggregationPeriod, MaxResults, or NextToken to filter 
    #          results.</p>
    #          <p>This request returns a summary that contains 
    #          Region, Account, State, ResourceType, MessageCategory, 
    #          StartTime, EndTime, and Count of included jobs.</p>
    # @param [Hash, Types::ListBackupJobSummariesInput] params
    # @option params [String] :account_id
    #   <p>Returns the job count for the specified account.</p>
    #            <p>If the request is sent from a member account or an account 
    #            not part of Amazon Web Services Organizations, jobs within requestor's account 
    #            will be returned.</p>
    #            <p>Root, admin, and delegated administrator accounts can use 
    #            the value ANY to return job counts from every account in the 
    #            organization.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            from all accounts within the authenticated organization, 
    #            then returns the sum.</p>
    # @option params [String] :state
    #   <p>This parameter returns the job count for jobs with the specified state.</p>
    #            <p>The the value ANY returns count of all states.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts for all states and returns the
    #            sum.</p>
    #            <p>
    #               <code>Completed with issues</code> is a status found only in the Backup
    #            console. For API, this status refers to jobs with a state of <code>COMPLETED</code> and a
    #               <code>MessageCategory</code> with a value other than <code>SUCCESS</code>; that is, the
    #            status is completed but comes with a status message. To obtain the job count for
    #               <code>Completed with issues</code>, run two GET requests, and subtract the second,
    #            smaller number:</p>
    #            <p>GET
    #            /audit/backup-job-summaries?AggregationPeriod=FOURTEEN_DAYS&State=COMPLETED</p>
    #            <p>GET
    #            /audit/backup-job-summaries?AggregationPeriod=FOURTEEN_DAYS&MessageCategory=SUCCESS&State=COMPLETED</p>
    # @option params [String] :resource_type
    #   <p>Returns the job count for the specified resource type. 
    #            Use request <code>GetSupportedResourceTypes</code> to obtain 
    #            strings for supported resource types.</p>
    #            <p>The the value ANY returns count of all resource types.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all resource types and returns the sum.</p>
    #            <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    # @option params [String] :message_category
    #   <p>This parameter returns the job count for the specified 
    #            message category.</p>
    #            <p>Example accepted strings include <code>AccessDenied</code>, 
    #            <code>Success</code>, and <code>InvalidParameters</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of accepted MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum.</p>
    # @option params [String] :aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #            <p>The value is an integer. Range of accepted values is from 
    #            1 to 500.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     state: "CREATED" # One of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED", "PARTIAL", "AGGREGATE_ALL", "ANY"],
    #     resource_type: "ResourceType",
    #     message_category: "MessageCategory",
    #     aggregation_period: "ONE_DAY" # One of: ["ONE_DAY", "SEVEN_DAYS", "FOURTEEN_DAYS"],
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.list_backup_job_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_job_summaries: [
    #       {
    #         region: "Region",
    #         account_id: "AccountId",
    #         state: "CREATED" # One of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED", "PARTIAL", "AGGREGATE_ALL", "ANY"],
    #         resource_type: "ResourceType",
    #         message_category: "MessageCategory",
    #         count: 1,
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     aggregation_period: "string",
    #     next_token: "string"
    #   }
    # @return [Types::ListBackupJobSummariesOutput]
    def list_backup_job_summaries(params = {}, options = {})
      request = build_request(:list_backup_job_summaries, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing backup jobs for an authenticated account for the last 30
    #          days. For a longer period of time, consider using these <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">monitoring tools</a>.</p>
    # @param [Hash, Types::ListBackupJobsInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is 
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @option params [String] :by_resource_arn
    #   <p>Returns only backup jobs that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    # @option params [String] :by_state
    #   <p>Returns only backup jobs that are in the specified state.</p>
    #            <p>
    #               <code>Completed with issues</code> is a status found only in the Backup
    #            console. For API, this status refers to jobs with a state of <code>COMPLETED</code> and a
    #            <code>MessageCategory</code> with a value other than <code>SUCCESS</code>; that is, the
    #            status is completed but comes with a status message.</p>
    #            <p>To obtain the job count for
    #            <code>Completed with issues</code>, run two GET requests, and subtract the second,
    #            smaller number:</p>
    #            <p>GET /backup-jobs/?state=COMPLETED</p>
    #            <p>GET /backup-jobs/?messageCategory=SUCCESS&state=COMPLETED</p>
    # @option params [String] :by_backup_vault_name
    #   <p>Returns only backup jobs that will be stored in the specified backup vault. Backup
    #            vaults are identified by names that are unique to the account used to create them and the
    #               Amazon Web Services Region where they are created.</p>
    # @option params [Time] :by_created_before
    #   <p>Returns only backup jobs that were created before the specified date.</p>
    # @option params [Time] :by_created_after
    #   <p>Returns only backup jobs that were created after the specified date.</p>
    # @option params [String] :by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    # @option params [String] :by_account_id
    #   <p>The account ID to list the jobs from. Returns only backup jobs associated with the
    #            specified account ID.</p>
    #            <p>If used from an Organizations management account, passing <code>*</code> returns
    #            all jobs across the organization.</p>
    # @option params [Time] :by_complete_after
    #   <p>Returns only backup jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    # @option params [Time] :by_complete_before
    #   <p>Returns only backup jobs completed before a date expressed in Unix format and
    #            Coordinated Universal Time (UTC).</p>
    # @option params [String] :by_parent_job_id
    #   <p>This is a filter to list child (nested) jobs based on parent job ID.</p>
    # @option params [String] :by_message_category
    #   <p>This is an optional parameter that can be used to 
    #            filter out jobs with a MessageCategory which matches the 
    #            value you input.</p>
    #            <p>Example strings may include <code>AccessDenied</code>, 
    #            <code>SUCCESS</code>, <code>AGGREGATE_ALL</code>, and 
    #            <code>InvalidParameters</code>.</p>
    #            <p>View <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a>
    #            </p>
    #            <p>The wildcard () returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #               for all message categories and returns the sum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1,
    #     by_resource_arn: "ARN",
    #     by_state: "CREATED" # One of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED", "PARTIAL"],
    #     by_backup_vault_name: "BackupVaultName",
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: "ResourceType",
    #     by_account_id: "AccountId",
    #     by_complete_after: Time.now,
    #     by_complete_before: Time.now,
    #     by_parent_job_id: "string",
    #     by_message_category: "string"
    #   }
    #   options = {}
    #   response = client.list_backup_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_jobs: [
    #       {
    #         account_id: "AccountId",
    #         backup_job_id: "string",
    #         backup_vault_name: "BackupVaultName",
    #         backup_vault_arn: "ARN",
    #         recovery_point_arn: "ARN",
    #         resource_arn: "ARN",
    #         creation_date: Time.now,
    #         completion_date: Time.now,
    #         state: "CREATED" # One of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED", "PARTIAL"],
    #         status_message: "string",
    #         percent_done: "string",
    #         backup_size_in_bytes: 1,
    #         iam_role_arn: "IAMRoleArn",
    #         created_by: {
    #           backup_plan_id: "string",
    #           backup_plan_arn: "ARN",
    #           backup_plan_version: "string",
    #           backup_rule_id: "string"
    #         },
    #         expected_completion_date: Time.now,
    #         start_by: Time.now,
    #         resource_type: "ResourceType",
    #         bytes_transferred: 1,
    #         backup_options: {
    #           "BackupOptionKey" => "BackupOptionValue"
    #         },
    #         backup_type: "string",
    #         parent_job_id: "string",
    #         is_parent: false,
    #         resource_name: "string",
    #         initiation_date: Time.now,
    #         message_category: "string"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListBackupJobsOutput]
    def list_backup_jobs(params = {}, options = {})
      request = build_request(:list_backup_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the backup plan templates.</p>
    # @param [Hash, Types::ListBackupPlanTemplatesInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_backup_plan_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     backup_plan_templates_list: [
    #       {
    #         backup_plan_template_id: "string",
    #         backup_plan_template_name: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ListBackupPlanTemplatesOutput]
    def list_backup_plan_templates(params = {}, options = {})
      request = build_request(:list_backup_plan_templates, params)
      request.send_request(options)
    end

    # <p>Returns version metadata of your backup plans, including Amazon Resource Names (ARNs),
    #          backup plan IDs, creation and deletion dates, plan names, and version IDs.</p>
    # @param [Hash, Types::ListBackupPlanVersionsInput] params
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_backup_plan_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     backup_plan_versions_list: [
    #       {
    #         backup_plan_arn: "ARN",
    #         backup_plan_id: "string",
    #         creation_date: Time.now,
    #         deletion_date: Time.now,
    #         version_id: "string",
    #         backup_plan_name: "BackupPlanName",
    #         creator_request_id: "string",
    #         last_execution_date: Time.now,
    #         advanced_backup_settings: [
    #           {
    #             resource_type: "ResourceType",
    #             backup_options: {
    #               "BackupOptionKey" => "BackupOptionValue"
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListBackupPlanVersionsOutput]
    def list_backup_plan_versions(params = {}, options = {})
      request = build_request(:list_backup_plan_versions, params)
      request.send_request(options)
    end

    # <p>Lists the active backup plans for the account.</p>
    # @param [Hash, Types::ListBackupPlansInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @option params [Boolean] :include_deleted
    #   <p>A Boolean value with a default value of <code>FALSE</code> that returns deleted backup
    #            plans when set to <code>TRUE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1,
    #     include_deleted: false
    #   }
    #   options = {}
    #   response = client.list_backup_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     backup_plans_list: [
    #       {
    #         backup_plan_arn: "ARN",
    #         backup_plan_id: "string",
    #         creation_date: Time.now,
    #         deletion_date: Time.now,
    #         version_id: "string",
    #         backup_plan_name: "BackupPlanName",
    #         creator_request_id: "string",
    #         last_execution_date: Time.now,
    #         advanced_backup_settings: [
    #           {
    #             resource_type: "ResourceType",
    #             backup_options: {
    #               "BackupOptionKey" => "BackupOptionValue"
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListBackupPlansOutput]
    def list_backup_plans(params = {}, options = {})
      request = build_request(:list_backup_plans, params)
      request.send_request(options)
    end

    # <p>Returns an array containing metadata of the resources associated with the target backup
    #          plan.</p>
    # @param [Hash, Types::ListBackupSelectionsInput] params
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_backup_selections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     backup_selections_list: [
    #       {
    #         selection_id: "string",
    #         selection_name: "BackupSelectionName",
    #         backup_plan_id: "string",
    #         creation_date: Time.now,
    #         creator_request_id: "string",
    #         iam_role_arn: "IAMRoleArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListBackupSelectionsOutput]
    def list_backup_selections(params = {}, options = {})
      request = build_request(:list_backup_selections, params)
      request.send_request(options)
    end

    # <p>Returns a list of recovery point storage containers along with information about
    #          them.</p>
    # @param [Hash, Types::ListBackupVaultsInput] params
    # @option params [String] :by_vault_type
    #   <p>This parameter will sort the list of vaults by vault type.</p>
    # @option params [Boolean] :by_shared
    #   <p>This parameter will sort the list of vaults by shared vaults.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     by_vault_type: "BACKUP_VAULT" # One of: ["BACKUP_VAULT", "LOGICALLY_AIR_GAPPED_BACKUP_VAULT", "RESTORE_ACCESS_BACKUP_VAULT"],
    #     by_shared: false,
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_backup_vaults(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_list: [
    #       {
    #         backup_vault_name: "BackupVaultName",
    #         backup_vault_arn: "ARN",
    #         vault_type: "BACKUP_VAULT" # One of: ["BACKUP_VAULT", "LOGICALLY_AIR_GAPPED_BACKUP_VAULT", "RESTORE_ACCESS_BACKUP_VAULT"],
    #         vault_state: "CREATING" # One of: ["CREATING", "AVAILABLE", "FAILED"],
    #         creation_date: Time.now,
    #         encryption_key_arn: "ARN",
    #         creator_request_id: "string",
    #         number_of_recovery_points: 1,
    #         locked: false,
    #         min_retention_days: 1,
    #         max_retention_days: 1,
    #         lock_date: Time.now
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListBackupVaultsOutput]
    def list_backup_vaults(params = {}, options = {})
      request = build_request(:list_backup_vaults, params)
      request.send_request(options)
    end

    # <p>This request obtains a list of copy jobs created 
    #          or running within the the most recent 30 days. You can 
    #          include parameters AccountID, State, ResourceType, MessageCategory, 
    #          AggregationPeriod, MaxResults, or NextToken to filter 
    #          results.</p>
    #          <p>This request returns a summary that contains 
    #          Region, Account, State, RestourceType, MessageCategory, 
    #          StartTime, EndTime, and Count of included jobs.</p>
    # @param [Hash, Types::ListCopyJobSummariesInput] params
    # @option params [String] :account_id
    #   <p>Returns the job count for the specified account.</p>
    #            <p>If the request is sent from a member account or an account 
    #            not part of Amazon Web Services Organizations, jobs within requestor's account 
    #            will be returned.</p>
    #            <p>Root, admin, and delegated administrator accounts can use 
    #            the value ANY to return job counts from every account in the 
    #            organization.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            from all accounts within the authenticated organization, 
    #            then returns the sum.</p>
    # @option params [String] :state
    #   <p>This parameter returns the job count for jobs 
    #            with the specified state.</p>
    #            <p>The the value ANY returns count of all states.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all states and returns the sum.</p>
    # @option params [String] :resource_type
    #   <p>Returns the job count for the specified resource type. 
    #            Use request <code>GetSupportedResourceTypes</code> to obtain 
    #            strings for supported resource types.</p>
    #            <p>The the value ANY returns count of all resource types.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all resource types and returns the sum.</p>
    #            <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    # @option params [String] :message_category
    #   <p>This parameter returns the job count for the specified 
    #            message category.</p>
    #            <p>Example accepted strings include <code>AccessDenied</code>, 
    #            <code>Success</code>, and <code>InvalidParameters</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of accepted MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum.</p>
    # @option params [String] :aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>This parameter sets the maximum number of items 
    #            to be returned.</p>
    #            <p>The value is an integer. Range of accepted values is from 
    #            1 to 500.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     state: "CREATED" # One of: ["CREATED", "RUNNING", "ABORTING", "ABORTED", "COMPLETING", "COMPLETED", "FAILING", "FAILED", "PARTIAL", "AGGREGATE_ALL", "ANY"],
    #     resource_type: "ResourceType",
    #     message_category: "MessageCategory",
    #     aggregation_period: "ONE_DAY" # One of: ["ONE_DAY", "SEVEN_DAYS", "FOURTEEN_DAYS"],
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.list_copy_job_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     copy_job_summaries: [
    #       {
    #         region: "Region",
    #         account_id: "AccountId",
    #         state: "CREATED" # One of: ["CREATED", "RUNNING", "ABORTING", "ABORTED", "COMPLETING", "COMPLETED", "FAILING", "FAILED", "PARTIAL", "AGGREGATE_ALL", "ANY"],
    #         resource_type: "ResourceType",
    #         message_category: "MessageCategory",
    #         count: 1,
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     aggregation_period: "string",
    #     next_token: "string"
    #   }
    # @return [Types::ListCopyJobSummariesOutput]
    def list_copy_job_summaries(params = {}, options = {})
      request = build_request(:list_copy_job_summaries, params)
      request.send_request(options)
    end

    # <p>Returns metadata about your copy jobs.</p>
    # @param [Hash, Types::ListCopyJobsInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return MaxResults number of items, NextToken allows you to return more items in
    #            your list starting at the location pointed to by the next token. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @option params [String] :by_resource_arn
    #   <p>Returns only copy jobs that match the specified resource Amazon Resource Name (ARN).
    #         </p>
    # @option params [String] :by_state
    #   <p>Returns only copy jobs that are in the specified state.</p>
    # @option params [Time] :by_created_before
    #   <p>Returns only copy jobs that were created before the specified date.</p>
    # @option params [Time] :by_created_after
    #   <p>Returns only copy jobs that were created after the specified date.</p>
    # @option params [String] :by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    # @option params [String] :by_destination_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a source backup vault to copy
    #            from; for example, <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.
    #         </p>
    # @option params [String] :by_account_id
    #   <p>The account ID to list the jobs from. Returns only copy jobs associated with the
    #            specified account ID.</p>
    # @option params [Time] :by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    # @option params [Time] :by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    # @option params [String] :by_parent_job_id
    #   <p>This is a filter to list child (nested) jobs based on parent job ID.</p>
    # @option params [String] :by_message_category
    #   <p>This is an optional parameter that can be used to 
    #            filter out jobs with a MessageCategory which matches the 
    #            value you input.</p>
    #            <p>Example strings may include <code>AccessDenied</code>, 
    #            <code>SUCCESS</code>, <code>AGGREGATE_ALL</code>, and 
    #            <code>INVALIDPARAMETERS</code>.</p>
    #            <p>View 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a>
    #            for a list of accepted strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #               for all message categories and returns the sum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1,
    #     by_resource_arn: "ARN",
    #     by_state: "CREATED" # One of: ["CREATED", "RUNNING", "COMPLETED", "FAILED", "PARTIAL"],
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: "ResourceType",
    #     by_destination_vault_arn: "string",
    #     by_account_id: "AccountId",
    #     by_complete_before: Time.now,
    #     by_complete_after: Time.now,
    #     by_parent_job_id: "string",
    #     by_message_category: "string"
    #   }
    #   options = {}
    #   response = client.list_copy_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     copy_jobs: [
    #       {
    #         account_id: "AccountId",
    #         copy_job_id: "string",
    #         source_backup_vault_arn: "ARN",
    #         source_recovery_point_arn: "ARN",
    #         destination_backup_vault_arn: "ARN",
    #         destination_recovery_point_arn: "ARN",
    #         resource_arn: "ARN",
    #         creation_date: Time.now,
    #         completion_date: Time.now,
    #         state: "CREATED" # One of: ["CREATED", "RUNNING", "COMPLETED", "FAILED", "PARTIAL"],
    #         status_message: "string",
    #         backup_size_in_bytes: 1,
    #         iam_role_arn: "IAMRoleArn",
    #         created_by: {
    #           backup_plan_id: "string",
    #           backup_plan_arn: "ARN",
    #           backup_plan_version: "string",
    #           backup_rule_id: "string"
    #         },
    #         resource_type: "ResourceType",
    #         parent_job_id: "string",
    #         is_parent: false,
    #         composite_member_identifier: "string",
    #         number_of_child_jobs: 1,
    #         child_jobs_in_state: {
    #           "CopyJobState" => 1
    #         },
    #         resource_name: "string",
    #         message_category: "string"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListCopyJobsOutput]
    def list_copy_jobs(params = {}, options = {})
      request = build_request(:list_copy_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of all frameworks for an Amazon Web Services account and Amazon Web Services Region.</p>
    # @param [Hash, Types::ListFrameworksInput] params
    # @option params [Integer] :max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.list_frameworks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     frameworks: [
    #       {
    #         framework_name: "FrameworkName",
    #         framework_arn: "ARN",
    #         framework_description: "FrameworkDescription",
    #         number_of_controls: 1,
    #         creation_time: Time.now,
    #         deployment_status: "string"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListFrameworksOutput]
    def list_frameworks(params = {}, options = {})
      request = build_request(:list_frameworks, params)
      request.send_request(options)
    end

    # <p>This operation returns a list of recovery points that have an 
    #          associated index, belonging to the specified account.</p>
    #          <p>Optional parameters you can include are: MaxResults; 
    #          NextToken; SourceResourceArns; CreatedBefore; CreatedAfter; 
    #          and ResourceType.</p>
    # @param [Hash, Types::ListIndexedRecoveryPointsInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned recovery points.</p>
    #            <p>For example, if a request
    #            is made to return <code>MaxResults</code> number of indexed recovery points, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    # @option params [String] :source_resource_arn
    #   <p>A string of the  Amazon Resource Name (ARN) that uniquely identifies 
    #            the source resource.</p>
    # @option params [Time] :created_before
    #   <p>Returns only indexed recovery points that were created before the 
    #            specified date.</p>
    # @option params [Time] :created_after
    #   <p>Returns only indexed recovery points that were created after the 
    #            specified date.</p>
    # @option params [String] :resource_type
    #   <p>Returns a list of indexed recovery points for the specified 
    #            resource type(s).</p>
    #            <p>Accepted values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #            </ul>
    # @option params [String] :index_status
    #   <p>Include this parameter to filter the returned list by 
    #            the indicated statuses.</p>
    #            <p>Accepted values: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> | <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> 
    #            can be included in a search.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1,
    #     source_resource_arn: "ARN",
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     resource_type: "ResourceType",
    #     index_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING"]
    #   }
    #   options = {}
    #   response = client.list_indexed_recovery_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     indexed_recovery_points: [
    #       {
    #         recovery_point_arn: "ARN",
    #         source_resource_arn: "ARN",
    #         iam_role_arn: "ARN",
    #         backup_creation_date: Time.now,
    #         resource_type: "ResourceType",
    #         index_creation_date: Time.now,
    #         index_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING"],
    #         index_status_message: "string",
    #         backup_vault_arn: "ARN"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListIndexedRecoveryPointsOutput]
    def list_indexed_recovery_points(params = {}, options = {})
      request = build_request(:list_indexed_recovery_points, params)
      request.send_request(options)
    end

    # <p>This action returns metadata about active and previous legal holds.</p>
    # @param [Hash, Types::ListLegalHoldsInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_legal_holds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     legal_holds: [
    #       {
    #         title: "string",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "CANCELING", "CANCELED"],
    #         description: "string",
    #         legal_hold_id: "string",
    #         legal_hold_arn: "ARN",
    #         creation_date: Time.now,
    #         cancellation_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListLegalHoldsOutput]
    def list_legal_holds(params = {}, options = {})
      request = build_request(:list_legal_holds, params)
      request.send_request(options)
    end

    # <p>Returns an array of resources successfully backed up by Backup, including
    #          the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a
    #          resource type.</p>
    # @param [Hash, Types::ListProtectedResourcesInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_protected_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         resource_arn: "ARN",
    #         resource_type: "ResourceType",
    #         last_backup_time: Time.now,
    #         resource_name: "string",
    #         last_backup_vault_arn: "ARN",
    #         last_recovery_point_arn: "ARN"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListProtectedResourcesOutput]
    def list_protected_resources(params = {}, options = {})
      request = build_request(:list_protected_resources, params)
      request.send_request(options)
    end

    # <p>This request lists the protected resources corresponding to each backup vault.</p>
    # @param [Hash, Types::ListProtectedResourcesByBackupVaultInput] params
    # @option params [String] :backup_vault_name
    #   <p>The list of protected resources by backup vault within the vault(s) you specify by name.</p>
    # @option params [String] :backup_vault_account_id
    #   <p>The list of protected resources by backup vault within the vault(s) you specify by account ID.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     backup_vault_account_id: "AccountId",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_protected_resources_by_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         resource_arn: "ARN",
    #         resource_type: "ResourceType",
    #         last_backup_time: Time.now,
    #         resource_name: "string",
    #         last_backup_vault_arn: "ARN",
    #         last_recovery_point_arn: "ARN"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListProtectedResourcesByBackupVaultOutput]
    def list_protected_resources_by_backup_vault(params = {}, options = {})
      request = build_request(:list_protected_resources_by_backup_vault, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about the recovery points stored in a backup vault.</p>
    # @param [Hash, Types::ListRecoveryPointsByBackupVaultInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #            <note>
    #               <p>Backup vault name might not be available when a supported service creates the
    #               backup.</p>
    #            </note>
    # @option params [String] :backup_vault_account_id
    #   <p>This parameter will sort the list of recovery points by account ID.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @option params [String] :by_resource_arn
    #   <p>Returns only recovery points that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    # @option params [String] :by_resource_type
    #   <p>Returns only recovery points that match the specified resource type(s):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    # @option params [String] :by_backup_plan_id
    #   <p>Returns only recovery points that match the specified backup plan ID.</p>
    # @option params [Time] :by_created_before
    #   <p>Returns only recovery points that were created before the specified timestamp.</p>
    # @option params [Time] :by_created_after
    #   <p>Returns only recovery points that were created after the specified timestamp.</p>
    # @option params [String] :by_parent_recovery_point_arn
    #   <p>This returns only recovery points that match the specified parent (composite)
    #            recovery point Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     backup_vault_account_id: "AccountId",
    #     next_token: "string",
    #     max_results: 1,
    #     by_resource_arn: "ARN",
    #     by_resource_type: "ResourceType",
    #     by_backup_plan_id: "string",
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_parent_recovery_point_arn: "ARN"
    #   }
    #   options = {}
    #   response = client.list_recovery_points_by_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     recovery_points: [
    #       {
    #         recovery_point_arn: "ARN",
    #         backup_vault_name: "BackupVaultName",
    #         backup_vault_arn: "ARN",
    #         source_backup_vault_arn: "ARN",
    #         resource_arn: "ARN",
    #         resource_type: "ResourceType",
    #         created_by: {
    #           backup_plan_id: "string",
    #           backup_plan_arn: "ARN",
    #           backup_plan_version: "string",
    #           backup_rule_id: "string"
    #         },
    #         iam_role_arn: "IAMRoleArn",
    #         status: "COMPLETED" # One of: ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED", "AVAILABLE", "STOPPED", "CREATING"],
    #         status_message: "string",
    #         creation_date: Time.now,
    #         initiation_date: Time.now,
    #         completion_date: Time.now,
    #         backup_size_in_bytes: 1,
    #         calculated_lifecycle: {
    #           move_to_cold_storage_at: Time.now,
    #           delete_at: Time.now
    #         },
    #         lifecycle: {
    #           move_to_cold_storage_after_days: 1,
    #           delete_after_days: 1,
    #           opt_in_to_archive_for_supported_resources: false
    #         },
    #         encryption_key_arn: "ARN",
    #         is_encrypted: false,
    #         last_restore_time: Time.now,
    #         parent_recovery_point_arn: "ARN",
    #         composite_member_identifier: "string",
    #         is_parent: false,
    #         resource_name: "string",
    #         vault_type: "BACKUP_VAULT" # One of: ["BACKUP_VAULT", "LOGICALLY_AIR_GAPPED_BACKUP_VAULT", "RESTORE_ACCESS_BACKUP_VAULT"],
    #         index_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING"],
    #         index_status_message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ListRecoveryPointsByBackupVaultOutput]
    def list_recovery_points_by_backup_vault(params = {}, options = {})
      request = build_request(:list_recovery_points_by_backup_vault, params)
      request.send_request(options)
    end

    # <p>This action returns recovery point ARNs (Amazon Resource Names) of the 
    #          specified legal hold.</p>
    # @param [Hash, Types::ListRecoveryPointsByLegalHoldInput] params
    # @option params [String] :legal_hold_id
    #   <p>The ID of the legal hold.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     legal_hold_id: "string", # required
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_recovery_points_by_legal_hold(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recovery_points: [
    #       {
    #         recovery_point_arn: "ARN",
    #         resource_arn: "ARN",
    #         resource_type: "ResourceType",
    #         backup_vault_name: "BackupVaultName"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListRecoveryPointsByLegalHoldOutput]
    def list_recovery_points_by_legal_hold(params = {}, options = {})
      request = build_request(:list_recovery_points_by_legal_hold, params)
      request.send_request(options)
    end

    # <p>The information about the recovery points of the type specified by a
    #          resource Amazon Resource Name (ARN).</p>
    #          <note>
    #             <p>For Amazon EFS and Amazon EC2, this action only lists recovery points
    #             created by Backup.</p>
    #          </note>
    # @param [Hash, Types::ListRecoveryPointsByResourceInput] params
    # @option params [String] :resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #            <note>
    #               <p>Amazon RDS requires a value of at least 20.</p>
    #            </note>
    # @option params [Boolean] :managed_by_aws_backup_only
    #   <p>This attribute filters recovery points based on ownership.</p>
    #            <p>If this is 
    #            set to <code>TRUE</code>, the response will contain recovery points associated 
    #            with the selected resources that are managed by Backup.</p>
    #            <p>If this is set to <code>FALSE</code>, the response will contain all 
    #            recovery points associated with the selected resource.</p>
    #            <p>Type: Boolean</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     next_token: "string",
    #     max_results: 1,
    #     managed_by_aws_backup_only: false
    #   }
    #   options = {}
    #   response = client.list_recovery_points_by_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     recovery_points: [
    #       {
    #         recovery_point_arn: "ARN",
    #         creation_date: Time.now,
    #         status: "COMPLETED" # One of: ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED", "AVAILABLE", "STOPPED", "CREATING"],
    #         status_message: "string",
    #         encryption_key_arn: "ARN",
    #         backup_size_bytes: 1,
    #         backup_vault_name: "BackupVaultName",
    #         is_parent: false,
    #         parent_recovery_point_arn: "ARN",
    #         resource_name: "string",
    #         vault_type: "BACKUP_VAULT" # One of: ["BACKUP_VAULT", "LOGICALLY_AIR_GAPPED_BACKUP_VAULT", "RESTORE_ACCESS_BACKUP_VAULT"],
    #         index_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING"],
    #         index_status_message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ListRecoveryPointsByResourceOutput]
    def list_recovery_points_by_resource(params = {}, options = {})
      request = build_request(:list_recovery_points_by_resource, params)
      request.send_request(options)
    end

    # <p>Returns details about your report jobs.</p>
    # @param [Hash, Types::ListReportJobsInput] params
    # @option params [String] :by_report_plan_name
    #   <p>Returns only report jobs with the specified report plan name.</p>
    # @option params [Time] :by_creation_before
    #   <p>Returns only report jobs that were created before the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    # @option params [Time] :by_creation_after
    #   <p>Returns only report jobs that were created after the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    # @option params [String] :by_status
    #   <p>Returns only report jobs that are in the specified status. The statuses are:</p>
    #            <p>
    #               <code>CREATED | RUNNING | COMPLETED | FAILED</code>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     by_report_plan_name: "ReportPlanName",
    #     by_creation_before: Time.now,
    #     by_creation_after: Time.now,
    #     by_status: "string",
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.list_report_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_jobs: [
    #       {
    #         report_job_id: "ReportJobId",
    #         report_plan_arn: "ARN",
    #         report_template: "string",
    #         creation_time: Time.now,
    #         completion_time: Time.now,
    #         status: "string",
    #         status_message: "string",
    #         report_destination: {
    #           s3_bucket_name: "string",
    #           s3_keys: ["string"]
    #         }
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListReportJobsOutput]
    def list_report_jobs(params = {}, options = {})
      request = build_request(:list_report_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of your report plans. For detailed information about a single report
    #          plan, use <code>DescribeReportPlan</code>.</p>
    # @param [Hash, Types::ListReportPlansInput] params
    # @option params [Integer] :max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.list_report_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_plans: [
    #       {
    #         report_plan_arn: "ARN",
    #         report_plan_name: "ReportPlanName",
    #         report_plan_description: "ReportPlanDescription",
    #         report_setting: {
    #           report_template: "string", # required
    #           framework_arns: ["string"],
    #           number_of_frameworks: 1,
    #           accounts: ["string"],
    #           organization_units: ["string"],
    #           regions: ["string"]
    #         },
    #         report_delivery_channel: {
    #           s3_bucket_name: "string", # required
    #           s3_key_prefix: "string",
    #           formats: ["string"]
    #         },
    #         deployment_status: "string",
    #         creation_time: Time.now,
    #         last_attempted_execution_time: Time.now,
    #         last_successful_execution_time: Time.now
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListReportPlansOutput]
    def list_report_plans(params = {}, options = {})
      request = build_request(:list_report_plans, params)
      request.send_request(options)
    end

    # <p>Returns a list of restore access backup vaults associated with a specified backup vault.</p>
    # @param [Hash, Types::ListRestoreAccessBackupVaultsInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of the backup vault for which to list associated restore access backup vaults.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_restore_access_backup_vaults(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     restore_access_backup_vaults: [
    #       {
    #         restore_access_backup_vault_arn: "ARN",
    #         creation_date: Time.now,
    #         approval_date: Time.now,
    #         vault_state: "CREATING" # One of: ["CREATING", "AVAILABLE", "FAILED"],
    #         latest_revoke_request: {
    #           mpa_session_arn: "string",
    #           status: "PENDING" # One of: ["PENDING", "FAILED"],
    #           status_message: "string",
    #           initiation_date: Time.now,
    #           expiry_date: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListRestoreAccessBackupVaultsOutput]
    def list_restore_access_backup_vaults(params = {}, options = {})
      request = build_request(:list_restore_access_backup_vaults, params)
      request.send_request(options)
    end

    # <p>This request obtains a summary of restore jobs created 
    #          or running within the the most recent 30 days. You can 
    #          include parameters AccountID, State, ResourceType,  
    #          AggregationPeriod, MaxResults, or NextToken to filter 
    #          results.</p>
    #          <p>This request returns a summary that contains 
    #          Region, Account, State, RestourceType, MessageCategory, 
    #          StartTime, EndTime, and Count of included jobs.</p>
    # @param [Hash, Types::ListRestoreJobSummariesInput] params
    # @option params [String] :account_id
    #   <p>Returns the job count for the specified account.</p>
    #            <p>If the request is sent from a member account or an account 
    #            not part of Amazon Web Services Organizations, jobs within requestor's account 
    #            will be returned.</p>
    #            <p>Root, admin, and delegated administrator accounts can use 
    #            the value ANY to return job counts from every account in the 
    #            organization.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            from all accounts within the authenticated organization, 
    #            then returns the sum.</p>
    # @option params [String] :state
    #   <p>This parameter returns the job count for jobs 
    #            with the specified state.</p>
    #            <p>The the value ANY returns count of all states.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all states and returns the sum.</p>
    # @option params [String] :resource_type
    #   <p>Returns the job count for the specified resource type. 
    #            Use request <code>GetSupportedResourceTypes</code> to obtain 
    #            strings for supported resource types.</p>
    #            <p>The the value ANY returns count of all resource types.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all resource types and returns the sum.</p>
    #            <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    # @option params [String] :aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>This parameter sets the maximum number of items 
    #            to be returned.</p>
    #            <p>The value is an integer. Range of accepted values is from 
    #            1 to 500.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     state: "CREATED" # One of: ["CREATED", "PENDING", "RUNNING", "ABORTED", "COMPLETED", "FAILED", "AGGREGATE_ALL", "ANY"],
    #     resource_type: "ResourceType",
    #     aggregation_period: "ONE_DAY" # One of: ["ONE_DAY", "SEVEN_DAYS", "FOURTEEN_DAYS"],
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.list_restore_job_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_job_summaries: [
    #       {
    #         region: "Region",
    #         account_id: "AccountId",
    #         state: "CREATED" # One of: ["CREATED", "PENDING", "RUNNING", "ABORTED", "COMPLETED", "FAILED", "AGGREGATE_ALL", "ANY"],
    #         resource_type: "ResourceType",
    #         count: 1,
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     aggregation_period: "string",
    #     next_token: "string"
    #   }
    # @return [Types::ListRestoreJobSummariesOutput]
    def list_restore_job_summaries(params = {}, options = {})
      request = build_request(:list_restore_job_summaries, params)
      request.send_request(options)
    end

    # <p>Returns a list of jobs that Backup initiated to restore a saved resource,
    #          including details about the recovery process.</p>
    # @param [Hash, Types::ListRestoreJobsInput] params
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @option params [String] :by_account_id
    #   <p>The account ID to list the jobs from. Returns only restore jobs associated with the
    #            specified account ID.</p>
    # @option params [String] :by_resource_type
    #   <p>Include this parameter to return only restore jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    # @option params [Time] :by_created_before
    #   <p>Returns only restore jobs that were created before the specified date.</p>
    # @option params [Time] :by_created_after
    #   <p>Returns only restore jobs that were created after the specified date.</p>
    # @option params [String] :by_status
    #   <p>Returns only restore jobs associated with the specified job status.</p>
    # @option params [Time] :by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    # @option params [Time] :by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    # @option params [String] :by_restore_testing_plan_arn
    #   <p>This returns only restore testing jobs that match the 
    #            specified resource Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "string",
    #     max_results: 1,
    #     by_account_id: "AccountId",
    #     by_resource_type: "ResourceType",
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_status: "PENDING" # One of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"],
    #     by_complete_before: Time.now,
    #     by_complete_after: Time.now,
    #     by_restore_testing_plan_arn: "ARN"
    #   }
    #   options = {}
    #   response = client.list_restore_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_jobs: [
    #       {
    #         account_id: "AccountId",
    #         restore_job_id: "string",
    #         recovery_point_arn: "ARN",
    #         creation_date: Time.now,
    #         completion_date: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"],
    #         status_message: "string",
    #         percent_done: "string",
    #         backup_size_in_bytes: 1,
    #         iam_role_arn: "IAMRoleArn",
    #         expected_completion_time_minutes: 1,
    #         created_resource_arn: "ARN",
    #         resource_type: "ResourceType",
    #         recovery_point_creation_date: Time.now,
    #         created_by: {
    #           restore_testing_plan_arn: "ARN"
    #         },
    #         validation_status: "FAILED" # One of: ["FAILED", "SUCCESSFUL", "TIMED_OUT", "VALIDATING"],
    #         validation_status_message: "string",
    #         deletion_status: "DELETING" # One of: ["DELETING", "FAILED", "SUCCESSFUL"],
    #         deletion_status_message: "string"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListRestoreJobsOutput]
    def list_restore_jobs(params = {}, options = {})
      request = build_request(:list_restore_jobs, params)
      request.send_request(options)
    end

    # <p>This returns restore jobs that contain the specified protected resource.</p>
    #          <p>You must include <code>ResourceArn</code>. You can optionally include
    #             <code>NextToken</code>, <code>ByStatus</code>, <code>MaxResults</code>,
    #             <code>ByRecoveryPointCreationDateAfter</code> , and
    #             <code>ByRecoveryPointCreationDateBefore</code>.</p>
    # @param [Hash, Types::ListRestoreJobsByProtectedResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Returns only restore jobs that match the specified resource 
    #            Amazon Resource Name (ARN).</p>
    # @option params [String] :by_status
    #   <p>Returns only restore jobs associated with the specified job status.</p>
    # @option params [Time] :by_recovery_point_creation_date_after
    #   <p>Returns only restore jobs of recovery points that were created after the specified date.</p>
    # @option params [Time] :by_recovery_point_creation_date_before
    #   <p>Returns only restore jobs of recovery points that were created before the specified date.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, 
    #            if a request ismade to return <code>MaxResults</code> number of items, 
    #            <code>NextToken</code> allows you to return more items in your list 
    #            starting at the location pointed to by the next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     by_status: "PENDING" # One of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"],
    #     by_recovery_point_creation_date_after: Time.now,
    #     by_recovery_point_creation_date_before: Time.now,
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_restore_jobs_by_protected_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_jobs: [
    #       {
    #         account_id: "AccountId",
    #         restore_job_id: "string",
    #         recovery_point_arn: "ARN",
    #         creation_date: Time.now,
    #         completion_date: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"],
    #         status_message: "string",
    #         percent_done: "string",
    #         backup_size_in_bytes: 1,
    #         iam_role_arn: "IAMRoleArn",
    #         expected_completion_time_minutes: 1,
    #         created_resource_arn: "ARN",
    #         resource_type: "ResourceType",
    #         recovery_point_creation_date: Time.now,
    #         created_by: {
    #           restore_testing_plan_arn: "ARN"
    #         },
    #         validation_status: "FAILED" # One of: ["FAILED", "SUCCESSFUL", "TIMED_OUT", "VALIDATING"],
    #         validation_status_message: "string",
    #         deletion_status: "DELETING" # One of: ["DELETING", "FAILED", "SUCCESSFUL"],
    #         deletion_status_message: "string"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListRestoreJobsByProtectedResourceOutput]
    def list_restore_jobs_by_protected_resource(params = {}, options = {})
      request = build_request(:list_restore_jobs_by_protected_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of restore testing plans.</p>
    # @param [Hash, Types::ListRestoreTestingPlansInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. 
    #            For example, if a request is made to return <code>MaxResults</code> 
    #            number of items, <code>NextToken</code> allows you to return more items 
    #            in your list starting at the location pointed to by the nexttoken.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_restore_testing_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     restore_testing_plans: [ # required
    #       {
    #         creation_time: Time.now, # required
    #         last_execution_time: Time.now,
    #         last_update_time: Time.now,
    #         restore_testing_plan_arn: "String", # required
    #         restore_testing_plan_name: "String", # required
    #         schedule_expression: "String", # required
    #         schedule_expression_timezone: "String",
    #         start_window_hours: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListRestoreTestingPlansOutput]
    def list_restore_testing_plans(params = {}, options = {})
      request = build_request(:list_restore_testing_plans, params)
      request.send_request(options)
    end

    # <p>Returns a list of restore testing selections. Can be filtered 
    #          by <code>MaxResults</code> and <code>RestoreTestingPlanName</code>.</p>
    # @param [Hash, Types::ListRestoreTestingSelectionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. 
    #            For example, if a request is made to return <code>MaxResults</code> 
    #            number of items, <code>NextToken</code> allows you to return more items 
    #            in your list starting at the location pointed to by the nexttoken.</p>
    # @option params [String] :restore_testing_plan_name
    #   <p>Returns restore testing selections by the specified restore testing 
    #            plan name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     restore_testing_plan_name: "String", # required
    #   }
    #   options = {}
    #   response = client.list_restore_testing_selections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     restore_testing_selections: [ # required
    #       {
    #         creation_time: Time.now, # required
    #         iam_role_arn: "String", # required
    #         protected_resource_type: "String", # required
    #         restore_testing_plan_name: "String", # required
    #         restore_testing_selection_name: "String", # required
    #         validation_window_hours: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListRestoreTestingSelectionsOutput]
    def list_restore_testing_selections(params = {}, options = {})
      request = build_request(:list_restore_testing_selections, params)
      request.send_request(options)
    end

    # <p>Returns the tags assigned to the resource, such as a target recovery point, backup plan,
    #          or backup vault.</p>
    #          <p>This operation returns results depending on the resource type used in the value for
    #             <code>resourceArn</code>. For example, recovery points of Amazon DynamoDB with
    #          Advanced Settings have an ARN (Amazon Resource Name) that begins with
    #             <code>arn:aws:backup</code>. Recovery points (backups) of DynamoDB without
    #          Advanced Settings enabled have an ARN that begins with
    #          <code>arn:aws:dynamodb</code>.</p>
    #          <p>When this operation is called and when you include values of <code>resourceArn</code>
    #          that have an ARN other than <code>arn:aws:backup</code>, it may return one of the
    #          exceptions listed below. To prevent this exception, include only values representing
    #          resource types that are fully managed by Backup. These have an ARN that begins
    #             <code>arn:aws:backup</code> and they are noted in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature availability by resource</a> table.</p>
    # @param [Hash, Types::ListTagsInput] params
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the type of resource. Valid targets for <code>ListTags</code> are recovery
    #            points, backup plans, and backup vaults.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsOutput]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Sets a resource-based policy that is used to manage access permissions on the target
    #          backup vault. Requires a backup vault name and an access policy document in JSON
    #          format.</p>
    # @param [Hash, Types::PutBackupVaultAccessPolicyInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :policy
    #   <p>The backup vault access policy document in JSON format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     policy: "IAMPolicy"
    #   }
    #   options = {}
    #   response = client.put_backup_vault_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_backup_vault_access_policy(params = {}, options = {})
      request = build_request(:put_backup_vault_access_policy, params)
      request.send_request(options)
    end

    # <p>Applies Backup Vault Lock to a backup vault, preventing attempts to delete
    #          any recovery point stored in or created in a backup vault. Vault Lock also prevents
    #          attempts to update the lifecycle policy that controls the retention period of any recovery
    #          point currently stored in a backup vault. If specified, Vault Lock enforces a minimum and
    #          maximum retention period for future backup and copy jobs that target a backup vault.</p>
    #          <note>
    #             <p>Backup Vault Lock has been assessed by Cohasset Associates for use in environments 
    #             that are subject to SEC 17a-4, CFTC, and FINRA regulations. For more information about 
    #             how Backup Vault Lock relates to these regulations, see the 
    #             <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/samples/cohassetreport.zip">Cohasset Associates 
    #                Compliance Assessment.</a>
    #             </p>
    #          </note>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html">Backup Vault Lock</a>.</p>
    # @param [Hash, Types::PutBackupVaultLockConfigurationInput] params
    # @option params [String] :backup_vault_name
    #   <p>The Backup Vault Lock configuration that specifies the name of the backup
    #            vault it protects.</p>
    # @option params [Integer] :min_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the minimum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to retain certain data for at least seven
    #            years (2555 days).</p>
    #            <p>This parameter is required when a vault lock is created through CloudFormation;
    #            otherwise, this parameter is optional. If this parameter is not specified, Vault Lock will
    #            not enforce a minimum retention period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or longer than the minimum retention
    #            period. If the job's retention period is shorter than that minimum retention period, then
    #            the vault fails that backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The shortest minimum retention period
    #            you can specify is 1 day. Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    # @option params [Integer] :max_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the maximum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to destroy certain data after retaining
    #            it for four years (1460 days).</p>
    #            <p>If this parameter is not included, Vault Lock does not enforce a maximum retention
    #            period on the recovery points in the vault. If this parameter is included without a value,
    #            Vault Lock will not enforce a maximum retention period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or shorter than the maximum retention
    #            period. If the job's retention period is longer than that maximum retention period, then
    #            the vault fails the backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The longest maximum retention period
    #            you can specify is 36500 days (approximately 100 years).
    #            Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    # @option params [Integer] :changeable_for_days
    #   <p>The Backup Vault Lock configuration that specifies the number of days before
    #            the lock date. For example, setting <code>ChangeableForDays</code> to 30 on Jan. 1, 2022 at
    #            8pm UTC will set the lock date to Jan. 31, 2022 at 8pm UTC.</p>
    #            <p>Backup enforces a 72-hour cooling-off period before Vault Lock takes effect
    #            and becomes immutable. Therefore, you must set <code>ChangeableForDays</code> to 3 or
    #            greater.</p>
    #            <p>Before the lock date, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code>. On and after the lock date, the Vault
    #            Lock becomes immutable and cannot be changed or deleted.</p>
    #            <p>If this parameter is not specified, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code> at any time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     min_retention_days: 1,
    #     max_retention_days: 1,
    #     changeable_for_days: 1
    #   }
    #   options = {}
    #   response = client.put_backup_vault_lock_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_backup_vault_lock_configuration(params = {}, options = {})
      request = build_request(:put_backup_vault_lock_configuration, params)
      request.send_request(options)
    end

    # <p>Turns on notifications on a backup vault for the specified topic and events.</p>
    # @param [Hash, Types::PutBackupVaultNotificationsInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events; for
    #            example, <code>arn:aws:sns:us-west-2:111122223333:MyVaultTopic</code>.</p>
    # @option params [Array<String>] :backup_vault_events
    #   <p>An array of events that indicate the status of jobs to back up resources to the backup
    #            vault. For the list of supported events, common use cases, and code samples, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-notifications.html">Notification options
    #               with Backup</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     sns_topic_arn: "ARN", # required
    #     backup_vault_events: ["BACKUP_JOB_STARTED" # One of: ["BACKUP_JOB_STARTED", "BACKUP_JOB_COMPLETED", "BACKUP_JOB_SUCCESSFUL", "BACKUP_JOB_FAILED", "BACKUP_JOB_EXPIRED", "RESTORE_JOB_STARTED", "RESTORE_JOB_COMPLETED", "RESTORE_JOB_SUCCESSFUL", "RESTORE_JOB_FAILED", "COPY_JOB_STARTED", "COPY_JOB_SUCCESSFUL", "COPY_JOB_FAILED", "RECOVERY_POINT_MODIFIED", "BACKUP_PLAN_CREATED", "BACKUP_PLAN_MODIFIED", "S3_BACKUP_OBJECT_FAILED", "S3_RESTORE_OBJECT_FAILED", "CONTINUOUS_BACKUP_INTERRUPTED", "RECOVERY_POINT_INDEX_COMPLETED", "RECOVERY_POINT_INDEX_DELETED", "RECOVERY_POINT_INDEXING_FAILED"]], # required
    #   }
    #   options = {}
    #   response = client.put_backup_vault_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_backup_vault_notifications(params = {}, options = {})
      request = build_request(:put_backup_vault_notifications, params)
      request.send_request(options)
    end

    # <p>This request allows you to send your independent self-run 
    #          restore test validation results. 
    #          <code>RestoreJobId</code> and <code>ValidationStatus</code> 
    #          are required. Optionally, you can input a 
    #          <code>ValidationStatusMessage</code>.</p>
    # @param [Hash, Types::PutRestoreValidationResultInput] params
    # @option params [String] :restore_job_id
    #   <p>This is a unique identifier of a restore job within Backup.</p>
    # @option params [String] :validation_status
    #   <p>The status of your restore validation.</p>
    # @option params [String] :validation_status_message
    #   <p>This is an optional message string you can input to 
    #            describe the validation status for the restore test validation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_job_id: "RestoreJobId", # required
    #     validation_status: "FAILED" # One of: ["FAILED", "SUCCESSFUL", "TIMED_OUT", "VALIDATING"], # required
    #     validation_status_message: "string"
    #   }
    #   options = {}
    #   response = client.put_restore_validation_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_restore_validation_result(params = {}, options = {})
      request = build_request(:put_restore_validation_result, params)
      request.send_request(options)
    end

    # <p>Revokes access to a restore access backup vault, removing the ability to restore from its recovery points and permanently deleting the vault.</p>
    # @param [Hash, Types::RevokeRestoreAccessBackupVaultInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of the source backup vault associated with the restore access backup vault to be revoked.</p>
    # @option params [String] :restore_access_backup_vault_arn
    #   <p>The ARN of the restore access backup vault to revoke.</p>
    # @option params [String] :requester_comment
    #   <p>A comment explaining the reason for revoking access to the restore access backup vault.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     restore_access_backup_vault_arn: "ARN", # required
    #     requester_comment: "RequesterComment"
    #   }
    #   options = {}
    #   response = client.revoke_restore_access_backup_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def revoke_restore_access_backup_vault(params = {}, options = {})
      request = build_request(:revoke_restore_access_backup_vault, params)
      request.send_request(options)
    end

    # <p>Starts an on-demand backup job for the specified resource.</p>
    # @param [Hash, Types::StartBackupJobInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    # @option params [String] :iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartBackupJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    # @option params [Integer] :start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional, and the default is 8 hours. 
    #            If this value is included, it must be at least 60 minutes to avoid errors.</p>
    #            <p>This parameter has a maximum value of 100 years (52,560,000 minutes).</p>
    #            <p>During the start window, the backup job status remains in <code>CREATED</code> status until it 
    #            has successfully begun or until the start window time has run out. If within the start 
    #            window time Backup receives an error that allows the job to be retried, 
    #            Backup will automatically retry to begin the job at least every 10 minutes 
    #            until the backup 
    #            successfully begins (the job status changes to <code>RUNNING</code>) or until the job status 
    #            changes to <code>EXPIRED</code> (which is expected to occur when the start window time is over).</p>
    # @option params [Integer] :complete_window_minutes
    #   <p>A value in minutes during which a successfully started backup must complete, or else
    #               Backup will cancel the job. This value is optional. This value begins
    #            counting down from when the backup was scheduled. It does not add additional time for
    #               <code>StartWindowMinutes</code>, or if the backup started later than scheduled.</p>
    #            <p>Like <code>StartWindowMinutes</code>, this parameter has a maximum value of 
    #            100 years (52,560,000 minutes).</p>
    # @option params [Types::Lifecycle] :lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup will transition and expire backups automatically according
    #            to the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #            availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #            <p>This parameter has a maximum value of 100 years (36,500 days).</p>
    # @option params [Hash<String, String>] :recovery_point_tags
    #   <p>The tags to assign to the resources.</p>
    # @option params [Hash<String, String>] :backup_options
    #   <p>The backup option for a selected resource. This option is only available for
    #            Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #            <p>Valid values: Set to <code>"WindowsVSS":"enabled"</code> to enable the
    #            <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
    #            <code>"WindowsVSS""disabled"</code> to create a regular backup. The
    #            <code>WindowsVSS</code> option is not enabled by default.</p>
    # @option params [String] :index
    #   <p>Include this parameter to enable index creation if your backup 
    #            job has a resource type that supports backup indexes.</p>
    #            <p>Resource types that support backup indexes include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #            </ul>
    #            <p>Index can have 1 of 2 possible values, either <code>ENABLED</code> or 
    #            <code>DISABLED</code>.</p>
    #            <p>To create a backup index for an eligible <code>ACTIVE</code> recovery point 
    #            that does not yet have a backup index, set value to <code>ENABLED</code>.</p>
    #            <p>To delete a backup index, set value to <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     resource_arn: "ARN", # required
    #     iam_role_arn: "IAMRoleArn", # required
    #     idempotency_token: "string",
    #     start_window_minutes: 1,
    #     complete_window_minutes: 1,
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #       opt_in_to_archive_for_supported_resources: false
    #     },
    #     recovery_point_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     backup_options: {
    #       "BackupOptionKey" => "BackupOptionValue"
    #     },
    #     index: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.start_backup_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_job_id: "string",
    #     recovery_point_arn: "ARN",
    #     creation_date: Time.now,
    #     is_parent: false
    #   }
    # @return [Types::StartBackupJobOutput]
    def start_backup_job(params = {}, options = {})
      request = build_request(:start_backup_job, params)
      request.send_request(options)
    end

    # <p>Starts a job to create a one-time copy of the specified resource.</p>
    #          <p>Does not support continuous backups.</p>
    # @param [Hash, Types::StartCopyJobInput] params
    # @option params [String] :recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point to use for the copy job; for example,
    #            arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #         </p>
    # @option params [String] :source_backup_vault_name
    #   <p>The name of a logical source container where backups are stored. Backup vaults are
    #            identified by names that are unique to the account used to create them and the Amazon Web Services Region where they are created.</p>
    # @option params [String] :destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a destination backup vault to
    #            copy to; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    # @option params [String] :iam_role_arn
    #   <p>Specifies the IAM role ARN used to copy the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartCopyJob</code>. Retrying a successful request with the same idempotency
    #            token results in a success message with no action taken.</p>
    # @option params [Types::Lifecycle] :lifecycle
    #   <p>Specifies the time period, in days, before a recovery point transitions to cold storage 
    #            or is deleted.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, on the console, the retention setting must be 90 days greater than the
    #            transition to cold after days setting. The transition to cold after days setting can't
    #            be changed after a backup has been transitioned to cold.</p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #            availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #            <p>To remove the existing lifecycle and retention periods and keep your recovery points indefinitely, 
    #            specify -1 for <code>MoveToColdStorageAfterDays</code> and <code>DeleteAfterDays</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_point_arn: "ARN", # required
    #     source_backup_vault_name: "BackupVaultName", # required
    #     destination_backup_vault_arn: "ARN", # required
    #     iam_role_arn: "IAMRoleArn", # required
    #     idempotency_token: "string",
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #       opt_in_to_archive_for_supported_resources: false
    #     }
    #   }
    #   options = {}
    #   response = client.start_copy_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     copy_job_id: "string",
    #     creation_date: Time.now,
    #     is_parent: false
    #   }
    # @return [Types::StartCopyJobOutput]
    def start_copy_job(params = {}, options = {})
      request = build_request(:start_copy_job, params)
      request.send_request(options)
    end

    # <p>Starts an on-demand report job for the specified report plan.</p>
    # @param [Hash, Types::StartReportJobInput] params
    # @option params [String] :report_plan_name
    #   <p>The unique name of a report plan.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartReportJobInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_plan_name: "ReportPlanName", # required
    #     idempotency_token: "string"
    #   }
    #   options = {}
    #   response = client.start_report_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_job_id: "ReportJobId"
    #   }
    # @return [Types::StartReportJobOutput]
    def start_report_job(params = {}, options = {})
      request = build_request(:start_report_job, params)
      request.send_request(options)
    end

    # <p>Recovers the saved resource identified by an Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::StartRestoreJobInput] params
    # @option params [String] :recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    # @option params [Hash<String, String>] :metadata
    #   <p>A set of metadata key-value pairs.</p>
    #            <p>You can get configuration metadata about a resource at the time it was backed up by
    #            calling <code>GetRecoveryPointRestoreMetadata</code>. However, values in addition to those
    #            provided by <code>GetRecoveryPointRestoreMetadata</code> might be required to restore a
    #            resource. For example, you might need to provide a new resource name if the original
    #            already exists.</p>
    #            <p>For more information about the metadata for each resource, see the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-aur.html#aur-restore-cli">Metadata for Amazon Aurora</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-docdb.html#docdb-restore-cli">Metadata for Amazon DocumentDB</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-application-stacks.html#restoring-cfn-cli">Metadata for CloudFormation</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-dynamodb.html#ddb-restore-cli">Metadata for Amazon DynamoDB</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ebs.html#ebs-restore-cli">
    #                  Metadata for Amazon EBS</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ec2.html#restoring-ec2-cli">Metadata for Amazon EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-efs.html#efs-restore-cli">Metadata for Amazon EFS</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-fsx.html#fsx-restore-cli">Metadata for Amazon FSx</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-nep.html#nep-restore-cli">Metadata for Amazon Neptune</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-rds.html#rds-restore-cli">Metadata for Amazon RDS</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/redshift-restores.html#redshift-restore-api">Metadata for Amazon Redshift</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-storage-gateway.html#restoring-sgw-cli">Metadata for Storage Gateway</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-s3.html#s3-restore-cli">Metadata for Amazon S3</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/timestream-restore.html#timestream-restore-api">Metadata for Amazon Timestream</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-vm.html#vm-restore-cli">Metadata for virtual machines</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Backup uses to create
    #            the target resource; for example:
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartRestoreJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    # @option params [String] :resource_type
    #   <p>Starts a job to restore a recovery point for one of the following resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> - Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> - Amazon DocumentDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> - CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> - Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> - Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> - Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> - Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> - Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> - Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> - Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> - Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> - Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> - Amazon Simple Storage Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> - Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> - Virtual machines</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :copy_source_tags_to_restored_resource
    #   <p>This is an optional parameter. If this equals <code>True</code>, tags included in the backup
    #         will be copied to the restored resource.</p>
    #            <p>This can only be applied to backups created through Backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_point_arn: "ARN", # required
    #     metadata: { # required
    #       "MetadataKey" => "MetadataValue"
    #     },
    #     iam_role_arn: "IAMRoleArn",
    #     idempotency_token: "string",
    #     resource_type: "ResourceType",
    #     copy_source_tags_to_restored_resource: false
    #   }
    #   options = {}
    #   response = client.start_restore_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restore_job_id: "RestoreJobId"
    #   }
    # @return [Types::StartRestoreJobOutput]
    def start_restore_job(params = {}, options = {})
      request = build_request(:start_restore_job, params)
      request.send_request(options)
    end

    # <p>Attempts to cancel a job to create a one-time backup of a resource.</p>
    #          <p>This action is not supported for the following services:</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Aurora</p>
    #             </li>
    #             <li>
    #                <p>Amazon DocumentDB (with MongoDB compatibility)</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for Lustre</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for NetApp ONTAP</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for OpenZFS</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for Windows File Server</p>
    #             </li>
    #             <li>
    #                <p>Amazon Neptune</p>
    #             </li>
    #             <li>
    #                <p>SAP HANA databases on Amazon EC2 instances</p>
    #             </li>
    #             <li>
    #                <p>Amazon RDS</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StopBackupJobInput] params
    # @option params [String] :backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_job_id: "string", # required
    #   }
    #   options = {}
    #   response = client.stop_backup_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_backup_job(params = {}, options = {})
      request = build_request(:stop_backup_job, params)
      request.send_request(options)
    end

    # <p>Assigns a set of key-value pairs to a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN that uniquely identifies the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs that are used to help organize your resources. You can assign your own
    #            metadata to the resources you create. For clarity, this is the structure to assign tags:
    #               <code>[{"Key":"string","Value":"string"}]</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Removes a set of key-value pairs from a recovery point, backup plan, or backup vault
    #          identified by an Amazon Resource Name (ARN)</p>
    #          <p>This API is not supported for recovery points for resource types 
    #          including Aurora, Amazon DocumentDB. Amazon EBS, 
    #          Amazon FSx, Neptune, and Amazon RDS.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
    #            the tagged resource.</p>
    #            <p>ARNs that do not include <code>backup</code> are incompatible with tagging. 
    #            <code>TagResource</code> and <code>UntagResource</code> with invalid ARNs will 
    #            result in an error. Acceptable ARN content can include 
    #            <code>arn:aws:backup:us-east</code>. Invalid ARN content may look like 
    #            <code>arn:aws:ec2:us-east</code>.</p>
    # @option params [Array<String>] :tag_key_list
    #   <p>The keys to identify which key-value tags to remove from a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tag_key_list: ["string"], # required
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

    # <p>Updates the specified backup plan. The new version is uniquely identified by its ID.</p>
    # @param [Hash, Types::UpdateBackupPlanInput] params
    # @option params [String] :backup_plan_id
    #   <p>The ID of the backup plan.</p>
    # @option params [Types::BackupPlanInput] :backup_plan
    #   <p>The body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_plan_id: "string", # required
    #     backup_plan: { # required
    #       backup_plan_name: "BackupPlanName", # required
    #       rules: [ # required
    #         {
    #           rule_name: "BackupRuleName", # required
    #           target_backup_vault_name: "BackupVaultName", # required
    #           schedule_expression: "CronExpression",
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1,
    #             opt_in_to_archive_for_supported_resources: false
    #           },
    #           recovery_point_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           copy_actions: [
    #             {
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #                 opt_in_to_archive_for_supported_resources: false
    #               },
    #               destination_backup_vault_arn: "ARN", # required
    #             }
    #           ],
    #           enable_continuous_backup: false,
    #           schedule_expression_timezone: "Timezone",
    #           index_actions: [
    #             {
    #               resource_types: ["ResourceType"]
    #             }
    #           ]
    #         }
    #       ],
    #       advanced_backup_settings: [
    #         {
    #           resource_type: "ResourceType",
    #           backup_options: {
    #             "BackupOptionKey" => "BackupOptionValue"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_backup_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_plan_id: "string",
    #     backup_plan_arn: "ARN",
    #     creation_date: Time.now,
    #     version_id: "string",
    #     advanced_backup_settings: [
    #       {
    #         resource_type: "ResourceType",
    #         backup_options: {
    #           "BackupOptionKey" => "BackupOptionValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::UpdateBackupPlanOutput]
    def update_backup_plan(params = {}, options = {})
      request = build_request(:update_backup_plan, params)
      request.send_request(options)
    end

    # <p>Updates the specified framework.</p>
    # @param [Hash, Types::UpdateFrameworkInput] params
    # @option params [String] :framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    # @option params [String] :framework_description
    #   <p>An optional description of the framework with a maximum 1,024 characters.</p>
    # @option params [Array<Types::FrameworkControl>] :framework_controls
    #   <p>The controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     framework_name: "FrameworkName", # required
    #     framework_description: "FrameworkDescription",
    #     framework_controls: [
    #       {
    #         control_name: "ControlName", # required
    #         control_input_parameters: [
    #           {
    #             parameter_name: "ParameterName",
    #             parameter_value: "ParameterValue"
    #           }
    #         ],
    #         control_scope: {
    #           compliance_resource_ids: ["string"],
    #           compliance_resource_types: ["ARN"],
    #           tags: {
    #             "string" => "string"
    #           }
    #         }
    #       }
    #     ],
    #     idempotency_token: "string"
    #   }
    #   options = {}
    #   response = client.update_framework(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     framework_name: "FrameworkName",
    #     framework_arn: "ARN",
    #     creation_time: Time.now
    #   }
    # @return [Types::UpdateFrameworkOutput]
    def update_framework(params = {}, options = {})
      request = build_request(:update_framework, params)
      request.send_request(options)
    end

    # <p>Updates whether the Amazon Web Services account is opted in to cross-account backup.
    #          Returns an error if the account is not an Organizations management account. Use the
    #             <code>DescribeGlobalSettings</code> API to determine the current settings.</p>
    # @param [Hash, Types::UpdateGlobalSettingsInput] params
    # @option params [Hash<String, String>] :global_settings
    #   <p>A value for <code>isCrossAccountBackupEnabled</code> and a Region. Example:
    #               <code>update-global-settings --global-settings isCrossAccountBackupEnabled=false
    #               --region us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_settings: {
    #       "GlobalSettingsName" => "GlobalSettingsValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_global_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_global_settings(params = {}, options = {})
      request = build_request(:update_global_settings, params)
      request.send_request(options)
    end

    # <p>This operation updates the settings of a recovery point index.</p>
    #          <p>Required: BackupVaultName, RecoveryPointArn, and IAMRoleArn</p>
    # @param [Hash, Types::UpdateRecoveryPointIndexSettingsInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #            <p>Accepted characters include lowercase letters, numbers, and hyphens.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    # @option params [String] :iam_role_arn
    #   <p>This specifies the IAM role ARN used for this operation.</p>
    #            <p>For example, arn:aws:iam::123456789012:role/S3Access</p>
    # @option params [String] :index
    #   <p>Index can have 1 of 2 possible values, either <code>ENABLED</code> or 
    #            <code>DISABLED</code>.</p>
    #            <p>To create a backup index for an eligible <code>ACTIVE</code> recovery point 
    #            that does not yet have a backup index, set value to <code>ENABLED</code>.</p>
    #            <p>To delete a backup index, set value to <code>DISABLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #     iam_role_arn: "IAMRoleArn",
    #     index: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_recovery_point_index_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_name: "BackupVaultName",
    #     recovery_point_arn: "ARN",
    #     index_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING"],
    #     index: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    # @return [Types::UpdateRecoveryPointIndexSettingsOutput]
    def update_recovery_point_index_settings(params = {}, options = {})
      request = build_request(:update_recovery_point_index_settings, params)
      request.send_request(options)
    end

    # <p>Sets the transition lifecycle of a recovery point.</p>
    #          <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #          it expires. Backup transitions and expires backups automatically according to
    #          the lifecycle that you define.</p>
    #          <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature availability by resource</a> table. Backup ignores this expression for
    #          other resource types.</p>
    #          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #          days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #          cold after days” setting. The “transition to cold after days” setting cannot be changed
    #          after a backup has been transitioned to cold.</p>
    #          <important>
    #             <p>If your lifecycle currently uses the parameters <code>DeleteAfterDays</code> and 
    #          <code>MoveToColdStorageAfterDays</code>, include these parameters and their values when you call 
    #          this operation. Not including them may result in your plan updating with null values.</p>
    #          </important>
    #          <p>This operation does not support continuous backups.</p>
    # @param [Hash, Types::UpdateRecoveryPointLifecycleInput] params
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    # @option params [Types::Lifecycle] :lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_vault_name: "BackupVaultName", # required
    #     recovery_point_arn: "ARN", # required
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #       opt_in_to_archive_for_supported_resources: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_recovery_point_lifecycle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_vault_arn: "ARN",
    #     recovery_point_arn: "ARN",
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1,
    #       opt_in_to_archive_for_supported_resources: false
    #     },
    #     calculated_lifecycle: {
    #       move_to_cold_storage_at: Time.now,
    #       delete_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateRecoveryPointLifecycleOutput]
    def update_recovery_point_lifecycle(params = {}, options = {})
      request = build_request(:update_recovery_point_lifecycle, params)
      request.send_request(options)
    end

    # <p>Updates the current service opt-in settings for the Region.</p>
    #          <p>Use
    #          the <code>DescribeRegionSettings</code> API to determine the resource types that are
    #          supported.</p>
    # @param [Hash, Types::UpdateRegionSettingsInput] params
    # @option params [Hash<String, Boolean>] :resource_type_opt_in_preference
    #   <p>Updates the list of services along with the opt-in preferences for the Region.</p>
    #            <p>If resource assignments are only based on tags, then service opt-in settings are applied. 
    #            If a resource type is explicitly assigned to a backup plan, such as Amazon S3, 
    #            Amazon EC2, or Amazon RDS, it will be included in the 
    #            backup even if the opt-in is not enabled for that particular service. 
    #            If both a resource type and tags are specified in a resource assignment, 
    #            the resource type specified in the backup plan takes priority over the 
    #            tag condition. Service opt-in settings are disregarded in this situation.</p>
    # @option params [Hash<String, Boolean>] :resource_type_management_preference
    #   <p>Enables or disables full Backup management of backups for a resource type.
    #            To enable full Backup management for DynamoDB along with <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html">
    #               Backup's advanced DynamoDB backup features</a>, follow the
    #            procedure to <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli"> enable advanced DynamoDB backup programmatically</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type_opt_in_preference: {
    #       "ResourceType" => false
    #     },
    #     resource_type_management_preference: {
    #       "ResourceType" => false
    #     }
    #   }
    #   options = {}
    #   response = client.update_region_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_region_settings(params = {}, options = {})
      request = build_request(:update_region_settings, params)
      request.send_request(options)
    end

    # <p>Updates the specified report plan.</p>
    # @param [Hash, Types::UpdateReportPlanInput] params
    # @option params [String] :report_plan_name
    #   <p>The unique name of the report plan. This name is between 1 and 256 characters, starting
    #            with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
    #            (_).</p>
    # @option params [String] :report_plan_description
    #   <p>An optional description of the report plan with a maximum 1,024 characters.</p>
    # @option params [Types::ReportDeliveryChannel] :report_delivery_channel
    #   <p>The information about where to deliver your reports, specifically
    #            your Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>
    # @option params [Types::ReportSetting] :report_setting
    #   <p>The report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_plan_name: "ReportPlanName", # required
    #     report_plan_description: "ReportPlanDescription",
    #     report_delivery_channel: {
    #       s3_bucket_name: "string", # required
    #       s3_key_prefix: "string",
    #       formats: ["string"]
    #     },
    #     report_setting: {
    #       report_template: "string", # required
    #       framework_arns: ["string"],
    #       number_of_frameworks: 1,
    #       accounts: ["string"],
    #       organization_units: ["string"],
    #       regions: ["string"]
    #     },
    #     idempotency_token: "string"
    #   }
    #   options = {}
    #   response = client.update_report_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_plan_name: "ReportPlanName",
    #     report_plan_arn: "ARN",
    #     creation_time: Time.now
    #   }
    # @return [Types::UpdateReportPlanOutput]
    def update_report_plan(params = {}, options = {})
      request = build_request(:update_report_plan, params)
      request.send_request(options)
    end

    # <p>This request will send changes to your specified restore testing 
    #          plan. <code>RestoreTestingPlanName</code> 
    #          cannot be updated after it is created.</p>
    #          <p>
    #             <code>RecoveryPointSelection</code> can contain:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Algorithm</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ExcludeVaults</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IncludeVaults</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RecoveryPointTypes</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SelectionWindowDays</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateRestoreTestingPlanInput] params
    # @option params [Types::RestoreTestingPlanForUpdate] :restore_testing_plan
    #   <p>Specifies the body of a restore testing plan.</p>
    # @option params [String] :restore_testing_plan_name
    #   <p>The name of the restore testing plan name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_testing_plan: { # required
    #       recovery_point_selection: {
    #         algorithm: "LATEST_WITHIN_WINDOW" # One of: ["LATEST_WITHIN_WINDOW", "RANDOM_WITHIN_WINDOW"],
    #         exclude_vaults: ["string"],
    #         include_vaults: ["string"],
    #         recovery_point_types: ["CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"]],
    #         selection_window_days: 1
    #       },
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       start_window_hours: 1
    #     },
    #     restore_testing_plan_name: "String", # required
    #   }
    #   options = {}
    #   response = client.update_restore_testing_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now, # required
    #     restore_testing_plan_arn: "String", # required
    #     restore_testing_plan_name: "String", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateRestoreTestingPlanOutput]
    def update_restore_testing_plan(params = {}, options = {})
      request = build_request(:update_restore_testing_plan, params)
      request.send_request(options)
    end

    # <p>Updates the specified restore testing selection.</p>
    #          <p>Most elements except the <code>RestoreTestingSelectionName</code> 
    #          can be updated with this request.</p>
    #          <p>You can use either protected resource ARNs or conditions, but not both.</p>
    # @param [Hash, Types::UpdateRestoreTestingSelectionInput] params
    # @option params [String] :restore_testing_plan_name
    #   <p>The restore testing plan name is required to update the 
    #            indicated testing plan.</p>
    # @option params [Types::RestoreTestingSelectionForUpdate] :restore_testing_selection
    #   <p>To update your restore testing selection, you can use either 
    #            protected resource ARNs or conditions, but not both. That is, if your 
    #            selection has <code>ProtectedResourceArns</code>, requesting an update 
    #            with the parameter <code>ProtectedResourceConditions</code> will be 
    #            unsuccessful.</p>
    # @option params [String] :restore_testing_selection_name
    #   <p>The required restore testing selection name of the restore 
    #            testing selection you wish to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     restore_testing_plan_name: "String", # required
    #     restore_testing_selection: { # required
    #       iam_role_arn: "String",
    #       protected_resource_arns: ["string"],
    #       protected_resource_conditions: {
    #         string_equals: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         string_not_equals: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       restore_metadata_overrides: {
    #         "String" => "String"
    #       },
    #       validation_window_hours: 1
    #     },
    #     restore_testing_selection_name: "String", # required
    #   }
    #   options = {}
    #   response = client.update_restore_testing_selection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now, # required
    #     restore_testing_plan_arn: "String", # required
    #     restore_testing_plan_name: "String", # required
    #     restore_testing_selection_name: "String", # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateRestoreTestingSelectionOutput]
    def update_restore_testing_selection(params = {}, options = {})
      request = build_request(:update_restore_testing_selection, params)
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
      context[:gem_name] = 'aws-sdk-backup'
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

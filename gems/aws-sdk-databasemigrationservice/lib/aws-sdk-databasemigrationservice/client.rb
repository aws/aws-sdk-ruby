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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:databasemigrationservice)

module Aws::DatabaseMigrationService
  # An API client for Aws::DatabaseMigrationService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonDMSv20160101
    @identifier = :databasemigrationservice

    add_plugin(::Aws::DatabaseMigrationService::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DatabaseMigrationService::EndpointProvider)
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

    # <p>Adds metadata tags to an DMS resource, including replication instance, endpoint,
    #          subnet group, and migration task. These tags can also be used with cost allocation
    #          reporting to track cost associated with DMS resources, or used in a Condition statement in
    #          an IAM policy for DMS. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html">
    #                <code>Tag</code>
    #             </a> data type
    #          description.</p>
    # @param [Hash, Types::AddTagsToResourceMessage] params
    # @option params [String] :resource_arn
    #   <p>Identifies the DMS resource to which tags should be added. The value for this
    #            parameter is an Amazon Resource Name (ARN).</p>
    #            <p>For DMS, you can tag a replication instance, an endpoint, or a replication
    #            task.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the resource.</p>
    # @example Add tags to resource
    #   # Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with AWS DMS resources, or used in a Condition statement in an IAM policy for AWS DMS.
    #   params = {
    #     resource_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    #     tags: [
    #       {
    #         key: "Acount",
    #         value: "1633456"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddTagsToResourceResponse]
    def add_tags_to_resource(params = {}, options = {})
      request = build_request(:add_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>Applies a pending maintenance action to a resource (for example, to a replication
    #          instance).</p>
    # @param [Hash, Types::ApplyPendingMaintenanceActionMessage] params
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action
    #            applies to.</p>
    # @option params [String] :apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>os-upgrade</code>, <code>system-update</code>,
    #               <code>db-upgrade</code>, <code>os-patch</code>
    #            </p>
    # @option params [String] :opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. You
    #            can't undo an opt-in request of type <code>immediate</code>.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during the next
    #                  maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
    #                  requests.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_arn: "String", # required
    #     apply_action: "String", # required
    #     opt_in_type: "String", # required
    #   }
    #   options = {}
    #   response = client.apply_pending_maintenance_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_pending_maintenance_actions: {
    #       resource_identifier: "String",
    #       pending_maintenance_action_details: [
    #         {
    #           action: "String",
    #           auto_applied_after_date: Time.now,
    #           forced_apply_date: Time.now,
    #           opt_in_status: "String",
    #           current_apply_date: Time.now,
    #           description: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ApplyPendingMaintenanceActionResponse]
    def apply_pending_maintenance_action(params = {}, options = {})
      request = build_request(:apply_pending_maintenance_action, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Starts the analysis of up to 20 source databases to recommend target engines for each
    #             source database. This is a batch version of <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartRecommendations.html">StartRecommendations</a>.</p>
    #          <p>The result of analysis of each source database is reported individually in the
    #             response. Because the batch request can result in a combination of successful and
    #             unsuccessful actions, you should check for batch errors even when the call returns an
    #             HTTP status code of <code>200</code>.</p>
    # @param [Hash, Types::BatchStartRecommendationsRequest] params
    # @option params [Array<Types::StartRecommendationsRequestEntry>] :data
    #   <p>Provides information about source databases to analyze. After this analysis, Fleet
    #               Advisor recommends target engines for each source database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data: [
    #       {
    #         database_id: "String", # required
    #         settings: { # required
    #           instance_sizing_type: "String", # required
    #           workload_type: "String", # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_start_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         database_id: "String",
    #         message: "String",
    #         code: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchStartRecommendationsResponse]
    def batch_start_recommendations(params = {}, options = {})
      request = build_request(:batch_start_recommendations, params)
      request.send_request(options)
    end

    # <p>Cancels a single premigration assessment run.</p>
    #          <p>This operation prevents any individual assessments from running if they haven't started
    #          running. It also attempts to cancel any individual assessments that are currently
    #          running.</p>
    # @param [Hash, Types::CancelReplicationTaskAssessmentRunMessage] params
    # @option params [String] :replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be canceled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_assessment_run_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.cancel_replication_task_assessment_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task_assessment_run: {
    #       replication_task_assessment_run_arn: "String",
    #       replication_task_arn: "String",
    #       status: "String",
    #       replication_task_assessment_run_creation_date: Time.now,
    #       assessment_progress: {
    #         individual_assessment_count: 1,
    #         individual_assessment_completed_count: 1
    #       },
    #       last_failure_message: "String",
    #       service_access_role_arn: "String",
    #       result_location_bucket: "String",
    #       result_location_folder: "String",
    #       result_encryption_mode: "String",
    #       result_kms_key_arn: "String",
    #       assessment_run_name: "String",
    #       is_latest_task_assessment_run: false,
    #       result_statistic: {
    #         passed: 1,
    #         failed: 1,
    #         error: 1,
    #         warning: 1,
    #         cancelled: 1,
    #         skipped: 1
    #       }
    #     }
    #   }
    # @return [Types::CancelReplicationTaskAssessmentRunResponse]
    def cancel_replication_task_assessment_run(params = {}, options = {})
      request = build_request(:cancel_replication_task_assessment_run, params)
      request.send_request(options)
    end

    # <p>Creates a data migration using the provided settings.</p>
    # @param [Hash, Types::CreateDataMigrationMessage] params
    # @option params [String] :data_migration_name
    #   <p>A user-friendly name for the data migration. Data migration names have the following
    #            constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must begin with a letter, and can only contain ASCII letters, digits, and hyphens.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Length must be from 1 to 255 characters.</p>
    #               </li>
    #            </ul>
    # @option params [String] :migration_project_identifier
    #   <p>An identifier for the migration project.</p>
    # @option params [String] :data_migration_type
    #   <p>Specifies if the data migration is full-load only, change data capture (CDC) only, or
    #            full-load and CDC.</p>
    # @option params [String] :service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) for the service access role that you want to use to
    #            create the data migration.</p>
    # @option params [Boolean] :enable_cloudwatch_logs
    #   <p>Specifies whether to enable CloudWatch logs for the data migration.</p>
    # @option params [Array<Types::SourceDataSetting>] :source_data_settings
    #   <p>Specifies information about the source data provider.</p>
    # @option params [Array<Types::TargetDataSetting>] :target_data_settings
    #   <p>Specifies information about the target data provider.</p>
    # @option params [Integer] :number_of_jobs
    #   <p>The number of parallel jobs that trigger parallel threads to unload the tables from the
    #            source, and then load them to the target.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the data migration.</p>
    # @option params [String] :selection_rules
    #   <p>An optional JSON string specifying what tables, views, and schemas to include or exclude
    #            from the migration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_migration_name: "String",
    #     migration_project_identifier: "String", # required
    #     data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"], # required
    #     service_access_role_arn: "String", # required
    #     enable_cloudwatch_logs: false,
    #     source_data_settings: [
    #       {
    #         cdc_start_position: "String",
    #         cdc_start_time: Time.now,
    #         cdc_stop_time: Time.now,
    #         slot_name: "String"
    #       }
    #     ],
    #     target_data_settings: [
    #       {
    #         table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #       }
    #     ],
    #     number_of_jobs: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ],
    #     selection_rules: "SecretString"
    #   }
    #   options = {}
    #   response = client.create_data_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_migration: {
    #       data_migration_name: "String",
    #       data_migration_arn: "String",
    #       data_migration_create_time: Time.now,
    #       data_migration_start_time: Time.now,
    #       data_migration_end_time: Time.now,
    #       service_access_role_arn: "String",
    #       migration_project_arn: "String",
    #       data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       data_migration_settings: {
    #         number_of_jobs: 1,
    #         cloudwatch_logs_enabled: false,
    #         selection_rules: "SecretString"
    #       },
    #       source_data_settings: [
    #         {
    #           cdc_start_position: "String",
    #           cdc_start_time: Time.now,
    #           cdc_stop_time: Time.now,
    #           slot_name: "String"
    #         }
    #       ],
    #       target_data_settings: [
    #         {
    #           table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #         }
    #       ],
    #       data_migration_statistics: {
    #         tables_loaded: 1,
    #         elapsed_time_millis: 1,
    #         tables_loading: 1,
    #         full_load_percentage: 1,
    #         cdc_latency: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         start_time: Time.now,
    #         stop_time: Time.now
    #       },
    #       data_migration_status: "String",
    #       public_ip_addresses: ["String"],
    #       data_migration_cidr_blocks: ["String"],
    #       last_failure_message: "String",
    #       stop_reason: "String"
    #     }
    #   }
    # @return [Types::CreateDataMigrationResponse]
    def create_data_migration(params = {}, options = {})
      request = build_request(:create_data_migration, params)
      request.send_request(options)
    end

    # <p>Creates a data provider using the provided settings. A data provider stores a data store
    #          type and location information about your database. </p>
    # @param [Hash, Types::CreateDataProviderMessage] params
    # @option params [String] :data_provider_name
    #   <p>A user-friendly name for the data provider.</p>
    # @option params [String] :description
    #   <p>A user-friendly description of the data provider.</p>
    # @option params [String] :engine
    #   <p>The type of database engine for the data provider. Valid values include <code>"aurora"</code>, 
    #            <code>"aurora-postgresql"</code>, <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>, 
    #            <code>"sqlserver"</code>, <code>redshift</code>, <code>mariadb</code>, <code>mongodb</code>, <code>db2</code>, <code>db2-zos</code> and <code>docdb</code>. A value of <code>"aurora"</code> represents Amazon Aurora MySQL-Compatible Edition.</p>
    # @option params [Boolean] :virtual
    #   <p>Indicates whether the data provider is virtual.</p>
    # @option params [Types::DataProviderSettings] :settings
    #   <p>The settings in JSON format for a data provider.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the data provider.</p>
    # @example Create Data Provider
    #   # Creates the data provider with the specified parameters.
    #   params = {
    #     data_provider_name: "sqlServer-dev",
    #     engine: "sqlserver",
    #     description: "description",
    #     settings: {
    #     "MicrosoftSqlServerSettings" => {
    #       "ServerName" => ServerName2,
    #       "Port" => 11112,
    #       "DatabaseName" => DatabaseName,
    #       "SslMode" => none
    #     }
    #   },
    #     tags: [
    #       {
    #         key: "access",
    #         value: "authorizedusers"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_provider(params, options)
    #   response.to_h #=>
    #   {
    #     data_provider: {
    #       engine: "postgres",
    #       settings: {
    #     "PostgreSqlSettings" => {
    #       "SslMode" => none,
    #       "ServerName" => postrgesql.a1b2c3d4e5f6.us-east-1.rds.amazonaws.com,
    #       "Port" => 5432,
    #       "DatabaseName" => target
    #     }
    #   },
    #       data_provider_creation_time: Time.parse("2023-05-12T10:50:41.988561Z"),
    #       data_provider_name: "my-target-dataprovider",
    #       data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:my-target-dataprovider"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     data_provider_name: "String",
    #     description: "String",
    #     engine: "String", # required
    #     virtual: false,
    #     settings: { # required
    #       # One of:
    #       redshift_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       postgre_sql_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       my_sql_settings: {
    #         server_name: "String",
    #         port: 1,
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       oracle_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         asm_server: "String",
    #         secrets_manager_oracle_asm_secret_id: "String",
    #         secrets_manager_oracle_asm_access_role_arn: "String",
    #         secrets_manager_security_db_encryption_secret_id: "String",
    #         secrets_manager_security_db_encryption_access_role_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       microsoft_sql_server_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       doc_db_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String"
    #       },
    #       maria_db_settings: {
    #         server_name: "String",
    #         port: 1,
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       ibm_db2_luw_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       ibm_db2z_os_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       mongo_db_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         auth_type: "no" # One of: ["no", "password"],
    #         auth_source: "String",
    #         auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"]
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_provider: {
    #       data_provider_name: "String",
    #       data_provider_arn: "String",
    #       data_provider_creation_time: Time.now,
    #       description: "String",
    #       engine: "String",
    #       virtual: false,
    #       settings: {
    #         # One of:
    #         redshift_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         postgre_sql_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         my_sql_settings: {
    #           server_name: "String",
    #           port: 1,
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         oracle_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           asm_server: "String",
    #           secrets_manager_oracle_asm_secret_id: "String",
    #           secrets_manager_oracle_asm_access_role_arn: "String",
    #           secrets_manager_security_db_encryption_secret_id: "String",
    #           secrets_manager_security_db_encryption_access_role_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         microsoft_sql_server_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         doc_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String"
    #         },
    #         maria_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         ibm_db2_luw_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         ibm_db2z_os_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         mongo_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           auth_type: "no" # One of: ["no", "password"],
    #           auth_source: "String",
    #           auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateDataProviderResponse]
    def create_data_provider(params = {}, options = {})
      request = build_request(:create_data_provider, params)
      request.send_request(options)
    end

    # <p>Creates an endpoint using the provided settings.</p>
    #          <note>
    #             <p>For a MySQL source or target endpoint, don't explicitly specify the database using
    #             the <code>DatabaseName</code> request parameter on the <code>CreateEndpoint</code> API
    #             call. Specifying <code>DatabaseName</code> when you create a MySQL endpoint replicates
    #             all the task tables to this single database. For MySQL endpoints, you specify the
    #             database only when you specify the schema in the table-mapping rules of the DMS
    #             task.</p>
    #          </note>
    # @param [Hash, Types::CreateEndpointMessage] params
    # @option params [String] :endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two
    #            consecutive hyphens.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint. Valid values are <code>source</code> and
    #            <code>target</code>.</p>
    # @option params [String] :engine_name
    #   <p>The type of engine for the endpoint. Valid values, depending on the
    #               <code>EndpointType</code> value, include <code>"mysql"</code>, <code>"oracle"</code>,
    #               <code>"postgres"</code>, <code>"mariadb"</code>, <code>"aurora"</code>,
    #               <code>"aurora-postgresql"</code>, <code>"opensearch"</code>, <code>"redshift"</code>,
    #               <code>"s3"</code>, <code>"db2"</code>, <code>"db2-zos"</code>, <code>"azuredb"</code>,
    #               <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #               <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>,
    #               <code>"docdb"</code>, <code>"sqlserver"</code>, <code>"neptune"</code>,
    #               <code>"babelfish"</code>, <code>redshift-serverless</code>,
    #               <code>aurora-serverless</code>, <code>aurora-postgresql-serverless</code>,
    #               <code>gcp-mysql</code>, <code>azure-sql-managed-instance</code>, <code>redis</code>,
    #               <code>dms-transfer</code>.</p>
    # @option params [String] :username
    #   <p>The user name to be used to log in to the endpoint database.</p>
    # @option params [String] :password
    #   <p>The password to be used to log in to the endpoint database.</p>
    # @option params [String] :server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    # @option params [Integer] :port
    #   <p>The port used by the endpoint database.</p>
    # @option params [String] :database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify
    #            DatabaseName. To migrate to a specific database, use this setting and
    #               <code>targetDbType</code>.</p>
    # @option params [String] :extra_connection_attributes
    #   <p>Additional attributes associated with the connection. Each attribute is specified as a
    #            name-value pair associated by an equal sign (=). Multiple attributes are separated by a
    #            semicolon (;) with no additional white space. For information on the attributes available
    #            for connecting your source or target endpoint, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html">Working with DMS Endpoints</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [String] :kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the connection parameters for the
    #            endpoint.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses
    #            your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has
    #            a different default encryption key for each Amazon Web Services Region.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the endpoint.</p>
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    # @option params [String] :ssl_mode
    #   <p>The Secure Sockets Layer (SSL) mode to use for the SSL connection. The default is
    #               <code>none</code>
    #            </p>
    # @option params [String] :service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the service access role that you want to use to
    #            create the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>
    # @option params [String] :external_table_definition
    #   <p>The external table definition. </p>
    # @option params [Types::DynamoDbSettings] :dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate Data to DynamoDB</a> in the <i>Database Migration Service
    #               User Guide.</i>
    #            </p>
    # @option params [Types::S3Settings] :s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::DmsTransferSettings] :dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Possible settings include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ServiceAccessRoleArn</code> - The Amazon Resource Name (ARN) used by the
    #                  service access IAM role. The role must allow the <code>iam:PassRole</code>
    #                  action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BucketName</code> - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows:
    #               <code>ServiceAccessRoleArn=string,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn": "string",
    #               "BucketName": "string", } </code>
    #            </p>
    # @option params [Types::MongoDbSettings] :mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration">Endpoint configuration settings when using MongoDB as a source for Database Migration Service</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::KinesisSettings] :kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping">Using object mapping to migrate data to a Kinesis data stream</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::KafkaSettings] :kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping">Using
    #               object mapping to migrate data to a Kafka topic</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    # @option params [Types::ElasticsearchSettings] :elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more
    #            information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for
    #               DMS</a> in the <i>Database Migration Service User Guide</i>.</p>
    # @option params [Types::NeptuneSettings] :neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon
    #               Neptune as a target</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::RedshiftSettings] :redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    # @option params [Types::PostgreSQLSettings] :postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection attributes when using PostgreSQL as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib"> Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::MySQLSettings] :my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib">Extra connection attributes when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib">Extra connection attributes when using a MySQL-compatible database as a target for
    #               DMS</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::OracleSettings] :oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib">Extra connection attributes when using Oracle as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::SybaseSettings] :sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::MicrosoftSQLServerSettings] :microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib">Extra connection attributes when using SQL Server as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib"> Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::IBMDb2Settings] :ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib">Extra
    #               connection attributes when using Db2 LUW as a source for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [String] :resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier value
    #            for the end of <code>EndpointArn</code>.</p>
    # @option params [Types::DocDbSettings] :doc_db_settings
    #   <p>Provides information that defines a DocumentDB endpoint.</p>
    # @option params [Types::RedisSettings] :redis_settings
    #   <p>Settings in JSON format for the target Redis endpoint.</p>
    # @option params [Types::GcpMySQLSettings] :gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    # @option params [Types::TimestreamSettings] :timestream_settings
    #   <p>Settings in JSON format for the target Amazon Timestream endpoint.</p>
    # @example Create endpoint
    #   # Creates an endpoint using the provided settings.
    #   params = {
    #     endpoint_identifier: "test-endpoint-1",
    #     endpoint_type: source,
    #     engine_name: "mysql",
    #     username: "username",
    #     password: "pasword",
    #     server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com",
    #     port: 3306,
    #     database_name: "testdb",
    #     extra_connection_attributes: "",
    #     kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
    #     tags: [
    #       {
    #         key: "Acount",
    #         value: "143327655"
    #       }
    #     ],
    #     certificate_arn: "",
    #     ssl_mode: require
    #   }
    #   options = {}
    #   response = client.create_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       username: "username",
    #       status: "active",
    #       endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM",
    #       server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com",
    #       endpoint_type: source,
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
    #       engine_name: "mysql",
    #       endpoint_identifier: "test-endpoint-1",
    #       port: 3306
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_identifier: "String", # required
    #     endpoint_type: "source" # One of: ["source", "target"], # required
    #     engine_name: "String", # required
    #     username: "String",
    #     password: "SecretString",
    #     server_name: "String",
    #     port: 1,
    #     database_name: "String",
    #     extra_connection_attributes: "String",
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ],
    #     certificate_arn: "String",
    #     ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #     service_access_role_arn: "String",
    #     external_table_definition: "String",
    #     dynamo_db_settings: {
    #       service_access_role_arn: "String", # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       csv_row_delimiter: "String",
    #       csv_delimiter: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       compression_type: "none" # One of: ["none", "gzip"],
    #       encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #       server_side_encryption_kms_key_id: "String",
    #       data_format: "csv" # One of: ["csv", "parquet"],
    #       encoding_type: "plain" # One of: ["plain", "plain-dictionary", "rle-dictionary"],
    #       dict_page_size_limit: 1,
    #       row_group_length: 1,
    #       data_page_size: 1,
    #       parquet_version: "parquet-1-0" # One of: ["parquet-1-0", "parquet-2-0"],
    #       enable_statistics: false,
    #       include_op_for_full_load: false,
    #       cdc_inserts_only: false,
    #       timestamp_column_name: "String",
    #       parquet_timestamp_in_millisecond: false,
    #       cdc_inserts_and_updates: false,
    #       date_partition_enabled: false,
    #       date_partition_sequence: "YYYYMMDD" # One of: ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"],
    #       date_partition_delimiter: "SLASH" # One of: ["SLASH", "UNDERSCORE", "DASH", "NONE"],
    #       use_csv_no_sup_value: false,
    #       csv_no_sup_value: "String",
    #       preserve_transactions: false,
    #       cdc_path: "String",
    #       use_task_start_time_for_full_load_timestamp: false,
    #       canned_acl_for_objects: "none" # One of: ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"],
    #       add_column_name: false,
    #       cdc_max_batch_interval: 1,
    #       cdc_min_file_size: 1,
    #       csv_null_value: "String",
    #       ignore_header_rows: 1,
    #       max_file_size: 1,
    #       rfc4180: false,
    #       date_partition_timezone: "String",
    #       add_trailing_padding_character: false,
    #       expected_bucket_owner: "String",
    #       glue_catalog_generation: false
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: "String",
    #       bucket_name: "String"
    #     },
    #     mongo_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       auth_type: "no" # One of: ["no", "password"],
    #       auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"],
    #       nesting_level: "none" # One of: ["none", "one"],
    #       extract_doc_id: "String",
    #       docs_to_investigate: "String",
    #       auth_source: "String",
    #       kms_key_id: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       use_update_look_up: false,
    #       replicate_shard_collections: false
    #     },
    #     kinesis_settings: {
    #       stream_arn: "String",
    #       message_format: "json" # One of: ["json", "json-unformatted"],
    #       service_access_role_arn: "String",
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       include_null_and_empty: false,
    #       no_hex_prefix: false,
    #       use_large_integer_value: false
    #     },
    #     kafka_settings: {
    #       broker: "String",
    #       topic: "String",
    #       message_format: "json" # One of: ["json", "json-unformatted"],
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       message_max_bytes: 1,
    #       include_null_and_empty: false,
    #       security_protocol: "plaintext" # One of: ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"],
    #       ssl_client_certificate_arn: "String",
    #       ssl_client_key_arn: "String",
    #       ssl_client_key_password: "SecretString",
    #       ssl_ca_certificate_arn: "String",
    #       sasl_username: "String",
    #       sasl_password: "SecretString",
    #       no_hex_prefix: false,
    #       sasl_mechanism: "scram-sha-512" # One of: ["scram-sha-512", "plain"],
    #       ssl_endpoint_identification_algorithm: "none" # One of: ["none", "https"],
    #       use_large_integer_value: false
    #     },
    #     elasticsearch_settings: {
    #       service_access_role_arn: "String", # required
    #       endpoint_uri: "String", # required
    #       full_load_error_percentage: 1,
    #       error_retry_duration: 1,
    #       use_new_mapping_type: false
    #     },
    #     neptune_settings: {
    #       service_access_role_arn: "String",
    #       s3_bucket_name: "String", # required
    #       s3_bucket_folder: "String", # required
    #       error_retry_duration: 1,
    #       max_file_size: 1,
    #       max_retry_count: 1,
    #       iam_auth_enabled: false
    #     },
    #     redshift_settings: {
    #       accept_any_date: false,
    #       after_connect_script: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       case_sensitive_names: false,
    #       comp_update: false,
    #       connection_timeout: 1,
    #       database_name: "String",
    #       date_format: "String",
    #       empty_as_null: false,
    #       encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #       explicit_ids: false,
    #       file_transfer_upload_streams: 1,
    #       load_timeout: 1,
    #       max_file_size: 1,
    #       password: "SecretString",
    #       port: 1,
    #       remove_quotes: false,
    #       replace_invalid_chars: "String",
    #       replace_chars: "String",
    #       server_name: "String",
    #       service_access_role_arn: "String",
    #       server_side_encryption_kms_key_id: "String",
    #       time_format: "String",
    #       trim_blanks: false,
    #       truncate_columns: false,
    #       username: "String",
    #       write_buffer_size: 1,
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       map_boolean_as_boolean: false
    #     },
    #     postgre_sql_settings: {
    #       after_connect_script: "String",
    #       capture_ddls: false,
    #       max_file_size: 1,
    #       database_name: "String",
    #       ddl_artifacts_schema: "String",
    #       execute_timeout: 1,
    #       fail_tasks_on_lob_truncation: false,
    #       heartbeat_enable: false,
    #       heartbeat_schema: "String",
    #       heartbeat_frequency: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #       slot_name: "String",
    #       plugin_name: "no-preference" # One of: ["no-preference", "test-decoding", "pglogical"],
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       trim_space_in_char: false,
    #       map_boolean_as_boolean: false,
    #       map_jsonb_as_clob: false,
    #       map_long_varchar_as: "wstring" # One of: ["wstring", "clob", "nclob"],
    #       database_mode: "default" # One of: ["default", "babelfish"],
    #       babelfish_database_name: "String",
    #       disable_unicode_source_filter: false,
    #       service_access_role_arn: "String",
    #       authentication_method: "password" # One of: ["password", "iam"]
    #     },
    #     my_sql_settings: {
    #       after_connect_script: "String",
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: "String",
    #       events_poll_interval: 1,
    #       target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       server_timezone: "String",
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       execute_timeout: 1,
    #       service_access_role_arn: "String",
    #       authentication_method: "password" # One of: ["password", "iam"]
    #     },
    #     oracle_settings: {
    #       add_supplemental_logging: false,
    #       archived_log_dest_id: 1,
    #       additional_archived_log_dest_id: 1,
    #       extra_archived_log_dest_ids: [1],
    #       allow_select_nested_tables: false,
    #       parallel_asm_read_threads: 1,
    #       read_ahead_blocks: 1,
    #       access_alternate_directly: false,
    #       use_alternate_folder_for_online: false,
    #       oracle_path_prefix: "String",
    #       use_path_prefix: "String",
    #       replace_path_prefix: false,
    #       enable_homogenous_tablespace: false,
    #       direct_path_no_log: false,
    #       archived_logs_only: false,
    #       asm_password: "SecretString",
    #       asm_server: "String",
    #       asm_user: "String",
    #       char_length_semantics: "default" # One of: ["default", "char", "byte"],
    #       database_name: "String",
    #       direct_path_parallel_load: false,
    #       fail_tasks_on_lob_truncation: false,
    #       number_datatype_scale: 1,
    #       password: "SecretString",
    #       port: 1,
    #       read_table_space_name: false,
    #       retry_interval: 1,
    #       security_db_encryption: "SecretString",
    #       security_db_encryption_name: "String",
    #       server_name: "String",
    #       spatial_data_option_to_geo_json_function_name: "String",
    #       standby_delay_time: 1,
    #       username: "String",
    #       use_b_file: false,
    #       use_direct_path_full_load: false,
    #       use_logminer_reader: false,
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       secrets_manager_oracle_asm_access_role_arn: "String",
    #       secrets_manager_oracle_asm_secret_id: "String",
    #       trim_space_in_char: false,
    #       convert_timestamp_with_zone_to_utc: false,
    #       open_transaction_window: 1,
    #       authentication_method: "password" # One of: ["password", "kerberos"]
    #     },
    #     sybase_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String"
    #     },
    #     microsoft_sql_server_settings: {
    #       port: 1,
    #       bcp_packet_size: 1,
    #       database_name: "String",
    #       control_tables_file_group: "String",
    #       password: "SecretString",
    #       query_single_always_on_node: false,
    #       read_backup_only: false,
    #       safeguard_policy: "rely-on-sql-server-replication-agent" # One of: ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"],
    #       server_name: "String",
    #       username: "String",
    #       use_bcp_full_load: false,
    #       use_third_party_backup_device: false,
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       trim_space_in_char: false,
    #       tlog_access_mode: "BackupOnly" # One of: ["BackupOnly", "PreferBackup", "PreferTlog", "TlogOnly"],
    #       force_lob_lookup: false,
    #       authentication_method: "password" # One of: ["password", "kerberos"]
    #     },
    #     ibm_db2_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       set_data_capture_changes: false,
    #       current_lsn: "String",
    #       max_k_bytes_per_read: 1,
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       load_timeout: 1,
    #       write_buffer_size: 1,
    #       max_file_size: 1,
    #       keep_csv_files: false
    #     },
    #     resource_identifier: "String",
    #     doc_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       nesting_level: "none" # One of: ["none", "one"],
    #       extract_doc_id: false,
    #       docs_to_investigate: 1,
    #       kms_key_id: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       use_update_look_up: false,
    #       replicate_shard_collections: false
    #     },
    #     redis_settings: {
    #       server_name: "String", # required
    #       port: 1, # required
    #       ssl_security_protocol: "plaintext" # One of: ["plaintext", "ssl-encryption"],
    #       auth_type: "none" # One of: ["none", "auth-role", "auth-token"],
    #       auth_user_name: "String",
    #       auth_password: "SecretString",
    #       ssl_ca_certificate_arn: "String"
    #     },
    #     gcp_my_sql_settings: {
    #       after_connect_script: "String",
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: "String",
    #       events_poll_interval: 1,
    #       target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       server_timezone: "String",
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String"
    #     },
    #     timestream_settings: {
    #       database_name: "String", # required
    #       memory_duration: 1, # required
    #       magnetic_duration: 1, # required
    #       cdc_inserts_and_updates: false,
    #       enable_magnetic_store_writes: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       endpoint_identifier: "String",
    #       endpoint_type: "source" # One of: ["source", "target"],
    #       engine_name: "String",
    #       engine_display_name: "String",
    #       username: "String",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       extra_connection_attributes: "String",
    #       status: "String",
    #       kms_key_id: "String",
    #       endpoint_arn: "String",
    #       certificate_arn: "String",
    #       ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       external_id: "String",
    #       dynamo_db_settings: {
    #         service_access_role_arn: "String", # required
    #       },
    #       s3_settings: {
    #         service_access_role_arn: "String",
    #         external_table_definition: "String",
    #         csv_row_delimiter: "String",
    #         csv_delimiter: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         compression_type: "none" # One of: ["none", "gzip"],
    #         encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #         server_side_encryption_kms_key_id: "String",
    #         data_format: "csv" # One of: ["csv", "parquet"],
    #         encoding_type: "plain" # One of: ["plain", "plain-dictionary", "rle-dictionary"],
    #         dict_page_size_limit: 1,
    #         row_group_length: 1,
    #         data_page_size: 1,
    #         parquet_version: "parquet-1-0" # One of: ["parquet-1-0", "parquet-2-0"],
    #         enable_statistics: false,
    #         include_op_for_full_load: false,
    #         cdc_inserts_only: false,
    #         timestamp_column_name: "String",
    #         parquet_timestamp_in_millisecond: false,
    #         cdc_inserts_and_updates: false,
    #         date_partition_enabled: false,
    #         date_partition_sequence: "YYYYMMDD" # One of: ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"],
    #         date_partition_delimiter: "SLASH" # One of: ["SLASH", "UNDERSCORE", "DASH", "NONE"],
    #         use_csv_no_sup_value: false,
    #         csv_no_sup_value: "String",
    #         preserve_transactions: false,
    #         cdc_path: "String",
    #         use_task_start_time_for_full_load_timestamp: false,
    #         canned_acl_for_objects: "none" # One of: ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"],
    #         add_column_name: false,
    #         cdc_max_batch_interval: 1,
    #         cdc_min_file_size: 1,
    #         csv_null_value: "String",
    #         ignore_header_rows: 1,
    #         max_file_size: 1,
    #         rfc4180: false,
    #         date_partition_timezone: "String",
    #         add_trailing_padding_character: false,
    #         expected_bucket_owner: "String",
    #         glue_catalog_generation: false
    #       },
    #       dms_transfer_settings: {
    #         service_access_role_arn: "String",
    #         bucket_name: "String"
    #       },
    #       mongo_db_settings: {
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         auth_type: "no" # One of: ["no", "password"],
    #         auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"],
    #         nesting_level: "none" # One of: ["none", "one"],
    #         extract_doc_id: "String",
    #         docs_to_investigate: "String",
    #         auth_source: "String",
    #         kms_key_id: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         use_update_look_up: false,
    #         replicate_shard_collections: false
    #       },
    #       kinesis_settings: {
    #         stream_arn: "String",
    #         message_format: "json" # One of: ["json", "json-unformatted"],
    #         service_access_role_arn: "String",
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         include_null_and_empty: false,
    #         no_hex_prefix: false,
    #         use_large_integer_value: false
    #       },
    #       kafka_settings: {
    #         broker: "String",
    #         topic: "String",
    #         message_format: "json" # One of: ["json", "json-unformatted"],
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         message_max_bytes: 1,
    #         include_null_and_empty: false,
    #         security_protocol: "plaintext" # One of: ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"],
    #         ssl_client_certificate_arn: "String",
    #         ssl_client_key_arn: "String",
    #         ssl_client_key_password: "SecretString",
    #         ssl_ca_certificate_arn: "String",
    #         sasl_username: "String",
    #         sasl_password: "SecretString",
    #         no_hex_prefix: false,
    #         sasl_mechanism: "scram-sha-512" # One of: ["scram-sha-512", "plain"],
    #         ssl_endpoint_identification_algorithm: "none" # One of: ["none", "https"],
    #         use_large_integer_value: false
    #       },
    #       elasticsearch_settings: {
    #         service_access_role_arn: "String", # required
    #         endpoint_uri: "String", # required
    #         full_load_error_percentage: 1,
    #         error_retry_duration: 1,
    #         use_new_mapping_type: false
    #       },
    #       neptune_settings: {
    #         service_access_role_arn: "String",
    #         s3_bucket_name: "String", # required
    #         s3_bucket_folder: "String", # required
    #         error_retry_duration: 1,
    #         max_file_size: 1,
    #         max_retry_count: 1,
    #         iam_auth_enabled: false
    #       },
    #       redshift_settings: {
    #         accept_any_date: false,
    #         after_connect_script: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         case_sensitive_names: false,
    #         comp_update: false,
    #         connection_timeout: 1,
    #         database_name: "String",
    #         date_format: "String",
    #         empty_as_null: false,
    #         encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #         explicit_ids: false,
    #         file_transfer_upload_streams: 1,
    #         load_timeout: 1,
    #         max_file_size: 1,
    #         password: "SecretString",
    #         port: 1,
    #         remove_quotes: false,
    #         replace_invalid_chars: "String",
    #         replace_chars: "String",
    #         server_name: "String",
    #         service_access_role_arn: "String",
    #         server_side_encryption_kms_key_id: "String",
    #         time_format: "String",
    #         trim_blanks: false,
    #         truncate_columns: false,
    #         username: "String",
    #         write_buffer_size: 1,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         map_boolean_as_boolean: false
    #       },
    #       postgre_sql_settings: {
    #         after_connect_script: "String",
    #         capture_ddls: false,
    #         max_file_size: 1,
    #         database_name: "String",
    #         ddl_artifacts_schema: "String",
    #         execute_timeout: 1,
    #         fail_tasks_on_lob_truncation: false,
    #         heartbeat_enable: false,
    #         heartbeat_schema: "String",
    #         heartbeat_frequency: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #         slot_name: "String",
    #         plugin_name: "no-preference" # One of: ["no-preference", "test-decoding", "pglogical"],
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         trim_space_in_char: false,
    #         map_boolean_as_boolean: false,
    #         map_jsonb_as_clob: false,
    #         map_long_varchar_as: "wstring" # One of: ["wstring", "clob", "nclob"],
    #         database_mode: "default" # One of: ["default", "babelfish"],
    #         babelfish_database_name: "String",
    #         disable_unicode_source_filter: false,
    #         service_access_role_arn: "String",
    #         authentication_method: "password" # One of: ["password", "iam"]
    #       },
    #       my_sql_settings: {
    #         after_connect_script: "String",
    #         clean_source_metadata_on_mismatch: false,
    #         database_name: "String",
    #         events_poll_interval: 1,
    #         target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #         max_file_size: 1,
    #         parallel_load_threads: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         server_timezone: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         execute_timeout: 1,
    #         service_access_role_arn: "String",
    #         authentication_method: "password" # One of: ["password", "iam"]
    #       },
    #       oracle_settings: {
    #         add_supplemental_logging: false,
    #         archived_log_dest_id: 1,
    #         additional_archived_log_dest_id: 1,
    #         extra_archived_log_dest_ids: [1],
    #         allow_select_nested_tables: false,
    #         parallel_asm_read_threads: 1,
    #         read_ahead_blocks: 1,
    #         access_alternate_directly: false,
    #         use_alternate_folder_for_online: false,
    #         oracle_path_prefix: "String",
    #         use_path_prefix: "String",
    #         replace_path_prefix: false,
    #         enable_homogenous_tablespace: false,
    #         direct_path_no_log: false,
    #         archived_logs_only: false,
    #         asm_password: "SecretString",
    #         asm_server: "String",
    #         asm_user: "String",
    #         char_length_semantics: "default" # One of: ["default", "char", "byte"],
    #         database_name: "String",
    #         direct_path_parallel_load: false,
    #         fail_tasks_on_lob_truncation: false,
    #         number_datatype_scale: 1,
    #         password: "SecretString",
    #         port: 1,
    #         read_table_space_name: false,
    #         retry_interval: 1,
    #         security_db_encryption: "SecretString",
    #         security_db_encryption_name: "String",
    #         server_name: "String",
    #         spatial_data_option_to_geo_json_function_name: "String",
    #         standby_delay_time: 1,
    #         username: "String",
    #         use_b_file: false,
    #         use_direct_path_full_load: false,
    #         use_logminer_reader: false,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         secrets_manager_oracle_asm_access_role_arn: "String",
    #         secrets_manager_oracle_asm_secret_id: "String",
    #         trim_space_in_char: false,
    #         convert_timestamp_with_zone_to_utc: false,
    #         open_transaction_window: 1,
    #         authentication_method: "password" # One of: ["password", "kerberos"]
    #       },
    #       sybase_settings: {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String"
    #       },
    #       microsoft_sql_server_settings: {
    #         port: 1,
    #         bcp_packet_size: 1,
    #         database_name: "String",
    #         control_tables_file_group: "String",
    #         password: "SecretString",
    #         query_single_always_on_node: false,
    #         read_backup_only: false,
    #         safeguard_policy: "rely-on-sql-server-replication-agent" # One of: ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"],
    #         server_name: "String",
    #         username: "String",
    #         use_bcp_full_load: false,
    #         use_third_party_backup_device: false,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         trim_space_in_char: false,
    #         tlog_access_mode: "BackupOnly" # One of: ["BackupOnly", "PreferBackup", "PreferTlog", "TlogOnly"],
    #         force_lob_lookup: false,
    #         authentication_method: "password" # One of: ["password", "kerberos"]
    #       },
    #       ibm_db2_settings: {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         set_data_capture_changes: false,
    #         current_lsn: "String",
    #         max_k_bytes_per_read: 1,
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         load_timeout: 1,
    #         write_buffer_size: 1,
    #         max_file_size: 1,
    #         keep_csv_files: false
    #       },
    #       doc_db_settings: {
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         nesting_level: "none" # One of: ["none", "one"],
    #         extract_doc_id: false,
    #         docs_to_investigate: 1,
    #         kms_key_id: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         use_update_look_up: false,
    #         replicate_shard_collections: false
    #       },
    #       redis_settings: {
    #         server_name: "String", # required
    #         port: 1, # required
    #         ssl_security_protocol: "plaintext" # One of: ["plaintext", "ssl-encryption"],
    #         auth_type: "none" # One of: ["none", "auth-role", "auth-token"],
    #         auth_user_name: "String",
    #         auth_password: "SecretString",
    #         ssl_ca_certificate_arn: "String"
    #       },
    #       gcp_my_sql_settings: {
    #         after_connect_script: "String",
    #         clean_source_metadata_on_mismatch: false,
    #         database_name: "String",
    #         events_poll_interval: 1,
    #         target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #         max_file_size: 1,
    #         parallel_load_threads: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         server_timezone: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String"
    #       },
    #       timestream_settings: {
    #         database_name: "String", # required
    #         memory_duration: 1, # required
    #         magnetic_duration: 1, # required
    #         cdc_inserts_and_updates: false,
    #         enable_magnetic_store_writes: false
    #       }
    #     }
    #   }
    # @return [Types::CreateEndpointResponse]
    def create_endpoint(params = {}, options = {})
      request = build_request(:create_endpoint, params)
      request.send_request(options)
    end

    # <p> Creates an DMS event notification subscription. </p>
    #          <p>You can specify the type of source (<code>SourceType</code>) you want to be notified of,
    #          provide a list of DMS source IDs (<code>SourceIds</code>) that triggers the events, and
    #          provide a list of event categories (<code>EventCategories</code>) for events you want to be
    #          notified of. If you specify both the <code>SourceType</code> and <code>SourceIds</code>,
    #          such as <code>SourceType = replication-instance</code> and <code>SourceIdentifier =
    #             my-replinstance</code>, you will be notified of all the replication instance events for
    #          the specified source. If you specify a <code>SourceType</code> but don't specify a
    #             <code>SourceIdentifier</code>, you receive notice of the events for that source type for
    #          all your DMS sources. If you don't specify either <code>SourceType</code> nor
    #             <code>SourceIdentifier</code>, you will be notified of events generated from all DMS
    #          sources belonging to your customer account.</p>
    #          <p>For more information about DMS events, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and
    #             Notifications</a> in the <i>Database Migration Service User Guide.</i>
    #          </p>
    # @param [Hash, Types::CreateEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event notification subscription. This name must be less than 255
    #            characters.</p>
    # @option params [String] :sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>
    # @option params [String] :source_type
    #   <p> The type of DMS resource that generates the events. For example, if you want to be
    #            notified of events generated by a replication instance, you set this parameter to
    #               <code>replication-instance</code>. If this value isn't specified, all events are
    #            returned. </p>
    #            <p>Valid values: <code>replication-instance</code> | <code>replication-task</code>
    #            </p>
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories for a source type that you want to subscribe to. For more
    #            information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and Notifications</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    # @option params [Array<String>] :source_ids
    #   <p>A list of identifiers for which DMS provides notification events.</p>
    #            <p>If you don't specify a value, notifications are provided for all sources.</p>
    #            <p>If you specify multiple values, they must be of the same type. For example, if you
    #            specify a database instance ID, then all of the other values must be database instance
    #            IDs.</p>
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription, or set to
    #               <code>false</code> to create the subscription but not activate it. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the event subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false
    #     }
    #   }
    # @return [Types::CreateEventSubscriptionResponse]
    def create_event_subscription(params = {}, options = {})
      request = build_request(:create_event_subscription, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Creates a Fleet Advisor collector using the specified parameters.</p>
    # @param [Hash, Types::CreateFleetAdvisorCollectorRequest] params
    # @option params [String] :collector_name
    #   <p>The name of your Fleet Advisor collector (for example, <code>sample-collector</code>).</p>
    # @option params [String] :description
    #   <p>A summary description of your Fleet Advisor collector.</p>
    # @option params [String] :service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    # @option params [String] :s3_bucket_name
    #   <p>The Amazon S3 bucket that the Fleet Advisor collector uses to store inventory metadata.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collector_name: "String", # required
    #     description: "String",
    #     service_access_role_arn: "String", # required
    #     s3_bucket_name: "String", # required
    #   }
    #   options = {}
    #   response = client.create_fleet_advisor_collector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collector_referenced_id: "String",
    #     collector_name: "String",
    #     description: "String",
    #     service_access_role_arn: "String",
    #     s3_bucket_name: "String"
    #   }
    # @return [Types::CreateFleetAdvisorCollectorResponse]
    def create_fleet_advisor_collector(params = {}, options = {})
      request = build_request(:create_fleet_advisor_collector, params)
      request.send_request(options)
    end

    # <p>Creates the instance profile using the specified parameters.</p>
    # @param [Hash, Types::CreateInstanceProfileMessage] params
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where the instance profile will be created. The default
    #            value is a random, system-chosen Availability Zone in the Amazon Web Services Region where your 
    #            data provider is created, for examplem <code>us-east-1d</code>.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to encrypt 
    #            the connection parameters for the instance profile.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyArn</code> parameter, then
    #            DMS uses an Amazon Web Services owned encryption key to encrypt your resources.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Specifies the accessibility options for the instance profile. A value of
    #            <code>true</code> represents an instance profile with a public IP address. A value of
    #            <code>false</code> represents an instance profile with a private IP address. The default value
    #            is <code>true</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the instance profile.</p>
    # @option params [String] :network_type
    #   <p>Specifies the network type for the instance profile. A value of <code>IPV4</code> 
    #            represents an instance profile with IPv4 network type and only supports IPv4 addressing. 
    #            A value of <code>IPV6</code> represents an instance profile with IPv6 network type 
    #            and only supports IPv6 addressing. A value of <code>DUAL</code> represents an instance 
    #            profile with dual network type that supports IPv4 and IPv6 addressing.</p>
    # @option params [String] :instance_profile_name
    #   <p>A user-friendly name for the instance profile.</p>
    # @option params [String] :description
    #   <p>A user-friendly description of the instance profile.</p>
    # @option params [String] :subnet_group_identifier
    #   <p>A subnet group to associate with the instance profile.</p>
    # @option params [Array<String>] :vpc_security_groups
    #   <p>Specifies the VPC security group names to be used with the instance profile. 
    #            The VPC security group must work with the VPC containing the instance profile.</p>
    # @example Create Instance Profile
    #   # Creates the instance profile using the specified parameters.
    #   params = {
    #     subnet_group_identifier: "my-subnet-group",
    #     publicly_accessible: true,
    #     kms_key_arn: "arn:aws:kms:us-east-1:012345678901:key/01234567-89ab-cdef-0123-456789abcdef",
    #     instance_profile_name: "my-instance-profile",
    #     description: "Description",
    #     network_type: "DUAL",
    #     tags: [
    #       {
    #         key: "access",
    #         value: "authorizedusers"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_instance_profile(params, options)
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       subnet_group_identifier: "public-subnets",
    #       vpc_security_groups: [
    #         "sg-0123456"
    #       ],
    #       publicly_accessible: true,
    #       kms_key_arn: "arn:aws:kms:us-east-1:012345678901:key/01234567-89ab-cdef-0123-456789abcdef",
    #       instance_profile_creation_time: Time.parse("2022-12-16T09:44:43.543246Z"),
    #       instance_profile_name: "my-instance-profile",
    #       instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:my-instance-profile"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     availability_zone: "String",
    #     kms_key_arn: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ],
    #     network_type: "String",
    #     instance_profile_name: "String",
    #     description: "String",
    #     subnet_group_identifier: "String",
    #     vpc_security_groups: ["String"]
    #   }
    #   options = {}
    #   response = client.create_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       instance_profile_arn: "String",
    #       availability_zone: "String",
    #       kms_key_arn: "String",
    #       publicly_accessible: false,
    #       network_type: "String",
    #       instance_profile_name: "String",
    #       description: "String",
    #       instance_profile_creation_time: Time.now,
    #       subnet_group_identifier: "String",
    #       vpc_security_groups: ["String"]
    #     }
    #   }
    # @return [Types::CreateInstanceProfileResponse]
    def create_instance_profile(params = {}, options = {})
      request = build_request(:create_instance_profile, params)
      request.send_request(options)
    end

    # <p>Creates the migration project using the specified parameters.</p>
    #          <p>You can run this action only after you create an instance profile and data providers
    #          using <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateInstanceProfile.html">CreateInstanceProfile</a> and <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateDataProvider.html">CreateDataProvider</a>.</p>
    # @param [Hash, Types::CreateMigrationProjectMessage] params
    # @option params [String] :migration_project_name
    #   <p>A user-friendly name for the migration project.</p>
    # @option params [Array<Types::DataProviderDescriptorDefinition>] :source_data_provider_descriptors
    #   <p>Information about the source data provider, including the name, ARN, and Secrets Manager parameters.</p>
    # @option params [Array<Types::DataProviderDescriptorDefinition>] :target_data_provider_descriptors
    #   <p>Information about the target data provider, including the name, ARN, and Amazon Web Services Secrets Manager parameters.</p>
    # @option params [String] :instance_profile_identifier
    #   <p>The identifier of the associated instance profile. Identifiers must begin with a letter 
    #            and must contain only ASCII letters, digits, and hyphens. They can't end with 
    #            a hyphen, or contain two consecutive hyphens.</p>
    # @option params [String] :transformation_rules
    #   <p>The settings in JSON format for migration rules. Migration rules make it possible for you to change 
    #            the object names according to the rules that you specify. For example, you can change an object name 
    #            to lowercase or uppercase, add or remove a prefix or suffix, or rename objects.</p>
    # @option params [String] :description
    #   <p>A user-friendly description of the migration project.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the migration project.</p>
    # @option params [Types::SCApplicationAttributes] :schema_conversion_application_attributes
    #   <p>The schema conversion application attributes, including the Amazon S3 bucket name and Amazon S3 role ARN.</p>
    # @example Create Migration Project
    #   # Creates the migration project with the specified parameters.
    #   params = {
    #     migration_project_name: "my-migration-project",
    #     source_data_provider_descriptors: [
    #       {
    #         data_provider_identifier: "arn:aws:dms:us-east-1:012345678901:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #         secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myorg/example1/ALL.SOURCE.ORACLE_12-A1B2C3",
    #         secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/myuser-admin-access"
    #       }
    #     ],
    #     target_data_provider_descriptors: [
    #       {
    #         data_provider_identifier: "arn:aws:dms:us-east-1:012345678901:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #         secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myorg/example1/TARGET.postgresql-A1B2C3",
    #         secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/myuser-admin-access"
    #       }
    #     ],
    #     instance_profile_identifier: "ip-au-17",
    #     schema_conversion_application_attributes: {
    #       s3_bucket_path: "arn:aws:s3:::mylogin-bucket",
    #       s3_bucket_role_arn: "arn:aws:iam::012345678901:role/Admin"
    #     },
    #     tags: [
    #       {
    #         key: "access",
    #         value: "authorizedusers"
    #       }
    #     ],
    #     description: "description",
    #     transformation_rules: "{\"key0\":\"value0\",\"key1\":\"value1\",\"key2\":\"value2\"}"
    #   }
    #   options = {}
    #   response = client.create_migration_project(params, options)
    #   response.to_h #=>
    #   {
    #     migration_project: {
    #       schema_conversion_application_attributes: {
    #         s3_bucket_path: "my-s3-bucket/my_folder",
    #         s3_bucket_role_arn: "arn:aws:iam::012345678901:role/my-s3role"
    #       },
    #       source_data_provider_descriptors: [
    #         {
    #           secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/my-access-role",
    #           secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myuser/ALL.SOURCE.ORACLE_12-0123456",
    #           data_provider_name: "source-oracle-12",
    #           data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #         }
    #       ],
    #       migration_project_creation_time: Time.parse("2023-04-19T11:45:15.805253Z"),
    #       instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #       migration_project_name: "my-migration-project",
    #       migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #       instance_profile_name: "my-instance-profile",
    #       target_data_provider_descriptors: [
    #         {
    #           secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/dmytbon-admin-access",
    #           secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myuser/TARGET.postgresql-0123456",
    #           data_provider_name: "target-dataprovider-3",
    #           data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_name: "String",
    #     source_data_provider_descriptors: [ # required
    #       {
    #         data_provider_identifier: "String", # required
    #         secrets_manager_secret_id: "String",
    #         secrets_manager_access_role_arn: "String"
    #       }
    #     ],
    #     target_data_provider_descriptors: [ # required
    #       {
    #         data_provider_identifier: "String", # required
    #         secrets_manager_secret_id: "String",
    #         secrets_manager_access_role_arn: "String"
    #       }
    #     ],
    #     instance_profile_identifier: "String", # required
    #     transformation_rules: "String",
    #     description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ],
    #     schema_conversion_application_attributes: {
    #       s3_bucket_path: "String",
    #       s3_bucket_role_arn: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_migration_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_project: {
    #       migration_project_name: "String",
    #       migration_project_arn: "String",
    #       migration_project_creation_time: Time.now,
    #       source_data_provider_descriptors: [
    #         {
    #           secrets_manager_secret_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           data_provider_name: "String",
    #           data_provider_arn: "String"
    #         }
    #       ],
    #       target_data_provider_descriptors: [
    #         {
    #           secrets_manager_secret_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           data_provider_name: "String",
    #           data_provider_arn: "String"
    #         }
    #       ],
    #       instance_profile_arn: "String",
    #       instance_profile_name: "String",
    #       transformation_rules: "String",
    #       description: "String",
    #       schema_conversion_application_attributes: {
    #         s3_bucket_path: "String",
    #         s3_bucket_role_arn: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateMigrationProjectResponse]
    def create_migration_project(params = {}, options = {})
      request = build_request(:create_migration_project, params)
      request.send_request(options)
    end

    # <p>Creates a configuration that you can later provide to configure and start an DMS
    #          Serverless replication. You can also provide options to validate the configuration inputs
    #          before you start the replication.</p>
    # @param [Hash, Types::CreateReplicationConfigMessage] params
    # @option params [String] :replication_config_identifier
    #   <p>A unique identifier that you want to use to create a <code>ReplicationConfigArn</code>
    #            that is returned as part of the output from this action. You can then pass this output
    #               <code>ReplicationConfigArn</code> as the value of the <code>ReplicationConfigArn</code>
    #            option for other actions to identify both DMS Serverless replications and replication
    #            configurations that you want those actions to operate on. For some actions, you can also
    #            use either this unique identifier or a corresponding ARN in action filters to identify the
    #            specific replication and replication configuration to operate on.</p>
    # @option params [String] :source_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the source endpoint for this DMS Serverless
    #            replication configuration.</p>
    # @option params [String] :target_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the target endpoint for this DMS serverless
    #            replication configuration.</p>
    # @option params [Types::ComputeConfig] :compute_config
    #   <p>Configuration parameters for provisioning an DMS Serverless replication.</p>
    # @option params [String] :replication_type
    #   <p>The type of DMS Serverless replication to provision using this replication
    #            configuration.</p>
    #            <p>Possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"full-load"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"cdc"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"full-load-and-cdc"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :table_mappings
    #   <p>JSON table mappings for DMS Serverless replications that are provisioned using this
    #            replication configuration. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.SelectionTransformation.html"> Specifying table selection and transformations rules using
    #               JSON</a>.</p>
    # @option params [String] :replication_settings
    #   <p>Optional JSON settings for DMS Serverless replications that are provisioned using this
    #            replication configuration. For example, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html"> Change processing tuning settings</a>.</p>
    # @option params [String] :supplemental_settings
    #   <p>Optional JSON settings for specifying supplemental data. For more information, see
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">
    #               Specifying supplemental data for task settings</a>.</p>
    # @option params [String] :resource_identifier
    #   <p>Optional unique value or name that you set for a given resource that can be used to
    #            construct an Amazon Resource Name (ARN) for that resource. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess"> Fine-grained access control using resource names and
    #            tags</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more optional tags associated with resources used by the DMS Serverless
    #            replication. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tagging.html"> Tagging resources in Database Migration Service</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_config_identifier: "String", # required
    #     source_endpoint_arn: "String", # required
    #     target_endpoint_arn: "String", # required
    #     compute_config: { # required
    #       availability_zone: "String",
    #       dns_name_servers: "String",
    #       kms_key_id: "String",
    #       max_capacity_units: 1,
    #       min_capacity_units: 1,
    #       multi_az: false,
    #       preferred_maintenance_window: "String",
    #       replication_subnet_group_id: "String",
    #       vpc_security_group_ids: ["String"]
    #     },
    #     replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"], # required
    #     table_mappings: "String", # required
    #     replication_settings: "String",
    #     supplemental_settings: "String",
    #     resource_identifier: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_replication_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_config: {
    #       replication_config_identifier: "String",
    #       replication_config_arn: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       compute_config: {
    #         availability_zone: "String",
    #         dns_name_servers: "String",
    #         kms_key_id: "String",
    #         max_capacity_units: 1,
    #         min_capacity_units: 1,
    #         multi_az: false,
    #         preferred_maintenance_window: "String",
    #         replication_subnet_group_id: "String",
    #         vpc_security_group_ids: ["String"]
    #       },
    #       replication_settings: "String",
    #       supplemental_settings: "String",
    #       table_mappings: "String",
    #       replication_config_create_time: Time.now,
    #       replication_config_update_time: Time.now
    #     }
    #   }
    # @return [Types::CreateReplicationConfigResponse]
    def create_replication_config(params = {}, options = {})
      request = build_request(:create_replication_config, params)
      request.send_request(options)
    end

    # <p>Creates the replication instance using the specified parameters.</p>
    #          <p>DMS requires that your account have certain roles with appropriate permissions before
    #          you can create a replication instance. For information on the required roles, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole">Creating the IAM Roles to Use With the CLI and DMS API</a>. For information on
    #          the required permissions, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions">IAM
    #             Permissions Needed to Use DMS</a>.</p>
    #          <note>
    #             <p>If you don't specify a version when creating a replication instance, DMS will
    #             create the instance using the default engine version. For information about the default
    #             engine version, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReleaseNotes.html">Release Notes</a>.</p>
    #          </note>
    # @param [Hash, Types::CreateReplicationInstanceMessage] params
    # @option params [String] :replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>myrepinstance</code>
    #            </p>
    # @option params [Integer] :allocated_storage
    #   <p>The amount of storage (in gigabytes) to be initially allocated for the replication
    #            instance.</p>
    # @option params [String] :replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set
    #            this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication
    #            instance classes, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html ">
    #               Choosing the right DMS replication instance</a>; and, <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_BestPractices.SizingReplicationInstance.html">Selecting the best size for a replication instance</a>. </p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where the replication instance will be created. The default value
    #            is a random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region, for example:
    #               <code>us-east-1d</code>.</p>
    # @option params [String] :replication_subnet_group_identifier
    #   <p>A subnet group to associate with the replication instance.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #            Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>Default: A 30-minute window selected at random from an 8-hour block of time per
    #            Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [Boolean] :multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set
    #            the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    # @option params [String] :engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>If an engine version number is not specified when a replication instance is created, the
    #            default is the latest engine version available.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the
    #            replication instance during the maintenance window. This parameter defaults to
    #               <code>true</code>.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the replication instance.</p>
    # @option params [String] :kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the data on the replication
    #            instance.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses
    #            your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has
    #            a different default encryption key for each Amazon Web Services Region.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p> Specifies the accessibility options for the replication instance. A value of
    #               <code>true</code> represents an instance with a public IP address. A value of
    #               <code>false</code> represents an instance with a private IP address. The default value
    #            is <code>true</code>. </p>
    # @option params [String] :dns_name_servers
    #   <p>A list of custom DNS name servers supported for the replication instance to access your
    #            on-premise source or target database. This list overrides the default name servers
    #            supported by the replication instance. You can specify a comma-separated list of internet
    #            addresses for up to four on-premise DNS name servers. For example:
    #               <code>"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"</code>
    #            </p>
    # @option params [String] :resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier value
    #            for the end of <code>EndpointArn</code>.</p>
    # @option params [String] :network_type
    #   <p>The type of IP address protocol used by a replication instance, such as IPv4 only or
    #            Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet
    #            supported.</p>
    # @option params [Types::KerberosAuthenticationSettings] :kerberos_authentication_settings
    #   <p>Specifies the settings required for kerberos authentication when creating the
    #            replication instance.</p>
    # @example Create replication instance
    #   # Creates the replication instance using the specified parameters.
    #   params = {
    #     replication_instance_identifier: "",
    #     allocated_storage: 123,
    #     replication_instance_class: "",
    #     vpc_security_group_ids: [
    #     ],
    #     availability_zone: "",
    #     replication_subnet_group_identifier: "",
    #     preferred_maintenance_window: "",
    #     multi_az: true,
    #     engine_version: "",
    #     auto_minor_version_upgrade: true,
    #     tags: [
    #       {
    #         key: "string",
    #         value: "string"
    #       }
    #     ],
    #     kms_key_id: "",
    #     publicly_accessible: true
    #   }
    #   options = {}
    #   response = client.create_replication_instance(params, options)
    #   response.to_h #=>
    #   {
    #     replication_instance: {
    #       publicly_accessible: true,
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #       replication_instance_class: "dms.t2.micro",
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default",
    #         subnets: [
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-f6dd91af",
    #             subnet_availability_zone: {
    #               name: "us-east-1d"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-3605751d",
    #             subnet_availability_zone: {
    #               name: "us-east-1b"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-c2daefb5",
    #             subnet_availability_zone: {
    #               name: "us-east-1c"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-85e90cb8",
    #             subnet_availability_zone: {
    #               name: "us-east-1e"
    #             }
    #           }
    #         ],
    #         vpc_id: "vpc-6741a603",
    #         subnet_group_status: "Complete",
    #         replication_subnet_group_identifier: "default"
    #       },
    #       auto_minor_version_upgrade: true,
    #       replication_instance_status: "creating",
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
    #       allocated_storage: 5,
    #       engine_version: "1.5.0",
    #       replication_instance_identifier: "test-rep-1",
    #       preferred_maintenance_window: "sun:06:00-sun:14:00",
    #       pending_modified_values: {
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     replication_instance_class: "ReplicationInstanceClass", # required
    #     vpc_security_group_ids: ["String"],
    #     availability_zone: "String",
    #     replication_subnet_group_identifier: "String",
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ],
    #     kms_key_id: "String",
    #     publicly_accessible: false,
    #     dns_name_servers: "String",
    #     resource_identifier: "String",
    #     network_type: "String",
    #     kerberos_authentication_settings: {
    #       key_cache_secret_id: "String",
    #       key_cache_secret_iam_arn: "String",
    #       krb5_file_contents: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_replication_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_instance: {
    #       replication_instance_identifier: "String",
    #       replication_instance_class: "ReplicationInstanceClass",
    #       replication_instance_status: "String",
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       replication_subnet_group: {
    #         replication_subnet_group_identifier: "String",
    #         replication_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         supported_network_types: ["String"]
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         replication_instance_class: "ReplicationInstanceClass",
    #         allocated_storage: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         network_type: "String"
    #       },
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       kms_key_id: "String",
    #       replication_instance_arn: "String",
    #       replication_instance_public_ip_address: "String",
    #       replication_instance_private_ip_address: "String",
    #       replication_instance_public_ip_addresses: ["String"],
    #       replication_instance_private_ip_addresses: ["String"],
    #       replication_instance_ipv6_addresses: ["String"],
    #       publicly_accessible: false,
    #       secondary_availability_zone: "String",
    #       free_until: Time.now,
    #       dns_name_servers: "String",
    #       network_type: "String",
    #       kerberos_authentication_settings: {
    #         key_cache_secret_id: "String",
    #         key_cache_secret_iam_arn: "String",
    #         krb5_file_contents: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateReplicationInstanceResponse]
    def create_replication_instance(params = {}, options = {})
      request = build_request(:create_replication_instance, params)
      request.send_request(options)
    end

    # <p>Creates a replication subnet group given a list of the subnet IDs in a VPC.</p>
    #          <p>The VPC needs to have at least one subnet in at least two availability zones in the
    #             Amazon Web Services Region, otherwise the service will throw a
    #             <code>ReplicationSubnetGroupDoesNotCoverEnoughAZs</code> exception.</p>
    #          <p>If a replication subnet group exists in your Amazon Web Services account, the
    #          CreateReplicationSubnetGroup action returns the following error message: The Replication
    #          Subnet Group already exists. In this case, delete the existing replication subnet group. To
    #          do so, use the <a href="https://docs.aws.amazon.com/en_us/dms/latest/APIReference/API_DeleteReplicationSubnetGroup.html">DeleteReplicationSubnetGroup</a> action. Optionally, choose Subnet groups in the
    #          DMS console, then choose your subnet group. Next, choose Delete from Actions.</p>
    # @param [Hash, Types::CreateReplicationSubnetGroupMessage] params
    # @option params [String] :replication_subnet_group_identifier
    #   <p>The name for the replication subnet group. This value is stored as a lowercase
    #            string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters, periods,
    #            underscores, or hyphens. Must not be "default".</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    # @option params [String] :replication_subnet_group_description
    #   <p>The description for the subnet group.
    #         </p>
    #            <p>Constraints: This parameter Must not contain non-printable control characters.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>Two or more subnet IDs to be assigned to the subnet group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the subnet group.</p>
    # @example Create replication subnet group
    #   # Creates a replication subnet group given a list of the subnet IDs in a VPC.
    #   params = {
    #     replication_subnet_group_identifier: "us-west-2ab-vpc-215ds366",
    #     replication_subnet_group_description: "US West subnet group",
    #     subnet_ids: [
    #       "subnet-e145356n",
    #       "subnet-58f79200"
    #     ],
    #     tags: [
    #       {
    #         key: "Acount",
    #         value: "145235"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_replication_subnet_group(params, options)
    #   response.to_h #=>
    #   {
    #     replication_subnet_group: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_subnet_group_identifier: "String", # required
    #     replication_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_replication_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_subnet_group: {
    #       replication_subnet_group_identifier: "String",
    #       replication_subnet_group_description: "String",
    #       vpc_id: "String",
    #       subnet_group_status: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String"
    #           },
    #           subnet_status: "String"
    #         }
    #       ],
    #       supported_network_types: ["String"]
    #     }
    #   }
    # @return [Types::CreateReplicationSubnetGroupResponse]
    def create_replication_subnet_group(params = {}, options = {})
      request = build_request(:create_replication_subnet_group, params)
      request.send_request(options)
    end

    # <p>Creates a replication task using the specified parameters.</p>
    # @param [Hash, Types::CreateReplicationTaskMessage] params
    # @option params [String] :replication_task_identifier
    #   <p>An identifier for the replication task.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.</p>
    # @option params [String] :target_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.</p>
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of a replication instance.</p>
    # @option params [String] :migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> |
    #               <code>full-load-and-cdc</code>
    #            </p>
    # @option params [String] :table_mappings
    #   <p>The table mappings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html">Using Table
    #               Mapping to Specify Task Settings</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    # @option params [String] :replication_task_settings
    #   <p>Overall settings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html">Specifying Task
    #               Settings for Database Migration Service Tasks</a> in the <i>Database Migration Service User
    #            Guide.</i>
    #            </p>
    # @option params [Time] :cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    # @option params [String] :cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    # @option params [String] :cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time:2018-02-09T12:12:12“</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the replication task.</p>
    # @option params [String] :task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source
    #            and target endpoints. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for
    #               Task Settings</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [String] :resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier value
    #            for the end of <code>EndpointArn</code>.</p>
    # @example Create replication task
    #   # Creates a replication task using the specified parameters.
    #   params = {
    #     replication_task_identifier: "task1",
    #     source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
    #     target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #     migration_type: full-load,
    #     table_mappings: "file://mappingfile.json",
    #     replication_task_settings: "",
    #     cdc_start_time: Time.parse("2016-12-14T18:25:43Z"),
    #     tags: [
    #       {
    #         key: "Acount",
    #         value: "24352226"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_replication_task(params, options)
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
    #       replication_task_identifier: "task1",
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #       table_mappings: "file://mappingfile.json",
    #       status: "creating",
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"),
    #       migration_type: full-load,
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_identifier: "String", # required
    #     source_endpoint_arn: "String", # required
    #     target_endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #     migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"], # required
    #     table_mappings: "String", # required
    #     replication_task_settings: "String",
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ],
    #     task_data: "String",
    #     resource_identifier: "String"
    #   }
    #   options = {}
    #   response = client.create_replication_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       replication_task_identifier: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       table_mappings: "String",
    #       replication_task_settings: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       stop_reason: "String",
    #       replication_task_creation_date: Time.now,
    #       replication_task_start_date: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_task_arn: "String",
    #       replication_task_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       task_data: "String",
    #       target_replication_instance_arn: "String"
    #     }
    #   }
    # @return [Types::CreateReplicationTaskResponse]
    def create_replication_task(params = {}, options = {})
      request = build_request(:create_replication_task, params)
      request.send_request(options)
    end

    # <p>Deletes the specified certificate. </p>
    # @param [Hash, Types::DeleteCertificateMessage] params
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    # @example Delete Certificate
    #   # Deletes the specified certificate.
    #   params = {
    #     certificate_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUSM457DE6XFJCJQ"
    #   }
    #   options = {}
    #   response = client.delete_certificate(params, options)
    #   response.to_h #=>
    #   {
    #     certificate: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: {
    #       certificate_identifier: "String",
    #       certificate_creation_date: Time.now,
    #       certificate_pem: "String",
    #       certificate_wallet: "data",
    #       certificate_arn: "String",
    #       certificate_owner: "String",
    #       valid_from_date: Time.now,
    #       valid_to_date: Time.now,
    #       signing_algorithm: "String",
    #       key_length: 1
    #     }
    #   }
    # @return [Types::DeleteCertificateResponse]
    def delete_certificate(params = {}, options = {})
      request = build_request(:delete_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes the connection between a replication instance and an endpoint.</p>
    # @param [Hash, Types::DeleteConnectionMessage] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    # @example Delete Connection
    #   # Deletes the connection between the replication instance and the endpoint.
    #   params = {
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM"
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       replication_instance_arn: "String",
    #       endpoint_arn: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       endpoint_identifier: "String",
    #       replication_instance_identifier: "String"
    #     }
    #   }
    # @return [Types::DeleteConnectionResponse]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Deletes the specified data migration.</p>
    # @param [Hash, Types::DeleteDataMigrationMessage] params
    # @option params [String] :data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_migration_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_data_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_migration: {
    #       data_migration_name: "String",
    #       data_migration_arn: "String",
    #       data_migration_create_time: Time.now,
    #       data_migration_start_time: Time.now,
    #       data_migration_end_time: Time.now,
    #       service_access_role_arn: "String",
    #       migration_project_arn: "String",
    #       data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       data_migration_settings: {
    #         number_of_jobs: 1,
    #         cloudwatch_logs_enabled: false,
    #         selection_rules: "SecretString"
    #       },
    #       source_data_settings: [
    #         {
    #           cdc_start_position: "String",
    #           cdc_start_time: Time.now,
    #           cdc_stop_time: Time.now,
    #           slot_name: "String"
    #         }
    #       ],
    #       target_data_settings: [
    #         {
    #           table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #         }
    #       ],
    #       data_migration_statistics: {
    #         tables_loaded: 1,
    #         elapsed_time_millis: 1,
    #         tables_loading: 1,
    #         full_load_percentage: 1,
    #         cdc_latency: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         start_time: Time.now,
    #         stop_time: Time.now
    #       },
    #       data_migration_status: "String",
    #       public_ip_addresses: ["String"],
    #       data_migration_cidr_blocks: ["String"],
    #       last_failure_message: "String",
    #       stop_reason: "String"
    #     }
    #   }
    # @return [Types::DeleteDataMigrationResponse]
    def delete_data_migration(params = {}, options = {})
      request = build_request(:delete_data_migration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified data provider.</p>
    #          <note>
    #             <p>All migration projects associated with the data provider must be deleted or modified
    #             before you can delete the data provider.</p>
    #          </note>
    # @param [Hash, Types::DeleteDataProviderMessage] params
    # @option params [String] :data_provider_identifier
    #   <p>The identifier of the data provider to delete.</p>
    # @example Delete Data Provider
    #   # Deletes the specified data provider.
    #   params = {
    #     data_provider_identifier: "arn:aws:dms:us-east-1:012345678901:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #   }
    #   options = {}
    #   response = client.delete_data_provider(params, options)
    #   response.to_h #=>
    #   {
    #     data_provider: {
    #       engine: "postgres",
    #       settings: {
    #     "PostgreSqlSettings" => {
    #       "SslMode" => none,
    #       "ServerName" => postrgesql.0a1b2c3d4e5f.us-east-1.rds.amazonaws.com,
    #       "Port" => 5432,
    #       "DatabaseName" => target
    #     }
    #   },
    #       data_provider_creation_time: Time.parse("2023-05-12T10:50:41.988561Z"),
    #       data_provider_name: "my-target-data-provider",
    #       data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:my-target-data-provider"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     data_provider_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_data_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_provider: {
    #       data_provider_name: "String",
    #       data_provider_arn: "String",
    #       data_provider_creation_time: Time.now,
    #       description: "String",
    #       engine: "String",
    #       virtual: false,
    #       settings: {
    #         # One of:
    #         redshift_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         postgre_sql_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         my_sql_settings: {
    #           server_name: "String",
    #           port: 1,
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         oracle_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           asm_server: "String",
    #           secrets_manager_oracle_asm_secret_id: "String",
    #           secrets_manager_oracle_asm_access_role_arn: "String",
    #           secrets_manager_security_db_encryption_secret_id: "String",
    #           secrets_manager_security_db_encryption_access_role_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         microsoft_sql_server_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         doc_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String"
    #         },
    #         maria_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         ibm_db2_luw_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         ibm_db2z_os_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         mongo_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           auth_type: "no" # One of: ["no", "password"],
    #           auth_source: "String",
    #           auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeleteDataProviderResponse]
    def delete_data_provider(params = {}, options = {})
      request = build_request(:delete_data_provider, params)
      request.send_request(options)
    end

    # <p>Deletes the specified endpoint.</p>
    #          <note>
    #             <p>All tasks associated with the endpoint must be deleted before you can delete the
    #             endpoint.</p>
    #          </note>
    #          <p></p>
    # @param [Hash, Types::DeleteEndpointMessage] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    # @example Delete Endpoint
    #   # Deletes the specified endpoint. All tasks associated with the endpoint must be deleted before you can delete the endpoint.
    #   params = {
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM"
    #   }
    #   options = {}
    #   response = client.delete_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       username: "username",
    #       status: "active",
    #       endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM",
    #       server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com",
    #       endpoint_type: source,
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
    #       engine_name: "mysql",
    #       endpoint_identifier: "test-endpoint-1",
    #       port: 3306
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       endpoint_identifier: "String",
    #       endpoint_type: "source" # One of: ["source", "target"],
    #       engine_name: "String",
    #       engine_display_name: "String",
    #       username: "String",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       extra_connection_attributes: "String",
    #       status: "String",
    #       kms_key_id: "String",
    #       endpoint_arn: "String",
    #       certificate_arn: "String",
    #       ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       external_id: "String",
    #       dynamo_db_settings: {
    #         service_access_role_arn: "String", # required
    #       },
    #       s3_settings: {
    #         service_access_role_arn: "String",
    #         external_table_definition: "String",
    #         csv_row_delimiter: "String",
    #         csv_delimiter: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         compression_type: "none" # One of: ["none", "gzip"],
    #         encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #         server_side_encryption_kms_key_id: "String",
    #         data_format: "csv" # One of: ["csv", "parquet"],
    #         encoding_type: "plain" # One of: ["plain", "plain-dictionary", "rle-dictionary"],
    #         dict_page_size_limit: 1,
    #         row_group_length: 1,
    #         data_page_size: 1,
    #         parquet_version: "parquet-1-0" # One of: ["parquet-1-0", "parquet-2-0"],
    #         enable_statistics: false,
    #         include_op_for_full_load: false,
    #         cdc_inserts_only: false,
    #         timestamp_column_name: "String",
    #         parquet_timestamp_in_millisecond: false,
    #         cdc_inserts_and_updates: false,
    #         date_partition_enabled: false,
    #         date_partition_sequence: "YYYYMMDD" # One of: ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"],
    #         date_partition_delimiter: "SLASH" # One of: ["SLASH", "UNDERSCORE", "DASH", "NONE"],
    #         use_csv_no_sup_value: false,
    #         csv_no_sup_value: "String",
    #         preserve_transactions: false,
    #         cdc_path: "String",
    #         use_task_start_time_for_full_load_timestamp: false,
    #         canned_acl_for_objects: "none" # One of: ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"],
    #         add_column_name: false,
    #         cdc_max_batch_interval: 1,
    #         cdc_min_file_size: 1,
    #         csv_null_value: "String",
    #         ignore_header_rows: 1,
    #         max_file_size: 1,
    #         rfc4180: false,
    #         date_partition_timezone: "String",
    #         add_trailing_padding_character: false,
    #         expected_bucket_owner: "String",
    #         glue_catalog_generation: false
    #       },
    #       dms_transfer_settings: {
    #         service_access_role_arn: "String",
    #         bucket_name: "String"
    #       },
    #       mongo_db_settings: {
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         auth_type: "no" # One of: ["no", "password"],
    #         auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"],
    #         nesting_level: "none" # One of: ["none", "one"],
    #         extract_doc_id: "String",
    #         docs_to_investigate: "String",
    #         auth_source: "String",
    #         kms_key_id: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         use_update_look_up: false,
    #         replicate_shard_collections: false
    #       },
    #       kinesis_settings: {
    #         stream_arn: "String",
    #         message_format: "json" # One of: ["json", "json-unformatted"],
    #         service_access_role_arn: "String",
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         include_null_and_empty: false,
    #         no_hex_prefix: false,
    #         use_large_integer_value: false
    #       },
    #       kafka_settings: {
    #         broker: "String",
    #         topic: "String",
    #         message_format: "json" # One of: ["json", "json-unformatted"],
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         message_max_bytes: 1,
    #         include_null_and_empty: false,
    #         security_protocol: "plaintext" # One of: ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"],
    #         ssl_client_certificate_arn: "String",
    #         ssl_client_key_arn: "String",
    #         ssl_client_key_password: "SecretString",
    #         ssl_ca_certificate_arn: "String",
    #         sasl_username: "String",
    #         sasl_password: "SecretString",
    #         no_hex_prefix: false,
    #         sasl_mechanism: "scram-sha-512" # One of: ["scram-sha-512", "plain"],
    #         ssl_endpoint_identification_algorithm: "none" # One of: ["none", "https"],
    #         use_large_integer_value: false
    #       },
    #       elasticsearch_settings: {
    #         service_access_role_arn: "String", # required
    #         endpoint_uri: "String", # required
    #         full_load_error_percentage: 1,
    #         error_retry_duration: 1,
    #         use_new_mapping_type: false
    #       },
    #       neptune_settings: {
    #         service_access_role_arn: "String",
    #         s3_bucket_name: "String", # required
    #         s3_bucket_folder: "String", # required
    #         error_retry_duration: 1,
    #         max_file_size: 1,
    #         max_retry_count: 1,
    #         iam_auth_enabled: false
    #       },
    #       redshift_settings: {
    #         accept_any_date: false,
    #         after_connect_script: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         case_sensitive_names: false,
    #         comp_update: false,
    #         connection_timeout: 1,
    #         database_name: "String",
    #         date_format: "String",
    #         empty_as_null: false,
    #         encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #         explicit_ids: false,
    #         file_transfer_upload_streams: 1,
    #         load_timeout: 1,
    #         max_file_size: 1,
    #         password: "SecretString",
    #         port: 1,
    #         remove_quotes: false,
    #         replace_invalid_chars: "String",
    #         replace_chars: "String",
    #         server_name: "String",
    #         service_access_role_arn: "String",
    #         server_side_encryption_kms_key_id: "String",
    #         time_format: "String",
    #         trim_blanks: false,
    #         truncate_columns: false,
    #         username: "String",
    #         write_buffer_size: 1,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         map_boolean_as_boolean: false
    #       },
    #       postgre_sql_settings: {
    #         after_connect_script: "String",
    #         capture_ddls: false,
    #         max_file_size: 1,
    #         database_name: "String",
    #         ddl_artifacts_schema: "String",
    #         execute_timeout: 1,
    #         fail_tasks_on_lob_truncation: false,
    #         heartbeat_enable: false,
    #         heartbeat_schema: "String",
    #         heartbeat_frequency: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #         slot_name: "String",
    #         plugin_name: "no-preference" # One of: ["no-preference", "test-decoding", "pglogical"],
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         trim_space_in_char: false,
    #         map_boolean_as_boolean: false,
    #         map_jsonb_as_clob: false,
    #         map_long_varchar_as: "wstring" # One of: ["wstring", "clob", "nclob"],
    #         database_mode: "default" # One of: ["default", "babelfish"],
    #         babelfish_database_name: "String",
    #         disable_unicode_source_filter: false,
    #         service_access_role_arn: "String",
    #         authentication_method: "password" # One of: ["password", "iam"]
    #       },
    #       my_sql_settings: {
    #         after_connect_script: "String",
    #         clean_source_metadata_on_mismatch: false,
    #         database_name: "String",
    #         events_poll_interval: 1,
    #         target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #         max_file_size: 1,
    #         parallel_load_threads: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         server_timezone: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         execute_timeout: 1,
    #         service_access_role_arn: "String",
    #         authentication_method: "password" # One of: ["password", "iam"]
    #       },
    #       oracle_settings: {
    #         add_supplemental_logging: false,
    #         archived_log_dest_id: 1,
    #         additional_archived_log_dest_id: 1,
    #         extra_archived_log_dest_ids: [1],
    #         allow_select_nested_tables: false,
    #         parallel_asm_read_threads: 1,
    #         read_ahead_blocks: 1,
    #         access_alternate_directly: false,
    #         use_alternate_folder_for_online: false,
    #         oracle_path_prefix: "String",
    #         use_path_prefix: "String",
    #         replace_path_prefix: false,
    #         enable_homogenous_tablespace: false,
    #         direct_path_no_log: false,
    #         archived_logs_only: false,
    #         asm_password: "SecretString",
    #         asm_server: "String",
    #         asm_user: "String",
    #         char_length_semantics: "default" # One of: ["default", "char", "byte"],
    #         database_name: "String",
    #         direct_path_parallel_load: false,
    #         fail_tasks_on_lob_truncation: false,
    #         number_datatype_scale: 1,
    #         password: "SecretString",
    #         port: 1,
    #         read_table_space_name: false,
    #         retry_interval: 1,
    #         security_db_encryption: "SecretString",
    #         security_db_encryption_name: "String",
    #         server_name: "String",
    #         spatial_data_option_to_geo_json_function_name: "String",
    #         standby_delay_time: 1,
    #         username: "String",
    #         use_b_file: false,
    #         use_direct_path_full_load: false,
    #         use_logminer_reader: false,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         secrets_manager_oracle_asm_access_role_arn: "String",
    #         secrets_manager_oracle_asm_secret_id: "String",
    #         trim_space_in_char: false,
    #         convert_timestamp_with_zone_to_utc: false,
    #         open_transaction_window: 1,
    #         authentication_method: "password" # One of: ["password", "kerberos"]
    #       },
    #       sybase_settings: {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String"
    #       },
    #       microsoft_sql_server_settings: {
    #         port: 1,
    #         bcp_packet_size: 1,
    #         database_name: "String",
    #         control_tables_file_group: "String",
    #         password: "SecretString",
    #         query_single_always_on_node: false,
    #         read_backup_only: false,
    #         safeguard_policy: "rely-on-sql-server-replication-agent" # One of: ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"],
    #         server_name: "String",
    #         username: "String",
    #         use_bcp_full_load: false,
    #         use_third_party_backup_device: false,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         trim_space_in_char: false,
    #         tlog_access_mode: "BackupOnly" # One of: ["BackupOnly", "PreferBackup", "PreferTlog", "TlogOnly"],
    #         force_lob_lookup: false,
    #         authentication_method: "password" # One of: ["password", "kerberos"]
    #       },
    #       ibm_db2_settings: {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         set_data_capture_changes: false,
    #         current_lsn: "String",
    #         max_k_bytes_per_read: 1,
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         load_timeout: 1,
    #         write_buffer_size: 1,
    #         max_file_size: 1,
    #         keep_csv_files: false
    #       },
    #       doc_db_settings: {
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         nesting_level: "none" # One of: ["none", "one"],
    #         extract_doc_id: false,
    #         docs_to_investigate: 1,
    #         kms_key_id: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         use_update_look_up: false,
    #         replicate_shard_collections: false
    #       },
    #       redis_settings: {
    #         server_name: "String", # required
    #         port: 1, # required
    #         ssl_security_protocol: "plaintext" # One of: ["plaintext", "ssl-encryption"],
    #         auth_type: "none" # One of: ["none", "auth-role", "auth-token"],
    #         auth_user_name: "String",
    #         auth_password: "SecretString",
    #         ssl_ca_certificate_arn: "String"
    #       },
    #       gcp_my_sql_settings: {
    #         after_connect_script: "String",
    #         clean_source_metadata_on_mismatch: false,
    #         database_name: "String",
    #         events_poll_interval: 1,
    #         target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #         max_file_size: 1,
    #         parallel_load_threads: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         server_timezone: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String"
    #       },
    #       timestream_settings: {
    #         database_name: "String", # required
    #         memory_duration: 1, # required
    #         magnetic_duration: 1, # required
    #         cdc_inserts_and_updates: false,
    #         enable_magnetic_store_writes: false
    #       }
    #     }
    #   }
    # @return [Types::DeleteEndpointResponse]
    def delete_endpoint(params = {}, options = {})
      request = build_request(:delete_endpoint, params)
      request.send_request(options)
    end

    # <p> Deletes an DMS event subscription. </p>
    # @param [Hash, Types::DeleteEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event notification subscription to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false
    #     }
    #   }
    # @return [Types::DeleteEventSubscriptionResponse]
    def delete_event_subscription(params = {}, options = {})
      request = build_request(:delete_event_subscription, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Deletes the specified Fleet Advisor collector.</p>
    # @param [Hash, Types::DeleteCollectorRequest] params
    # @option params [String] :collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collector_referenced_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_fleet_advisor_collector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_fleet_advisor_collector(params = {}, options = {})
      request = build_request(:delete_fleet_advisor_collector, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Deletes the specified Fleet Advisor collector databases.</p>
    # @param [Hash, Types::DeleteFleetAdvisorDatabasesRequest] params
    # @option params [Array<String>] :database_ids
    #   <p>The IDs of the Fleet Advisor collector databases to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.delete_fleet_advisor_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_ids: ["String"]
    #   }
    # @return [Types::DeleteFleetAdvisorDatabasesResponse]
    def delete_fleet_advisor_databases(params = {}, options = {})
      request = build_request(:delete_fleet_advisor_databases, params)
      request.send_request(options)
    end

    # <p>Deletes the specified instance profile.</p>
    #          <note>
    #             <p>All migration projects associated with the instance profile must be deleted or
    #             modified before you can delete the instance profile.</p>
    #          </note>
    # @param [Hash, Types::DeleteInstanceProfileMessage] params
    # @option params [String] :instance_profile_identifier
    #   <p>The identifier of the instance profile to delete.</p>
    # @example Delete Instance Profile
    #   # Deletes the specified instance profile.
    #   params = {
    #     instance_profile_identifier: "arn:aws:dms:us-east-1:012345678901:instance-profile:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #   }
    #   options = {}
    #   response = client.delete_instance_profile(params, options)
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       subnet_group_identifier: "public-subnets",
    #       vpc_security_groups: [
    #         "sg-0123456"
    #       ],
    #       publicly_accessible: true,
    #       kms_key_arn: "arn:aws:kms:us-east-1:012345678901:key/01234567-89ab-cdef-0123-456789abcdef",
    #       instance_profile_creation_time: Time.parse("2022-12-16T09:44:43.543246Z"),
    #       instance_profile_name: "my-instance-profile",
    #       instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:my-instance-profile"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       instance_profile_arn: "String",
    #       availability_zone: "String",
    #       kms_key_arn: "String",
    #       publicly_accessible: false,
    #       network_type: "String",
    #       instance_profile_name: "String",
    #       description: "String",
    #       instance_profile_creation_time: Time.now,
    #       subnet_group_identifier: "String",
    #       vpc_security_groups: ["String"]
    #     }
    #   }
    # @return [Types::DeleteInstanceProfileResponse]
    def delete_instance_profile(params = {}, options = {})
      request = build_request(:delete_instance_profile, params)
      request.send_request(options)
    end

    # <p>Deletes the specified migration project.</p>
    #          <note>
    #             <p>The migration project must be closed before you can delete it.</p>
    #          </note>
    # @param [Hash, Types::DeleteMigrationProjectMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) of the migration project to delete.</p>
    # @example Delete Migration Project
    #   # Deletes the specified migration project.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #   }
    #   options = {}
    #   response = client.delete_migration_project(params, options)
    #   response.to_h #=>
    #   {
    #     migration_project: {
    #       schema_conversion_application_attributes: {
    #         s3_bucket_path: "my-s3-bucket/my_folder",
    #         s3_bucket_role_arn: "arn:aws:iam::012345678901:role/my-s3role"
    #       },
    #       source_data_provider_descriptors: [
    #         {
    #           secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/my-access-role",
    #           secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myuser/ALL.SOURCE.ORACLE_12-0123456",
    #           data_provider_name: "all-source-oracle-12",
    #           data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #         }
    #       ],
    #       migration_project_creation_time: Time.parse("2023-04-19T11:45:15.805253Z"),
    #       instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #       migration_project_name: "my-migration-project",
    #       migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #       instance_profile_name: "my-instance-profile",
    #       target_data_provider_descriptors: [
    #         {
    #           secrets_manager_access_role_arn: "arn:aws:iam::437223687239:role/dmytbon-admin-access",
    #           secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myuser/TARGET.postgresql-0123456",
    #           data_provider_name: "sde-obilyns-dataprovider-3",
    #           data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_migration_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_project: {
    #       migration_project_name: "String",
    #       migration_project_arn: "String",
    #       migration_project_creation_time: Time.now,
    #       source_data_provider_descriptors: [
    #         {
    #           secrets_manager_secret_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           data_provider_name: "String",
    #           data_provider_arn: "String"
    #         }
    #       ],
    #       target_data_provider_descriptors: [
    #         {
    #           secrets_manager_secret_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           data_provider_name: "String",
    #           data_provider_arn: "String"
    #         }
    #       ],
    #       instance_profile_arn: "String",
    #       instance_profile_name: "String",
    #       transformation_rules: "String",
    #       description: "String",
    #       schema_conversion_application_attributes: {
    #         s3_bucket_path: "String",
    #         s3_bucket_role_arn: "String"
    #       }
    #     }
    #   }
    # @return [Types::DeleteMigrationProjectResponse]
    def delete_migration_project(params = {}, options = {})
      request = build_request(:delete_migration_project, params)
      request.send_request(options)
    end

    # <p>Deletes an DMS Serverless replication configuration. This effectively deprovisions any
    #          and all replications that use this configuration. You can't delete the configuration for an
    #          DMS Serverless replication that is ongoing. You can delete the configuration when the
    #          replication is in a non-RUNNING and non-STARTING state.</p>
    # @param [Hash, Types::DeleteReplicationConfigMessage] params
    # @option params [String] :replication_config_arn
    #   <p>The replication config to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_config_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_config: {
    #       replication_config_identifier: "String",
    #       replication_config_arn: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       compute_config: {
    #         availability_zone: "String",
    #         dns_name_servers: "String",
    #         kms_key_id: "String",
    #         max_capacity_units: 1,
    #         min_capacity_units: 1,
    #         multi_az: false,
    #         preferred_maintenance_window: "String",
    #         replication_subnet_group_id: "String",
    #         vpc_security_group_ids: ["String"]
    #       },
    #       replication_settings: "String",
    #       supplemental_settings: "String",
    #       table_mappings: "String",
    #       replication_config_create_time: Time.now,
    #       replication_config_update_time: Time.now
    #     }
    #   }
    # @return [Types::DeleteReplicationConfigResponse]
    def delete_replication_config(params = {}, options = {})
      request = build_request(:delete_replication_config, params)
      request.send_request(options)
    end

    # <p>Deletes the specified replication instance.</p>
    #          <note>
    #             <p>You must delete any migration tasks that are associated with the replication instance
    #             before you can delete it.</p>
    #          </note>
    #          <p></p>
    # @param [Hash, Types::DeleteReplicationInstanceMessage] params
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>
    # @example Delete Replication Instance
    #   # Deletes the specified replication instance. You must delete any migration tasks that are associated with the replication instance before you can delete it.
    #   params = {
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
    #   }
    #   options = {}
    #   response = client.delete_replication_instance(params, options)
    #   response.to_h #=>
    #   {
    #     replication_instance: {
    #       publicly_accessible: true,
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #       replication_instance_class: "dms.t2.micro",
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default",
    #         subnets: [
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-f6dd91af",
    #             subnet_availability_zone: {
    #               name: "us-east-1d"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-3605751d",
    #             subnet_availability_zone: {
    #               name: "us-east-1b"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-c2daefb5",
    #             subnet_availability_zone: {
    #               name: "us-east-1c"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-85e90cb8",
    #             subnet_availability_zone: {
    #               name: "us-east-1e"
    #             }
    #           }
    #         ],
    #         vpc_id: "vpc-6741a603",
    #         subnet_group_status: "Complete",
    #         replication_subnet_group_identifier: "default"
    #       },
    #       auto_minor_version_upgrade: true,
    #       replication_instance_status: "creating",
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
    #       allocated_storage: 5,
    #       engine_version: "1.5.0",
    #       replication_instance_identifier: "test-rep-1",
    #       preferred_maintenance_window: "sun:06:00-sun:14:00",
    #       pending_modified_values: {
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_instance: {
    #       replication_instance_identifier: "String",
    #       replication_instance_class: "ReplicationInstanceClass",
    #       replication_instance_status: "String",
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       replication_subnet_group: {
    #         replication_subnet_group_identifier: "String",
    #         replication_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         supported_network_types: ["String"]
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         replication_instance_class: "ReplicationInstanceClass",
    #         allocated_storage: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         network_type: "String"
    #       },
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       kms_key_id: "String",
    #       replication_instance_arn: "String",
    #       replication_instance_public_ip_address: "String",
    #       replication_instance_private_ip_address: "String",
    #       replication_instance_public_ip_addresses: ["String"],
    #       replication_instance_private_ip_addresses: ["String"],
    #       replication_instance_ipv6_addresses: ["String"],
    #       publicly_accessible: false,
    #       secondary_availability_zone: "String",
    #       free_until: Time.now,
    #       dns_name_servers: "String",
    #       network_type: "String",
    #       kerberos_authentication_settings: {
    #         key_cache_secret_id: "String",
    #         key_cache_secret_iam_arn: "String",
    #         krb5_file_contents: "String"
    #       }
    #     }
    #   }
    # @return [Types::DeleteReplicationInstanceResponse]
    def delete_replication_instance(params = {}, options = {})
      request = build_request(:delete_replication_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a subnet group.</p>
    # @param [Hash, Types::DeleteReplicationSubnetGroupMessage] params
    # @option params [String] :replication_subnet_group_identifier
    #   <p>The subnet group name of the replication instance.</p>
    # @example Delete Replication Subnet Group
    #   # Deletes a replication subnet group.
    #   params = {
    #     replication_subnet_group_identifier: "us-west-2ab-vpc-215ds366"
    #   }
    #   options = {}
    #   response = client.delete_replication_subnet_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_subnet_group_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReplicationSubnetGroupResponse]
    def delete_replication_subnet_group(params = {}, options = {})
      request = build_request(:delete_replication_subnet_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified replication task.</p>
    # @param [Hash, Types::DeleteReplicationTaskMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>
    # @example Delete Replication Task
    #   # Deletes the specified replication task.
    #   params = {
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
    #   }
    #   options = {}
    #   response = client.delete_replication_task(params, options)
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
    #       replication_task_identifier: "task1",
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #       table_mappings: "file://mappingfile.json",
    #       status: "creating",
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"),
    #       migration_type: full-load,
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       replication_task_identifier: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       table_mappings: "String",
    #       replication_task_settings: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       stop_reason: "String",
    #       replication_task_creation_date: Time.now,
    #       replication_task_start_date: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_task_arn: "String",
    #       replication_task_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       task_data: "String",
    #       target_replication_instance_arn: "String"
    #     }
    #   }
    # @return [Types::DeleteReplicationTaskResponse]
    def delete_replication_task(params = {}, options = {})
      request = build_request(:delete_replication_task, params)
      request.send_request(options)
    end

    # <p>Deletes the record of a single premigration assessment run.</p>
    #          <p>This operation removes all metadata that DMS maintains about this assessment run.
    #          However, the operation leaves untouched all information about this assessment run that is
    #          stored in your Amazon S3 bucket.</p>
    # @param [Hash, Types::DeleteReplicationTaskAssessmentRunMessage] params
    # @option params [String] :replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_assessment_run_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_task_assessment_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task_assessment_run: {
    #       replication_task_assessment_run_arn: "String",
    #       replication_task_arn: "String",
    #       status: "String",
    #       replication_task_assessment_run_creation_date: Time.now,
    #       assessment_progress: {
    #         individual_assessment_count: 1,
    #         individual_assessment_completed_count: 1
    #       },
    #       last_failure_message: "String",
    #       service_access_role_arn: "String",
    #       result_location_bucket: "String",
    #       result_location_folder: "String",
    #       result_encryption_mode: "String",
    #       result_kms_key_arn: "String",
    #       assessment_run_name: "String",
    #       is_latest_task_assessment_run: false,
    #       result_statistic: {
    #         passed: 1,
    #         failed: 1,
    #         error: 1,
    #         warning: 1,
    #         cancelled: 1,
    #         skipped: 1
    #       }
    #     }
    #   }
    # @return [Types::DeleteReplicationTaskAssessmentRunResponse]
    def delete_replication_task_assessment_run(params = {}, options = {})
      request = build_request(:delete_replication_task_assessment_run, params)
      request.send_request(options)
    end

    # <p>Lists all of the DMS attributes for a customer account. These attributes include DMS
    #          quotas for the account and a unique account identifier in a particular DMS region. DMS
    #          quotas include a list of resource quotas supported by the account, such as the number of
    #          replication instances allowed. The description for each resource quota, includes the quota
    #          name, current usage toward that quota, and the quota's maximum value. DMS uses the unique
    #          account identifier to name each artifact used by DMS in the given region.</p>
    #          <p>This command does not take any parameters.</p>
    # @param [Hash, Types::DescribeAccountAttributesMessage] params
    # @example Describe acount attributes
    #   # Lists all of the AWS DMS attributes for a customer account. The attributes include AWS DMS quotas for the account, such as the number of replication instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value. This operation does not take any parameters.
    #   params = {}
    #   options = {}
    #   response = client.describe_account_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     account_quotas: [
    #       {
    #         max: 20,
    #         account_quota_name: "ReplicationInstances",
    #         used: 0
    #       },
    #       {
    #         max: 20,
    #         account_quota_name: "AllocatedStorage",
    #         used: 0
    #       },
    #       {
    #         max: 20,
    #         account_quota_name: "Endpoints",
    #         used: 0
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_quotas: [
    #       {
    #         account_quota_name: "String",
    #         used: 1,
    #         max: 1
    #       }
    #     ],
    #     unique_account_identifier: "String"
    #   }
    # @return [Types::DescribeAccountAttributesResponse]
    def describe_account_attributes(params = {}, options = {})
      request = build_request(:describe_account_attributes, params)
      request.send_request(options)
    end

    # <p>Provides a list of individual assessments that you can specify for a new premigration
    #          assessment run, given one or more parameters.</p>
    #          <p>If you specify an existing migration task, this operation provides the default
    #          individual assessments you can specify for that task. Otherwise, the specified parameters
    #          model elements of a possible migration task on which to base a premigration assessment
    #          run.</p>
    #          <p>To use these migration task modeling parameters, you must specify an existing
    #          replication instance, a source database engine, a target database engine, and a migration
    #          type. This combination of parameters potentially limits the default individual assessments
    #          available for an assessment run created for a corresponding migration task.</p>
    #          <p>If you specify no parameters, this operation provides a list of all possible individual
    #          assessments that you can specify for an assessment run. If you specify any one of the task
    #          modeling parameters, you must specify all of them or the operation cannot provide a list of
    #          individual assessments. The only parameter that you can specify alone is for an existing
    #          migration task. The specified task definition then determines the default list of
    #          individual assessments that you can specify in an assessment run for the task.</p>
    # @param [Hash, Types::DescribeApplicableIndividualAssessmentsMessage] params
    # @option params [String] :replication_task_arn
    #   <p>Amazon Resource Name (ARN) of a migration task on which you want to base the default
    #            list of individual assessments.</p>
    # @option params [String] :replication_instance_arn
    #   <p>ARN of a replication instance on which you want to base the default list of individual
    #            assessments.</p>
    # @option params [String] :replication_config_arn
    #   <p>Amazon Resource Name (ARN) of a serverless replication on which you want to base the default
    #            list of individual assessments.</p>
    # @option params [String] :source_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a
    #            source.</p>
    # @option params [String] :target_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a
    #            target.</p>
    # @option params [String] :migration_type
    #   <p>Name of the migration type that each provided individual assessment must support.</p>
    # @option params [Integer] :max_records
    #   <p>Maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    # @option params [String] :marker
    #   <p>Optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String",
    #     replication_instance_arn: "String",
    #     replication_config_arn: "String",
    #     source_engine_name: "String",
    #     target_engine_name: "String",
    #     migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_applicable_individual_assessments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     individual_assessment_names: ["String"],
    #     marker: "String"
    #   }
    # @return [Types::DescribeApplicableIndividualAssessmentsResponse]
    def describe_applicable_individual_assessments(params = {}, options = {})
      request = build_request(:describe_applicable_individual_assessments, params)
      request.send_request(options)
    end

    # <p>Provides a description of the certificate.</p>
    # @param [Hash, Types::DescribeCertificatesMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the certificates described in the form of key-value pairs. Valid
    #            values are <code>certificate-arn</code> and <code>certificate-id</code>.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 10</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe certificates
    #   # Provides a description of the certificate.
    #   params = {
    #     filters: [
    #       {
    #         name: "string",
    #         values: [
    #           "string",
    #           "string"
    #         ]
    #       }
    #     ],
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_certificates(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     certificates: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     certificates: [
    #       {
    #         certificate_identifier: "String",
    #         certificate_creation_date: Time.now,
    #         certificate_pem: "String",
    #         certificate_wallet: "data",
    #         certificate_arn: "String",
    #         certificate_owner: "String",
    #         valid_from_date: Time.now,
    #         valid_to_date: Time.now,
    #         signing_algorithm: "String",
    #         key_length: 1
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCertificatesResponse]
    def describe_certificates(params = {}, options = {})
      request = build_request(:describe_certificates, params)
      request.send_request(options)
    end

    # <p>Describes the status of the connections that have been made between the replication
    #          instance and an endpoint. Connections are created when you test an endpoint.</p>
    # @param [Hash, Types::DescribeConnectionsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filters applied to the connection.</p>
    #            <p>Valid filter names: endpoint-arn | replication-instance-arn</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe connections
    #   # Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
    #   params = {
    #     filters: [
    #       {
    #         name: "string",
    #         values: [
    #           "string",
    #           "string"
    #         ]
    #       }
    #     ],
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_connections(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     connections: [
    #       {
    #         status: "successful",
    #         replication_instance_identifier: "test",
    #         endpoint_arn: "arn:aws:dms:us-east-arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
    #         endpoint_identifier: "testsrc1",
    #         replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     connections: [
    #       {
    #         replication_instance_arn: "String",
    #         endpoint_arn: "String",
    #         status: "String",
    #         last_failure_message: "String",
    #         endpoint_identifier: "String",
    #         replication_instance_identifier: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConnectionsResponse]
    def describe_connections(params = {}, options = {})
      request = build_request(:describe_connections, params)
      request.send_request(options)
    end

    # <p>Returns configuration parameters for a schema conversion project.</p>
    # @param [Hash, Types::DescribeConversionConfigurationMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) for the schema conversion project to describe.</p>
    # @example Describe Conversion Configuration
    #   # Returns configuration parameters for a schema conversion project.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #   }
    #   options = {}
    #   response = client.describe_conversion_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     conversion_configuration: "{\"Common project settings\":{\"ShowSeverityLevelInSql\":\"CRITICAL\"},\"ORACLE_TO_POSTGRESQL\" : {\"ToTimeZone\":false,\"LastDayBuiltinFunctionOracle\":false,   \"NextDayBuiltinFunctionOracle\":false,\"ConvertProceduresToFunction\":false,\"NvlBuiltinFunctionOracle\":false,\"DbmsAssertBuiltinFunctionOracle\":false}}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #   }
    #   options = {}
    #   response = client.describe_conversion_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_project_identifier: "String",
    #     conversion_configuration: "String"
    #   }
    # @return [Types::DescribeConversionConfigurationResponse]
    def describe_conversion_configuration(params = {}, options = {})
      request = build_request(:describe_conversion_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about data migrations.</p>
    # @param [Hash, Types::DescribeDataMigrationsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the data migrations.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @option params [Boolean] :without_settings
    #   <p>An option to set to avoid returning information about settings. Use this to reduce
    #            overhead when setting information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    # @option params [Boolean] :without_statistics
    #   <p>An option to set to avoid returning information about statistics. Use this to reduce
    #            overhead when statistics information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "Marker",
    #     without_settings: false,
    #     without_statistics: false
    #   }
    #   options = {}
    #   response = client.describe_data_migrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_migrations: [
    #       {
    #         data_migration_name: "String",
    #         data_migration_arn: "String",
    #         data_migration_create_time: Time.now,
    #         data_migration_start_time: Time.now,
    #         data_migration_end_time: Time.now,
    #         service_access_role_arn: "String",
    #         migration_project_arn: "String",
    #         data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #         data_migration_settings: {
    #           number_of_jobs: 1,
    #           cloudwatch_logs_enabled: false,
    #           selection_rules: "SecretString"
    #         },
    #         source_data_settings: [
    #           {
    #             cdc_start_position: "String",
    #             cdc_start_time: Time.now,
    #             cdc_stop_time: Time.now,
    #             slot_name: "String"
    #           }
    #         ],
    #         target_data_settings: [
    #           {
    #             table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #           }
    #         ],
    #         data_migration_statistics: {
    #           tables_loaded: 1,
    #           elapsed_time_millis: 1,
    #           tables_loading: 1,
    #           full_load_percentage: 1,
    #           cdc_latency: 1,
    #           tables_queued: 1,
    #           tables_errored: 1,
    #           start_time: Time.now,
    #           stop_time: Time.now
    #         },
    #         data_migration_status: "String",
    #         public_ip_addresses: ["String"],
    #         data_migration_cidr_blocks: ["String"],
    #         last_failure_message: "String",
    #         stop_reason: "String"
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::DescribeDataMigrationsResponse]
    def describe_data_migrations(params = {}, options = {})
      request = build_request(:describe_data_migrations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of data providers for your account in the current
    #          region.</p>
    # @param [Hash, Types::DescribeDataProvidersMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the data providers described in the form of key-value pairs.</p>
    #            <p>Valid filter names and values: data-provider-identifier, data provider arn or name</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @example Describe Data Providers
    #   
    #   params = {
    #     filters: [
    #       {
    #         name: "data-provider-identifier",
    #         values: [
    #           "arn:aws:dms:us-east-1:012345678901:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #         ]
    #       }
    #     ],
    #     max_records: 20,
    #     marker: "EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #   }
    #   options = {}
    #   response = client.describe_data_providers(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #     data_providers: [
    #       {
    #         engine: "postgres",
    #         data_provider_creation_time: Time.parse("2023-05-12T10:50:41.988561Z"),
    #         data_provider_name: "my-target-data-provider",
    #         data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:my-target-data-provider",
    #         settings: {
    #     "PostgreSqlSettings" => {
    #       "SslMode" => none,
    #       "ServerName" => postrgesql.0a1b2c3d4e5f.us-east-1.rds.amazonaws.com,
    #       "Port" => 5432,
    #       "DatabaseName" => target
    #     }
    #   }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_data_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     data_providers: [
    #       {
    #         data_provider_name: "String",
    #         data_provider_arn: "String",
    #         data_provider_creation_time: Time.now,
    #         description: "String",
    #         engine: "String",
    #         virtual: false,
    #         settings: {
    #           # One of:
    #           redshift_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           postgre_sql_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           my_sql_settings: {
    #             server_name: "String",
    #             port: 1,
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           oracle_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             asm_server: "String",
    #             secrets_manager_oracle_asm_secret_id: "String",
    #             secrets_manager_oracle_asm_access_role_arn: "String",
    #             secrets_manager_security_db_encryption_secret_id: "String",
    #             secrets_manager_security_db_encryption_access_role_arn: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           microsoft_sql_server_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           doc_db_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String"
    #           },
    #           maria_db_settings: {
    #             server_name: "String",
    #             port: 1,
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           ibm_db2_luw_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           ibm_db2z_os_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             s3_path: "String",
    #             s3_access_role_arn: "String"
    #           },
    #           mongo_db_settings: {
    #             server_name: "String",
    #             port: 1,
    #             database_name: "String",
    #             ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #             certificate_arn: "String",
    #             auth_type: "no" # One of: ["no", "password"],
    #             auth_source: "String",
    #             auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDataProvidersResponse]
    def describe_data_providers(params = {}, options = {})
      request = build_request(:describe_data_providers, params)
      request.send_request(options)
    end

    # <p>Returns information about the possible endpoint settings available when you create an
    #          endpoint for a specific database engine.</p>
    # @param [Hash, Types::DescribeEndpointSettingsMessage] params
    # @option params [String] :engine_name
    #   <p>The database engine used for your source or target endpoint.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine_name: "String", # required
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_endpoint_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     endpoint_settings: [
    #       {
    #         name: "String",
    #         type: "string" # One of: ["string", "boolean", "integer", "enum"],
    #         enum_values: ["String"],
    #         sensitive: false,
    #         units: "String",
    #         applicability: "String",
    #         int_value_min: 1,
    #         int_value_max: 1,
    #         default_value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEndpointSettingsResponse]
    def describe_endpoint_settings(params = {}, options = {})
      request = build_request(:describe_endpoint_settings, params)
      request.send_request(options)
    end

    # <p>Returns information about the type of endpoints available.</p>
    # @param [Hash, Types::DescribeEndpointTypesMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the endpoint types.</p>
    #            <p>Valid filter names: engine-name | endpoint-type</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe endpoint types
    #   # Returns information about the type of endpoints available.
    #   params = {
    #     filters: [
    #       {
    #         name: "string",
    #         values: [
    #           "string",
    #           "string"
    #         ]
    #       }
    #     ],
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_endpoint_types(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     supported_endpoint_types: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_endpoint_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     supported_endpoint_types: [
    #       {
    #         engine_name: "String",
    #         supports_cdc: false,
    #         endpoint_type: "source" # One of: ["source", "target"],
    #         replication_instance_engine_minimum_version: "String",
    #         engine_display_name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEndpointTypesResponse]
    def describe_endpoint_types(params = {}, options = {})
      request = build_request(:describe_endpoint_types, params)
      request.send_request(options)
    end

    # <p>Returns information about the endpoints for your account in the current region.</p>
    # @param [Hash, Types::DescribeEndpointsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the endpoints.</p>
    #            <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe endpoints
    #   # Returns information about the endpoints for your account in the current region.
    #   params = {
    #     filters: [
    #       {
    #         name: "string",
    #         values: [
    #           "string",
    #           "string"
    #         ]
    #       }
    #     ],
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_endpoints(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     endpoints: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     endpoints: [
    #       {
    #         endpoint_identifier: "String",
    #         endpoint_type: "source" # One of: ["source", "target"],
    #         engine_name: "String",
    #         engine_display_name: "String",
    #         username: "String",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         extra_connection_attributes: "String",
    #         status: "String",
    #         kms_key_id: "String",
    #         endpoint_arn: "String",
    #         certificate_arn: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         service_access_role_arn: "String",
    #         external_table_definition: "String",
    #         external_id: "String",
    #         dynamo_db_settings: {
    #           service_access_role_arn: "String", # required
    #         },
    #         s3_settings: {
    #           service_access_role_arn: "String",
    #           external_table_definition: "String",
    #           csv_row_delimiter: "String",
    #           csv_delimiter: "String",
    #           bucket_folder: "String",
    #           bucket_name: "String",
    #           compression_type: "none" # One of: ["none", "gzip"],
    #           encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #           server_side_encryption_kms_key_id: "String",
    #           data_format: "csv" # One of: ["csv", "parquet"],
    #           encoding_type: "plain" # One of: ["plain", "plain-dictionary", "rle-dictionary"],
    #           dict_page_size_limit: 1,
    #           row_group_length: 1,
    #           data_page_size: 1,
    #           parquet_version: "parquet-1-0" # One of: ["parquet-1-0", "parquet-2-0"],
    #           enable_statistics: false,
    #           include_op_for_full_load: false,
    #           cdc_inserts_only: false,
    #           timestamp_column_name: "String",
    #           parquet_timestamp_in_millisecond: false,
    #           cdc_inserts_and_updates: false,
    #           date_partition_enabled: false,
    #           date_partition_sequence: "YYYYMMDD" # One of: ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"],
    #           date_partition_delimiter: "SLASH" # One of: ["SLASH", "UNDERSCORE", "DASH", "NONE"],
    #           use_csv_no_sup_value: false,
    #           csv_no_sup_value: "String",
    #           preserve_transactions: false,
    #           cdc_path: "String",
    #           use_task_start_time_for_full_load_timestamp: false,
    #           canned_acl_for_objects: "none" # One of: ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"],
    #           add_column_name: false,
    #           cdc_max_batch_interval: 1,
    #           cdc_min_file_size: 1,
    #           csv_null_value: "String",
    #           ignore_header_rows: 1,
    #           max_file_size: 1,
    #           rfc4180: false,
    #           date_partition_timezone: "String",
    #           add_trailing_padding_character: false,
    #           expected_bucket_owner: "String",
    #           glue_catalog_generation: false
    #         },
    #         dms_transfer_settings: {
    #           service_access_role_arn: "String",
    #           bucket_name: "String"
    #         },
    #         mongo_db_settings: {
    #           username: "String",
    #           password: "SecretString",
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           auth_type: "no" # One of: ["no", "password"],
    #           auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"],
    #           nesting_level: "none" # One of: ["none", "one"],
    #           extract_doc_id: "String",
    #           docs_to_investigate: "String",
    #           auth_source: "String",
    #           kms_key_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           use_update_look_up: false,
    #           replicate_shard_collections: false
    #         },
    #         kinesis_settings: {
    #           stream_arn: "String",
    #           message_format: "json" # One of: ["json", "json-unformatted"],
    #           service_access_role_arn: "String",
    #           include_transaction_details: false,
    #           include_partition_value: false,
    #           partition_include_schema_table: false,
    #           include_table_alter_operations: false,
    #           include_control_details: false,
    #           include_null_and_empty: false,
    #           no_hex_prefix: false,
    #           use_large_integer_value: false
    #         },
    #         kafka_settings: {
    #           broker: "String",
    #           topic: "String",
    #           message_format: "json" # One of: ["json", "json-unformatted"],
    #           include_transaction_details: false,
    #           include_partition_value: false,
    #           partition_include_schema_table: false,
    #           include_table_alter_operations: false,
    #           include_control_details: false,
    #           message_max_bytes: 1,
    #           include_null_and_empty: false,
    #           security_protocol: "plaintext" # One of: ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"],
    #           ssl_client_certificate_arn: "String",
    #           ssl_client_key_arn: "String",
    #           ssl_client_key_password: "SecretString",
    #           ssl_ca_certificate_arn: "String",
    #           sasl_username: "String",
    #           sasl_password: "SecretString",
    #           no_hex_prefix: false,
    #           sasl_mechanism: "scram-sha-512" # One of: ["scram-sha-512", "plain"],
    #           ssl_endpoint_identification_algorithm: "none" # One of: ["none", "https"],
    #           use_large_integer_value: false
    #         },
    #         elasticsearch_settings: {
    #           service_access_role_arn: "String", # required
    #           endpoint_uri: "String", # required
    #           full_load_error_percentage: 1,
    #           error_retry_duration: 1,
    #           use_new_mapping_type: false
    #         },
    #         neptune_settings: {
    #           service_access_role_arn: "String",
    #           s3_bucket_name: "String", # required
    #           s3_bucket_folder: "String", # required
    #           error_retry_duration: 1,
    #           max_file_size: 1,
    #           max_retry_count: 1,
    #           iam_auth_enabled: false
    #         },
    #         redshift_settings: {
    #           accept_any_date: false,
    #           after_connect_script: "String",
    #           bucket_folder: "String",
    #           bucket_name: "String",
    #           case_sensitive_names: false,
    #           comp_update: false,
    #           connection_timeout: 1,
    #           database_name: "String",
    #           date_format: "String",
    #           empty_as_null: false,
    #           encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #           explicit_ids: false,
    #           file_transfer_upload_streams: 1,
    #           load_timeout: 1,
    #           max_file_size: 1,
    #           password: "SecretString",
    #           port: 1,
    #           remove_quotes: false,
    #           replace_invalid_chars: "String",
    #           replace_chars: "String",
    #           server_name: "String",
    #           service_access_role_arn: "String",
    #           server_side_encryption_kms_key_id: "String",
    #           time_format: "String",
    #           trim_blanks: false,
    #           truncate_columns: false,
    #           username: "String",
    #           write_buffer_size: 1,
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           map_boolean_as_boolean: false
    #         },
    #         postgre_sql_settings: {
    #           after_connect_script: "String",
    #           capture_ddls: false,
    #           max_file_size: 1,
    #           database_name: "String",
    #           ddl_artifacts_schema: "String",
    #           execute_timeout: 1,
    #           fail_tasks_on_lob_truncation: false,
    #           heartbeat_enable: false,
    #           heartbeat_schema: "String",
    #           heartbeat_frequency: 1,
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           username: "String",
    #           slot_name: "String",
    #           plugin_name: "no-preference" # One of: ["no-preference", "test-decoding", "pglogical"],
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           trim_space_in_char: false,
    #           map_boolean_as_boolean: false,
    #           map_jsonb_as_clob: false,
    #           map_long_varchar_as: "wstring" # One of: ["wstring", "clob", "nclob"],
    #           database_mode: "default" # One of: ["default", "babelfish"],
    #           babelfish_database_name: "String",
    #           disable_unicode_source_filter: false,
    #           service_access_role_arn: "String",
    #           authentication_method: "password" # One of: ["password", "iam"]
    #         },
    #         my_sql_settings: {
    #           after_connect_script: "String",
    #           clean_source_metadata_on_mismatch: false,
    #           database_name: "String",
    #           events_poll_interval: 1,
    #           target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #           max_file_size: 1,
    #           parallel_load_threads: 1,
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           server_timezone: "String",
    #           username: "String",
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           execute_timeout: 1,
    #           service_access_role_arn: "String",
    #           authentication_method: "password" # One of: ["password", "iam"]
    #         },
    #         oracle_settings: {
    #           add_supplemental_logging: false,
    #           archived_log_dest_id: 1,
    #           additional_archived_log_dest_id: 1,
    #           extra_archived_log_dest_ids: [1],
    #           allow_select_nested_tables: false,
    #           parallel_asm_read_threads: 1,
    #           read_ahead_blocks: 1,
    #           access_alternate_directly: false,
    #           use_alternate_folder_for_online: false,
    #           oracle_path_prefix: "String",
    #           use_path_prefix: "String",
    #           replace_path_prefix: false,
    #           enable_homogenous_tablespace: false,
    #           direct_path_no_log: false,
    #           archived_logs_only: false,
    #           asm_password: "SecretString",
    #           asm_server: "String",
    #           asm_user: "String",
    #           char_length_semantics: "default" # One of: ["default", "char", "byte"],
    #           database_name: "String",
    #           direct_path_parallel_load: false,
    #           fail_tasks_on_lob_truncation: false,
    #           number_datatype_scale: 1,
    #           password: "SecretString",
    #           port: 1,
    #           read_table_space_name: false,
    #           retry_interval: 1,
    #           security_db_encryption: "SecretString",
    #           security_db_encryption_name: "String",
    #           server_name: "String",
    #           spatial_data_option_to_geo_json_function_name: "String",
    #           standby_delay_time: 1,
    #           username: "String",
    #           use_b_file: false,
    #           use_direct_path_full_load: false,
    #           use_logminer_reader: false,
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           secrets_manager_oracle_asm_access_role_arn: "String",
    #           secrets_manager_oracle_asm_secret_id: "String",
    #           trim_space_in_char: false,
    #           convert_timestamp_with_zone_to_utc: false,
    #           open_transaction_window: 1,
    #           authentication_method: "password" # One of: ["password", "kerberos"]
    #         },
    #         sybase_settings: {
    #           database_name: "String",
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           username: "String",
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String"
    #         },
    #         microsoft_sql_server_settings: {
    #           port: 1,
    #           bcp_packet_size: 1,
    #           database_name: "String",
    #           control_tables_file_group: "String",
    #           password: "SecretString",
    #           query_single_always_on_node: false,
    #           read_backup_only: false,
    #           safeguard_policy: "rely-on-sql-server-replication-agent" # One of: ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"],
    #           server_name: "String",
    #           username: "String",
    #           use_bcp_full_load: false,
    #           use_third_party_backup_device: false,
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           trim_space_in_char: false,
    #           tlog_access_mode: "BackupOnly" # One of: ["BackupOnly", "PreferBackup", "PreferTlog", "TlogOnly"],
    #           force_lob_lookup: false,
    #           authentication_method: "password" # One of: ["password", "kerberos"]
    #         },
    #         ibm_db2_settings: {
    #           database_name: "String",
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           set_data_capture_changes: false,
    #           current_lsn: "String",
    #           max_k_bytes_per_read: 1,
    #           username: "String",
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           load_timeout: 1,
    #           write_buffer_size: 1,
    #           max_file_size: 1,
    #           keep_csv_files: false
    #         },
    #         doc_db_settings: {
    #           username: "String",
    #           password: "SecretString",
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           nesting_level: "none" # One of: ["none", "one"],
    #           extract_doc_id: false,
    #           docs_to_investigate: 1,
    #           kms_key_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String",
    #           use_update_look_up: false,
    #           replicate_shard_collections: false
    #         },
    #         redis_settings: {
    #           server_name: "String", # required
    #           port: 1, # required
    #           ssl_security_protocol: "plaintext" # One of: ["plaintext", "ssl-encryption"],
    #           auth_type: "none" # One of: ["none", "auth-role", "auth-token"],
    #           auth_user_name: "String",
    #           auth_password: "SecretString",
    #           ssl_ca_certificate_arn: "String"
    #         },
    #         gcp_my_sql_settings: {
    #           after_connect_script: "String",
    #           clean_source_metadata_on_mismatch: false,
    #           database_name: "String",
    #           events_poll_interval: 1,
    #           target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #           max_file_size: 1,
    #           parallel_load_threads: 1,
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           server_timezone: "String",
    #           username: "String",
    #           secrets_manager_access_role_arn: "String",
    #           secrets_manager_secret_id: "String"
    #         },
    #         timestream_settings: {
    #           database_name: "String", # required
    #           memory_duration: 1, # required
    #           magnetic_duration: 1, # required
    #           cdc_inserts_and_updates: false,
    #           enable_magnetic_store_writes: false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEndpointsResponse]
    def describe_endpoints(params = {}, options = {})
      request = build_request(:describe_endpoints, params)
      request.send_request(options)
    end

    # <p>Returns information about the replication instance versions used in the project.</p>
    # @param [Hash, Types::DescribeEngineVersionsMessage] params
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_engine_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engine_versions: [
    #       {
    #         version: "String",
    #         lifecycle: "String",
    #         release_status: "beta" # One of: ["beta", "prod"],
    #         launch_date: Time.now,
    #         auto_upgrade_date: Time.now,
    #         deprecation_date: Time.now,
    #         force_upgrade_date: Time.now,
    #         available_upgrades: ["String"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeEngineVersionsResponse]
    def describe_engine_versions(params = {}, options = {})
      request = build_request(:describe_engine_versions, params)
      request.send_request(options)
    end

    # <p>Lists categories for all event source types, or, if specified, for a specified source
    #          type. You can see a list of the event categories and source types in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events
    #             and Notifications</a> in the <i>Database Migration Service User Guide.</i>
    #          </p>
    # @param [Hash, Types::DescribeEventCategoriesMessage] params
    # @option params [String] :source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the event categories.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_event_categories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_category_group_list: [
    #       {
    #         source_type: "String",
    #         event_categories: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventCategoriesResponse]
    def describe_event_categories(params = {}, options = {})
      request = build_request(:describe_event_categories, params)
      request.send_request(options)
    end

    # <p>Lists all the event subscriptions for a customer account. The description of a
    #          subscription includes <code>SubscriptionName</code>, <code>SNSTopicARN</code>,
    #             <code>CustomerID</code>, <code>SourceType</code>, <code>SourceID</code>,
    #             <code>CreationTime</code>, and <code>Status</code>. </p>
    #          <p>If you specify <code>SubscriptionName</code>, this action lists the description for that
    #          subscription.</p>
    # @param [Hash, Types::DescribeEventSubscriptionsMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event subscription to be described.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to event subscriptions.</p>
    #            <p>Valid filter names: <code>event-subscription-arn</code> | <code>event-subscription-id</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_event_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     event_subscriptions_list: [
    #       {
    #         customer_aws_id: "String",
    #         cust_subscription_id: "String",
    #         sns_topic_arn: "String",
    #         status: "String",
    #         subscription_creation_time: "String",
    #         source_type: "String",
    #         source_ids_list: ["String"],
    #         event_categories_list: ["String"],
    #         enabled: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventSubscriptionsResponse]
    def describe_event_subscriptions(params = {}, options = {})
      request = build_request(:describe_event_subscriptions, params)
      request.send_request(options)
    end

    # <p> Lists events for a given source identifier and source type. You can also specify a
    #          start and end time. For more information on DMS events, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and
    #             Notifications</a> in the <i>Database Migration Service User Guide.</i>
    #          </p>
    # @param [Hash, Types::DescribeEventsMessage] params
    # @option params [String] :source_identifier
    #   <p> The identifier of an event source.</p>
    # @option params [String] :source_type
    #   <p>The type of DMS resource that generates events.</p>
    #            <p>Valid values: replication-instance | replication-task</p>
    # @option params [Time] :start_time
    #   <p>The start time for the events to be listed.</p>
    # @option params [Time] :end_time
    #   <p>The end time for the events to be listed.</p>
    # @option params [Integer] :duration
    #   <p>The duration of the events to be listed.</p>
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories for the source type that you've chosen.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to events. The only valid filter is
    #            <code>replication-instance-id</code>.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_identifier: "String",
    #     source_type: "replication-instance" # One of: ["replication-instance"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     events: [
    #       {
    #         source_identifier: "String",
    #         source_type: "replication-instance" # One of: ["replication-instance"],
    #         message: "String",
    #         event_categories: ["String"],
    #         date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventsResponse]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of extension pack associations for the specified migration
    #          project. An extension pack is an add-on module that emulates functions present in a source
    #          database that are required when converting objects to the target database.</p>
    # @param [Hash, Types::DescribeExtensionPackAssociationsMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) for the migration project.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the extension pack associations described in the form of key-value pairs.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @example Describe Extension Pack Associations
    #   # Returns a paginated list of extension pack associations for the specified migration project.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     filters: [
    #       {
    #         name: "instance-profile-identifier",
    #         values: [
    #           "arn:aws:dms:us-east-1:012345678901:instance-profile:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #         ]
    #       }
    #     ],
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     max_records: 20
    #   }
    #   options = {}
    #   response = client.describe_extension_pack_associations(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     requests: [
    #       {
    #         status: "SUCCESS",
    #         request_identifier: "01234567-89ab-cdef-0123-456789abcdef",
    #         migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_extension_pack_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     requests: [
    #       {
    #         status: "String",
    #         request_identifier: "String",
    #         migration_project_arn: "String",
    #         error: {
    #           # One of:
    #           default_error_details: {
    #             message: "String"
    #           }
    #         },
    #         export_sql_details: {
    #           s3_object_key: "String",
    #           object_url: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeExtensionPackAssociationsResponse]
    def describe_extension_pack_associations(params = {}, options = {})
      request = build_request(:describe_extension_pack_associations, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Returns a list of the Fleet Advisor collectors in your account.</p>
    # @param [Hash, Types::DescribeFleetAdvisorCollectorsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those collectors that meet the filter criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>collector-referenced-id</code> – The ID of the collector agent,
    #                       for example <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the collector agent.</p>
    #               </li>
    #            </ul>
    #            <p>An example is: <code>describe-fleet-advisor-collectors --filter
    #                   Name="collector-referenced-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d"</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_fleet_advisor_collectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collectors: [
    #       {
    #         collector_referenced_id: "String",
    #         collector_name: "String",
    #         collector_version: "String",
    #         version_status: "UP_TO_DATE" # One of: ["UP_TO_DATE", "OUTDATED", "UNSUPPORTED"],
    #         description: "String",
    #         s3_bucket_name: "String",
    #         service_access_role_arn: "String",
    #         collector_health_check: {
    #           collector_status: "UNREGISTERED" # One of: ["UNREGISTERED", "ACTIVE"],
    #           local_collector_s3_access: false,
    #           web_collector_s3_access: false,
    #           web_collector_granted_role_based_access: false
    #         },
    #         last_data_received: "String",
    #         registered_date: "String",
    #         created_date: "String",
    #         modified_date: "String",
    #         inventory_data: {
    #           number_of_databases: 1,
    #           number_of_schemas: 1
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeFleetAdvisorCollectorsResponse]
    def describe_fleet_advisor_collectors(params = {}, options = {})
      request = build_request(:describe_fleet_advisor_collectors, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Returns a list of Fleet Advisor databases in your account.</p>
    # @param [Hash, Types::DescribeFleetAdvisorDatabasesRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those databases that meet the filter criteria: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the database engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the database
    #                       server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the
    #                       database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the associated Fleet Advisor collector.</p>
    #               </li>
    #            </ul>
    #            <p>An example is: <code>describe-fleet-advisor-databases --filter
    #                   Name="database-id",Values="45"</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_fleet_advisor_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     databases: [
    #       {
    #         database_id: "String",
    #         database_name: "String",
    #         ip_address: "String",
    #         number_of_schemas: 1,
    #         server: {
    #           server_id: "String",
    #           ip_address: "String",
    #           server_name: "String"
    #         },
    #         software_details: {
    #           engine: "String",
    #           engine_version: "String",
    #           engine_edition: "String",
    #           service_pack: "String",
    #           support_level: "String",
    #           os_architecture: 1,
    #           tooltip: "String"
    #         },
    #         collectors: [
    #           {
    #             collector_referenced_id: "String",
    #             collector_name: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeFleetAdvisorDatabasesResponse]
    def describe_fleet_advisor_databases(params = {}, options = {})
      request = build_request(:describe_fleet_advisor_databases, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Provides descriptions of large-scale assessment (LSA) analyses produced by your Fleet
    #             Advisor collectors. </p>
    # @param [Hash, Types::DescribeFleetAdvisorLsaAnalysisRequest] params
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_records: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_fleet_advisor_lsa_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis: [
    #       {
    #         lsa_analysis_id: "String",
    #         status: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeFleetAdvisorLsaAnalysisResponse]
    def describe_fleet_advisor_lsa_analysis(params = {}, options = {})
      request = build_request(:describe_fleet_advisor_lsa_analysis, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Provides descriptions of the schemas discovered by your Fleet Advisor
    #             collectors.</p>
    # @param [Hash, Types::DescribeFleetAdvisorSchemaObjectSummaryRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schema objects that meet the filter criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>describe-fleet-advisor-schema-object-summary --filter
    #                   Name="schema-id",Values="50"</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <important>
    #               <p>
    #   End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    #   </p>
    #            </important>
    #            <p>Sets the maximum number of records returned in the response.</p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_fleet_advisor_schema_object_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_advisor_schema_objects: [
    #       {
    #         schema_id: "String",
    #         object_type: "String",
    #         number_of_objects: 1,
    #         code_line_count: 1,
    #         code_size: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeFleetAdvisorSchemaObjectSummaryResponse]
    def describe_fleet_advisor_schema_object_summary(params = {}, options = {})
      request = build_request(:describe_fleet_advisor_schema_object_summary, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Returns a list of schemas detected by Fleet Advisor Collectors in your account.</p>
    # @param [Hash, Types::DescribeFleetAdvisorSchemasRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schemas that meet the filter criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>complexity</code> – The schema's complexity, for example
    #                           <code>Simple</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the schema's
    #                       database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the schema database's
    #                       engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>original-schema-name</code> – The name of the schema's database's
    #                       main schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example
    #                           <code>15</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-name</code> – The name of the schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the schema
    #                       database's server.</p>
    #               </li>
    #            </ul>
    #            <p>An example is: <code>describe-fleet-advisor-schemas --filter
    #                   Name="schema-id",Values="50"</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_fleet_advisor_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_advisor_schemas: [
    #       {
    #         code_line_count: 1,
    #         code_size: 1,
    #         complexity: "String",
    #         server: {
    #           server_id: "String",
    #           ip_address: "String",
    #           server_name: "String"
    #         },
    #         database_instance: {
    #           database_id: "String",
    #           database_name: "String",
    #           database_ip_address: "String",
    #           database_engine: "String"
    #         },
    #         schema_id: "String",
    #         schema_name: "String",
    #         original_schema: {
    #           schema_id: "String",
    #           schema_name: "String",
    #           database_id: "String",
    #           database_name: "String",
    #           database_ip_address: "String"
    #         },
    #         similarity: 1.0
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeFleetAdvisorSchemasResponse]
    def describe_fleet_advisor_schemas(params = {}, options = {})
      request = build_request(:describe_fleet_advisor_schemas, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of instance profiles for your account in the current
    #          region.</p>
    # @param [Hash, Types::DescribeInstanceProfilesMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the instance profiles described in the form of key-value pairs.</p>
    #            <p>Valid filter names and values: instance-profile-identifier, instance profile arn or name</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @example Describe Instance Profiles
    #   # Returns a paginated list of instance profiles for your account in the current region.
    #   params = {
    #     filters: [
    #       {
    #         name: "instance-profile-identifier",
    #         values: [
    #           "arn:aws:dms:us-east-1:012345678901:instance-profile:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345"
    #         ]
    #       }
    #     ],
    #     max_records: 20,
    #     marker: "0123456789abcdefghijklmnopqrs"
    #   }
    #   options = {}
    #   response = client.describe_instance_profiles(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     instance_profiles: [
    #       {
    #         subnet_group_identifier: "public-subnets",
    #         publicly_accessible: true,
    #         kms_key_arn: "arn:aws:kms:us-east-1:012345678901:key/01234567-89ab-cdef-0123-456789abcdef",
    #         instance_profile_creation_time: Time.parse("2022-12-16T09:44:43.543246Z"),
    #         instance_profile_name: "my-instance-profile",
    #         instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:my-instance-profile"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_instance_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     instance_profiles: [
    #       {
    #         instance_profile_arn: "String",
    #         availability_zone: "String",
    #         kms_key_arn: "String",
    #         publicly_accessible: false,
    #         network_type: "String",
    #         instance_profile_name: "String",
    #         description: "String",
    #         instance_profile_creation_time: Time.now,
    #         subnet_group_identifier: "String",
    #         vpc_security_groups: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeInstanceProfilesResponse]
    def describe_instance_profiles(params = {}, options = {})
      request = build_request(:describe_instance_profiles, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of metadata model assessments for your account in the current
    #          region.</p>
    # @param [Hash, Types::DescribeMetadataModelAssessmentsMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) of the migration project.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the metadata model assessments described in the form of key-value pairs.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #               The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #               make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @example Describe Metadata Model Assessments
    #   # Returns a paginated list of metadata model assessments for your account in the current region.
    #   params = {
    #     migration_project_identifier: "",
    #     filters: [
    #       {
    #         name: "my-migration-project",
    #         values: [
    #           "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #         ]
    #       }
    #     ],
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     max_records: 20
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_assessments(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "ASDLKJASDJKHDFHGDNBGDASKJHGFK",
    #     requests: [
    #       {
    #         status: "SUCCESS",
    #         request_identifier: "01234567-89ab-cdef-0123-456789abcdef",
    #         migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_assessments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     requests: [
    #       {
    #         status: "String",
    #         request_identifier: "String",
    #         migration_project_arn: "String",
    #         error: {
    #           # One of:
    #           default_error_details: {
    #             message: "String"
    #           }
    #         },
    #         export_sql_details: {
    #           s3_object_key: "String",
    #           object_url: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMetadataModelAssessmentsResponse]
    def describe_metadata_model_assessments(params = {}, options = {})
      request = build_request(:describe_metadata_model_assessments, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of metadata model conversions for a migration project.</p>
    # @param [Hash, Types::DescribeMetadataModelConversionsMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the metadata model conversions described in the form of key-value pairs.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @example Describe Metadata Model Conversions
    #   # Returns a paginated list of metadata model conversions for a migration project.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #     filters: [
    #       {
    #         name: "request-id",
    #         values: [
    #           "01234567-89ab-cdef-0123-456789abcdef"
    #         ]
    #       }
    #     ],
    #     marker: "EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ123456",
    #     max_records: 123
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_conversions(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     requests: [
    #       {
    #         status: "SUCCESS",
    #         request_identifier: "01234567-89ab-cdef-0123-456789abcdef",
    #         migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_conversions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     requests: [
    #       {
    #         status: "String",
    #         request_identifier: "String",
    #         migration_project_arn: "String",
    #         error: {
    #           # One of:
    #           default_error_details: {
    #             message: "String"
    #           }
    #         },
    #         export_sql_details: {
    #           s3_object_key: "String",
    #           object_url: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMetadataModelConversionsResponse]
    def describe_metadata_model_conversions(params = {}, options = {})
      request = build_request(:describe_metadata_model_conversions, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of metadata model exports.</p>
    # @param [Hash, Types::DescribeMetadataModelExportsAsScriptMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the metadata model exports described in the form of key-value pairs.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @example Describe Metadata Model Exports As Script
    #   # Returns a paginated list of metadata model exports.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     filters: [
    #       {
    #         name: "request-id",
    #         values: [
    #           "01234567-89ab-cdef-0123-456789abcdef"
    #         ]
    #       }
    #     ],
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     max_records: 20
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_exports_as_script(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     requests: [
    #       {
    #         status: "SUCCESS",
    #         request_identifier: "01234567-89ab-cdef-0123-456789abcdef",
    #         migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_exports_as_script(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     requests: [
    #       {
    #         status: "String",
    #         request_identifier: "String",
    #         migration_project_arn: "String",
    #         error: {
    #           # One of:
    #           default_error_details: {
    #             message: "String"
    #           }
    #         },
    #         export_sql_details: {
    #           s3_object_key: "String",
    #           object_url: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMetadataModelExportsAsScriptResponse]
    def describe_metadata_model_exports_as_script(params = {}, options = {})
      request = build_request(:describe_metadata_model_exports_as_script, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of metadata model exports.</p>
    # @param [Hash, Types::DescribeMetadataModelExportsToTargetMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the metadata model exports described in the form of key-value pairs.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @example Describe Metadata Model Exports To Target
    #   # Returns a paginated list of metadata model exports.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     filters: [
    #       {
    #         name: "request-id",
    #         values: [
    #           "01234567-89ab-cdef-0123-456789abcdef"
    #         ]
    #       }
    #     ],
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     max_records: 20
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_exports_to_target(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     requests: [
    #       {
    #         status: "SUCCESS",
    #         request_identifier: "01234567-89ab-cdef-0123-456789abcdef",
    #         migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_exports_to_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     requests: [
    #       {
    #         status: "String",
    #         request_identifier: "String",
    #         migration_project_arn: "String",
    #         error: {
    #           # One of:
    #           default_error_details: {
    #             message: "String"
    #           }
    #         },
    #         export_sql_details: {
    #           s3_object_key: "String",
    #           object_url: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMetadataModelExportsToTargetResponse]
    def describe_metadata_model_exports_to_target(params = {}, options = {})
      request = build_request(:describe_metadata_model_exports_to_target, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of metadata model imports.</p>
    # @param [Hash, Types::DescribeMetadataModelImportsMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the metadata model imports described in the form of key-value pairs.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @option params [Integer] :max_records
    #   <p>A paginated list of metadata model imports.</p>
    # @example Describe Metadata Model Imports
    #   # Returns a paginated list of metadata model imports.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     filters: [
    #       {
    #         name: "request-id",
    #         values: [
    #           "01234567-89ab-cdef-0123-456789abcdef"
    #         ]
    #       }
    #     ],
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     max_records: 20
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_imports(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     requests: [
    #       {
    #         status: "SUCCESS",
    #         request_identifier: "01234567-89ab-cdef-0123-456789abcdef",
    #         migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_metadata_model_imports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     requests: [
    #       {
    #         status: "String",
    #         request_identifier: "String",
    #         migration_project_arn: "String",
    #         error: {
    #           # One of:
    #           default_error_details: {
    #             message: "String"
    #           }
    #         },
    #         export_sql_details: {
    #           s3_object_key: "String",
    #           object_url: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMetadataModelImportsResponse]
    def describe_metadata_model_imports(params = {}, options = {})
      request = build_request(:describe_metadata_model_imports, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of migration projects for your account in the current
    #          region.</p>
    # @param [Hash, Types::DescribeMigrationProjectsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the migration projects described in the form of key-value pairs.</p>
    #            <p>Valid filter names and values:</p>
    #            <ul>
    #               <li>
    #                  <p>instance-profile-identifier, instance profile arn or name</p>
    #               </li>
    #               <li>
    #                  <p>data-provider-identifier, data provider arn or name</p>
    #               </li>
    #               <li>
    #                  <p>migration-project-identifier, migration project arn or name</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    # @example Describe Migration Projects
    #   # Returns a paginated list of migration projects for your account in the current region.
    #   params = {
    #     filters: [
    #       {
    #         name: "migration-project-identifier",
    #         values: [
    #           "arn:aws:dms:us-east-1:012345678901:migration-project:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901"
    #         ]
    #       }
    #     ],
    #     max_records: 20,
    #     marker: "EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ123456"
    #   }
    #   options = {}
    #   response = client.describe_migration_projects(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "0123456789abcdefghijklmnopqrs",
    #     migration_projects: [
    #       {
    #         schema_conversion_application_attributes: {
    #           s3_bucket_path: "my-s3-bucket/my_folder",
    #           s3_bucket_role_arn: "arn:aws:iam::012345678901:role/my-s3role"
    #         },
    #         source_data_provider_descriptors: [
    #           {
    #             secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/my-access-role",
    #             secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:mygroup/myalias/ALL.SOURCE.ORACLE_12-012345",
    #             data_provider_name: "all-source-oracle-12",
    #             data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #           }
    #         ],
    #         migration_project_creation_time: Time.parse("2023-04-19T11:45:15.805253Z"),
    #         instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #         migration_project_name: "my-migration-project",
    #         migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #         instance_profile_name: "my-instance-profile",
    #         target_data_provider_descriptors: [
    #           {
    #             secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/dmytbon-admin-access",
    #             secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:mygroup/myalias/TARGET.postgresql-012345",
    #             data_provider_name: "my-data-provider",
    #             data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_migration_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     migration_projects: [
    #       {
    #         migration_project_name: "String",
    #         migration_project_arn: "String",
    #         migration_project_creation_time: Time.now,
    #         source_data_provider_descriptors: [
    #           {
    #             secrets_manager_secret_id: "String",
    #             secrets_manager_access_role_arn: "String",
    #             data_provider_name: "String",
    #             data_provider_arn: "String"
    #           }
    #         ],
    #         target_data_provider_descriptors: [
    #           {
    #             secrets_manager_secret_id: "String",
    #             secrets_manager_access_role_arn: "String",
    #             data_provider_name: "String",
    #             data_provider_arn: "String"
    #           }
    #         ],
    #         instance_profile_arn: "String",
    #         instance_profile_name: "String",
    #         transformation_rules: "String",
    #         description: "String",
    #         schema_conversion_application_attributes: {
    #           s3_bucket_path: "String",
    #           s3_bucket_role_arn: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMigrationProjectsResponse]
    def describe_migration_projects(params = {}, options = {})
      request = build_request(:describe_migration_projects, params)
      request.send_request(options)
    end

    # <p>Returns information about the replication instance types that can be created in the
    #          specified region.</p>
    # @param [Hash, Types::DescribeOrderableReplicationInstancesMessage] params
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe orderable replication instances
    #   # Returns information about the replication instance types that can be created in the specified region.
    #   params = {
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_orderable_replication_instances(params, options)
    #   response.to_h #=>
    #   {
    #     orderable_replication_instances: [
    #     ],
    #     marker: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_orderable_replication_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     orderable_replication_instances: [
    #       {
    #         engine_version: "String",
    #         replication_instance_class: "ReplicationInstanceClass",
    #         storage_type: "String",
    #         min_allocated_storage: 1,
    #         max_allocated_storage: 1,
    #         default_allocated_storage: 1,
    #         included_allocated_storage: 1,
    #         availability_zones: ["String"],
    #         release_status: "beta" # One of: ["beta", "prod"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeOrderableReplicationInstancesResponse]
    def describe_orderable_replication_instances(params = {}, options = {})
      request = build_request(:describe_orderable_replication_instances, params)
      request.send_request(options)
    end

    # <p>Returns a list of upcoming maintenance events for replication instances in your account
    #          in the current Region.</p>
    # @param [Hash, Types::DescribePendingMaintenanceActionsMessage] params
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p></p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_arn: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_pending_maintenance_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pending_maintenance_actions: [
    #       {
    #         resource_identifier: "String",
    #         pending_maintenance_action_details: [
    #           {
    #             action: "String",
    #             auto_applied_after_date: Time.now,
    #             forced_apply_date: Time.now,
    #             opt_in_status: "String",
    #             current_apply_date: Time.now,
    #             description: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribePendingMaintenanceActionsResponse]
    def describe_pending_maintenance_actions(params = {}, options = {})
      request = build_request(:describe_pending_maintenance_actions, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Returns a paginated list of limitations for recommendations of target Amazon Web Services
    #             engines.</p>
    # @param [Hash, Types::DescribeRecommendationLimitationsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the limitations described in the form of key-value pairs.</p>
    #            <p>Valid filter names: <code>database-id</code> | <code>engine-name</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, Fleet Advisor includes a pagination token
    #               in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>Specifies the unique pagination token that makes it possible to display the next page
    #               of results. If this parameter is specified, the response includes only records beyond
    #               the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_recommendation_limitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     limitations: [
    #       {
    #         database_id: "String",
    #         engine_name: "String",
    #         name: "String",
    #         description: "String",
    #         impact: "String",
    #         type: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeRecommendationLimitationsResponse]
    def describe_recommendation_limitations(params = {}, options = {})
      request = build_request(:describe_recommendation_limitations, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Returns a paginated list of target engine recommendations for your source
    #             databases.</p>
    # @param [Hash, Types::DescribeRecommendationsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the target engine recommendations described in the form of
    #               key-value pairs.</p>
    #            <p>Valid filter names: <code>database-id</code> | <code>engine-name</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, Fleet Advisor includes a pagination token
    #               in the response so that you can retrieve the remaining results.</p>
    # @option params [String] :next_token
    #   <p>Specifies the unique pagination token that makes it possible to display the next page
    #               of results. If this parameter is specified, the response includes only records beyond
    #               the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     recommendations: [
    #       {
    #         database_id: "String",
    #         engine_name: "String",
    #         created_date: "String",
    #         status: "String",
    #         preferred: false,
    #         settings: {
    #           instance_sizing_type: "String", # required
    #           workload_type: "String", # required
    #         },
    #         data: {
    #           rds_engine: {
    #             requirements_to_target: {
    #               engine_edition: "String",
    #               instance_vcpu: 1.0,
    #               instance_memory: 1.0,
    #               storage_size: 1,
    #               storage_iops: 1,
    #               deployment_option: "String",
    #               engine_version: "String"
    #             },
    #             target_configuration: {
    #               engine_edition: "String",
    #               instance_type: "String",
    #               instance_vcpu: 1.0,
    #               instance_memory: 1.0,
    #               storage_type: "String",
    #               storage_size: 1,
    #               storage_iops: 1,
    #               deployment_option: "String",
    #               engine_version: "String"
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeRecommendationsResponse]
    def describe_recommendations(params = {}, options = {})
      request = build_request(:describe_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns the status of the RefreshSchemas operation.</p>
    # @param [Hash, Types::DescribeRefreshSchemasStatusMessage] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    # @example Describe refresh schema status
    #   # Returns the status of the refresh-schemas operation.
    #   params = {
    #     endpoint_arn: ""
    #   }
    #   options = {}
    #   response = client.describe_refresh_schemas_status(params, options)
    #   response.to_h #=>
    #   {
    #     refresh_schemas_status: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_refresh_schemas_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     refresh_schemas_status: {
    #       endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       status: "successful" # One of: ["successful", "failed", "refreshing"],
    #       last_refresh_date: Time.now,
    #       last_failure_message: "String"
    #     }
    #   }
    # @return [Types::DescribeRefreshSchemasStatusResponse]
    def describe_refresh_schemas_status(params = {}, options = {})
      request = build_request(:describe_refresh_schemas_status, params)
      request.send_request(options)
    end

    # <p>Returns one or more existing DMS Serverless replication configurations as a list of
    #          structures.</p>
    # @param [Hash, Types::DescribeReplicationConfigsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the replication configs.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replication_configs: [
    #       {
    #         replication_config_identifier: "String",
    #         replication_config_arn: "String",
    #         source_endpoint_arn: "String",
    #         target_endpoint_arn: "String",
    #         replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #         compute_config: {
    #           availability_zone: "String",
    #           dns_name_servers: "String",
    #           kms_key_id: "String",
    #           max_capacity_units: 1,
    #           min_capacity_units: 1,
    #           multi_az: false,
    #           preferred_maintenance_window: "String",
    #           replication_subnet_group_id: "String",
    #           vpc_security_group_ids: ["String"]
    #         },
    #         replication_settings: "String",
    #         supplemental_settings: "String",
    #         table_mappings: "String",
    #         replication_config_create_time: Time.now,
    #         replication_config_update_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationConfigsResponse]
    def describe_replication_configs(params = {}, options = {})
      request = build_request(:describe_replication_configs, params)
      request.send_request(options)
    end

    # <p>Returns information about the task logs for the specified task.</p>
    # @param [Hash, Types::DescribeReplicationInstanceTaskLogsMessage] params
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_arn: "String", # required
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_instance_task_logs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_instance_arn: "String",
    #     replication_instance_task_logs: [
    #       {
    #         replication_task_name: "String",
    #         replication_task_arn: "String",
    #         replication_instance_task_log_size: 1
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeReplicationInstanceTaskLogsResponse]
    def describe_replication_instance_task_logs(params = {}, options = {})
      request = build_request(:describe_replication_instance_task_logs, params)
      request.send_request(options)
    end

    # <p>Returns information about replication instances for your account in the current
    #          region.</p>
    # @param [Hash, Types::DescribeReplicationInstancesMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to replication instances.</p>
    #            <p>Valid filter names: replication-instance-arn | replication-instance-id |
    #            replication-instance-class | engine-version</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe replication instances
    #   # Returns the status of the refresh-schemas operation.
    #   params = {
    #     filters: [
    #       {
    #         name: "string",
    #         values: [
    #           "string",
    #           "string"
    #         ]
    #       }
    #     ],
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_replication_instances(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     replication_instances: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replication_instances: [
    #       {
    #         replication_instance_identifier: "String",
    #         replication_instance_class: "ReplicationInstanceClass",
    #         replication_instance_status: "String",
    #         allocated_storage: 1,
    #         instance_create_time: Time.now,
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         availability_zone: "String",
    #         replication_subnet_group: {
    #           replication_subnet_group_identifier: "String",
    #           replication_subnet_group_description: "String",
    #           vpc_id: "String",
    #           subnet_group_status: "String",
    #           subnets: [
    #             {
    #               subnet_identifier: "String",
    #               subnet_availability_zone: {
    #                 name: "String"
    #               },
    #               subnet_status: "String"
    #             }
    #           ],
    #           supported_network_types: ["String"]
    #         },
    #         preferred_maintenance_window: "String",
    #         pending_modified_values: {
    #           replication_instance_class: "ReplicationInstanceClass",
    #           allocated_storage: 1,
    #           multi_az: false,
    #           engine_version: "String",
    #           network_type: "String"
    #         },
    #         multi_az: false,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         kms_key_id: "String",
    #         replication_instance_arn: "String",
    #         replication_instance_public_ip_address: "String",
    #         replication_instance_private_ip_address: "String",
    #         replication_instance_public_ip_addresses: ["String"],
    #         replication_instance_private_ip_addresses: ["String"],
    #         replication_instance_ipv6_addresses: ["String"],
    #         publicly_accessible: false,
    #         secondary_availability_zone: "String",
    #         free_until: Time.now,
    #         dns_name_servers: "String",
    #         network_type: "String",
    #         kerberos_authentication_settings: {
    #           key_cache_secret_id: "String",
    #           key_cache_secret_iam_arn: "String",
    #           krb5_file_contents: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationInstancesResponse]
    def describe_replication_instances(params = {}, options = {})
      request = build_request(:describe_replication_instances, params)
      request.send_request(options)
    end

    # <p>Returns information about the replication subnet groups.</p>
    # @param [Hash, Types::DescribeReplicationSubnetGroupsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to replication subnet groups.</p>
    #            <p>Valid filter names: replication-subnet-group-id</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe replication subnet groups
    #   # Returns information about the replication subnet groups.
    #   params = {
    #     filters: [
    #       {
    #         name: "string",
    #         values: [
    #           "string",
    #           "string"
    #         ]
    #       }
    #     ],
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_replication_subnet_groups(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     replication_subnet_groups: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_subnet_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replication_subnet_groups: [
    #       {
    #         replication_subnet_group_identifier: "String",
    #         replication_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         supported_network_types: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationSubnetGroupsResponse]
    def describe_replication_subnet_groups(params = {}, options = {})
      request = build_request(:describe_replication_subnet_groups, params)
      request.send_request(options)
    end

    # <p>Returns table and schema statistics for one or more provisioned replications that use a
    #          given DMS Serverless replication configuration.</p>
    # @param [Hash, Types::DescribeReplicationTableStatisticsMessage] params
    # @option params [String] :replication_config_arn
    #   <p>The replication config to describe.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the replication table statistics.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_config_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_replication_table_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_config_arn: "String",
    #     marker: "String",
    #     replication_table_statistics: [
    #       {
    #         schema_name: "String",
    #         table_name: "String",
    #         inserts: 1,
    #         deletes: 1,
    #         updates: 1,
    #         ddls: 1,
    #         applied_inserts: 1,
    #         applied_deletes: 1,
    #         applied_updates: 1,
    #         applied_ddls: 1,
    #         full_load_rows: 1,
    #         full_load_condtnl_chk_failed_rows: 1,
    #         full_load_error_rows: 1,
    #         full_load_start_time: Time.now,
    #         full_load_end_time: Time.now,
    #         full_load_reloaded: false,
    #         last_update_time: Time.now,
    #         table_state: "String",
    #         validation_pending_records: 1,
    #         validation_failed_records: 1,
    #         validation_suspended_records: 1,
    #         validation_state: "String",
    #         validation_state_details: "String",
    #         resync_state: "String",
    #         resync_rows_attempted: 1,
    #         resync_rows_succeeded: 1,
    #         resync_rows_failed: 1,
    #         resync_progress: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationTableStatisticsResponse]
    def describe_replication_table_statistics(params = {}, options = {})
      request = build_request(:describe_replication_table_statistics, params)
      request.send_request(options)
    end

    # <p>Returns the task assessment results from the Amazon S3 bucket that DMS creates in your
    #          Amazon Web Services account. This action always returns the latest results.</p>
    #          <p>For more information about DMS task assessments, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html">Creating a task assessment
    #             report</a> in the <i>Database Migration Service User Guide</i>.</p>
    # @param [Hash, Types::DescribeReplicationTaskAssessmentResultsMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input
    #            parameter is specified, the API returns only one result and ignore the values of the
    #               <code>MaxRecords</code> and <code>Marker</code> parameters. </p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_task_assessment_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     bucket_name: "String",
    #     replication_task_assessment_results: [
    #       {
    #         replication_task_identifier: "String",
    #         replication_task_arn: "String",
    #         replication_task_last_assessment_date: Time.now,
    #         assessment_status: "String",
    #         assessment_results_file: "String",
    #         assessment_results: "String",
    #         s3_object_url: "SecretString"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationTaskAssessmentResultsResponse]
    def describe_replication_task_assessment_results(params = {}, options = {})
      request = build_request(:describe_replication_task_assessment_results, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of premigration assessment runs based on filter
    #          settings.</p>
    #          <p>These filter settings can specify a combination of premigration assessment runs,
    #          migration tasks, replication instances, and assessment run status values.</p>
    #          <note>
    #             <p>This operation doesn't return information about individual assessments. For this
    #             information, see the <code>DescribeReplicationTaskIndividualAssessments</code>
    #             operation. </p>
    #          </note>
    # @param [Hash, Types::DescribeReplicationTaskAssessmentRunsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the premigration assessment runs described in the form of key-value
    #            pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>,
    #               <code>replication-task-arn</code>, <code>replication-instance-arn</code>,
    #               <code>status</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_task_assessment_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replication_task_assessment_runs: [
    #       {
    #         replication_task_assessment_run_arn: "String",
    #         replication_task_arn: "String",
    #         status: "String",
    #         replication_task_assessment_run_creation_date: Time.now,
    #         assessment_progress: {
    #           individual_assessment_count: 1,
    #           individual_assessment_completed_count: 1
    #         },
    #         last_failure_message: "String",
    #         service_access_role_arn: "String",
    #         result_location_bucket: "String",
    #         result_location_folder: "String",
    #         result_encryption_mode: "String",
    #         result_kms_key_arn: "String",
    #         assessment_run_name: "String",
    #         is_latest_task_assessment_run: false,
    #         result_statistic: {
    #           passed: 1,
    #           failed: 1,
    #           error: 1,
    #           warning: 1,
    #           cancelled: 1,
    #           skipped: 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationTaskAssessmentRunsResponse]
    def describe_replication_task_assessment_runs(params = {}, options = {})
      request = build_request(:describe_replication_task_assessment_runs, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of individual assessments based on filter settings.</p>
    #          <p>These filter settings can specify a combination of premigration assessment runs,
    #          migration tasks, and assessment status values.</p>
    # @param [Hash, Types::DescribeReplicationTaskIndividualAssessmentsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the individual assessments described in the form of key-value
    #            pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>,
    #               <code>replication-task-arn</code>, <code>status</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replication_task_individual_assessments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replication_task_individual_assessments: [
    #       {
    #         replication_task_individual_assessment_arn: "String",
    #         replication_task_assessment_run_arn: "String",
    #         individual_assessment_name: "String",
    #         status: "String",
    #         replication_task_individual_assessment_start_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationTaskIndividualAssessmentsResponse]
    def describe_replication_task_individual_assessments(params = {}, options = {})
      request = build_request(:describe_replication_task_individual_assessments, params)
      request.send_request(options)
    end

    # <p>Returns information about replication tasks for your account in the current
    #          region.</p>
    # @param [Hash, Types::DescribeReplicationTasksMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to replication tasks.</p>
    #            <p>Valid filter names: replication-task-arn | replication-task-id | migration-type |
    #            endpoint-arn | replication-instance-arn</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @option params [Boolean] :without_settings
    #   <p>An option to set to avoid returning information about settings. Use this to reduce
    #            overhead when setting information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    # @example Describe replication tasks
    #   # Returns information about replication tasks for your account in the current region.
    #   params = {
    #     filters: [
    #       {
    #         name: "string",
    #         values: [
    #           "string",
    #           "string"
    #         ]
    #       }
    #     ],
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_replication_tasks(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     replication_tasks: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     without_settings: false
    #   }
    #   options = {}
    #   response = client.describe_replication_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replication_tasks: [
    #       {
    #         replication_task_identifier: "String",
    #         source_endpoint_arn: "String",
    #         target_endpoint_arn: "String",
    #         replication_instance_arn: "String",
    #         migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #         table_mappings: "String",
    #         replication_task_settings: "String",
    #         status: "String",
    #         last_failure_message: "String",
    #         stop_reason: "String",
    #         replication_task_creation_date: Time.now,
    #         replication_task_start_date: Time.now,
    #         cdc_start_position: "String",
    #         cdc_stop_position: "String",
    #         recovery_checkpoint: "String",
    #         replication_task_arn: "String",
    #         replication_task_stats: {
    #           full_load_progress_percent: 1,
    #           elapsed_time_millis: 1,
    #           tables_loaded: 1,
    #           tables_loading: 1,
    #           tables_queued: 1,
    #           tables_errored: 1,
    #           fresh_start_date: Time.now,
    #           start_date: Time.now,
    #           stop_date: Time.now,
    #           full_load_start_date: Time.now,
    #           full_load_finish_date: Time.now
    #         },
    #         task_data: "String",
    #         target_replication_instance_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationTasksResponse]
    def describe_replication_tasks(params = {}, options = {})
      request = build_request(:describe_replication_tasks, params)
      request.send_request(options)
    end

    # <p>Provides details on replication progress by returning status information for one or more
    #          provisioned DMS Serverless replications.</p>
    # @param [Hash, Types::DescribeReplicationsMessage] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to the replications.</p>
    #            <p> Valid filter names: <code>replication-config-arn</code> | <code>replication-config-id</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_replications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     replications: [
    #       {
    #         replication_config_identifier: "String",
    #         replication_config_arn: "String",
    #         source_endpoint_arn: "String",
    #         target_endpoint_arn: "String",
    #         replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #         status: "String",
    #         provision_data: {
    #           provision_state: "String",
    #           provisioned_capacity_units: 1,
    #           date_provisioned: Time.now,
    #           is_new_provisioning_available: false,
    #           date_new_provisioning_data_available: Time.now,
    #           reason_for_new_provisioning_data: "String"
    #         },
    #         premigration_assessment_statuses: [
    #           {
    #             premigration_assessment_run_arn: "String",
    #             fail_on_assessment_failure: false,
    #             status: "String",
    #             premigration_assessment_run_creation_date: Time.now,
    #             assessment_progress: {
    #               individual_assessment_count: 1,
    #               individual_assessment_completed_count: 1
    #             },
    #             last_failure_message: "String",
    #             result_location_bucket: "String",
    #             result_location_folder: "String",
    #             result_encryption_mode: "String",
    #             result_kms_key_arn: "String",
    #             result_statistic: {
    #               passed: 1,
    #               failed: 1,
    #               error: 1,
    #               warning: 1,
    #               cancelled: 1,
    #               skipped: 1
    #             }
    #           }
    #         ],
    #         stop_reason: "String",
    #         failure_messages: ["String"],
    #         replication_stats: {
    #           full_load_progress_percent: 1,
    #           elapsed_time_millis: 1,
    #           tables_loaded: 1,
    #           tables_loading: 1,
    #           tables_queued: 1,
    #           tables_errored: 1,
    #           fresh_start_date: Time.now,
    #           start_date: Time.now,
    #           stop_date: Time.now,
    #           full_load_start_date: Time.now,
    #           full_load_finish_date: Time.now
    #         },
    #         start_replication_type: "String",
    #         cdc_start_time: Time.now,
    #         cdc_start_position: "String",
    #         cdc_stop_position: "String",
    #         recovery_checkpoint: "String",
    #         replication_create_time: Time.now,
    #         replication_update_time: Time.now,
    #         replication_last_stop_time: Time.now,
    #         replication_deprovision_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReplicationsResponse]
    def describe_replications(params = {}, options = {})
      request = build_request(:describe_replications, params)
      request.send_request(options)
    end

    # <p>Returns information about the schema for the specified endpoint.</p>
    #          <p></p>
    # @param [Hash, Types::DescribeSchemasMessage] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @example Describe schemas
    #   # Returns information about the schema for the specified endpoint.
    #   params = {
    #     endpoint_arn: "",
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_schemas(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "",
    #     schemas: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     schemas: ["String"]
    #   }
    # @return [Types::DescribeSchemasResponse]
    def describe_schemas(params = {}, options = {})
      request = build_request(:describe_schemas, params)
      request.send_request(options)
    end

    # <p>Returns table statistics on the database migration task, including table name, rows
    #          inserted, rows updated, and rows deleted.</p>
    #          <p>Note that the "last updated" column the DMS console only indicates the time that DMS
    #          last updated the table statistics record for a table. It does not indicate the time of the
    #          last update to the table.</p>
    # @param [Hash, Types::DescribeTableStatisticsMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 500.</p>
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters applied to table statistics.</p>
    #            <p>Valid filter names: schema-name | table-name | table-state</p>
    #            <p>A combination of filters creates an AND condition where each record matches all
    #            specified filters.</p>
    # @example Describe table statistics
    #   # Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.
    #   params = {
    #     replication_task_arn: "",
    #     max_records: 123,
    #     marker: ""
    #   }
    #   options = {}
    #   response = client.describe_table_statistics(params, options)
    #   response.to_h #=>
    #   {
    #     replication_task_arn: "",
    #     table_statistics: [
    #     ],
    #     marker: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_table_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task_arn: "String",
    #     table_statistics: [
    #       {
    #         schema_name: "String",
    #         table_name: "String",
    #         inserts: 1,
    #         deletes: 1,
    #         updates: 1,
    #         ddls: 1,
    #         applied_inserts: 1,
    #         applied_deletes: 1,
    #         applied_updates: 1,
    #         applied_ddls: 1,
    #         full_load_rows: 1,
    #         full_load_condtnl_chk_failed_rows: 1,
    #         full_load_error_rows: 1,
    #         full_load_start_time: Time.now,
    #         full_load_end_time: Time.now,
    #         full_load_reloaded: false,
    #         last_update_time: Time.now,
    #         table_state: "String",
    #         validation_pending_records: 1,
    #         validation_failed_records: 1,
    #         validation_suspended_records: 1,
    #         validation_state: "String",
    #         validation_state_details: "String",
    #         resync_state: "String",
    #         resync_rows_attempted: 1,
    #         resync_rows_succeeded: 1,
    #         resync_rows_failed: 1,
    #         resync_progress: 1.0
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeTableStatisticsResponse]
    def describe_table_statistics(params = {}, options = {})
      request = build_request(:describe_table_statistics, params)
      request.send_request(options)
    end

    # <p>Saves a copy of a database migration assessment report to your Amazon S3 bucket. DMS can
    #          save your assessment report as a comma-separated value (CSV) or a PDF file. </p>
    # @param [Hash, Types::ExportMetadataModelAssessmentMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [String] :selection_rules
    #   <p>A value that specifies the database objects to assess.</p>
    # @option params [String] :file_name
    #   <p>The name of the assessment file to create in your Amazon S3 bucket.</p>
    # @option params [Array<String>] :assessment_report_types
    #   <p>The file format of the assessment file.</p>
    # @example Export Metadata Model Assessment
    #   # Saves a copy of a database migration assessment report to your S3 bucket. DMS can save your assessment report as a comma-separated value (CSV) or a PDF file.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     selection_rules: "{\"rules\": [{\"rule-type\": \"selection\",\"rule-id\": \"1\",\"rule-name\": \"1\",\"object-locator\": {\"server-name\": \"aurora-pg.cluster-a1b2c3d4e5f6.us-east-1.rds.amazonaws.com\", \"schema-name\": \"schema1\", \"table-name\": \"Cities\"},\"rule-action\": \"explicit\"} ]}",
    #     file_name: "file",
    #     assessment_report_types: [
    #       pdf
    #     ]
    #   }
    #   options = {}
    #   response = client.export_metadata_model_assessment(params, options)
    #   response.to_h #=>
    #   {
    #     pdf_report: {
    #       s3_object_key: "object-name",
    #       object_url: "url"
    #     },
    #     csv_report: {
    #       s3_object_key: "object-name",
    #       object_url: "url"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     selection_rules: "String", # required
    #     file_name: "String",
    #     assessment_report_types: ["pdf" # One of: ["pdf", "csv"]]
    #   }
    #   options = {}
    #   response = client.export_metadata_model_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pdf_report: {
    #       s3_object_key: "String",
    #       object_url: "String"
    #     },
    #     csv_report: {
    #       s3_object_key: "String",
    #       object_url: "String"
    #     }
    #   }
    # @return [Types::ExportMetadataModelAssessmentResponse]
    def export_metadata_model_assessment(params = {}, options = {})
      request = build_request(:export_metadata_model_assessment, params)
      request.send_request(options)
    end

    # <p>Uploads the specified certificate.</p>
    # @param [Hash, Types::ImportCertificateMessage] params
    # @option params [String] :certificate_identifier
    #   <p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
    #            must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
    #            contain two consecutive hyphens.</p>
    # @option params [String] :certificate_pem
    #   <p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>
    # @option params [String] :certificate_wallet
    #   <p>The location of an imported Oracle Wallet certificate for use with SSL. Provide the name
    #            of a <code>.sso</code> file using the <code>fileb://</code> prefix. You can't provide the
    #            certificate inline.</p>
    #            <p>Example: <code>filebase64("${path.root}/rds-ca-2019-root.sso")</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the certificate.</p>
    # @example Import certificate
    #   # Uploads the specified certificate.
    #   params = {
    #     certificate_identifier: "",
    #     certificate_pem: ""
    #   }
    #   options = {}
    #   response = client.import_certificate(params, options)
    #   response.to_h #=>
    #   {
    #     certificate: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_identifier: "String", # required
    #     certificate_pem: "SecretString",
    #     certificate_wallet: "data",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: {
    #       certificate_identifier: "String",
    #       certificate_creation_date: Time.now,
    #       certificate_pem: "String",
    #       certificate_wallet: "data",
    #       certificate_arn: "String",
    #       certificate_owner: "String",
    #       valid_from_date: Time.now,
    #       valid_to_date: Time.now,
    #       signing_algorithm: "String",
    #       key_length: 1
    #     }
    #   }
    # @return [Types::ImportCertificateResponse]
    def import_certificate(params = {}, options = {})
      request = build_request(:import_certificate, params)
      request.send_request(options)
    end

    # <p>Lists all metadata tags attached to an DMS resource, including replication instance,
    #          endpoint, subnet group, and migration task. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html">
    #                <code>Tag</code>
    #             </a>
    #          data type description.</p>
    # @param [Hash, Types::ListTagsForResourceMessage] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the DMS resource to
    #            list tags for. This returns a list of keys (names of tags) created for the resource and
    #            their associated tag values.</p>
    # @option params [Array<String>] :resource_arn_list
    #   <p>List of ARNs that identify multiple DMS resources that you want to list tags for. This
    #            returns a list of keys (tag names) and their associated tag values. It also returns each
    #            tag's associated <code>ResourceArn</code> value, which is the ARN of the resource for which
    #            each listed tag is created. </p>
    # @example List tags for resource
    #   # Lists all tags for an AWS DMS resource.
    #   params = {
    #     resource_arn: ""
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String",
    #     resource_arn_list: ["String"]
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the specified schema conversion configuration using the provided parameters. </p>
    # @param [Hash, Types::ModifyConversionConfigurationMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [String] :conversion_configuration
    #   <p>The new conversion configuration.</p>
    # @example Modify Conversion Configuration
    #   # Modifies the specified schema conversion configuration using the provided parameters.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     conversion_configuration: "{\"Common project settings\":{\"ShowSeverityLevelInSql\":\"CRITICAL\"},\"ORACLE_TO_POSTGRESQL\" : {\"ToTimeZone\":false,\"LastDayBuiltinFunctionOracle\":false,   \"NextDayBuiltinFunctionOracle\":false,\"ConvertProceduresToFunction\":false,\"NvlBuiltinFunctionOracle\":false,\"DbmsAssertBuiltinFunctionOracle\":false}}"
    #   }
    #   options = {}
    #   response = client.modify_conversion_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     conversion_configuration: "String", # required
    #   }
    #   options = {}
    #   response = client.modify_conversion_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_project_identifier: "String"
    #   }
    # @return [Types::ModifyConversionConfigurationResponse]
    def modify_conversion_configuration(params = {}, options = {})
      request = build_request(:modify_conversion_configuration, params)
      request.send_request(options)
    end

    # <p>Modifies an existing DMS data migration.</p>
    # @param [Hash, Types::ModifyDataMigrationMessage] params
    # @option params [String] :data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to modify.</p>
    # @option params [String] :data_migration_name
    #   <p>The new name for the data migration.</p>
    # @option params [Boolean] :enable_cloudwatch_logs
    #   <p>Whether to enable Cloudwatch logs for the data migration.</p>
    # @option params [String] :service_access_role_arn
    #   <p>The new service access role ARN for the data migration.</p>
    # @option params [String] :data_migration_type
    #   <p>The new migration type for the data migration.</p>
    # @option params [Array<Types::SourceDataSetting>] :source_data_settings
    #   <p>The new information about the source data provider for the data migration.</p>
    # @option params [Array<Types::TargetDataSetting>] :target_data_settings
    #   <p>The new information about the target data provider for the data migration.</p>
    # @option params [Integer] :number_of_jobs
    #   <p>The number of parallel jobs that trigger parallel threads to unload the tables from the
    #            source, and then load them to the target.</p>
    # @option params [String] :selection_rules
    #   <p>A JSON-formatted string that defines what objects to include and exclude from the
    #            migration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_migration_identifier: "String", # required
    #     data_migration_name: "String",
    #     enable_cloudwatch_logs: false,
    #     service_access_role_arn: "String",
    #     data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #     source_data_settings: [
    #       {
    #         cdc_start_position: "String",
    #         cdc_start_time: Time.now,
    #         cdc_stop_time: Time.now,
    #         slot_name: "String"
    #       }
    #     ],
    #     target_data_settings: [
    #       {
    #         table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #       }
    #     ],
    #     number_of_jobs: 1,
    #     selection_rules: "SecretString"
    #   }
    #   options = {}
    #   response = client.modify_data_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_migration: {
    #       data_migration_name: "String",
    #       data_migration_arn: "String",
    #       data_migration_create_time: Time.now,
    #       data_migration_start_time: Time.now,
    #       data_migration_end_time: Time.now,
    #       service_access_role_arn: "String",
    #       migration_project_arn: "String",
    #       data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       data_migration_settings: {
    #         number_of_jobs: 1,
    #         cloudwatch_logs_enabled: false,
    #         selection_rules: "SecretString"
    #       },
    #       source_data_settings: [
    #         {
    #           cdc_start_position: "String",
    #           cdc_start_time: Time.now,
    #           cdc_stop_time: Time.now,
    #           slot_name: "String"
    #         }
    #       ],
    #       target_data_settings: [
    #         {
    #           table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #         }
    #       ],
    #       data_migration_statistics: {
    #         tables_loaded: 1,
    #         elapsed_time_millis: 1,
    #         tables_loading: 1,
    #         full_load_percentage: 1,
    #         cdc_latency: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         start_time: Time.now,
    #         stop_time: Time.now
    #       },
    #       data_migration_status: "String",
    #       public_ip_addresses: ["String"],
    #       data_migration_cidr_blocks: ["String"],
    #       last_failure_message: "String",
    #       stop_reason: "String"
    #     }
    #   }
    # @return [Types::ModifyDataMigrationResponse]
    def modify_data_migration(params = {}, options = {})
      request = build_request(:modify_data_migration, params)
      request.send_request(options)
    end

    # <p>Modifies the specified data provider using the provided settings.</p>
    #          <note>
    #             <p>You must remove the data provider from all migration projects before you can modify
    #             it.</p>
    #          </note>
    # @param [Hash, Types::ModifyDataProviderMessage] params
    # @option params [String] :data_provider_identifier
    #   <p>The identifier of the data provider. Identifiers must begin with a letter 
    #            and must contain only ASCII letters, digits, and hyphens. They can't end with 
    #            a hyphen, or contain two consecutive hyphens.</p>
    # @option params [String] :data_provider_name
    #   <p>The name of the data provider.</p>
    # @option params [String] :description
    #   <p>A user-friendly description of the data provider.</p>
    # @option params [String] :engine
    #   <p>The type of database engine for the data provider. Valid values include <code>"aurora"</code>, 
    #            <code>"aurora-postgresql"</code>, <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>, 
    #            <code>"sqlserver"</code>, <code>redshift</code>, <code>mariadb</code>, <code>mongodb</code>, <code>db2</code>, <code>db2-zos</code> and <code>docdb</code>. A value of <code>"aurora"</code> represents Amazon Aurora MySQL-Compatible Edition.</p>
    # @option params [Boolean] :virtual
    #   <p>Indicates whether the data provider is virtual.</p>
    # @option params [Boolean] :exact_settings
    #   <p>If this attribute is Y, the current call to <code>ModifyDataProvider</code> replaces all
    #            existing data provider settings with the exact settings that you specify in this call. If this
    #            attribute is N, the current call to <code>ModifyDataProvider</code> does two things: </p>
    #            <ul>
    #               <li>
    #                  <p>It replaces any data provider settings that already exist with new values, 
    #               for settings with the same names.</p>
    #               </li>
    #               <li>
    #                  <p>It creates new data provider settings that you specify in the call, 
    #               for settings with different names. </p>
    #               </li>
    #            </ul>
    # @option params [Types::DataProviderSettings] :settings
    #   <p>The settings in JSON format for a data provider.</p>
    # @example Modify Data Provider
    #   # Modifies the specified data provider using the provided settings.
    #   params = {
    #     data_provider_identifier: "arn:aws:dms:us-east-1:012345678901:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #     data_provider_name: "new-name",
    #     engine: "sqlserver",
    #     description: "description",
    #     settings: {
    #     "MicrosoftSqlServerSettings" => {
    #       "ServerName" => ServerName2,
    #       "Port" => 11112,
    #       "DatabaseName" => DatabaseName,
    #       "SslMode" => none
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.modify_data_provider(params, options)
    #   response.to_h #=>
    #   {
    #     data_provider: {
    #       engine: "postgres",
    #       settings: {
    #     "PostgreSqlSettings" => {
    #       "SslMode" => none,
    #       "ServerName" => postrgesql.0a1b2c3d4e5f.us-east-1.rds.amazonaws.com,
    #       "Port" => 5432,
    #       "DatabaseName" => target
    #     }
    #   },
    #       data_provider_creation_time: Time.parse("2023-05-12T10:50:41.988561Z"),
    #       data_provider_name: "my-target-data-provider",
    #       data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:my-target-data-provider"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     data_provider_identifier: "String", # required
    #     data_provider_name: "String",
    #     description: "String",
    #     engine: "String",
    #     virtual: false,
    #     exact_settings: false,
    #     settings: {
    #       # One of:
    #       redshift_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       postgre_sql_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       my_sql_settings: {
    #         server_name: "String",
    #         port: 1,
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       oracle_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         asm_server: "String",
    #         secrets_manager_oracle_asm_secret_id: "String",
    #         secrets_manager_oracle_asm_access_role_arn: "String",
    #         secrets_manager_security_db_encryption_secret_id: "String",
    #         secrets_manager_security_db_encryption_access_role_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       microsoft_sql_server_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       doc_db_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String"
    #       },
    #       maria_db_settings: {
    #         server_name: "String",
    #         port: 1,
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       ibm_db2_luw_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       ibm_db2z_os_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         s3_path: "String",
    #         s3_access_role_arn: "String"
    #       },
    #       mongo_db_settings: {
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #         certificate_arn: "String",
    #         auth_type: "no" # One of: ["no", "password"],
    #         auth_source: "String",
    #         auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.modify_data_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_provider: {
    #       data_provider_name: "String",
    #       data_provider_arn: "String",
    #       data_provider_creation_time: Time.now,
    #       description: "String",
    #       engine: "String",
    #       virtual: false,
    #       settings: {
    #         # One of:
    #         redshift_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         postgre_sql_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         my_sql_settings: {
    #           server_name: "String",
    #           port: 1,
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         oracle_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           asm_server: "String",
    #           secrets_manager_oracle_asm_secret_id: "String",
    #           secrets_manager_oracle_asm_access_role_arn: "String",
    #           secrets_manager_security_db_encryption_secret_id: "String",
    #           secrets_manager_security_db_encryption_access_role_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         microsoft_sql_server_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         doc_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String"
    #         },
    #         maria_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         ibm_db2_luw_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         ibm_db2z_os_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           s3_path: "String",
    #           s3_access_role_arn: "String"
    #         },
    #         mongo_db_settings: {
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #           certificate_arn: "String",
    #           auth_type: "no" # One of: ["no", "password"],
    #           auth_source: "String",
    #           auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::ModifyDataProviderResponse]
    def modify_data_provider(params = {}, options = {})
      request = build_request(:modify_data_provider, params)
      request.send_request(options)
    end

    # <p>Modifies the specified endpoint.</p>
    #          <note>
    #             <p>For a MySQL source or target endpoint, don't explicitly specify the database using
    #             the <code>DatabaseName</code> request parameter on the <code>ModifyEndpoint</code> API
    #             call. Specifying <code>DatabaseName</code> when you modify a MySQL endpoint replicates
    #             all the task tables to this single database. For MySQL endpoints, you specify the
    #             database only when you specify the schema in the table-mapping rules of the DMS
    #             task.</p>
    #          </note>
    # @param [Hash, Types::ModifyEndpointMessage] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    # @option params [String] :endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint. Valid values are <code>source</code> and
    #            <code>target</code>.</p>
    # @option params [String] :engine_name
    #   <p>The database engine name. Valid values, depending on the EndpointType, include
    #               <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #               <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>,
    #               <code>"redshift"</code>, <code>"s3"</code>, <code>"db2"</code>, <code>"db2-zos"</code>,
    #               <code>"azuredb"</code>, <code>"sybase"</code>, <code>"dynamodb"</code>,
    #               <code>"mongodb"</code>, <code>"kinesis"</code>, <code>"kafka"</code>,
    #               <code>"elasticsearch"</code>, <code>"documentdb"</code>, <code>"sqlserver"</code>,
    #               <code>"neptune"</code>, and <code>"babelfish"</code>.</p>
    # @option params [String] :username
    #   <p>The user name to be used to login to the endpoint database.</p>
    # @option params [String] :password
    #   <p>The password to be used to login to the endpoint database.</p>
    # @option params [String] :server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    # @option params [Integer] :port
    #   <p>The port used by the endpoint database.</p>
    # @option params [String] :database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify
    #            DatabaseName.</p>
    # @option params [String] :extra_connection_attributes
    #   <p>Additional attributes associated with the connection. To reset this parameter, pass the
    #            empty string ("") as an argument.</p>
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    # @option params [String] :ssl_mode
    #   <p>The SSL mode used to connect to the endpoint. The default value is
    #            <code>none</code>.</p>
    # @option params [String] :service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the IAM role you want to use to modify the endpoint.
    #            The role must allow the <code>iam:PassRole</code> action.</p>
    # @option params [String] :external_table_definition
    #   <p>The external table definition.</p>
    # @option params [Types::DynamoDbSettings] :dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate Data to DynamoDB</a> in the <i>Database Migration Service
    #               User Guide.</i>
    #            </p>
    # @option params [Types::S3Settings] :s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::DmsTransferSettings] :dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Attributes include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the service access
    #                  IAM role. The role must allow the <code>iam:PassRole</code> action.</p>
    #               </li>
    #               <li>
    #                  <p>BucketName - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string
    #               ,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn": "string",
    #               "BucketName": "string"} </code>
    #            </p>
    # @option params [Types::MongoDbSettings] :mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration">Endpoint configuration settings when using MongoDB as a source for Database Migration Service</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::KinesisSettings] :kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping">Using object mapping to migrate data to a Kinesis data stream</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::KafkaSettings] :kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping">Using
    #               object mapping to migrate data to a Kafka topic</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    # @option params [Types::ElasticsearchSettings] :elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more
    #            information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for
    #               DMS</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::NeptuneSettings] :neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon
    #               Neptune as a target</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::RedshiftSettings] :redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    # @option params [Types::PostgreSQLSettings] :postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection attributes when using PostgreSQL as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib"> Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::MySQLSettings] :my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib">Extra connection attributes when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib">Extra connection attributes when using a MySQL-compatible database as a target for
    #               DMS</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::OracleSettings] :oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib">Extra connection attributes when using Oracle as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::SybaseSettings] :sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::MicrosoftSQLServerSettings] :microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib">Extra connection attributes when using SQL Server as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib"> Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::IBMDb2Settings] :ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib">Extra
    #               connection attributes when using Db2 LUW as a source for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    # @option params [Types::DocDbSettings] :doc_db_settings
    #   <p>Settings in JSON format for the source DocumentDB endpoint. For more information about
    #            the available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html"> Using
    #               DocumentDB as a Target for Database Migration Service </a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    # @option params [Types::RedisSettings] :redis_settings
    #   <p>Settings in JSON format for the Redis target endpoint.</p>
    # @option params [Boolean] :exact_settings
    #   <p>If this attribute is Y, the current call to <code>ModifyEndpoint</code> replaces all
    #            existing endpoint settings with the exact settings that you specify in this call. If this
    #            attribute is N, the current call to <code>ModifyEndpoint</code> does two things: </p>
    #            <ul>
    #               <li>
    #                  <p>It replaces any endpoint settings that already exist with new values, for settings
    #                  with the same names.</p>
    #               </li>
    #               <li>
    #                  <p>It creates new endpoint settings that you specify in the call, for settings with
    #                  different names. </p>
    #               </li>
    #            </ul>
    #            <p>For example, if you call <code>create-endpoint ... --endpoint-settings '{"a":1}'
    #               ...</code>, the endpoint has the following endpoint settings: <code>'{"a":1}'</code>. If
    #            you then call <code>modify-endpoint ... --endpoint-settings '{"b":2}' ...</code> for the
    #            same endpoint, the endpoint has the following settings: <code>'{"a":1,"b":2}'</code>. </p>
    #            <p>However, suppose that you follow this with a call to <code>modify-endpoint ...
    #               --endpoint-settings '{"b":2}' --exact-settings ...</code> for that same endpoint again.
    #            Then the endpoint has the following settings: <code>'{"b":2}'</code>. All existing settings
    #            are replaced with the exact settings that you specify. </p>
    # @option params [Types::GcpMySQLSettings] :gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    # @option params [Types::TimestreamSettings] :timestream_settings
    #   <p>Settings in JSON format for the target Amazon Timestream endpoint.</p>
    # @example Modify endpoint
    #   # Modifies the specified endpoint.
    #   params = {
    #     endpoint_arn: "",
    #     endpoint_identifier: "",
    #     endpoint_type: source,
    #     engine_name: "",
    #     username: "",
    #     password: "",
    #     server_name: "",
    #     port: 123,
    #     database_name: "",
    #     extra_connection_attributes: "",
    #     certificate_arn: "",
    #     ssl_mode: require
    #   }
    #   options = {}
    #   response = client.modify_endpoint(params, options)
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #     endpoint_identifier: "String",
    #     endpoint_type: "source" # One of: ["source", "target"],
    #     engine_name: "String",
    #     username: "String",
    #     password: "SecretString",
    #     server_name: "String",
    #     port: 1,
    #     database_name: "String",
    #     extra_connection_attributes: "String",
    #     certificate_arn: "String",
    #     ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #     service_access_role_arn: "String",
    #     external_table_definition: "String",
    #     dynamo_db_settings: {
    #       service_access_role_arn: "String", # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       csv_row_delimiter: "String",
    #       csv_delimiter: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       compression_type: "none" # One of: ["none", "gzip"],
    #       encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #       server_side_encryption_kms_key_id: "String",
    #       data_format: "csv" # One of: ["csv", "parquet"],
    #       encoding_type: "plain" # One of: ["plain", "plain-dictionary", "rle-dictionary"],
    #       dict_page_size_limit: 1,
    #       row_group_length: 1,
    #       data_page_size: 1,
    #       parquet_version: "parquet-1-0" # One of: ["parquet-1-0", "parquet-2-0"],
    #       enable_statistics: false,
    #       include_op_for_full_load: false,
    #       cdc_inserts_only: false,
    #       timestamp_column_name: "String",
    #       parquet_timestamp_in_millisecond: false,
    #       cdc_inserts_and_updates: false,
    #       date_partition_enabled: false,
    #       date_partition_sequence: "YYYYMMDD" # One of: ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"],
    #       date_partition_delimiter: "SLASH" # One of: ["SLASH", "UNDERSCORE", "DASH", "NONE"],
    #       use_csv_no_sup_value: false,
    #       csv_no_sup_value: "String",
    #       preserve_transactions: false,
    #       cdc_path: "String",
    #       use_task_start_time_for_full_load_timestamp: false,
    #       canned_acl_for_objects: "none" # One of: ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"],
    #       add_column_name: false,
    #       cdc_max_batch_interval: 1,
    #       cdc_min_file_size: 1,
    #       csv_null_value: "String",
    #       ignore_header_rows: 1,
    #       max_file_size: 1,
    #       rfc4180: false,
    #       date_partition_timezone: "String",
    #       add_trailing_padding_character: false,
    #       expected_bucket_owner: "String",
    #       glue_catalog_generation: false
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: "String",
    #       bucket_name: "String"
    #     },
    #     mongo_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       auth_type: "no" # One of: ["no", "password"],
    #       auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"],
    #       nesting_level: "none" # One of: ["none", "one"],
    #       extract_doc_id: "String",
    #       docs_to_investigate: "String",
    #       auth_source: "String",
    #       kms_key_id: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       use_update_look_up: false,
    #       replicate_shard_collections: false
    #     },
    #     kinesis_settings: {
    #       stream_arn: "String",
    #       message_format: "json" # One of: ["json", "json-unformatted"],
    #       service_access_role_arn: "String",
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       include_null_and_empty: false,
    #       no_hex_prefix: false,
    #       use_large_integer_value: false
    #     },
    #     kafka_settings: {
    #       broker: "String",
    #       topic: "String",
    #       message_format: "json" # One of: ["json", "json-unformatted"],
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       message_max_bytes: 1,
    #       include_null_and_empty: false,
    #       security_protocol: "plaintext" # One of: ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"],
    #       ssl_client_certificate_arn: "String",
    #       ssl_client_key_arn: "String",
    #       ssl_client_key_password: "SecretString",
    #       ssl_ca_certificate_arn: "String",
    #       sasl_username: "String",
    #       sasl_password: "SecretString",
    #       no_hex_prefix: false,
    #       sasl_mechanism: "scram-sha-512" # One of: ["scram-sha-512", "plain"],
    #       ssl_endpoint_identification_algorithm: "none" # One of: ["none", "https"],
    #       use_large_integer_value: false
    #     },
    #     elasticsearch_settings: {
    #       service_access_role_arn: "String", # required
    #       endpoint_uri: "String", # required
    #       full_load_error_percentage: 1,
    #       error_retry_duration: 1,
    #       use_new_mapping_type: false
    #     },
    #     neptune_settings: {
    #       service_access_role_arn: "String",
    #       s3_bucket_name: "String", # required
    #       s3_bucket_folder: "String", # required
    #       error_retry_duration: 1,
    #       max_file_size: 1,
    #       max_retry_count: 1,
    #       iam_auth_enabled: false
    #     },
    #     redshift_settings: {
    #       accept_any_date: false,
    #       after_connect_script: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       case_sensitive_names: false,
    #       comp_update: false,
    #       connection_timeout: 1,
    #       database_name: "String",
    #       date_format: "String",
    #       empty_as_null: false,
    #       encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #       explicit_ids: false,
    #       file_transfer_upload_streams: 1,
    #       load_timeout: 1,
    #       max_file_size: 1,
    #       password: "SecretString",
    #       port: 1,
    #       remove_quotes: false,
    #       replace_invalid_chars: "String",
    #       replace_chars: "String",
    #       server_name: "String",
    #       service_access_role_arn: "String",
    #       server_side_encryption_kms_key_id: "String",
    #       time_format: "String",
    #       trim_blanks: false,
    #       truncate_columns: false,
    #       username: "String",
    #       write_buffer_size: 1,
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       map_boolean_as_boolean: false
    #     },
    #     postgre_sql_settings: {
    #       after_connect_script: "String",
    #       capture_ddls: false,
    #       max_file_size: 1,
    #       database_name: "String",
    #       ddl_artifacts_schema: "String",
    #       execute_timeout: 1,
    #       fail_tasks_on_lob_truncation: false,
    #       heartbeat_enable: false,
    #       heartbeat_schema: "String",
    #       heartbeat_frequency: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #       slot_name: "String",
    #       plugin_name: "no-preference" # One of: ["no-preference", "test-decoding", "pglogical"],
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       trim_space_in_char: false,
    #       map_boolean_as_boolean: false,
    #       map_jsonb_as_clob: false,
    #       map_long_varchar_as: "wstring" # One of: ["wstring", "clob", "nclob"],
    #       database_mode: "default" # One of: ["default", "babelfish"],
    #       babelfish_database_name: "String",
    #       disable_unicode_source_filter: false,
    #       service_access_role_arn: "String",
    #       authentication_method: "password" # One of: ["password", "iam"]
    #     },
    #     my_sql_settings: {
    #       after_connect_script: "String",
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: "String",
    #       events_poll_interval: 1,
    #       target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       server_timezone: "String",
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       execute_timeout: 1,
    #       service_access_role_arn: "String",
    #       authentication_method: "password" # One of: ["password", "iam"]
    #     },
    #     oracle_settings: {
    #       add_supplemental_logging: false,
    #       archived_log_dest_id: 1,
    #       additional_archived_log_dest_id: 1,
    #       extra_archived_log_dest_ids: [1],
    #       allow_select_nested_tables: false,
    #       parallel_asm_read_threads: 1,
    #       read_ahead_blocks: 1,
    #       access_alternate_directly: false,
    #       use_alternate_folder_for_online: false,
    #       oracle_path_prefix: "String",
    #       use_path_prefix: "String",
    #       replace_path_prefix: false,
    #       enable_homogenous_tablespace: false,
    #       direct_path_no_log: false,
    #       archived_logs_only: false,
    #       asm_password: "SecretString",
    #       asm_server: "String",
    #       asm_user: "String",
    #       char_length_semantics: "default" # One of: ["default", "char", "byte"],
    #       database_name: "String",
    #       direct_path_parallel_load: false,
    #       fail_tasks_on_lob_truncation: false,
    #       number_datatype_scale: 1,
    #       password: "SecretString",
    #       port: 1,
    #       read_table_space_name: false,
    #       retry_interval: 1,
    #       security_db_encryption: "SecretString",
    #       security_db_encryption_name: "String",
    #       server_name: "String",
    #       spatial_data_option_to_geo_json_function_name: "String",
    #       standby_delay_time: 1,
    #       username: "String",
    #       use_b_file: false,
    #       use_direct_path_full_load: false,
    #       use_logminer_reader: false,
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       secrets_manager_oracle_asm_access_role_arn: "String",
    #       secrets_manager_oracle_asm_secret_id: "String",
    #       trim_space_in_char: false,
    #       convert_timestamp_with_zone_to_utc: false,
    #       open_transaction_window: 1,
    #       authentication_method: "password" # One of: ["password", "kerberos"]
    #     },
    #     sybase_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String"
    #     },
    #     microsoft_sql_server_settings: {
    #       port: 1,
    #       bcp_packet_size: 1,
    #       database_name: "String",
    #       control_tables_file_group: "String",
    #       password: "SecretString",
    #       query_single_always_on_node: false,
    #       read_backup_only: false,
    #       safeguard_policy: "rely-on-sql-server-replication-agent" # One of: ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"],
    #       server_name: "String",
    #       username: "String",
    #       use_bcp_full_load: false,
    #       use_third_party_backup_device: false,
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       trim_space_in_char: false,
    #       tlog_access_mode: "BackupOnly" # One of: ["BackupOnly", "PreferBackup", "PreferTlog", "TlogOnly"],
    #       force_lob_lookup: false,
    #       authentication_method: "password" # One of: ["password", "kerberos"]
    #     },
    #     ibm_db2_settings: {
    #       database_name: "String",
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       set_data_capture_changes: false,
    #       current_lsn: "String",
    #       max_k_bytes_per_read: 1,
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       load_timeout: 1,
    #       write_buffer_size: 1,
    #       max_file_size: 1,
    #       keep_csv_files: false
    #     },
    #     doc_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       nesting_level: "none" # One of: ["none", "one"],
    #       extract_doc_id: false,
    #       docs_to_investigate: 1,
    #       kms_key_id: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String",
    #       use_update_look_up: false,
    #       replicate_shard_collections: false
    #     },
    #     redis_settings: {
    #       server_name: "String", # required
    #       port: 1, # required
    #       ssl_security_protocol: "plaintext" # One of: ["plaintext", "ssl-encryption"],
    #       auth_type: "none" # One of: ["none", "auth-role", "auth-token"],
    #       auth_user_name: "String",
    #       auth_password: "SecretString",
    #       ssl_ca_certificate_arn: "String"
    #     },
    #     exact_settings: false,
    #     gcp_my_sql_settings: {
    #       after_connect_script: "String",
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: "String",
    #       events_poll_interval: 1,
    #       target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: "SecretString",
    #       port: 1,
    #       server_name: "String",
    #       server_timezone: "String",
    #       username: "String",
    #       secrets_manager_access_role_arn: "String",
    #       secrets_manager_secret_id: "String"
    #     },
    #     timestream_settings: {
    #       database_name: "String", # required
    #       memory_duration: 1, # required
    #       magnetic_duration: 1, # required
    #       cdc_inserts_and_updates: false,
    #       enable_magnetic_store_writes: false
    #     }
    #   }
    #   options = {}
    #   response = client.modify_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       endpoint_identifier: "String",
    #       endpoint_type: "source" # One of: ["source", "target"],
    #       engine_name: "String",
    #       engine_display_name: "String",
    #       username: "String",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       extra_connection_attributes: "String",
    #       status: "String",
    #       kms_key_id: "String",
    #       endpoint_arn: "String",
    #       certificate_arn: "String",
    #       ssl_mode: "none" # One of: ["none", "require", "verify-ca", "verify-full"],
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       external_id: "String",
    #       dynamo_db_settings: {
    #         service_access_role_arn: "String", # required
    #       },
    #       s3_settings: {
    #         service_access_role_arn: "String",
    #         external_table_definition: "String",
    #         csv_row_delimiter: "String",
    #         csv_delimiter: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         compression_type: "none" # One of: ["none", "gzip"],
    #         encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #         server_side_encryption_kms_key_id: "String",
    #         data_format: "csv" # One of: ["csv", "parquet"],
    #         encoding_type: "plain" # One of: ["plain", "plain-dictionary", "rle-dictionary"],
    #         dict_page_size_limit: 1,
    #         row_group_length: 1,
    #         data_page_size: 1,
    #         parquet_version: "parquet-1-0" # One of: ["parquet-1-0", "parquet-2-0"],
    #         enable_statistics: false,
    #         include_op_for_full_load: false,
    #         cdc_inserts_only: false,
    #         timestamp_column_name: "String",
    #         parquet_timestamp_in_millisecond: false,
    #         cdc_inserts_and_updates: false,
    #         date_partition_enabled: false,
    #         date_partition_sequence: "YYYYMMDD" # One of: ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"],
    #         date_partition_delimiter: "SLASH" # One of: ["SLASH", "UNDERSCORE", "DASH", "NONE"],
    #         use_csv_no_sup_value: false,
    #         csv_no_sup_value: "String",
    #         preserve_transactions: false,
    #         cdc_path: "String",
    #         use_task_start_time_for_full_load_timestamp: false,
    #         canned_acl_for_objects: "none" # One of: ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"],
    #         add_column_name: false,
    #         cdc_max_batch_interval: 1,
    #         cdc_min_file_size: 1,
    #         csv_null_value: "String",
    #         ignore_header_rows: 1,
    #         max_file_size: 1,
    #         rfc4180: false,
    #         date_partition_timezone: "String",
    #         add_trailing_padding_character: false,
    #         expected_bucket_owner: "String",
    #         glue_catalog_generation: false
    #       },
    #       dms_transfer_settings: {
    #         service_access_role_arn: "String",
    #         bucket_name: "String"
    #       },
    #       mongo_db_settings: {
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         auth_type: "no" # One of: ["no", "password"],
    #         auth_mechanism: "default" # One of: ["default", "mongodb_cr", "scram_sha_1"],
    #         nesting_level: "none" # One of: ["none", "one"],
    #         extract_doc_id: "String",
    #         docs_to_investigate: "String",
    #         auth_source: "String",
    #         kms_key_id: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         use_update_look_up: false,
    #         replicate_shard_collections: false
    #       },
    #       kinesis_settings: {
    #         stream_arn: "String",
    #         message_format: "json" # One of: ["json", "json-unformatted"],
    #         service_access_role_arn: "String",
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         include_null_and_empty: false,
    #         no_hex_prefix: false,
    #         use_large_integer_value: false
    #       },
    #       kafka_settings: {
    #         broker: "String",
    #         topic: "String",
    #         message_format: "json" # One of: ["json", "json-unformatted"],
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         message_max_bytes: 1,
    #         include_null_and_empty: false,
    #         security_protocol: "plaintext" # One of: ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"],
    #         ssl_client_certificate_arn: "String",
    #         ssl_client_key_arn: "String",
    #         ssl_client_key_password: "SecretString",
    #         ssl_ca_certificate_arn: "String",
    #         sasl_username: "String",
    #         sasl_password: "SecretString",
    #         no_hex_prefix: false,
    #         sasl_mechanism: "scram-sha-512" # One of: ["scram-sha-512", "plain"],
    #         ssl_endpoint_identification_algorithm: "none" # One of: ["none", "https"],
    #         use_large_integer_value: false
    #       },
    #       elasticsearch_settings: {
    #         service_access_role_arn: "String", # required
    #         endpoint_uri: "String", # required
    #         full_load_error_percentage: 1,
    #         error_retry_duration: 1,
    #         use_new_mapping_type: false
    #       },
    #       neptune_settings: {
    #         service_access_role_arn: "String",
    #         s3_bucket_name: "String", # required
    #         s3_bucket_folder: "String", # required
    #         error_retry_duration: 1,
    #         max_file_size: 1,
    #         max_retry_count: 1,
    #         iam_auth_enabled: false
    #       },
    #       redshift_settings: {
    #         accept_any_date: false,
    #         after_connect_script: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         case_sensitive_names: false,
    #         comp_update: false,
    #         connection_timeout: 1,
    #         database_name: "String",
    #         date_format: "String",
    #         empty_as_null: false,
    #         encryption_mode: "sse-s3" # One of: ["sse-s3", "sse-kms"],
    #         explicit_ids: false,
    #         file_transfer_upload_streams: 1,
    #         load_timeout: 1,
    #         max_file_size: 1,
    #         password: "SecretString",
    #         port: 1,
    #         remove_quotes: false,
    #         replace_invalid_chars: "String",
    #         replace_chars: "String",
    #         server_name: "String",
    #         service_access_role_arn: "String",
    #         server_side_encryption_kms_key_id: "String",
    #         time_format: "String",
    #         trim_blanks: false,
    #         truncate_columns: false,
    #         username: "String",
    #         write_buffer_size: 1,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         map_boolean_as_boolean: false
    #       },
    #       postgre_sql_settings: {
    #         after_connect_script: "String",
    #         capture_ddls: false,
    #         max_file_size: 1,
    #         database_name: "String",
    #         ddl_artifacts_schema: "String",
    #         execute_timeout: 1,
    #         fail_tasks_on_lob_truncation: false,
    #         heartbeat_enable: false,
    #         heartbeat_schema: "String",
    #         heartbeat_frequency: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #         slot_name: "String",
    #         plugin_name: "no-preference" # One of: ["no-preference", "test-decoding", "pglogical"],
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         trim_space_in_char: false,
    #         map_boolean_as_boolean: false,
    #         map_jsonb_as_clob: false,
    #         map_long_varchar_as: "wstring" # One of: ["wstring", "clob", "nclob"],
    #         database_mode: "default" # One of: ["default", "babelfish"],
    #         babelfish_database_name: "String",
    #         disable_unicode_source_filter: false,
    #         service_access_role_arn: "String",
    #         authentication_method: "password" # One of: ["password", "iam"]
    #       },
    #       my_sql_settings: {
    #         after_connect_script: "String",
    #         clean_source_metadata_on_mismatch: false,
    #         database_name: "String",
    #         events_poll_interval: 1,
    #         target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #         max_file_size: 1,
    #         parallel_load_threads: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         server_timezone: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         execute_timeout: 1,
    #         service_access_role_arn: "String",
    #         authentication_method: "password" # One of: ["password", "iam"]
    #       },
    #       oracle_settings: {
    #         add_supplemental_logging: false,
    #         archived_log_dest_id: 1,
    #         additional_archived_log_dest_id: 1,
    #         extra_archived_log_dest_ids: [1],
    #         allow_select_nested_tables: false,
    #         parallel_asm_read_threads: 1,
    #         read_ahead_blocks: 1,
    #         access_alternate_directly: false,
    #         use_alternate_folder_for_online: false,
    #         oracle_path_prefix: "String",
    #         use_path_prefix: "String",
    #         replace_path_prefix: false,
    #         enable_homogenous_tablespace: false,
    #         direct_path_no_log: false,
    #         archived_logs_only: false,
    #         asm_password: "SecretString",
    #         asm_server: "String",
    #         asm_user: "String",
    #         char_length_semantics: "default" # One of: ["default", "char", "byte"],
    #         database_name: "String",
    #         direct_path_parallel_load: false,
    #         fail_tasks_on_lob_truncation: false,
    #         number_datatype_scale: 1,
    #         password: "SecretString",
    #         port: 1,
    #         read_table_space_name: false,
    #         retry_interval: 1,
    #         security_db_encryption: "SecretString",
    #         security_db_encryption_name: "String",
    #         server_name: "String",
    #         spatial_data_option_to_geo_json_function_name: "String",
    #         standby_delay_time: 1,
    #         username: "String",
    #         use_b_file: false,
    #         use_direct_path_full_load: false,
    #         use_logminer_reader: false,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         secrets_manager_oracle_asm_access_role_arn: "String",
    #         secrets_manager_oracle_asm_secret_id: "String",
    #         trim_space_in_char: false,
    #         convert_timestamp_with_zone_to_utc: false,
    #         open_transaction_window: 1,
    #         authentication_method: "password" # One of: ["password", "kerberos"]
    #       },
    #       sybase_settings: {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String"
    #       },
    #       microsoft_sql_server_settings: {
    #         port: 1,
    #         bcp_packet_size: 1,
    #         database_name: "String",
    #         control_tables_file_group: "String",
    #         password: "SecretString",
    #         query_single_always_on_node: false,
    #         read_backup_only: false,
    #         safeguard_policy: "rely-on-sql-server-replication-agent" # One of: ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"],
    #         server_name: "String",
    #         username: "String",
    #         use_bcp_full_load: false,
    #         use_third_party_backup_device: false,
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         trim_space_in_char: false,
    #         tlog_access_mode: "BackupOnly" # One of: ["BackupOnly", "PreferBackup", "PreferTlog", "TlogOnly"],
    #         force_lob_lookup: false,
    #         authentication_method: "password" # One of: ["password", "kerberos"]
    #       },
    #       ibm_db2_settings: {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         set_data_capture_changes: false,
    #         current_lsn: "String",
    #         max_k_bytes_per_read: 1,
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         load_timeout: 1,
    #         write_buffer_size: 1,
    #         max_file_size: 1,
    #         keep_csv_files: false
    #       },
    #       doc_db_settings: {
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         nesting_level: "none" # One of: ["none", "one"],
    #         extract_doc_id: false,
    #         docs_to_investigate: 1,
    #         kms_key_id: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String",
    #         use_update_look_up: false,
    #         replicate_shard_collections: false
    #       },
    #       redis_settings: {
    #         server_name: "String", # required
    #         port: 1, # required
    #         ssl_security_protocol: "plaintext" # One of: ["plaintext", "ssl-encryption"],
    #         auth_type: "none" # One of: ["none", "auth-role", "auth-token"],
    #         auth_user_name: "String",
    #         auth_password: "SecretString",
    #         ssl_ca_certificate_arn: "String"
    #       },
    #       gcp_my_sql_settings: {
    #         after_connect_script: "String",
    #         clean_source_metadata_on_mismatch: false,
    #         database_name: "String",
    #         events_poll_interval: 1,
    #         target_db_type: "specific-database" # One of: ["specific-database", "multiple-databases"],
    #         max_file_size: 1,
    #         parallel_load_threads: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         server_timezone: "String",
    #         username: "String",
    #         secrets_manager_access_role_arn: "String",
    #         secrets_manager_secret_id: "String"
    #       },
    #       timestream_settings: {
    #         database_name: "String", # required
    #         memory_duration: 1, # required
    #         magnetic_duration: 1, # required
    #         cdc_inserts_and_updates: false,
    #         enable_magnetic_store_writes: false
    #       }
    #     }
    #   }
    # @return [Types::ModifyEndpointResponse]
    def modify_endpoint(params = {}, options = {})
      request = build_request(:modify_endpoint, params)
      request.send_request(options)
    end

    # <p>Modifies an existing DMS event notification subscription. </p>
    # @param [Hash, Types::ModifyEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event notification subscription to be modified.</p>
    # @option params [String] :sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    # @option params [String] :source_type
    #   <p> The type of DMS resource that generates the events you want to subscribe to. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a source type that you want to subscribe to. Use the
    #               <code>DescribeEventCategories</code> action to see a list of event categories. </p>
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #            subscription. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     event_categories: ["String"],
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.modify_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: "String",
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       enabled: false
    #     }
    #   }
    # @return [Types::ModifyEventSubscriptionResponse]
    def modify_event_subscription(params = {}, options = {})
      request = build_request(:modify_event_subscription, params)
      request.send_request(options)
    end

    # <p>Modifies the specified instance profile using the provided parameters.</p>
    #          <note>
    #             <p>All migration projects associated with the instance profile must be deleted or
    #             modified before you can modify the instance profile.</p>
    #          </note>
    # @param [Hash, Types::ModifyInstanceProfileMessage] params
    # @option params [String] :instance_profile_identifier
    #   <p>The identifier of the instance profile. Identifiers must begin with a letter and must contain 
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two consecutive 
    #            hyphens.</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where the instance profile runs.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to encrypt 
    #            the connection parameters for the instance profile.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyArn</code> parameter, then
    #            DMS uses an Amazon Web Services owned encryption key to encrypt your resources.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Specifies the accessibility options for the instance profile. A value of
    #            <code>true</code> represents an instance profile with a public IP address. A value of
    #            <code>false</code> represents an instance profile with a private IP address. The default value
    #            is <code>true</code>.</p>
    # @option params [String] :network_type
    #   <p>Specifies the network type for the instance profile. A value of <code>IPV4</code> 
    #            represents an instance profile with IPv4 network type and only supports IPv4 addressing. 
    #            A value of <code>IPV6</code> represents an instance profile with IPv6 network type 
    #            and only supports IPv6 addressing. A value of <code>DUAL</code> represents an instance 
    #            profile with dual network type that supports IPv4 and IPv6 addressing.</p>
    # @option params [String] :instance_profile_name
    #   <p>A user-friendly name for the instance profile.</p>
    # @option params [String] :description
    #   <p>A user-friendly description for the instance profile.</p>
    # @option params [String] :subnet_group_identifier
    #   <p>A subnet group to associate with the instance profile.</p>
    # @option params [Array<String>] :vpc_security_groups
    #   <p>Specifies the VPC security groups to be used with the instance profile. 
    #            The VPC security group must work with the VPC containing the instance profile.</p>
    # @example Modify Instance Profile
    #   # Modifies the specified instance profile using the provided parameters.
    #   params = {
    #     instance_profile_identifier: "",
    #     availability_zone: "",
    #     kms_key_arn: "",
    #     publicly_accessible: true,
    #     network_type: "",
    #     instance_profile_name: "",
    #     description: "",
    #     subnet_group_identifier: "",
    #     vpc_security_groups: [
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_instance_profile(params, options)
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       subnet_group_identifier: "public-subnets",
    #       vpc_security_groups: [
    #         "sg-0123456"
    #       ],
    #       publicly_accessible: true,
    #       kms_key_arn: "arn:aws:kms:us-east-1:012345678901:key/01234567-89ab-cdef-0123-456789abcdef",
    #       instance_profile_creation_time: Time.parse("2022-12-16T09:44:43.543246Z"),
    #       instance_profile_name: "my-instance-profile",
    #       instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:my-instance-profile"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_identifier: "String", # required
    #     availability_zone: "String",
    #     kms_key_arn: "String",
    #     publicly_accessible: false,
    #     network_type: "String",
    #     instance_profile_name: "String",
    #     description: "String",
    #     subnet_group_identifier: "String",
    #     vpc_security_groups: ["String"]
    #   }
    #   options = {}
    #   response = client.modify_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       instance_profile_arn: "String",
    #       availability_zone: "String",
    #       kms_key_arn: "String",
    #       publicly_accessible: false,
    #       network_type: "String",
    #       instance_profile_name: "String",
    #       description: "String",
    #       instance_profile_creation_time: Time.now,
    #       subnet_group_identifier: "String",
    #       vpc_security_groups: ["String"]
    #     }
    #   }
    # @return [Types::ModifyInstanceProfileResponse]
    def modify_instance_profile(params = {}, options = {})
      request = build_request(:modify_instance_profile, params)
      request.send_request(options)
    end

    # <p>Modifies the specified migration project using the provided parameters.</p>
    #          <note>
    #             <p>The migration project must be closed before you can modify it.</p>
    #          </note>
    # @param [Hash, Types::ModifyMigrationProjectMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The identifier of the migration project. Identifiers must begin with a letter 
    #            and must contain only ASCII letters, digits, and hyphens. They can't end with 
    #            a hyphen, or contain two consecutive hyphens.</p>
    # @option params [String] :migration_project_name
    #   <p>A user-friendly name for the migration project.</p>
    # @option params [Array<Types::DataProviderDescriptorDefinition>] :source_data_provider_descriptors
    #   <p>Information about the source data provider, including the name, ARN, and Amazon Web Services Secrets Manager parameters.</p>
    # @option params [Array<Types::DataProviderDescriptorDefinition>] :target_data_provider_descriptors
    #   <p>Information about the target data provider, including the name, ARN, and Amazon Web Services Secrets Manager parameters.</p>
    # @option params [String] :instance_profile_identifier
    #   <p>The name or Amazon Resource Name (ARN) for the instance profile.</p>
    # @option params [String] :transformation_rules
    #   <p>The settings in JSON format for migration rules. Migration rules make it possible for you to change 
    #            the object names according to the rules that you specify. For example, you can change an object name 
    #            to lowercase or uppercase, add or remove a prefix or suffix, or rename objects.</p>
    # @option params [String] :description
    #   <p>A user-friendly description of the migration project.</p>
    # @option params [Types::SCApplicationAttributes] :schema_conversion_application_attributes
    #   <p>The schema conversion application attributes, including the Amazon S3 bucket name and Amazon S3 role ARN.</p>
    # @example Modify Migration Project
    #   # Modifies the specified migration project using the provided parameters.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #     migration_project_name: "new-name",
    #     source_data_provider_descriptors: [
    #       {
    #         data_provider_identifier: "arn:aws:dms:us-east-1:012345678901:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #         secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myorg/myuser/ALL.SOURCE.ORACLE_12-A1B2C3",
    #         secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/myuser-admin-access"
    #       }
    #     ],
    #     target_data_provider_descriptors: [
    #       {
    #         data_provider_identifier: "arn:aws:dms:us-east-1:012345678901:data-provider:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #         secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:myorg/myuser/TARGET.postgresql-A1B2C3",
    #         secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/myuser-admin-access"
    #       }
    #     ],
    #     instance_profile_identifier: "my-instance-profile",
    #     schema_conversion_application_attributes: {
    #       s3_bucket_path: "arn:aws:s3:::myuser-bucket",
    #       s3_bucket_role_arn: "arn:aws:iam::012345678901:role/Admin"
    #     },
    #     description: "description"
    #   }
    #   options = {}
    #   response = client.modify_migration_project(params, options)
    #   response.to_h #=>
    #   {
    #     migration_project: {
    #       schema_conversion_application_attributes: {
    #         s3_bucket_path: "my-s3-bucket/my_folder",
    #         s3_bucket_role_arn: "arn:aws:iam::012345678901:role/my-s3role"
    #       },
    #       source_data_provider_descriptors: [
    #         {
    #           secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/my-access-role",
    #           secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:mygroup/myalias/ALL.SOURCE.ORACLE_12-TP5rA9",
    #           data_provider_name: "all-source-oracle-12",
    #           data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #         }
    #       ],
    #       migration_project_creation_time: Time.parse("2023-04-19T11:45:15.805253Z"),
    #       instance_profile_arn: "arn:aws:dms:us-east-1:012345678901:instance-profile:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #       migration_project_name: "my-migration-project",
    #       migration_project_arn: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #       instance_profile_name: "my-instance-profile",
    #       target_data_provider_descriptors: [
    #         {
    #           secrets_manager_access_role_arn: "arn:aws:iam::012345678901:role/my-access-role",
    #           secrets_manager_secret_id: "arn:aws:secretsmanager:us-east-1:012345678901:secret:mygroup/myalias/TARGET.postgresql-mysecret",
    #           data_provider_name: "my-dataprovider",
    #           data_provider_arn: "arn:aws:dms:us-east-1:012345678901:data-provider:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "String", # required
    #     migration_project_name: "String",
    #     source_data_provider_descriptors: [
    #       {
    #         data_provider_identifier: "String", # required
    #         secrets_manager_secret_id: "String",
    #         secrets_manager_access_role_arn: "String"
    #       }
    #     ],
    #     target_data_provider_descriptors: [
    #       {
    #         data_provider_identifier: "String", # required
    #         secrets_manager_secret_id: "String",
    #         secrets_manager_access_role_arn: "String"
    #       }
    #     ],
    #     instance_profile_identifier: "String",
    #     transformation_rules: "String",
    #     description: "String",
    #     schema_conversion_application_attributes: {
    #       s3_bucket_path: "String",
    #       s3_bucket_role_arn: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.modify_migration_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_project: {
    #       migration_project_name: "String",
    #       migration_project_arn: "String",
    #       migration_project_creation_time: Time.now,
    #       source_data_provider_descriptors: [
    #         {
    #           secrets_manager_secret_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           data_provider_name: "String",
    #           data_provider_arn: "String"
    #         }
    #       ],
    #       target_data_provider_descriptors: [
    #         {
    #           secrets_manager_secret_id: "String",
    #           secrets_manager_access_role_arn: "String",
    #           data_provider_name: "String",
    #           data_provider_arn: "String"
    #         }
    #       ],
    #       instance_profile_arn: "String",
    #       instance_profile_name: "String",
    #       transformation_rules: "String",
    #       description: "String",
    #       schema_conversion_application_attributes: {
    #         s3_bucket_path: "String",
    #         s3_bucket_role_arn: "String"
    #       }
    #     }
    #   }
    # @return [Types::ModifyMigrationProjectResponse]
    def modify_migration_project(params = {}, options = {})
      request = build_request(:modify_migration_project, params)
      request.send_request(options)
    end

    # <p>Modifies an existing DMS Serverless replication configuration that you can use to
    #          start a replication. This command includes input validation and logic to check the state of
    #          any replication that uses this configuration. You can only modify a replication
    #          configuration before any replication that uses it has started. As soon as you have
    #          initially started a replication with a given configuiration, you can't modify that
    #          configuration, even if you stop it.</p>
    #          <p>Other run statuses that allow you to run this command include FAILED and CREATED. A
    #          provisioning state that allows you to run this command is FAILED_PROVISION.</p>
    # @param [Hash, Types::ModifyReplicationConfigMessage] params
    # @option params [String] :replication_config_arn
    #   <p>The Amazon Resource Name of the replication to modify.</p>
    # @option params [String] :replication_config_identifier
    #   <p>The new replication config to apply to the replication.</p>
    # @option params [String] :replication_type
    #   <p>The type of replication.</p>
    # @option params [String] :table_mappings
    #   <p>Table mappings specified in the replication.</p>
    # @option params [String] :replication_settings
    #   <p>The settings for the replication.</p>
    # @option params [String] :supplemental_settings
    #   <p>Additional settings for the replication.</p>
    # @option params [Types::ComputeConfig] :compute_config
    #   <p>Configuration parameters for provisioning an DMS Serverless replication.</p>
    # @option params [String] :source_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the source endpoint for this DMS serverless
    #            replication configuration.</p>
    # @option params [String] :target_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the target endpoint for this DMS serverless
    #            replication configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_config_arn: "String", # required
    #     replication_config_identifier: "String",
    #     replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #     table_mappings: "String",
    #     replication_settings: "String",
    #     supplemental_settings: "String",
    #     compute_config: {
    #       availability_zone: "String",
    #       dns_name_servers: "String",
    #       kms_key_id: "String",
    #       max_capacity_units: 1,
    #       min_capacity_units: 1,
    #       multi_az: false,
    #       preferred_maintenance_window: "String",
    #       replication_subnet_group_id: "String",
    #       vpc_security_group_ids: ["String"]
    #     },
    #     source_endpoint_arn: "String",
    #     target_endpoint_arn: "String"
    #   }
    #   options = {}
    #   response = client.modify_replication_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_config: {
    #       replication_config_identifier: "String",
    #       replication_config_arn: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       compute_config: {
    #         availability_zone: "String",
    #         dns_name_servers: "String",
    #         kms_key_id: "String",
    #         max_capacity_units: 1,
    #         min_capacity_units: 1,
    #         multi_az: false,
    #         preferred_maintenance_window: "String",
    #         replication_subnet_group_id: "String",
    #         vpc_security_group_ids: ["String"]
    #       },
    #       replication_settings: "String",
    #       supplemental_settings: "String",
    #       table_mappings: "String",
    #       replication_config_create_time: Time.now,
    #       replication_config_update_time: Time.now
    #     }
    #   }
    # @return [Types::ModifyReplicationConfigResponse]
    def modify_replication_config(params = {}, options = {})
      request = build_request(:modify_replication_config, params)
      request.send_request(options)
    end

    # <p>Modifies the replication instance to apply new settings. You can change one or more
    #          parameters by specifying these parameters and the new values in the request.</p>
    #          <p>Some settings are applied during the maintenance window.</p>
    #          <p></p>
    # @param [Hash, Types::ModifyReplicationInstanceMessage] params
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    # @option params [Integer] :allocated_storage
    #   <p>The amount of storage (in gigabytes) to be allocated for the replication
    #            instance.</p>
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates whether the changes should be applied immediately or during the next
    #            maintenance window.</p>
    # @option params [String] :replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set
    #            this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication
    #            instance classes, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth"> Selecting the right DMS replication instance for your
    #               migration</a>. </p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #            result in an outage. Changing this parameter does not result in an outage, except in the
    #            following situation, and the change is asynchronously applied as soon as possible. If
    #            moving this window to the current time, there must be at least 30 minutes between the
    #            current time and end of the window to ensure pending changes are applied.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes</p>
    # @option params [Boolean] :multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set
    #            the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    # @option params [String] :engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>When modifying a major engine version of an instance, also set
    #               <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>Indicates that major version upgrades are allowed. Changing this parameter does not
    #            result in an outage, and the change is asynchronously applied as soon as possible.</p>
    #            <p>This parameter must be set to <code>true</code> when specifying a value for the
    #               <code>EngineVersion</code> parameter that is a different major version than the
    #            replication instance's current version.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>A value that indicates that minor version upgrades are applied automatically to the
    #            replication instance during the maintenance window. Changing this parameter doesn't result
    #            in an outage, except in the case described following. The change is asynchronously applied
    #            as soon as possible. </p>
    #            <p>An outage does result if these factors apply: </p>
    #            <ul>
    #               <li>
    #                  <p>This parameter is set to <code>true</code> during the maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>A newer minor version is available. </p>
    #               </li>
    #               <li>
    #                  <p>DMS has enabled automatic patching for the given engine version. </p>
    #               </li>
    #            </ul>
    # @option params [String] :replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    # @option params [String] :network_type
    #   <p>The type of IP address protocol used by a replication instance, such as IPv4 only or
    #            Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet
    #            supported.</p>
    # @option params [Types::KerberosAuthenticationSettings] :kerberos_authentication_settings
    #   <p>Specifies the settings required for kerberos authentication when modifying a replication
    #            instance.</p>
    # @example Modify replication instance
    #   # Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request. Some settings are applied during the maintenance window.
    #   params = {
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #     allocated_storage: 123,
    #     apply_immediately: true,
    #     replication_instance_class: "dms.t2.micro",
    #     vpc_security_group_ids: [
    #     ],
    #     preferred_maintenance_window: "sun:06:00-sun:14:00",
    #     multi_az: true,
    #     engine_version: "1.5.0",
    #     allow_major_version_upgrade: true,
    #     auto_minor_version_upgrade: true,
    #     replication_instance_identifier: "test-rep-1"
    #   }
    #   options = {}
    #   response = client.modify_replication_instance(params, options)
    #   response.to_h #=>
    #   {
    #     replication_instance: {
    #       publicly_accessible: true,
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #       replication_instance_class: "dms.t2.micro",
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default",
    #         subnets: [
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-f6dd91af",
    #             subnet_availability_zone: {
    #               name: "us-east-1d"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-3605751d",
    #             subnet_availability_zone: {
    #               name: "us-east-1b"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-c2daefb5",
    #             subnet_availability_zone: {
    #               name: "us-east-1c"
    #             }
    #           },
    #           {
    #             subnet_status: "Active",
    #             subnet_identifier: "subnet-85e90cb8",
    #             subnet_availability_zone: {
    #               name: "us-east-1e"
    #             }
    #           }
    #         ],
    #         vpc_id: "vpc-6741a603",
    #         subnet_group_status: "Complete",
    #         replication_subnet_group_identifier: "default"
    #       },
    #       auto_minor_version_upgrade: true,
    #       replication_instance_status: "available",
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
    #       allocated_storage: 5,
    #       engine_version: "1.5.0",
    #       replication_instance_identifier: "test-rep-1",
    #       preferred_maintenance_window: "sun:06:00-sun:14:00",
    #       pending_modified_values: {
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_arn: "String", # required
    #     allocated_storage: 1,
    #     apply_immediately: false,
    #     replication_instance_class: "ReplicationInstanceClass",
    #     vpc_security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     replication_instance_identifier: "String",
    #     network_type: "String",
    #     kerberos_authentication_settings: {
    #       key_cache_secret_id: "String",
    #       key_cache_secret_iam_arn: "String",
    #       krb5_file_contents: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.modify_replication_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_instance: {
    #       replication_instance_identifier: "String",
    #       replication_instance_class: "ReplicationInstanceClass",
    #       replication_instance_status: "String",
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       replication_subnet_group: {
    #         replication_subnet_group_identifier: "String",
    #         replication_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         supported_network_types: ["String"]
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         replication_instance_class: "ReplicationInstanceClass",
    #         allocated_storage: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         network_type: "String"
    #       },
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       kms_key_id: "String",
    #       replication_instance_arn: "String",
    #       replication_instance_public_ip_address: "String",
    #       replication_instance_private_ip_address: "String",
    #       replication_instance_public_ip_addresses: ["String"],
    #       replication_instance_private_ip_addresses: ["String"],
    #       replication_instance_ipv6_addresses: ["String"],
    #       publicly_accessible: false,
    #       secondary_availability_zone: "String",
    #       free_until: Time.now,
    #       dns_name_servers: "String",
    #       network_type: "String",
    #       kerberos_authentication_settings: {
    #         key_cache_secret_id: "String",
    #         key_cache_secret_iam_arn: "String",
    #         krb5_file_contents: "String"
    #       }
    #     }
    #   }
    # @return [Types::ModifyReplicationInstanceResponse]
    def modify_replication_instance(params = {}, options = {})
      request = build_request(:modify_replication_instance, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for the specified replication subnet group.</p>
    # @param [Hash, Types::ModifyReplicationSubnetGroupMessage] params
    # @option params [String] :replication_subnet_group_identifier
    #   <p>The name of the replication instance subnet group.</p>
    # @option params [String] :replication_subnet_group_description
    #   <p>A description for the replication instance subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs.</p>
    # @example Modify replication subnet group
    #   # Modifies the settings for the specified replication subnet group.
    #   params = {
    #     replication_subnet_group_identifier: "",
    #     replication_subnet_group_description: "",
    #     subnet_ids: [
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_replication_subnet_group(params, options)
    #   response.to_h #=>
    #   {
    #     replication_subnet_group: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_subnet_group_identifier: "String", # required
    #     replication_subnet_group_description: "String",
    #     subnet_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.modify_replication_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_subnet_group: {
    #       replication_subnet_group_identifier: "String",
    #       replication_subnet_group_description: "String",
    #       vpc_id: "String",
    #       subnet_group_status: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String"
    #           },
    #           subnet_status: "String"
    #         }
    #       ],
    #       supported_network_types: ["String"]
    #     }
    #   }
    # @return [Types::ModifyReplicationSubnetGroupResponse]
    def modify_replication_subnet_group(params = {}, options = {})
      request = build_request(:modify_replication_subnet_group, params)
      request.send_request(options)
    end

    # <p>Modifies the specified replication task.</p>
    #          <p>You can't modify the task endpoints. The task must be stopped before you can modify it. </p>
    #          <p>For more information about DMS tasks, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html">Working with Migration Tasks</a> in the
    #             <i>Database Migration Service User Guide</i>.</p>
    # @param [Hash, Types::ModifyReplicationTaskMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    # @option params [String] :replication_task_identifier
    #   <p>The replication task identifier.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> |
    #               <code>full-load-and-cdc</code>
    #            </p>
    # @option params [String] :table_mappings
    #   <p>When using the CLI or boto3, provide the path of the JSON file that contains the table
    #            mappings. Precede the path with <code>file://</code>. For example, <code>--table-mappings
    #               file://mappingfile.json</code>. When working with the DMS API, provide the JSON as the
    #            parameter value. </p>
    # @option params [String] :replication_task_settings
    #   <p>JSON file that contains settings for the task, such as task metadata settings.</p>
    # @option params [Time] :cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    # @option params [String] :cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    # @option params [String] :cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time:2018-02-09T12:12:12“</p>
    # @option params [String] :task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source
    #            and target endpoints. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for
    #               Task Settings</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #     replication_task_identifier: "String",
    #     migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #     table_mappings: "String",
    #     replication_task_settings: "String",
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #     task_data: "String"
    #   }
    #   options = {}
    #   response = client.modify_replication_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       replication_task_identifier: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       table_mappings: "String",
    #       replication_task_settings: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       stop_reason: "String",
    #       replication_task_creation_date: Time.now,
    #       replication_task_start_date: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_task_arn: "String",
    #       replication_task_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       task_data: "String",
    #       target_replication_instance_arn: "String"
    #     }
    #   }
    # @return [Types::ModifyReplicationTaskResponse]
    def modify_replication_task(params = {}, options = {})
      request = build_request(:modify_replication_task, params)
      request.send_request(options)
    end

    # <p>Moves a replication task from its current replication instance to a different target
    #          replication instance using the specified parameters. The target replication instance must
    #          be created with the same or later DMS version as the current replication instance.</p>
    # @param [Hash, Types::MoveReplicationTaskMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that you want to move.</p>
    # @option params [String] :target_replication_instance_arn
    #   <p>The ARN of the replication instance where you want to move the task to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #     target_replication_instance_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.move_replication_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       replication_task_identifier: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       table_mappings: "String",
    #       replication_task_settings: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       stop_reason: "String",
    #       replication_task_creation_date: Time.now,
    #       replication_task_start_date: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_task_arn: "String",
    #       replication_task_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       task_data: "String",
    #       target_replication_instance_arn: "String"
    #     }
    #   }
    # @return [Types::MoveReplicationTaskResponse]
    def move_replication_task(params = {}, options = {})
      request = build_request(:move_replication_task, params)
      request.send_request(options)
    end

    # <p>Reboots a replication instance. Rebooting results in a momentary outage, until the
    #          replication instance becomes available again.</p>
    # @param [Hash, Types::RebootReplicationInstanceMessage] params
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    # @option params [Boolean] :force_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a Multi-AZ
    #            failover. If the instance isn't configured for Multi-AZ, then you can't specify
    #               <code>true</code>. ( <code>--force-planned-failover</code> and
    #               <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    # @option params [Boolean] :force_planned_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a planned
    #            Multi-AZ failover where resources are released and cleaned up prior to conducting the
    #            failover. If the instance isn''t configured for Multi-AZ, then you can't specify
    #               <code>true</code>. ( <code>--force-planned-failover</code> and
    #               <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_arn: "String", # required
    #     force_failover: false,
    #     force_planned_failover: false
    #   }
    #   options = {}
    #   response = client.reboot_replication_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_instance: {
    #       replication_instance_identifier: "String",
    #       replication_instance_class: "ReplicationInstanceClass",
    #       replication_instance_status: "String",
    #       allocated_storage: 1,
    #       instance_create_time: Time.now,
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       replication_subnet_group: {
    #         replication_subnet_group_identifier: "String",
    #         replication_subnet_group_description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String"
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         supported_network_types: ["String"]
    #       },
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         replication_instance_class: "ReplicationInstanceClass",
    #         allocated_storage: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         network_type: "String"
    #       },
    #       multi_az: false,
    #       engine_version: "String",
    #       auto_minor_version_upgrade: false,
    #       kms_key_id: "String",
    #       replication_instance_arn: "String",
    #       replication_instance_public_ip_address: "String",
    #       replication_instance_private_ip_address: "String",
    #       replication_instance_public_ip_addresses: ["String"],
    #       replication_instance_private_ip_addresses: ["String"],
    #       replication_instance_ipv6_addresses: ["String"],
    #       publicly_accessible: false,
    #       secondary_availability_zone: "String",
    #       free_until: Time.now,
    #       dns_name_servers: "String",
    #       network_type: "String",
    #       kerberos_authentication_settings: {
    #         key_cache_secret_id: "String",
    #         key_cache_secret_iam_arn: "String",
    #         krb5_file_contents: "String"
    #       }
    #     }
    #   }
    # @return [Types::RebootReplicationInstanceResponse]
    def reboot_replication_instance(params = {}, options = {})
      request = build_request(:reboot_replication_instance, params)
      request.send_request(options)
    end

    # <p>Populates the schema for the specified endpoint. This is an asynchronous operation and
    #          can take several minutes. You can check the status of this operation by calling the
    #          DescribeRefreshSchemasStatus operation.</p>
    # @param [Hash, Types::RefreshSchemasMessage] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    # @example Refresh schema
    #   # Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the describe-refresh-schemas-status operation.
    #   params = {
    #     endpoint_arn: "",
    #     replication_instance_arn: ""
    #   }
    #   options = {}
    #   response = client.refresh_schemas(params, options)
    #   response.to_h #=>
    #   {
    #     refresh_schemas_status: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.refresh_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     refresh_schemas_status: {
    #       endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       status: "successful" # One of: ["successful", "failed", "refreshing"],
    #       last_refresh_date: Time.now,
    #       last_failure_message: "String"
    #     }
    #   }
    # @return [Types::RefreshSchemasResponse]
    def refresh_schemas(params = {}, options = {})
      request = build_request(:refresh_schemas, params)
      request.send_request(options)
    end

    # <p>Reloads the target database table with the source data for a given DMS Serverless
    #          replication configuration.</p>
    #          <p>You can only use this operation with a task in the RUNNING state, otherwise the service
    #          will throw an <code>InvalidResourceStateFault</code> exception.</p>
    # @param [Hash, Types::ReloadReplicationTablesMessage] params
    # @option params [String] :replication_config_arn
    #   <p>The Amazon Resource Name of the replication config for which to reload tables.</p>
    # @option params [Array<Types::TableToReload>] :tables_to_reload
    #   <p>The list of tables to reload.</p>
    # @option params [String] :reload_option
    #   <p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate
    #            it if validation is enabled. Specify <code>validate-only</code> to re-validate the table.
    #            This option applies only when validation is enabled for the replication. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_config_arn: "String", # required
    #     tables_to_reload: [ # required
    #       {
    #         schema_name: "String", # required
    #         table_name: "String", # required
    #       }
    #     ],
    #     reload_option: "data-reload" # One of: ["data-reload", "validate-only"]
    #   }
    #   options = {}
    #   response = client.reload_replication_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_config_arn: "String"
    #   }
    # @return [Types::ReloadReplicationTablesResponse]
    def reload_replication_tables(params = {}, options = {})
      request = build_request(:reload_replication_tables, params)
      request.send_request(options)
    end

    # <p>Reloads the target database table with the source data. </p>
    #          <p>You can only use this operation with a task in the <code>RUNNING</code> state, otherwise
    #          the service will throw an <code>InvalidResourceStateFault</code> exception.</p>
    # @param [Hash, Types::ReloadTablesMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    # @option params [Array<Types::TableToReload>] :tables_to_reload
    #   <p>The name and schema of the table to be reloaded. </p>
    # @option params [String] :reload_option
    #   <p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate
    #            it if validation is enabled. Specify <code>validate-only</code> to re-validate the table.
    #            This option applies only when validation is enabled for the task. </p>
    #            <p>Valid values: data-reload, validate-only</p>
    #            <p>Default value is data-reload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #     tables_to_reload: [ # required
    #       {
    #         schema_name: "String", # required
    #         table_name: "String", # required
    #       }
    #     ],
    #     reload_option: "data-reload" # One of: ["data-reload", "validate-only"]
    #   }
    #   options = {}
    #   response = client.reload_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task_arn: "String"
    #   }
    # @return [Types::ReloadTablesResponse]
    def reload_tables(params = {}, options = {})
      request = build_request(:reload_tables, params)
      request.send_request(options)
    end

    # <p>Removes metadata tags from an DMS resource, including replication instance, endpoint,
    #          subnet group, and migration task. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html">
    #                <code>Tag</code>
    #             </a> data type
    #          description.</p>
    # @param [Hash, Types::RemoveTagsFromResourceMessage] params
    # @option params [String] :resource_arn
    #   <p>An DMS resource from which you want to remove tag(s). The value for this parameter is
    #            an Amazon Resource Name (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    # @example Remove tags from resource
    #   # Removes metadata tags from an AWS DMS resource.
    #   params = {
    #     resource_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    #     tag_keys: [
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTagsFromResourceResponse]
    def remove_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_tags_from_resource, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Runs large-scale assessment (LSA) analysis on every Fleet Advisor collector in your account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.run_fleet_advisor_lsa_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lsa_analysis_id: "String",
    #     status: "String"
    #   }
    # @return [Types::RunFleetAdvisorLsaAnalysisResponse]
    def run_fleet_advisor_lsa_analysis(params = {}, options = {})
      request = build_request(:run_fleet_advisor_lsa_analysis, params)
      request.send_request(options)
    end

    # <p>Starts the specified data migration.</p>
    # @param [Hash, Types::StartDataMigrationMessage] params
    # @option params [String] :data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to start.</p>
    # @option params [String] :start_type
    #   <p>Specifies the start type for the data migration. Valid values include
    #               <code>start-replication</code>, <code>reload-target</code>, and
    #               <code>resume-processing</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_migration_identifier: "String", # required
    #     start_type: "reload-target" # One of: ["reload-target", "resume-processing", "start-replication"], # required
    #   }
    #   options = {}
    #   response = client.start_data_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_migration: {
    #       data_migration_name: "String",
    #       data_migration_arn: "String",
    #       data_migration_create_time: Time.now,
    #       data_migration_start_time: Time.now,
    #       data_migration_end_time: Time.now,
    #       service_access_role_arn: "String",
    #       migration_project_arn: "String",
    #       data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       data_migration_settings: {
    #         number_of_jobs: 1,
    #         cloudwatch_logs_enabled: false,
    #         selection_rules: "SecretString"
    #       },
    #       source_data_settings: [
    #         {
    #           cdc_start_position: "String",
    #           cdc_start_time: Time.now,
    #           cdc_stop_time: Time.now,
    #           slot_name: "String"
    #         }
    #       ],
    #       target_data_settings: [
    #         {
    #           table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #         }
    #       ],
    #       data_migration_statistics: {
    #         tables_loaded: 1,
    #         elapsed_time_millis: 1,
    #         tables_loading: 1,
    #         full_load_percentage: 1,
    #         cdc_latency: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         start_time: Time.now,
    #         stop_time: Time.now
    #       },
    #       data_migration_status: "String",
    #       public_ip_addresses: ["String"],
    #       data_migration_cidr_blocks: ["String"],
    #       last_failure_message: "String",
    #       stop_reason: "String"
    #     }
    #   }
    # @return [Types::StartDataMigrationResponse]
    def start_data_migration(params = {}, options = {})
      request = build_request(:start_data_migration, params)
      request.send_request(options)
    end

    # <p>Applies the extension pack to your target database. An extension pack is an add-on
    #          module that emulates functions present in a source database that are required when
    #          converting objects to the target database. </p>
    # @param [Hash, Types::StartExtensionPackAssociationMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @example Start Extension Pack Association
    #   # Applies the extension pack to your target database.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012"
    #   }
    #   options = {}
    #   response = client.start_extension_pack_association(params, options)
    #   response.to_h #=>
    #   {
    #     request_identifier: "01234567-89ab-cdef-0123-456789abcdef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #   }
    #   options = {}
    #   response = client.start_extension_pack_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_identifier: "String"
    #   }
    # @return [Types::StartExtensionPackAssociationResponse]
    def start_extension_pack_association(params = {}, options = {})
      request = build_request(:start_extension_pack_association, params)
      request.send_request(options)
    end

    # <p>Creates a database migration assessment report by assessing the migration complexity for
    #          your source database. A database migration assessment report summarizes all of the schema
    #          conversion tasks. It also details the action items for database objects that can't be
    #          converted to the database engine of your target database instance. </p>
    # @param [Hash, Types::StartMetadataModelAssessmentMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [String] :selection_rules
    #   <p>A value that specifies the database objects to assess.</p>
    # @example Start Metadata Model Assessment
    #   # Creates a database migration assessment report by assessing the migration complexity for 
    # #          your source database.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     selection_rules: "{\"rules\": [{\"rule-type\": \"selection\",\"rule-id\": \"1\",\"rule-name\": \"1\",\"object-locator\": {\"server-name\": \"aurora-pg.cluster-0a1b2c3d4e5f.us-east-1.rds.amazonaws.com\", \"schema-name\": \"schema1\", \"table-name\": \"Cities\"},\"rule-action\": \"explicit\"} ]}"
    #   }
    #   options = {}
    #   response = client.start_metadata_model_assessment(params, options)
    #   response.to_h #=>
    #   {
    #     request_identifier: "01234567-89ab-cdef-0123-456789abcdef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     selection_rules: "String", # required
    #   }
    #   options = {}
    #   response = client.start_metadata_model_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_identifier: "String"
    #   }
    # @return [Types::StartMetadataModelAssessmentResponse]
    def start_metadata_model_assessment(params = {}, options = {})
      request = build_request(:start_metadata_model_assessment, params)
      request.send_request(options)
    end

    # <p>Converts your source database objects to a format compatible with the target database. </p>
    # @param [Hash, Types::StartMetadataModelConversionMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [String] :selection_rules
    #   <p>A value that specifies the database objects to convert.</p>
    # @example Start Metadata Model Conversion
    #   # Converts your source database objects to a format compatible with the target database. 
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     selection_rules: "{\"rules\": [{\"rule-type\": \"selection\",\"rule-id\": \"1\",\"rule-name\": \"1\",\"object-locator\": {\"server-name\": \"aurora-pg.cluster-0a1b2c3d4e5f.us-east-1.rds.amazonaws.com\", \"schema-name\": \"schema1\", \"table-name\": \"Cities\"},\"rule-action\": \"explicit\"} ]}"
    #   }
    #   options = {}
    #   response = client.start_metadata_model_conversion(params, options)
    #   response.to_h #=>
    #   {
    #     request_identifier: "01234567-89ab-cdef-0123-456789abcdef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     selection_rules: "String", # required
    #   }
    #   options = {}
    #   response = client.start_metadata_model_conversion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_identifier: "String"
    #   }
    # @return [Types::StartMetadataModelConversionResponse]
    def start_metadata_model_conversion(params = {}, options = {})
      request = build_request(:start_metadata_model_conversion, params)
      request.send_request(options)
    end

    # <p>Saves your converted code to a file as a SQL script, and stores this file on your Amazon S3
    #          bucket.</p>
    # @param [Hash, Types::StartMetadataModelExportAsScriptMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [String] :selection_rules
    #   <p>A value that specifies the database objects to export.</p>
    # @option params [String] :origin
    #   <p>Whether to export the metadata model from the source or the target.</p>
    # @option params [String] :file_name
    #   <p>The name of the model file to create in the Amazon S3 bucket.</p>
    # @example Start Metadata Model Export As Script
    #   # Saves your converted code to a file as a SQL script, and stores this file on your S3 bucket.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     selection_rules: "{\"rules\": [{\"rule-type\": \"selection\",\"rule-id\": \"1\",\"rule-name\": \"1\",\"object-locator\": {\"server-name\": \"aurora-pg.cluster-0a1b2c3d4e5f.us-east-1.rds.amazonaws.com\", \"schema-name\": \"schema1\", \"table-name\": \"Cities\"},\"rule-action\": \"explicit\"} ]}",
    #     origin: SOURCE,
    #     file_name: "FILE"
    #   }
    #   options = {}
    #   response = client.start_metadata_model_export_as_script(params, options)
    #   response.to_h #=>
    #   {
    #     request_identifier: "01234567-89ab-cdef-0123-456789abcdef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     selection_rules: "String", # required
    #     origin: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #     file_name: "String"
    #   }
    #   options = {}
    #   response = client.start_metadata_model_export_as_script(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_identifier: "String"
    #   }
    # @return [Types::StartMetadataModelExportAsScriptResponse]
    def start_metadata_model_export_as_script(params = {}, options = {})
      request = build_request(:start_metadata_model_export_as_script, params)
      request.send_request(options)
    end

    # <p>Applies converted database objects to your target database. </p>
    # @param [Hash, Types::StartMetadataModelExportToTargetMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [String] :selection_rules
    #   <p>A value that specifies the database objects to export.</p>
    # @option params [Boolean] :overwrite_extension_pack
    #   <p>Whether to overwrite the migration project extension pack. An extension pack is an add-on module 
    #            that emulates functions present in a source database that are required when converting objects 
    #            to the target database.</p>
    # @example Start Metadata Model Export To Target
    #   # Applies converted database objects to your target database.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:EXAMPLEABCDEFGHIJKLMNOPQRSTUVWXYZ012345",
    #     selection_rules: "{\"rules\": [{\"rule-type\": \"selection\",\"rule-id\": \"1\",\"rule-name\": \"1\",\"object-locator\": {\"server-name\": \"aurora-pg.cluster-a1b2c3d4e5f6.us-east-1.rds.amazonaws.com\", \"schema-name\": \"schema1\", \"table-name\": \"Cities\"},\"rule-action\": \"explicit\"} ]}",
    #     overwrite_extension_pack: true
    #   }
    #   options = {}
    #   response = client.start_metadata_model_export_to_target(params, options)
    #   response.to_h #=>
    #   {
    #     request_identifier: "01234567-89ab-cdef-0123-456789abcdef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     selection_rules: "String", # required
    #     overwrite_extension_pack: false
    #   }
    #   options = {}
    #   response = client.start_metadata_model_export_to_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_identifier: "String"
    #   }
    # @return [Types::StartMetadataModelExportToTargetResponse]
    def start_metadata_model_export_to_target(params = {}, options = {})
      request = build_request(:start_metadata_model_export_to_target, params)
      request.send_request(options)
    end

    # <p>Loads the metadata for all the dependent database objects of the parent object.</p>
    #          <p>This operation uses your project's Amazon S3 bucket as a metadata cache to improve
    #          performance.</p>
    # @param [Hash, Types::StartMetadataModelImportMessage] params
    # @option params [String] :migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    # @option params [String] :selection_rules
    #   <p>A value that specifies the database objects to import.</p>
    # @option params [String] :origin
    #   <p>Whether to load metadata to the source or target database.</p>
    # @option params [Boolean] :refresh
    #   <p>If <code>true</code>, DMS loads metadata for the specified objects from the source database.</p>
    # @example Start Metadata Model Import
    #   # Loads the metadata for all the dependent database objects of the parent object.
    #   params = {
    #     migration_project_identifier: "arn:aws:dms:us-east-1:012345678901:migration-project:0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ012",
    #     selection_rules: "{\"rules\": [{\"rule-type\": \"selection\",\"rule-id\": \"1\",\"rule-name\": \"1\",\"object-locator\": {\"server-name\": \"aurora-pg.cluster-0a1b2c3d4e5f.us-east-1.rds.amazonaws.com\", \"schema-name\": \"schema1\", \"table-name\": \"Cities\"},\"rule-action\": \"explicit\"} ]}",
    #     origin: SOURCE,
    #     refresh: false
    #   }
    #   options = {}
    #   response = client.start_metadata_model_import(params, options)
    #   response.to_h #=>
    #   {
    #     request_identifier: "01234567-89ab-cdef-0123-456789abcdef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_project_identifier: "MigrationProjectIdentifier", # required
    #     selection_rules: "String", # required
    #     origin: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #     refresh: false
    #   }
    #   options = {}
    #   response = client.start_metadata_model_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_identifier: "String"
    #   }
    # @return [Types::StartMetadataModelImportResponse]
    def start_metadata_model_import(params = {}, options = {})
      request = build_request(:start_metadata_model_import, params)
      request.send_request(options)
    end

    # <important>
    #             <p>
    # End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    # </p>
    #          </important>
    #          <p>Starts the analysis of your source database to provide recommendations of target
    #             engines.</p>
    #          <p>You can create recommendations for multiple source databases using <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_BatchStartRecommendations.html">BatchStartRecommendations</a>.</p>
    # @param [Hash, Types::StartRecommendationsRequest] params
    # @option params [String] :database_id
    #   <p>The identifier of the source database to analyze and provide recommendations
    #               for.</p>
    # @option params [Types::RecommendationSettings] :settings
    #   <p>The settings in JSON format that Fleet Advisor uses to determine target engine
    #               recommendations. These parameters include target instance sizing and availability and
    #               durability settings. For target instance sizing, Fleet Advisor supports the following
    #               two options: total capacity and resource utilization. For availability and durability,
    #               Fleet Advisor supports the following two options: production (Multi-AZ deployments) and
    #               Dev/Test (Single-AZ deployments).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_id: "String", # required
    #     settings: { # required
    #       instance_sizing_type: "String", # required
    #       workload_type: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_recommendations(params = {}, options = {})
      request = build_request(:start_recommendations, params)
      request.send_request(options)
    end

    # <p>For a given DMS Serverless replication configuration, DMS connects to the source
    #          endpoint and collects the metadata to analyze the replication workload. Using this
    #          metadata, DMS then computes and provisions the required capacity and starts replicating
    #          to the target endpoint using the server resources that DMS has provisioned for the DMS
    #          Serverless replication.</p>
    # @param [Hash, Types::StartReplicationMessage] params
    # @option params [String] :replication_config_arn
    #   <p>The Amazon Resource Name of the replication for which to start replication.</p>
    # @option params [String] :start_replication_type
    #   <p>The replication type.</p>
    #            <p>When the replication type is <code>full-load</code> or <code>full-load-and-cdc</code>,
    #            the only valid value for the first run of the replication is
    #            <code>start-replication</code>. This option will start the replication.</p>
    #            <p>You can also use <a>ReloadTables</a> to reload specific tables that failed
    #            during replication instead of restarting the replication.</p>
    #            <p>The <code>resume-processing</code> option isn't applicable for a full-load replication,
    #            because you can't resume partially loaded tables during the full load phase.</p>
    #            <p>For a <code>full-load-and-cdc</code> replication, DMS migrates table data, and then
    #            applies data changes that occur on the source. To load all the tables again, and start
    #            capturing source changes, use <code>reload-target</code>. Otherwise use
    #               <code>resume-processing</code>, to replicate the changes from the last stop
    #            position.</p>
    # @option params [String] :premigration_assessment_settings
    #   <p>User-defined settings for the premigration assessment. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResultLocationFolder</code>: The folder within an Amazon S3 bucket where
    #                  you want DMS to store the results of this assessment run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResultEncryptionMode</code>: The supported values are <code>SSE_KMS</code>
    #                  and <code>SSE_S3</code>. If these values are not provided, then the files are not
    #                  encrypted at rest. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.KMSKeys">Creating
    #                     Amazon Web Services KMS keys to encrypt Amazon S3 target objects</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResultKmsKeyArn</code>: The ARN of a customer KMS encryption key that you
    #                  specify when you set <code>ResultEncryptionMode</code> to
    #                  <code>SSE_KMS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IncludeOnly</code>: A space-separated list of names for specific individual
    #                  assessments that you want to include. These names come from the default list of
    #                  individual assessments that Database Migration Service supports for the associated migration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Exclude</code>: A space-separated list of names for specific individual
    #                  assessments that you want to exclude. These names come from the default list of
    #                  individual assessments that Database Migration Service supports for the associated migration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FailOnAssessmentFailure</code>: A configurable setting you can set to
    #                     <code>true</code> (the default setting) or <code>false</code>. Use this setting to
    #                  to stop the replication from starting automatically if the assessment fails. This can
    #                  help you evaluate the issue that is preventing the replication from running
    #                  successfully.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #               <code>CdcStartTime</code> or <code>CdcStartPosition</code> to specify when you want a
    #            CDC operation to start. Specifying both values results in an error.</p>
    # @option params [String] :cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #               <code>CdcStartPosition</code> or <code>CdcStartTime</code> to specify when you want a
    #            CDC operation to start. Specifying both values results in an error.</p>
    #            <p>The value can be in date, checkpoint, or LSN/SCN format.</p>
    # @option params [String] :cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_config_arn: "String", # required
    #     start_replication_type: "String", # required
    #     premigration_assessment_settings: "String",
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String"
    #   }
    #   options = {}
    #   response = client.start_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication: {
    #       replication_config_identifier: "String",
    #       replication_config_arn: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       status: "String",
    #       provision_data: {
    #         provision_state: "String",
    #         provisioned_capacity_units: 1,
    #         date_provisioned: Time.now,
    #         is_new_provisioning_available: false,
    #         date_new_provisioning_data_available: Time.now,
    #         reason_for_new_provisioning_data: "String"
    #       },
    #       premigration_assessment_statuses: [
    #         {
    #           premigration_assessment_run_arn: "String",
    #           fail_on_assessment_failure: false,
    #           status: "String",
    #           premigration_assessment_run_creation_date: Time.now,
    #           assessment_progress: {
    #             individual_assessment_count: 1,
    #             individual_assessment_completed_count: 1
    #           },
    #           last_failure_message: "String",
    #           result_location_bucket: "String",
    #           result_location_folder: "String",
    #           result_encryption_mode: "String",
    #           result_kms_key_arn: "String",
    #           result_statistic: {
    #             passed: 1,
    #             failed: 1,
    #             error: 1,
    #             warning: 1,
    #             cancelled: 1,
    #             skipped: 1
    #           }
    #         }
    #       ],
    #       stop_reason: "String",
    #       failure_messages: ["String"],
    #       replication_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       start_replication_type: "String",
    #       cdc_start_time: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_create_time: Time.now,
    #       replication_update_time: Time.now,
    #       replication_last_stop_time: Time.now,
    #       replication_deprovision_time: Time.now
    #     }
    #   }
    # @return [Types::StartReplicationResponse]
    def start_replication(params = {}, options = {})
      request = build_request(:start_replication, params)
      request.send_request(options)
    end

    # <p>Starts the replication task.</p>
    #          <p>For more information about DMS tasks, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html">Working with Migration Tasks </a> in the
    #             <i>Database Migration Service User Guide.</i>
    #          </p>
    # @param [Hash, Types::StartReplicationTaskMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be started.</p>
    # @option params [String] :start_replication_task_type
    #   <p>The type of replication task to start.</p>
    #            <p>
    #               <code>start-replication</code> is the only valid action that can be used for the first time a task with the migration type of <code>full-load</code>full-load, <code>full-load-and-cdc</code> or <code>cdc</code> is run. Any other action used for the first time on a given task, such as <code>resume-processing</code> and reload-target will result in data errors.</p>
    #            <p>You can also use <a>ReloadTables</a> to reload specific tables that failed during migration instead of restarting the task.</p>
    #            <p>For a <code>full-load</code> task, the resume-processing option will reload any tables that were partially loaded or not yet loaded during the full load phase.</p>
    #            <p>For a <code>full-load-and-cdc</code> task, DMS migrates table data, and then applies data changes that occur on the source. To load all the tables again, and start capturing source changes, use <code>reload-target</code>. Otherwise use <code>resume-processing</code>, to replicate the changes from the last stop position.</p>
    #            <p>For a <code>cdc</code> only task, to start from a specific position, you must use start-replication and also specify the start position. Check the source endpoint DMS documentation for any limitations. For example, not all sources support starting from a time.</p>
    #            <note>
    #               <p>
    #                  <code>resume-processing</code> is only available for previously executed tasks.</p>
    #            </note>
    # @option params [Time] :cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    # @option params [String] :cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    # @option params [String] :cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time:2018-02-09T12:12:12“</p>
    # @example Start replication task
    #   # Starts the replication task.
    #   params = {
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #     start_replication_task_type: start-replication,
    #     cdc_start_time: Time.parse("2016-12-14T13:33:20Z")
    #   }
    #   options = {}
    #   response = client.start_replication_task(params, options)
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
    #       replication_task_identifier: "task1",
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #       table_mappings: "file://mappingfile.json",
    #       status: "creating",
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"),
    #       migration_type: full-load,
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #     start_replication_task_type: "start-replication" # One of: ["start-replication", "resume-processing", "reload-target"], # required
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String"
    #   }
    #   options = {}
    #   response = client.start_replication_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       replication_task_identifier: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       table_mappings: "String",
    #       replication_task_settings: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       stop_reason: "String",
    #       replication_task_creation_date: Time.now,
    #       replication_task_start_date: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_task_arn: "String",
    #       replication_task_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       task_data: "String",
    #       target_replication_instance_arn: "String"
    #     }
    #   }
    # @return [Types::StartReplicationTaskResponse]
    def start_replication_task(params = {}, options = {})
      request = build_request(:start_replication_task, params)
      request.send_request(options)
    end

    # <p> Starts the replication task assessment for unsupported data types in the source
    #          database. </p>
    #          <p>You can only use this operation for a task if the following conditions are true:</p>
    #          <ul>
    #             <li>
    #                <p>The task must be in the <code>stopped</code> state.</p>
    #             </li>
    #             <li>
    #                <p>The task must have successful connections to the source and target.</p>
    #             </li>
    #          </ul>
    #          <p>If either of these conditions are not met, an <code>InvalidResourceStateFault</code>
    #          error will result. </p>
    #          <p>For information about DMS task assessments, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html">Creating a task assessment report</a> in the <i>Database Migration Service User
    #             Guide</i>.</p>
    # @param [Hash, Types::StartReplicationTaskAssessmentMessage] params
    # @option params [String] :replication_task_arn
    #   <p> The Amazon Resource Name (ARN) of the replication task. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.start_replication_task_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       replication_task_identifier: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       table_mappings: "String",
    #       replication_task_settings: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       stop_reason: "String",
    #       replication_task_creation_date: Time.now,
    #       replication_task_start_date: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_task_arn: "String",
    #       replication_task_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       task_data: "String",
    #       target_replication_instance_arn: "String"
    #     }
    #   }
    # @return [Types::StartReplicationTaskAssessmentResponse]
    def start_replication_task_assessment(params = {}, options = {})
      request = build_request(:start_replication_task_assessment, params)
      request.send_request(options)
    end

    # <p>Starts a new premigration assessment run for one or more individual assessments of a
    #          migration task.</p>
    #          <p>The assessments that you can specify depend on the source and target database engine and
    #          the migration type defined for the given task. To run this operation, your migration task
    #          must already be created. After you run this operation, you can review the status of each
    #          individual assessment. You can also run the migration task manually after the assessment
    #          run and its individual assessments complete.</p>
    # @param [Hash, Types::StartReplicationTaskAssessmentRunMessage] params
    # @option params [String] :replication_task_arn
    #   <p>Amazon Resource Name (ARN) of the migration task associated with the premigration
    #            assessment run that you want to start.</p>
    # @option params [String] :service_access_role_arn
    #   <p>ARN of the service role needed to start the assessment run. The role must allow the
    #               <code>iam:PassRole</code> action.</p>
    # @option params [String] :result_location_bucket
    #   <p>Amazon S3 bucket where you want DMS to store the results of this assessment
    #            run.</p>
    # @option params [String] :result_location_folder
    #   <p>Folder within an Amazon S3 bucket where you want DMS to store the results of this
    #            assessment run.</p>
    # @option params [String] :result_encryption_mode
    #   <p>Encryption mode that you can specify to encrypt the results of this assessment run. If
    #            you don't specify this request parameter, DMS stores the assessment run results
    #            without encryption. You can specify one of the options following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"SSE_S3"</code> – The server-side encryption provided as a default by
    #                  Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"SSE_KMS"</code> – Key Management Service (KMS) encryption. This encryption can
    #                  use either a custom KMS encryption key that you specify or the default KMS encryption
    #                  key that DMS provides.</p>
    #               </li>
    #            </ul>
    # @option params [String] :result_kms_key_arn
    #   <p>ARN of a custom KMS encryption key that you specify when you set
    #               <code>ResultEncryptionMode</code> to <code>"SSE_KMS</code>".</p>
    # @option params [String] :assessment_run_name
    #   <p>Unique name to identify the assessment run.</p>
    # @option params [Array<String>] :include_only
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            include. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>IncludeOnly</code> if you also set a value for
    #                  <code>Exclude</code> in the API operation.
    #               </p>
    #               <p>To identify the names of the default individual assessments that DMS supports for
    #               the associated migration task, run the
    #                  <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #                  <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    # @option params [Array<String>] :exclude
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            exclude. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>Exclude</code> if you also set a value for
    #                  <code>IncludeOnly</code> in the API operation.</p>
    #               <p>To identify the names of the default individual assessments that DMS supports for
    #               the associated migration task, run the
    #                  <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #                  <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to be assigned to the premigration assessment run that you want to
    #            start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #     service_access_role_arn: "String", # required
    #     result_location_bucket: "String", # required
    #     result_location_folder: "String",
    #     result_encryption_mode: "String",
    #     result_kms_key_arn: "String",
    #     assessment_run_name: "String", # required
    #     include_only: ["String"],
    #     exclude: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #         resource_arn: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_replication_task_assessment_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task_assessment_run: {
    #       replication_task_assessment_run_arn: "String",
    #       replication_task_arn: "String",
    #       status: "String",
    #       replication_task_assessment_run_creation_date: Time.now,
    #       assessment_progress: {
    #         individual_assessment_count: 1,
    #         individual_assessment_completed_count: 1
    #       },
    #       last_failure_message: "String",
    #       service_access_role_arn: "String",
    #       result_location_bucket: "String",
    #       result_location_folder: "String",
    #       result_encryption_mode: "String",
    #       result_kms_key_arn: "String",
    #       assessment_run_name: "String",
    #       is_latest_task_assessment_run: false,
    #       result_statistic: {
    #         passed: 1,
    #         failed: 1,
    #         error: 1,
    #         warning: 1,
    #         cancelled: 1,
    #         skipped: 1
    #       }
    #     }
    #   }
    # @return [Types::StartReplicationTaskAssessmentRunResponse]
    def start_replication_task_assessment_run(params = {}, options = {})
      request = build_request(:start_replication_task_assessment_run, params)
      request.send_request(options)
    end

    # <p>Stops the specified data migration.</p>
    # @param [Hash, Types::StopDataMigrationMessage] params
    # @option params [String] :data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_migration_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_data_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_migration: {
    #       data_migration_name: "String",
    #       data_migration_arn: "String",
    #       data_migration_create_time: Time.now,
    #       data_migration_start_time: Time.now,
    #       data_migration_end_time: Time.now,
    #       service_access_role_arn: "String",
    #       migration_project_arn: "String",
    #       data_migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       data_migration_settings: {
    #         number_of_jobs: 1,
    #         cloudwatch_logs_enabled: false,
    #         selection_rules: "SecretString"
    #       },
    #       source_data_settings: [
    #         {
    #           cdc_start_position: "String",
    #           cdc_start_time: Time.now,
    #           cdc_stop_time: Time.now,
    #           slot_name: "String"
    #         }
    #       ],
    #       target_data_settings: [
    #         {
    #           table_preparation_mode: "do-nothing" # One of: ["do-nothing", "truncate", "drop-tables-on-target"]
    #         }
    #       ],
    #       data_migration_statistics: {
    #         tables_loaded: 1,
    #         elapsed_time_millis: 1,
    #         tables_loading: 1,
    #         full_load_percentage: 1,
    #         cdc_latency: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         start_time: Time.now,
    #         stop_time: Time.now
    #       },
    #       data_migration_status: "String",
    #       public_ip_addresses: ["String"],
    #       data_migration_cidr_blocks: ["String"],
    #       last_failure_message: "String",
    #       stop_reason: "String"
    #     }
    #   }
    # @return [Types::StopDataMigrationResponse]
    def stop_data_migration(params = {}, options = {})
      request = build_request(:stop_data_migration, params)
      request.send_request(options)
    end

    # <p>For a given DMS Serverless replication configuration, DMS stops any and all ongoing
    #          DMS Serverless replications. This command doesn't deprovision the stopped
    #          replications.</p>
    # @param [Hash, Types::StopReplicationMessage] params
    # @option params [String] :replication_config_arn
    #   <p>The Amazon Resource Name of the replication to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_config_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication: {
    #       replication_config_identifier: "String",
    #       replication_config_arn: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       status: "String",
    #       provision_data: {
    #         provision_state: "String",
    #         provisioned_capacity_units: 1,
    #         date_provisioned: Time.now,
    #         is_new_provisioning_available: false,
    #         date_new_provisioning_data_available: Time.now,
    #         reason_for_new_provisioning_data: "String"
    #       },
    #       premigration_assessment_statuses: [
    #         {
    #           premigration_assessment_run_arn: "String",
    #           fail_on_assessment_failure: false,
    #           status: "String",
    #           premigration_assessment_run_creation_date: Time.now,
    #           assessment_progress: {
    #             individual_assessment_count: 1,
    #             individual_assessment_completed_count: 1
    #           },
    #           last_failure_message: "String",
    #           result_location_bucket: "String",
    #           result_location_folder: "String",
    #           result_encryption_mode: "String",
    #           result_kms_key_arn: "String",
    #           result_statistic: {
    #             passed: 1,
    #             failed: 1,
    #             error: 1,
    #             warning: 1,
    #             cancelled: 1,
    #             skipped: 1
    #           }
    #         }
    #       ],
    #       stop_reason: "String",
    #       failure_messages: ["String"],
    #       replication_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       start_replication_type: "String",
    #       cdc_start_time: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_create_time: Time.now,
    #       replication_update_time: Time.now,
    #       replication_last_stop_time: Time.now,
    #       replication_deprovision_time: Time.now
    #     }
    #   }
    # @return [Types::StopReplicationResponse]
    def stop_replication(params = {}, options = {})
      request = build_request(:stop_replication, params)
      request.send_request(options)
    end

    # <p>Stops the replication task.</p>
    # @param [Hash, Types::StopReplicationTaskMessage] params
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name(ARN) of the replication task to be stopped.</p>
    # @example Stop replication task
    #   # Stops the replication task.
    #   params = {
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
    #   }
    #   options = {}
    #   response = client.stop_replication_task(params, options)
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
    #       replication_task_identifier: "task1",
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #       table_mappings: "file://mappingfile.json",
    #       status: "creating",
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"),
    #       migration_type: full-load,
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_task_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_replication_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_task: {
    #       replication_task_identifier: "String",
    #       source_endpoint_arn: "String",
    #       target_endpoint_arn: "String",
    #       replication_instance_arn: "String",
    #       migration_type: "full-load" # One of: ["full-load", "cdc", "full-load-and-cdc"],
    #       table_mappings: "String",
    #       replication_task_settings: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       stop_reason: "String",
    #       replication_task_creation_date: Time.now,
    #       replication_task_start_date: Time.now,
    #       cdc_start_position: "String",
    #       cdc_stop_position: "String",
    #       recovery_checkpoint: "String",
    #       replication_task_arn: "String",
    #       replication_task_stats: {
    #         full_load_progress_percent: 1,
    #         elapsed_time_millis: 1,
    #         tables_loaded: 1,
    #         tables_loading: 1,
    #         tables_queued: 1,
    #         tables_errored: 1,
    #         fresh_start_date: Time.now,
    #         start_date: Time.now,
    #         stop_date: Time.now,
    #         full_load_start_date: Time.now,
    #         full_load_finish_date: Time.now
    #       },
    #       task_data: "String",
    #       target_replication_instance_arn: "String"
    #     }
    #   }
    # @return [Types::StopReplicationTaskResponse]
    def stop_replication_task(params = {}, options = {})
      request = build_request(:stop_replication_task, params)
      request.send_request(options)
    end

    # <p>Tests the connection between the replication instance and the endpoint.</p>
    # @param [Hash, Types::TestConnectionMessage] params
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    # @example Test conection
    #   # Tests the connection between the replication instance and the endpoint.
    #   params = {
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM"
    #   }
    #   options = {}
    #   response = client.test_connection(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_instance_arn: "String", # required
    #     endpoint_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.test_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       replication_instance_arn: "String",
    #       endpoint_arn: "String",
    #       status: "String",
    #       last_failure_message: "String",
    #       endpoint_identifier: "String",
    #       replication_instance_identifier: "String"
    #     }
    #   }
    # @return [Types::TestConnectionResponse]
    def test_connection(params = {}, options = {})
      request = build_request(:test_connection, params)
      request.send_request(options)
    end

    # <p>Migrates 10 active and enabled Amazon SNS subscriptions at a time and converts them to
    #          corresponding Amazon EventBridge rules. By default, this operation migrates subscriptions
    #          only when all your replication instance versions are 3.4.5 or higher. If any replication
    #          instances are from versions earlier than 3.4.5, the operation raises an error and tells you
    #          to upgrade these instances to version 3.4.5 or higher. To enable migration regardless of
    #          version, set the <code>Force</code> option to true. However, if you don't upgrade instances
    #          earlier than version 3.4.5, some types of events might not be available when you use Amazon
    #          EventBridge.</p>
    #          <p>To call this operation, make sure that you have certain permissions added to your user
    #          account. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html#CHAP_Events-migrate-to-eventbridge">Migrating event subscriptions to Amazon EventBridge</a> in the
    #                <i>Amazon Web Services Database Migration Service User Guide</i>.</p>
    # @param [Hash, Types::UpdateSubscriptionsToEventBridgeMessage] params
    # @option params [Boolean] :force_move
    #   <p>When set to true, this operation migrates DMS subscriptions for Amazon
    #            SNS notifications no matter what your replication instance version is. If not set or set to
    #            false, this operation runs only when all your replication instances are from DMS version 3.4.5 or higher. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     force_move: false
    #   }
    #   options = {}
    #   response = client.update_subscriptions_to_event_bridge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "String"
    #   }
    # @return [Types::UpdateSubscriptionsToEventBridgeResponse]
    def update_subscriptions_to_event_bridge(params = {}, options = {})
      request = build_request(:update_subscriptions_to_event_bridge, params)
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
      context[:gem_name] = 'aws-sdk-databasemigrationservice'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        endpoint_deleted: Waiters::EndpointDeleted,
        replication_instance_available: Waiters::ReplicationInstanceAvailable,
        replication_instance_deleted: Waiters::ReplicationInstanceDeleted,
        replication_task_deleted: Waiters::ReplicationTaskDeleted,
        replication_task_ready: Waiters::ReplicationTaskReady,
        replication_task_running: Waiters::ReplicationTaskRunning,
        replication_task_stopped: Waiters::ReplicationTaskStopped,
        test_connection_succeeds: Waiters::TestConnectionSucceeds
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

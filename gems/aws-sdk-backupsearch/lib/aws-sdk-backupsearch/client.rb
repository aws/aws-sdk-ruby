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

module Aws::BackupSearch
  # An API client for Aws::BackupSearch.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CryoBackupSearchService

    add_plugin(::Aws::BackupSearch::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BackupSearch::EndpointProvider)
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
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>This operation retrieves metadata of a search job, including its progress.</p>
    # @param [Hash, Types::GetSearchJobInput] params
    # @option params [String] :search_job_identifier
    #   <p>Required unique string that specifies the search job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_job_identifier: "GenericId", # required
    #   }
    #   options = {}
    #   response = client.get_search_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String",
    #     search_scope_summary: {
    #       total_recovery_points_to_scan_count: 1,
    #       total_items_to_scan_count: 1
    #     },
    #     current_search_progress: {
    #       recovery_points_scanned_count: 1,
    #       items_scanned_count: 1,
    #       items_matched_count: 1
    #     },
    #     status_message: "String",
    #     encryption_key_arn: "EncryptionKeyArn",
    #     completion_time: Time.now,
    #     status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "STOPPING", "STOPPED", "FAILED"], # required
    #     search_scope: { # required
    #       backup_resource_types: ["S3" # One of: ["S3", "EBS"]], # required
    #       backup_resource_creation_time: {
    #         created_after: Time.now,
    #         created_before: Time.now
    #       },
    #       source_resource_arns: ["String"],
    #       backup_resource_arns: ["RecoveryPoint"],
    #       backup_resource_tags: {
    #         "String" => "String"
    #       }
    #     },
    #     item_filters: { # required
    #       s3_item_filters: [
    #         {
    #           object_keys: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ],
    #           sizes: [
    #             {
    #               value: 1, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           creation_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           version_ids: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ],
    #           e_tags: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ]
    #         }
    #       ],
    #       ebs_item_filters: [
    #         {
    #           file_paths: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ],
    #           sizes: [
    #             {
    #               value: 1, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           creation_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           last_modification_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     creation_time: Time.now, # required
    #     search_job_identifier: "GenericId", # required
    #     search_job_arn: "SearchJobArn", # required
    #   }
    # @return [Types::GetSearchJobOutput]
    def get_search_job(params = {}, options = {})
      request = build_request(:get_search_job, params)
      request.send_request(options)
    end

    # <p>This operation retrieves the metadata of an export job.</p> <p>An export job is an operation that transmits the results of a search job to a specified S3 bucket in a .csv file.</p> <p>An export job allows you to retain results of a search beyond the search job's scheduled retention of 7 days.</p>
    # @param [Hash, Types::GetSearchResultExportJobInput] params
    # @option params [String] :export_job_identifier
    #   <p>This is the unique string that identifies a specific export job.</p> <p>Required for this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_job_identifier: "GenericId", # required
    #   }
    #   options = {}
    #   response = client.get_search_result_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_job_identifier: "GenericId", # required
    #     export_job_arn: "ExportJobArn",
    #     status: "RUNNING" # One of: ["RUNNING", "FAILED", "COMPLETED"],
    #     creation_time: Time.now,
    #     completion_time: Time.now,
    #     status_message: "String",
    #     export_specification: {
    #       # One of:
    #       s3_export_specification: {
    #         destination_bucket: "String", # required
    #         destination_prefix: "String"
    #       }
    #     },
    #     search_job_arn: "SearchJobArn"
    #   }
    # @return [Types::GetSearchResultExportJobOutput]
    def get_search_result_export_job(params = {}, options = {})
      request = build_request(:get_search_result_export_job, params)
      request.send_request(options)
    end

    # <p>This operation returns a list of all backups (recovery points) in a paginated format that were included in the search job.</p> <p>If a search does not display an expected backup in the results, you can call this operation to display each backup included in the search. Any backups that were not included because they have a <code>FAILED</code> status from a permissions issue will be displayed, along with a status message.</p> <p>Only recovery points with a backup index that has a status of <code>ACTIVE</code> will be included in search results. If the index has any other status, its status will be displayed along with a status message.</p>
    # @param [Hash, Types::ListSearchJobBackupsInput] params
    # @option params [String] :search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_job_identifier: "GenericId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_search_job_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "STOPPING", "STOPPED", "FAILED"],
    #         status_message: "String",
    #         resource_type: "S3" # One of: ["S3", "EBS"],
    #         backup_resource_arn: "String",
    #         source_resource_arn: "String",
    #         index_creation_time: Time.now,
    #         backup_creation_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSearchJobBackupsOutput]
    def list_search_job_backups(params = {}, options = {})
      request = build_request(:list_search_job_backups, params)
      request.send_request(options)
    end

    # <p>This operation returns a list of a specified search job.</p>
    # @param [Hash, Types::ListSearchJobResultsInput] params
    # @option params [String] :search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned search job results.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of search job results, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_job_identifier: "GenericId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_search_job_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [{ # required
    #       # One of:
    #       s3_result_item: {
    #         backup_resource_arn: "String",
    #         source_resource_arn: "String",
    #         backup_vault_name: "String",
    #         object_key: "ObjectKey",
    #         object_size: 1,
    #         creation_time: Time.now,
    #         e_tag: "String",
    #         version_id: "String"
    #       },
    #       ebs_result_item: {
    #         backup_resource_arn: "String",
    #         source_resource_arn: "String",
    #         backup_vault_name: "String",
    #         file_system_identifier: "String",
    #         file_path: "FilePath",
    #         file_size: 1,
    #         creation_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     }],
    #     next_token: "String"
    #   }
    # @return [Types::ListSearchJobResultsOutput]
    def list_search_job_results(params = {}, options = {})
      request = build_request(:list_search_job_results, params)
      request.send_request(options)
    end

    # <p>This operation returns a list of search jobs belonging to an account.</p>
    # @param [Hash, Types::ListSearchJobsInput] params
    # @option params [String] :by_status
    #   <p>Include this parameter to filter list by search job status.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned search jobs.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     by_status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "STOPPING", "STOPPED", "FAILED"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_search_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     search_jobs: [ # required
    #       {
    #         search_job_identifier: "GenericId",
    #         search_job_arn: "SearchJobArn",
    #         name: "String",
    #         status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "STOPPING", "STOPPED", "FAILED"],
    #         creation_time: Time.now,
    #         completion_time: Time.now,
    #         search_scope_summary: {
    #           total_recovery_points_to_scan_count: 1,
    #           total_items_to_scan_count: 1
    #         },
    #         status_message: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSearchJobsOutput]
    def list_search_jobs(params = {}, options = {})
      request = build_request(:list_search_jobs, params)
      request.send_request(options)
    end

    # <p>This operation exports search results of a search job to a specified destination S3 bucket.</p>
    # @param [Hash, Types::ListSearchResultExportJobsInput] params
    # @option params [String] :status
    #   <p>The search jobs to be included in the export job can be filtered by including this parameter.</p>
    # @option params [String] :search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned backups included in a search job.</p> <p>For example, if a request is made to return <code>MaxResults</code> number of backups, <code>NextToken</code> allows you to return more items in your list starting at the location pointed to by the next token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "RUNNING" # One of: ["RUNNING", "FAILED", "COMPLETED"],
    #     search_job_identifier: "GenericId",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_search_result_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_jobs: [ # required
    #       {
    #         export_job_identifier: "GenericId", # required
    #         export_job_arn: "ExportJobArn",
    #         status: "RUNNING" # One of: ["RUNNING", "FAILED", "COMPLETED"],
    #         creation_time: Time.now,
    #         completion_time: Time.now,
    #         status_message: "String",
    #         search_job_arn: "SearchJobArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSearchResultExportJobsOutput]
    def list_search_result_export_jobs(params = {}, options = {})
      request = build_request(:list_search_result_export_jobs, params)
      request.send_request(options)
    end

    # <p>This operation returns the tags for a resource type.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource.&gt;</p>
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
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>This operation creates a search job which returns recovery points filtered by SearchScope and items filtered by ItemFilters.</p> <p>You can optionally include ClientToken, EncryptionKeyArn, Name, and/or Tags.</p>
    # @param [Hash, Types::StartSearchJobInput] params
    # @option params [Hash<String, String>] :tags
    #   <p>List of tags returned by the operation.</p>
    # @option params [String] :name
    #   <p>Include alphanumeric characters to create a name for this search job.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The encryption key for the specified search job.</p>
    # @option params [String] :client_token
    #   <p>Include this parameter to allow multiple identical calls for idempotency.</p> <p>A client token is valid for 8 hours after the first request that uses it is completed. After this time, any request with the same token is treated as a new request.</p>
    # @option params [Types::SearchScope] :search_scope
    #   <p>This object can contain BackupResourceTypes, BackupResourceArns, BackupResourceCreationTime, BackupResourceTags, and SourceResourceArns to filter the recovery points returned by the search job.</p>
    # @option params [Types::ItemFilters] :item_filters
    #   <p>Item Filters represent all input item properties specified when the search was created.</p> <p>Contains either EBSItemFilters or S3ItemFilters</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "String" => "String"
    #     },
    #     name: "String",
    #     encryption_key_arn: "EncryptionKeyArn",
    #     client_token: "String",
    #     search_scope: { # required
    #       backup_resource_types: ["S3" # One of: ["S3", "EBS"]], # required
    #       backup_resource_creation_time: {
    #         created_after: Time.now,
    #         created_before: Time.now
    #       },
    #       source_resource_arns: ["String"],
    #       backup_resource_arns: ["RecoveryPoint"],
    #       backup_resource_tags: {
    #         "String" => "String"
    #       }
    #     },
    #     item_filters: {
    #       s3_item_filters: [
    #         {
    #           object_keys: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ],
    #           sizes: [
    #             {
    #               value: 1, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           creation_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           version_ids: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ],
    #           e_tags: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ]
    #         }
    #       ],
    #       ebs_item_filters: [
    #         {
    #           file_paths: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"]
    #             }
    #           ],
    #           sizes: [
    #             {
    #               value: 1, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           creation_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ],
    #           last_modification_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO" # One of: ["EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"]
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.start_search_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     search_job_arn: "SearchJobArn",
    #     creation_time: Time.now,
    #     search_job_identifier: "GenericId"
    #   }
    # @return [Types::StartSearchJobOutput]
    def start_search_job(params = {}, options = {})
      request = build_request(:start_search_job, params)
      request.send_request(options)
    end

    # <p>This operations starts a job to export the results of search job to a designated S3 bucket.</p>
    # @param [Hash, Types::StartSearchResultExportJobInput] params
    # @option params [String] :search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    # @option params [Types::ExportSpecification] :export_specification
    #   <p>This specification contains a required string of the destination bucket; optionally, you can include the destination prefix.</p>
    # @option params [String] :client_token
    #   <p>Include this parameter to allow multiple identical calls for idempotency.</p> <p>A client token is valid for 8 hours after the first request that uses it is completed. After this time, any request with the same token is treated as a new request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags to include. A tag is a key-value pair you can use to manage, filter, and search for your resources. Allowed characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ : /. </p>
    # @option params [String] :role_arn
    #   <p>This parameter specifies the role ARN used to start the search results export jobs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_job_identifier: "GenericId", # required
    #     export_specification: { # required
    #       # One of:
    #       s3_export_specification: {
    #         destination_bucket: "String", # required
    #         destination_prefix: "String"
    #       }
    #     },
    #     client_token: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     role_arn: "IamRoleArn"
    #   }
    #   options = {}
    #   response = client.start_search_result_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_job_arn: "ExportJobArn",
    #     export_job_identifier: "GenericId", # required
    #   }
    # @return [Types::StartSearchResultExportJobOutput]
    def start_search_result_export_job(params = {}, options = {})
      request = build_request(:start_search_result_export_job, params)
      request.send_request(options)
    end

    # <p>This operations ends a search job.</p> <p>Only a search job with a status of <code>RUNNING</code> can be stopped.</p>
    # @param [Hash, Types::StopSearchJobInput] params
    # @option params [String] :search_job_identifier
    #   <p>The unique string that specifies the search job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_job_identifier: "GenericId", # required
    #   }
    #   options = {}
    #   response = client.stop_search_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopSearchJobOutput]
    def stop_search_job(params = {}, options = {})
      request = build_request(:stop_search_job, params)
      request.send_request(options)
    end

    # <p>This operation puts tags on the resource you indicate.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource.</p> <p>This is the resource that will have the indicated tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Required tags to include. A tag is a key-value pair you can use to manage, filter, and search for your resources. Allowed characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ : /. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
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

    # <p>This operation removes tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource where you want to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>This required parameter contains the tag keys you want to remove from the source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
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
      context[:gem_name] = 'aws-sdk-backupsearch'
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

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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:athena)

module Aws::Athena
  # An API client for Aws::Athena.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonAthena
    @identifier = :athena

    add_plugin(::Aws::Athena::Plugins::Endpoint)
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
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Athena::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Returns the details of a single named query or a list of up to 50 queries, which you
    #             provide as an array of query ID strings. Requires you to have access to the workgroup in
    #             which the queries were saved. Use <a>ListNamedQueriesInput</a> to get the
    #             list of named query IDs in the specified workgroup. If information could not be
    #             retrieved for a submitted query ID, information about the query ID submitted is listed
    #             under <a>UnprocessedNamedQueryId</a>. Named queries differ from executed
    #             queries. Use <a>BatchGetQueryExecutionInput</a> to get details about each
    #             unique query execution, and <a>ListQueryExecutionsInput</a> to get a list of
    #             query execution IDs.</p>
    # @param [Hash, Types::BatchGetNamedQueryInput] params
    # @option params [Array<String>] :named_query_ids
    #   <p>An array of query IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     named_query_ids: ["NamedQueryId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_named_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     named_queries: [
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         database: "DatabaseString", # required
    #         query_string: "QueryString", # required
    #         named_query_id: "NamedQueryId",
    #         work_group: "WorkGroupName"
    #       }
    #     ],
    #     unprocessed_named_query_ids: [
    #       {
    #         named_query_id: "NamedQueryId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetNamedQueryOutput]
    def batch_get_named_query(params = {}, options = {})
      request = build_request(:batch_get_named_query, params)
      request.send_request(options)
    end

    # <p>Returns the details of a single prepared statement or a list of up to 256 prepared
    #             statements for the array of prepared statement names that you provide. Requires you to
    #             have access to the workgroup to which the prepared statements belong. If a prepared
    #             statement cannot be retrieved for the name specified, the statement is listed in
    #                 <code>UnprocessedPreparedStatementNames</code>.</p>
    # @param [Hash, Types::BatchGetPreparedStatementInput] params
    # @option params [Array<String>] :prepared_statement_names
    #   <p>A list of prepared statement names to return.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup to which the prepared statements belong.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prepared_statement_names: ["StatementName"], # required
    #     work_group: "WorkGroupName", # required
    #   }
    #   options = {}
    #   response = client.batch_get_prepared_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prepared_statements: [
    #       {
    #         statement_name: "StatementName",
    #         query_statement: "QueryString",
    #         work_group_name: "WorkGroupName",
    #         description: "DescriptionString",
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     unprocessed_prepared_statement_names: [
    #       {
    #         statement_name: "StatementName",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetPreparedStatementOutput]
    def batch_get_prepared_statement(params = {}, options = {})
      request = build_request(:batch_get_prepared_statement, params)
      request.send_request(options)
    end

    # <p>Returns the details of a single query execution or a list of up to 50 query
    #             executions, which you provide as an array of query execution ID strings. Requires you to
    #             have access to the workgroup in which the queries ran. To get a list of query execution
    #             IDs, use <a>ListQueryExecutionsInput$WorkGroup</a>. Query executions differ
    #             from named (saved) queries. Use <a>BatchGetNamedQueryInput</a> to get details
    #             about named queries.</p>
    # @param [Hash, Types::BatchGetQueryExecutionInput] params
    # @option params [Array<String>] :query_execution_ids
    #   <p>An array of query execution IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_execution_ids: ["QueryExecutionId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_query_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_executions: [
    #       {
    #         query_execution_id: "QueryExecutionId",
    #         query: "QueryString",
    #         statement_type: "DDL" # One of: ["DDL", "DML", "UTILITY"],
    #         managed_query_results_configuration: {
    #           enabled: false, # required
    #           encryption_configuration: {
    #             kms_key: "KmsKey", # required
    #           }
    #         },
    #         result_configuration: {
    #           output_location: "ResultOutputLocation",
    #           encryption_configuration: {
    #             encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS", "CSE_KMS"], # required
    #             kms_key: "String"
    #           },
    #           expected_bucket_owner: "AwsAccountId",
    #           acl_configuration: {
    #             s3_acl_option: "BUCKET_OWNER_FULL_CONTROL" # One of: ["BUCKET_OWNER_FULL_CONTROL"], # required
    #           }
    #         },
    #         result_reuse_configuration: {
    #           result_reuse_by_age_configuration: {
    #             enabled: false, # required
    #             max_age_in_minutes: 1
    #           }
    #         },
    #         query_execution_context: {
    #           database: "DatabaseString",
    #           catalog: "CatalogNameString"
    #         },
    #         status: {
    #           state: "QUEUED" # One of: ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"],
    #           state_change_reason: "String",
    #           submission_date_time: Time.now,
    #           completion_date_time: Time.now,
    #           athena_error: {
    #             error_category: 1,
    #             error_type: 1,
    #             retryable: false,
    #             error_message: "String"
    #           }
    #         },
    #         statistics: {
    #           engine_execution_time_in_millis: 1,
    #           data_scanned_in_bytes: 1,
    #           data_manifest_location: "String",
    #           total_execution_time_in_millis: 1,
    #           query_queue_time_in_millis: 1,
    #           service_pre_processing_time_in_millis: 1,
    #           query_planning_time_in_millis: 1,
    #           service_processing_time_in_millis: 1,
    #           result_reuse_information: {
    #             reused_previous_result: false, # required
    #           },
    #           dpu_count: 1.0
    #         },
    #         work_group: "WorkGroupName",
    #         engine_version: {
    #           selected_engine_version: "NameString",
    #           effective_engine_version: "NameString"
    #         },
    #         execution_parameters: ["ExecutionParameter"],
    #         substatement_type: "String",
    #         query_results_s3_access_grants_configuration: {
    #           enable_s3_access_grants: false, # required
    #           create_user_level_prefix: false,
    #           authentication_type: "DIRECTORY_IDENTITY" # One of: ["DIRECTORY_IDENTITY"], # required
    #         }
    #       }
    #     ],
    #     unprocessed_query_execution_ids: [
    #       {
    #         query_execution_id: "QueryExecutionId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetQueryExecutionOutput]
    def batch_get_query_execution(params = {}, options = {})
      request = build_request(:batch_get_query_execution, params)
      request.send_request(options)
    end

    # <p>Cancels the capacity reservation with the specified name. Cancelled reservations
    #             remain in your account and will be deleted 45 days after cancellation. During the 45
    #             days, you cannot re-purpose or reuse a reservation that has been cancelled, but you can
    #             refer to its tags and view it for historical reference. </p>
    # @param [Hash, Types::CancelCapacityReservationInput] params
    # @option params [String] :name
    #   <p>The name of the capacity reservation to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CapacityReservationName", # required
    #   }
    #   options = {}
    #   response = client.cancel_capacity_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelCapacityReservationOutput]
    def cancel_capacity_reservation(params = {}, options = {})
      request = build_request(:cancel_capacity_reservation, params)
      request.send_request(options)
    end

    # <p>Creates a capacity reservation with the specified name and number of requested data
    #             processing units.</p>
    # @param [Hash, Types::CreateCapacityReservationInput] params
    # @option params [Integer] :target_dpus
    #   <p>The number of requested data processing units.</p>
    # @option params [String] :name
    #   <p>The name of the capacity reservation to create.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the capacity reservation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_dpus: 1, # required
    #     name: "CapacityReservationName", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_capacity_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateCapacityReservationOutput]
    def create_capacity_reservation(params = {}, options = {})
      request = build_request(:create_capacity_reservation, params)
      request.send_request(options)
    end

    # <p>Creates (registers) a data catalog with the specified name and properties. Catalogs
    #             created are visible to all users of the same Amazon Web Services account.</p>
    #          <p>For a <code>FEDERATED</code> catalog, this API operation creates the following
    #             resources.</p>
    #          <ul>
    #             <li>
    #                <p>CFN Stack Name with a maximum length of 128 characters and prefix
    #                         <code>athenafederatedcatalog-CATALOG_NAME_SANITIZED</code> with length 23
    #                     characters.</p>
    #             </li>
    #             <li>
    #                <p>Lambda Function Name with a maximum length of 64 characters and prefix
    #                         <code>athenafederatedcatalog_CATALOG_NAME_SANITIZED</code> with length 23
    #                     characters.</p>
    #             </li>
    #             <li>
    #                <p>Glue Connection Name with a maximum length of 255 characters and a prefix
    #                         <code>athenafederatedcatalog_CATALOG_NAME_SANITIZED</code> with length 23
    #                     characters.  </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateDataCatalogInput] params
    # @option params [String] :name
    #   <p>The name of the data catalog to create. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    #            <p>For <code>FEDERATED</code> type the catalog name has following considerations and
    #               limits:</p>
    #            <ul>
    #               <li>
    #                  <p>The catalog name allows special characters such as <code>_ , @ , \ , -
    #                       </code>. These characters are replaced with a hyphen (-) when creating the CFN
    #                       Stack Name and with an underscore (_) when creating the Lambda Function and Glue
    #                       Connection Name.</p>
    #               </li>
    #               <li>
    #                  <p>The catalog name has a theoretical limit of 128 characters. However, since we
    #                       use it to create other resources that allow less characters and we prepend a
    #                       prefix to it, the actual catalog name limit for <code>FEDERATED</code> catalog
    #                       is 64 - 23 = 41 characters.</p>
    #               </li>
    #            </ul>
    # @option params [String] :type
    #   <p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,
    #                   <code>GLUE</code> for an Glue Data Catalog, and <code>HIVE</code> for an
    #               external Apache Hive metastore. <code>FEDERATED</code> is a federated catalog for which
    #                   Athena creates the connection and the Lambda function for
    #               you based on the parameters that you pass.</p>
    #            <p>For <code>FEDERATED</code> type, we do not support IAM identity center.</p>
    # @option params [String] :description
    #   <p>A description of the data catalog to be created.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>Specifies the Lambda function or functions to use for creating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                  <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                        <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                        <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The
    #                               <code>
    #                        <i>catalog_id</i>
    #                     </code> is the account ID of the
    #                           Amazon Web Services account to which the Glue Data Catalog
    #                       belongs.</p>
    #                  <p>
    #                     <code>catalog-id=<i>catalog_id</i>
    #                     </code>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>The <code>GLUE</code> data catalog type also applies to the default
    #                                   <code>AwsDataCatalog</code> that already exists in your account, of
    #                               which you can have only one and cannot modify.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The <code>FEDERATED</code> data catalog type uses one of the following
    #                       parameters, but not both. Use <code>connection-arn</code> for an existing
    #                           Glue connection. Use <code>connection-type</code> and
    #                           <code>connection-properties</code> to specify the configuration setting for
    #                       a new connection.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>connection-arn:<i><glue_connection_arn_to_reuse></i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>lambda-role-arn</code> (optional): The execution role to use for the
    #                               Lambda function. If not provided, one is created.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>connection-type:MYSQL|REDSHIFT|....,
    #                                       connection-properties:"<i><json_string></i>"</code>
    #                        </p>
    #                        <p>For <i>
    #                              <code><json_string></code>
    #                           </i>, use escaped
    #                               JSON text, as in the following example.</p>
    #                        <p>
    #                           <code>"{\"spill_bucket\":\"my_spill\",\"spill_prefix\":\"athena-spill\",\"host\":\"abc12345.snowflakecomputing.com\",\"port\":\"1234\",\"warehouse\":\"DEV_WH\",\"database\":\"TEST\",\"schema\":\"PUBLIC\",\"SecretArn\":\"arn:aws:secretsmanager:ap-south-1:111122223333:secret:snowflake-XHb67j\"}"</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of comma separated tags to add to the data catalog that is created. All the
    #               resources that are created by the <code>CreateDataCatalog</code> API operation with
    #                   <code>FEDERATED</code> type will have the tag
    #                   <code>federated_athena_datacatalog="true"</code>. This includes the CFN Stack, Glue
    #               Connection, Athena DataCatalog, and all the resources created as part of the CFN Stack
    #               (Lambda Function, IAM policies/roles).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CatalogNameString", # required
    #     type: "LAMBDA" # One of: ["LAMBDA", "GLUE", "HIVE", "FEDERATED"], # required
    #     description: "DescriptionString",
    #     parameters: {
    #       "KeyString" => "ParametersMapValue"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_catalog: {
    #       name: "CatalogNameString", # required
    #       description: "DescriptionString",
    #       type: "LAMBDA" # One of: ["LAMBDA", "GLUE", "HIVE", "FEDERATED"], # required
    #       parameters: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #       connection_type: "DYNAMODB" # One of: ["DYNAMODB", "MYSQL", "POSTGRESQL", "REDSHIFT", "ORACLE", "SYNAPSE", "SQLSERVER", "DB2", "OPENSEARCH", "BIGQUERY", "GOOGLECLOUDSTORAGE", "HBASE", "DOCUMENTDB", "CMDB", "TPCDS", "TIMESTREAM", "SAPHANA", "SNOWFLAKE", "DATALAKEGEN2", "DB2AS400"],
    #       error: "ErrorMessage"
    #     }
    #   }
    # @return [Types::CreateDataCatalogOutput]
    def create_data_catalog(params = {}, options = {})
      request = build_request(:create_data_catalog, params)
      request.send_request(options)
    end

    # <p>Creates a named query in the specified workgroup. Requires that you have access to the
    #             workgroup.</p>
    # @param [Hash, Types::CreateNamedQueryInput] params
    # @option params [String] :name
    #   <p>The query name.</p>
    # @option params [String] :description
    #   <p>The query description.</p>
    # @option params [String] :database
    #   <p>The database to which the query belongs.</p>
    # @option params [String] :query_string
    #   <p>The contents of the query with all query statements.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>CreateNamedQuery</code> request is
    #               received, the same response is returned and another query is not created. If a parameter
    #               has changed, for example, the <code>QueryString</code>, an error is returned.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @option params [String] :work_group
    #   <p>The name of the workgroup in which the named query is being created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     database: "DatabaseString", # required
    #     query_string: "QueryString", # required
    #     client_request_token: "IdempotencyToken",
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.create_named_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     named_query_id: "NamedQueryId"
    #   }
    # @return [Types::CreateNamedQueryOutput]
    def create_named_query(params = {}, options = {})
      request = build_request(:create_named_query, params)
      request.send_request(options)
    end

    # <p>Creates an empty <code>ipynb</code> file in the specified Apache Spark enabled
    #             workgroup. Throws an error if a file in the workgroup with the same name already
    #             exists.</p>
    # @param [Hash, Types::CreateNotebookInput] params
    # @option params [String] :work_group
    #   <p>The name of the Spark enabled workgroup in which the notebook will be created.</p>
    # @option params [String] :name
    #   <p>The name of the <code>ipynb</code> file to be created in the Spark workgroup, without
    #               the <code>.ipynb</code> extension.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_group: "WorkGroupName", # required
    #     name: "NotebookName", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_notebook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_id: "NotebookId"
    #   }
    # @return [Types::CreateNotebookOutput]
    def create_notebook(params = {}, options = {})
      request = build_request(:create_notebook, params)
      request.send_request(options)
    end

    # <p>Creates a prepared statement for use with SQL queries in Athena.</p>
    # @param [Hash, Types::CreatePreparedStatementInput] params
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup to which the prepared statement belongs.</p>
    # @option params [String] :query_statement
    #   <p>The query string for the prepared statement.</p>
    # @option params [String] :description
    #   <p>The description of the prepared statement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     statement_name: "StatementName", # required
    #     work_group: "WorkGroupName", # required
    #     query_statement: "QueryString", # required
    #     description: "DescriptionString"
    #   }
    #   options = {}
    #   response = client.create_prepared_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreatePreparedStatementOutput]
    def create_prepared_statement(params = {}, options = {})
      request = build_request(:create_prepared_statement, params)
      request.send_request(options)
    end

    # <p>Gets an authentication token and the URL at which the notebook can be accessed. During
    #             programmatic access, <code>CreatePresignedNotebookUrl</code> must be called every 10
    #             minutes to refresh the authentication token. For information about granting programmatic
    #             access, see <a href="https://docs.aws.amazon.com/athena/latest/ug/setting-up.html#setting-up-grant-programmatic-access">Grant
    #                 programmatic access</a>.</p>
    # @param [Hash, Types::CreatePresignedNotebookUrlRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.create_presigned_notebook_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_url: "String", # required
    #     auth_token: "AuthToken", # required
    #     auth_token_expiration_time: 1, # required
    #   }
    # @return [Types::CreatePresignedNotebookUrlResponse]
    def create_presigned_notebook_url(params = {}, options = {})
      request = build_request(:create_presigned_notebook_url, params)
      request.send_request(options)
    end

    # <p>Creates a workgroup with the specified name. A workgroup can be an Apache Spark
    #             enabled workgroup or an Athena SQL workgroup.</p>
    # @param [Hash, Types::CreateWorkGroupInput] params
    # @option params [String] :name
    #   <p>The workgroup name.</p>
    # @option params [Types::WorkGroupConfiguration] :configuration
    #   <p>Contains configuration information for creating an Athena SQL workgroup or
    #               Spark enabled Athena workgroup. Athena SQL workgroup
    #               configuration includes the location in Amazon S3 where query and calculation
    #               results are stored, the encryption configuration, if any, used for encrypting query
    #               results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, the
    #               limit for the amount of bytes scanned (cutoff) per query, if it is specified, and
    #               whether workgroup's settings (specified with <code>EnforceWorkGroupConfiguration</code>)
    #               in the <code>WorkGroupConfiguration</code> override client-side settings. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    # @option params [String] :description
    #   <p>The workgroup description.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of comma separated tags to add to the workgroup that is created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkGroupName", # required
    #     configuration: {
    #       result_configuration: {
    #         output_location: "ResultOutputLocation",
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS", "CSE_KMS"], # required
    #           kms_key: "String"
    #         },
    #         expected_bucket_owner: "AwsAccountId",
    #         acl_configuration: {
    #           s3_acl_option: "BUCKET_OWNER_FULL_CONTROL" # One of: ["BUCKET_OWNER_FULL_CONTROL"], # required
    #         }
    #       },
    #       managed_query_results_configuration: {
    #         enabled: false, # required
    #         encryption_configuration: {
    #           kms_key: "KmsKey", # required
    #         }
    #       },
    #       enforce_work_group_configuration: false,
    #       publish_cloud_watch_metrics_enabled: false,
    #       bytes_scanned_cutoff_per_query: 1,
    #       requester_pays_enabled: false,
    #       engine_version: {
    #         selected_engine_version: "NameString",
    #         effective_engine_version: "NameString"
    #       },
    #       additional_configuration: "NameString",
    #       execution_role: "RoleArn",
    #       monitoring_configuration: {
    #         cloud_watch_logging_configuration: {
    #           enabled: false, # required
    #           log_group: "LogGroupName",
    #           log_stream_name_prefix: "LogStreamNamePrefix",
    #           log_types: {
    #             "LogTypeKey" => ["LogTypeValue"]
    #           }
    #         },
    #         managed_logging_configuration: {
    #           enabled: false, # required
    #           kms_key: "KmsKey"
    #         },
    #         s3_logging_configuration: {
    #           enabled: false, # required
    #           kms_key: "KmsKey",
    #           log_location: "S3OutputLocation"
    #         }
    #       },
    #       engine_configuration: {
    #         coordinator_dpu_size: 1,
    #         max_concurrent_dpus: 1,
    #         default_executor_dpu_size: 1,
    #         additional_configs: {
    #           "KeyString" => "ParametersMapValue"
    #         },
    #         spark_properties: {
    #           "KeyString" => "ParametersMapValue"
    #         },
    #         classifications: [
    #           {
    #             name: "NameString",
    #             properties: {
    #               "KeyString" => "ParametersMapValue"
    #             }
    #           }
    #         ]
    #       },
    #       customer_content_encryption_configuration: {
    #         kms_key: "KmsKey", # required
    #       },
    #       enable_minimum_encryption_configuration: false,
    #       identity_center_configuration: {
    #         enable_identity_center: false,
    #         identity_center_instance_arn: "IdentityCenterInstanceArn"
    #       },
    #       query_results_s3_access_grants_configuration: {
    #         enable_s3_access_grants: false, # required
    #         create_user_level_prefix: false,
    #         authentication_type: "DIRECTORY_IDENTITY" # One of: ["DIRECTORY_IDENTITY"], # required
    #       }
    #     },
    #     description: "WorkGroupDescriptionString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_work_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateWorkGroupOutput]
    def create_work_group(params = {}, options = {})
      request = build_request(:create_work_group, params)
      request.send_request(options)
    end

    # <p>Deletes a cancelled capacity reservation. A reservation must be cancelled before it
    #             can be deleted. A deleted reservation is immediately removed from your account and can
    #             no longer be referenced, including by its ARN. A deleted reservation cannot be called by
    #                 <code>GetCapacityReservation</code>, and deleted reservations do not appear in the
    #             output of <code>ListCapacityReservations</code>.</p>
    # @param [Hash, Types::DeleteCapacityReservationInput] params
    # @option params [String] :name
    #   <p>The name of the capacity reservation to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CapacityReservationName", # required
    #   }
    #   options = {}
    #   response = client.delete_capacity_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCapacityReservationOutput]
    def delete_capacity_reservation(params = {}, options = {})
      request = build_request(:delete_capacity_reservation, params)
      request.send_request(options)
    end

    # <p>Deletes a data catalog.</p>
    # @param [Hash, Types::DeleteDataCatalogInput] params
    # @option params [String] :name
    #   <p>The name of the data catalog to delete.</p>
    # @option params [Boolean] :delete_catalog_only
    #   <p>Deletes the Athena Data Catalog. You can only use this with the <code>FEDERATED</code>
    #               catalogs. You usually perform this before registering the connector with Glue Data
    #               Catalog. After deletion, you will have to manage the Glue Connection and Lambda
    #               function. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CatalogNameString", # required
    #     delete_catalog_only: false
    #   }
    #   options = {}
    #   response = client.delete_data_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_catalog: {
    #       name: "CatalogNameString", # required
    #       description: "DescriptionString",
    #       type: "LAMBDA" # One of: ["LAMBDA", "GLUE", "HIVE", "FEDERATED"], # required
    #       parameters: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #       connection_type: "DYNAMODB" # One of: ["DYNAMODB", "MYSQL", "POSTGRESQL", "REDSHIFT", "ORACLE", "SYNAPSE", "SQLSERVER", "DB2", "OPENSEARCH", "BIGQUERY", "GOOGLECLOUDSTORAGE", "HBASE", "DOCUMENTDB", "CMDB", "TPCDS", "TIMESTREAM", "SAPHANA", "SNOWFLAKE", "DATALAKEGEN2", "DB2AS400"],
    #       error: "ErrorMessage"
    #     }
    #   }
    # @return [Types::DeleteDataCatalogOutput]
    def delete_data_catalog(params = {}, options = {})
      request = build_request(:delete_data_catalog, params)
      request.send_request(options)
    end

    # <p>Deletes the named query if you have access to the workgroup in which the query was
    #             saved.</p>
    # @param [Hash, Types::DeleteNamedQueryInput] params
    # @option params [String] :named_query_id
    #   <p>The unique ID of the query to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     named_query_id: "NamedQueryId", # required
    #   }
    #   options = {}
    #   response = client.delete_named_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNamedQueryOutput]
    def delete_named_query(params = {}, options = {})
      request = build_request(:delete_named_query, params)
      request.send_request(options)
    end

    # <p>Deletes the specified notebook.</p>
    # @param [Hash, Types::DeleteNotebookInput] params
    # @option params [String] :notebook_id
    #   <p>The ID of the notebook to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_id: "NotebookId", # required
    #   }
    #   options = {}
    #   response = client.delete_notebook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNotebookOutput]
    def delete_notebook(params = {}, options = {})
      request = build_request(:delete_notebook, params)
      request.send_request(options)
    end

    # <p>Deletes the prepared statement with the specified name from the specified
    #             workgroup.</p>
    # @param [Hash, Types::DeletePreparedStatementInput] params
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement to delete.</p>
    # @option params [String] :work_group
    #   <p>The workgroup to which the statement to be deleted belongs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     statement_name: "StatementName", # required
    #     work_group: "WorkGroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_prepared_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePreparedStatementOutput]
    def delete_prepared_statement(params = {}, options = {})
      request = build_request(:delete_prepared_statement, params)
      request.send_request(options)
    end

    # <p>Deletes the workgroup with the specified name. The primary workgroup cannot be
    #             deleted.</p>
    # @param [Hash, Types::DeleteWorkGroupInput] params
    # @option params [String] :work_group
    #   <p>The unique name of the workgroup to delete.</p>
    # @option params [Boolean] :recursive_delete_option
    #   <p>The option to delete the workgroup and its contents even if the workgroup contains any
    #               named queries, query executions, or notebooks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_group: "WorkGroupName", # required
    #     recursive_delete_option: false
    #   }
    #   options = {}
    #   response = client.delete_work_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkGroupOutput]
    def delete_work_group(params = {}, options = {})
      request = build_request(:delete_work_group, params)
      request.send_request(options)
    end

    # <p>Exports the specified notebook and its metadata.</p>
    # @param [Hash, Types::ExportNotebookInput] params
    # @option params [String] :notebook_id
    #   <p>The ID of the notebook to export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_id: "NotebookId", # required
    #   }
    #   options = {}
    #   response = client.export_notebook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_metadata: {
    #       notebook_id: "NotebookId",
    #       name: "NotebookName",
    #       work_group: "WorkGroupName",
    #       creation_time: Time.now,
    #       type: "IPYNB" # One of: ["IPYNB"],
    #       last_modified_time: Time.now
    #     },
    #     payload: "Payload"
    #   }
    # @return [Types::ExportNotebookOutput]
    def export_notebook(params = {}, options = {})
      request = build_request(:export_notebook, params)
      request.send_request(options)
    end

    # <p>Describes a previously submitted calculation execution.</p>
    # @param [Hash, Types::GetCalculationExecutionRequest] params
    # @option params [String] :calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculation_execution_id: "CalculationExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_calculation_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculation_execution_id: "CalculationExecutionId",
    #     session_id: "SessionId",
    #     description: "DescriptionString",
    #     working_directory: "S3Uri",
    #     status: {
    #       submission_date_time: Time.now,
    #       completion_date_time: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "CREATED", "QUEUED", "RUNNING", "CANCELING", "CANCELED", "COMPLETED", "FAILED"],
    #       state_change_reason: "DescriptionString"
    #     },
    #     statistics: {
    #       dpu_execution_in_millis: 1,
    #       progress: "DescriptionString"
    #     },
    #     result: {
    #       std_out_s3_uri: "S3Uri",
    #       std_error_s3_uri: "S3Uri",
    #       result_s3_uri: "S3Uri",
    #       result_type: "CalculationResultType"
    #     }
    #   }
    # @return [Types::GetCalculationExecutionResponse]
    def get_calculation_execution(params = {}, options = {})
      request = build_request(:get_calculation_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves the unencrypted code that was executed for the calculation.</p>
    # @param [Hash, Types::GetCalculationExecutionCodeRequest] params
    # @option params [String] :calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculation_execution_id: "CalculationExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_calculation_execution_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_block: "CodeBlock"
    #   }
    # @return [Types::GetCalculationExecutionCodeResponse]
    def get_calculation_execution_code(params = {}, options = {})
      request = build_request(:get_calculation_execution_code, params)
      request.send_request(options)
    end

    # <p>Gets the status of a current calculation.</p>
    # @param [Hash, Types::GetCalculationExecutionStatusRequest] params
    # @option params [String] :calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculation_execution_id: "CalculationExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_calculation_execution_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: {
    #       submission_date_time: Time.now,
    #       completion_date_time: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "CREATED", "QUEUED", "RUNNING", "CANCELING", "CANCELED", "COMPLETED", "FAILED"],
    #       state_change_reason: "DescriptionString"
    #     },
    #     statistics: {
    #       dpu_execution_in_millis: 1,
    #       progress: "DescriptionString"
    #     }
    #   }
    # @return [Types::GetCalculationExecutionStatusResponse]
    def get_calculation_execution_status(params = {}, options = {})
      request = build_request(:get_calculation_execution_status, params)
      request.send_request(options)
    end

    # <p>Gets the capacity assignment configuration for a capacity reservation, if one
    #             exists.</p>
    # @param [Hash, Types::GetCapacityAssignmentConfigurationInput] params
    # @option params [String] :capacity_reservation_name
    #   <p>The name of the capacity reservation to retrieve the capacity assignment configuration
    #               for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_reservation_name: "CapacityReservationName", # required
    #   }
    #   options = {}
    #   response = client.get_capacity_assignment_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_assignment_configuration: { # required
    #       capacity_reservation_name: "CapacityReservationName",
    #       capacity_assignments: [
    #         {
    #           work_group_names: ["WorkGroupName"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetCapacityAssignmentConfigurationOutput]
    def get_capacity_assignment_configuration(params = {}, options = {})
      request = build_request(:get_capacity_assignment_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about the capacity reservation with the specified name.</p>
    # @param [Hash, Types::GetCapacityReservationInput] params
    # @option params [String] :name
    #   <p>The name of the capacity reservation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CapacityReservationName", # required
    #   }
    #   options = {}
    #   response = client.get_capacity_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_reservation: { # required
    #       name: "CapacityReservationName", # required
    #       status: "PENDING" # One of: ["PENDING", "ACTIVE", "CANCELLING", "CANCELLED", "FAILED", "UPDATE_PENDING"], # required
    #       target_dpus: 1, # required
    #       allocated_dpus: 1, # required
    #       last_allocation: {
    #         status: "PENDING" # One of: ["PENDING", "SUCCEEDED", "FAILED"], # required
    #         status_message: "String",
    #         request_time: Time.now, # required
    #         request_completion_time: Time.now
    #       },
    #       last_successful_allocation_time: Time.now,
    #       creation_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetCapacityReservationOutput]
    def get_capacity_reservation(params = {}, options = {})
      request = build_request(:get_capacity_reservation, params)
      request.send_request(options)
    end

    # <p>Returns the specified data catalog.</p>
    # @param [Hash, Types::GetDataCatalogInput] params
    # @option params [String] :name
    #   <p>The name of the data catalog to return.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup. Required if making an IAM Identity Center request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CatalogNameString", # required
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.get_data_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_catalog: {
    #       name: "CatalogNameString", # required
    #       description: "DescriptionString",
    #       type: "LAMBDA" # One of: ["LAMBDA", "GLUE", "HIVE", "FEDERATED"], # required
    #       parameters: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #       connection_type: "DYNAMODB" # One of: ["DYNAMODB", "MYSQL", "POSTGRESQL", "REDSHIFT", "ORACLE", "SYNAPSE", "SQLSERVER", "DB2", "OPENSEARCH", "BIGQUERY", "GOOGLECLOUDSTORAGE", "HBASE", "DOCUMENTDB", "CMDB", "TPCDS", "TIMESTREAM", "SAPHANA", "SNOWFLAKE", "DATALAKEGEN2", "DB2AS400"],
    #       error: "ErrorMessage"
    #     }
    #   }
    # @return [Types::GetDataCatalogOutput]
    def get_data_catalog(params = {}, options = {})
      request = build_request(:get_data_catalog, params)
      request.send_request(options)
    end

    # <p>Returns a database object for the specified database and data catalog.</p>
    # @param [Hash, Types::GetDatabaseInput] params
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog that contains the database to return.</p>
    # @option params [String] :database_name
    #   <p>The name of the database to return.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_name: "CatalogNameString", # required
    #     database_name: "NameString", # required
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.get_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database: {
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue"
    #       }
    #     }
    #   }
    # @return [Types::GetDatabaseOutput]
    def get_database(params = {}, options = {})
      request = build_request(:get_database, params)
      request.send_request(options)
    end

    # <p>Returns information about a single query. Requires that you have access to the
    #             workgroup in which the query was saved.</p>
    # @param [Hash, Types::GetNamedQueryInput] params
    # @option params [String] :named_query_id
    #   <p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query
    #               IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     named_query_id: "NamedQueryId", # required
    #   }
    #   options = {}
    #   response = client.get_named_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     named_query: {
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       database: "DatabaseString", # required
    #       query_string: "QueryString", # required
    #       named_query_id: "NamedQueryId",
    #       work_group: "WorkGroupName"
    #     }
    #   }
    # @return [Types::GetNamedQueryOutput]
    def get_named_query(params = {}, options = {})
      request = build_request(:get_named_query, params)
      request.send_request(options)
    end

    # <p>Retrieves notebook metadata for the specified notebook ID.</p>
    # @param [Hash, Types::GetNotebookMetadataInput] params
    # @option params [String] :notebook_id
    #   <p>The ID of the notebook whose metadata is to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_id: "NotebookId", # required
    #   }
    #   options = {}
    #   response = client.get_notebook_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_metadata: {
    #       notebook_id: "NotebookId",
    #       name: "NotebookName",
    #       work_group: "WorkGroupName",
    #       creation_time: Time.now,
    #       type: "IPYNB" # One of: ["IPYNB"],
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::GetNotebookMetadataOutput]
    def get_notebook_metadata(params = {}, options = {})
      request = build_request(:get_notebook_metadata, params)
      request.send_request(options)
    end

    # <p>Retrieves the prepared statement with the specified name from the specified
    #             workgroup.</p>
    # @param [Hash, Types::GetPreparedStatementInput] params
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement to retrieve.</p>
    # @option params [String] :work_group
    #   <p>The workgroup to which the statement to be retrieved belongs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     statement_name: "StatementName", # required
    #     work_group: "WorkGroupName", # required
    #   }
    #   options = {}
    #   response = client.get_prepared_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prepared_statement: {
    #       statement_name: "StatementName",
    #       query_statement: "QueryString",
    #       work_group_name: "WorkGroupName",
    #       description: "DescriptionString",
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::GetPreparedStatementOutput]
    def get_prepared_statement(params = {}, options = {})
      request = build_request(:get_prepared_statement, params)
      request.send_request(options)
    end

    # <p>Returns information about a single execution of a query if you have access to the
    #             workgroup in which the query ran. Each time a query executes, information about the
    #             query execution is saved with a unique ID.</p>
    # @param [Hash, Types::GetQueryExecutionInput] params
    # @option params [String] :query_execution_id
    #   <p>The unique ID of the query execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_execution_id: "QueryExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_query_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_execution: {
    #       query_execution_id: "QueryExecutionId",
    #       query: "QueryString",
    #       statement_type: "DDL" # One of: ["DDL", "DML", "UTILITY"],
    #       managed_query_results_configuration: {
    #         enabled: false, # required
    #         encryption_configuration: {
    #           kms_key: "KmsKey", # required
    #         }
    #       },
    #       result_configuration: {
    #         output_location: "ResultOutputLocation",
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS", "CSE_KMS"], # required
    #           kms_key: "String"
    #         },
    #         expected_bucket_owner: "AwsAccountId",
    #         acl_configuration: {
    #           s3_acl_option: "BUCKET_OWNER_FULL_CONTROL" # One of: ["BUCKET_OWNER_FULL_CONTROL"], # required
    #         }
    #       },
    #       result_reuse_configuration: {
    #         result_reuse_by_age_configuration: {
    #           enabled: false, # required
    #           max_age_in_minutes: 1
    #         }
    #       },
    #       query_execution_context: {
    #         database: "DatabaseString",
    #         catalog: "CatalogNameString"
    #       },
    #       status: {
    #         state: "QUEUED" # One of: ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"],
    #         state_change_reason: "String",
    #         submission_date_time: Time.now,
    #         completion_date_time: Time.now,
    #         athena_error: {
    #           error_category: 1,
    #           error_type: 1,
    #           retryable: false,
    #           error_message: "String"
    #         }
    #       },
    #       statistics: {
    #         engine_execution_time_in_millis: 1,
    #         data_scanned_in_bytes: 1,
    #         data_manifest_location: "String",
    #         total_execution_time_in_millis: 1,
    #         query_queue_time_in_millis: 1,
    #         service_pre_processing_time_in_millis: 1,
    #         query_planning_time_in_millis: 1,
    #         service_processing_time_in_millis: 1,
    #         result_reuse_information: {
    #           reused_previous_result: false, # required
    #         },
    #         dpu_count: 1.0
    #       },
    #       work_group: "WorkGroupName",
    #       engine_version: {
    #         selected_engine_version: "NameString",
    #         effective_engine_version: "NameString"
    #       },
    #       execution_parameters: ["ExecutionParameter"],
    #       substatement_type: "String",
    #       query_results_s3_access_grants_configuration: {
    #         enable_s3_access_grants: false, # required
    #         create_user_level_prefix: false,
    #         authentication_type: "DIRECTORY_IDENTITY" # One of: ["DIRECTORY_IDENTITY"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetQueryExecutionOutput]
    def get_query_execution(params = {}, options = {})
      request = build_request(:get_query_execution, params)
      request.send_request(options)
    end

    # <p>Streams the results of a single query execution specified by
    #                 <code>QueryExecutionId</code> from the Athena query results location in
    #                 Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/querying.html">Working with query results, recent queries, and
    #                 output files</a> in the <i>Amazon Athena User Guide</i>.
    #             This request does not execute the query but returns results. Use <a>StartQueryExecution</a> to run a query.</p>
    #          <p>To stream query results successfully, the IAM principal with permission to call
    #                 <code>GetQueryResults</code> also must have permissions to the Amazon S3
    #             <code>GetObject</code> action for the Athena query results location.</p>
    #          <important>
    #             <p>IAM principals with permission to the Amazon S3
    #                 <code>GetObject</code> action for the query results location are able to retrieve
    #                 query results from Amazon S3 even if permission to the
    #                     <code>GetQueryResults</code> action is denied. To restrict user or role access,
    #                 ensure that Amazon S3 permissions to the Athena query location
    #                 are denied.</p>
    #          </important>
    # @param [Hash, Types::GetQueryResultsInput] params
    # @option params [String] :query_execution_id
    #   <p>The unique ID of the query execution.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results (rows) to return in this request.</p>
    # @option params [String] :query_result_type
    #   <p> When you set this to <code>DATA_ROWS</code> or empty, <code>GetQueryResults</code>
    #               returns the query results in rows. If set to <code>DATA_MANIFEST</code>, it returns the
    #               manifest file in rows. Only the query types <code>CREATE TABLE AS SELECT</code>,
    #                   <code>UNLOAD</code>, and <code>INSERT</code> can generate a manifest file. If you
    #               use <code>DATA_MANIFEST</code> for other query types, the query will fail. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_execution_id: "QueryExecutionId", # required
    #     next_token: "Token",
    #     max_results: 1,
    #     query_result_type: "DATA_MANIFEST" # One of: ["DATA_MANIFEST", "DATA_ROWS"]
    #   }
    #   options = {}
    #   response = client.get_query_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_count: 1,
    #     result_set: {
    #       rows: [
    #         {
    #           data: [
    #             {
    #               var_char_value: "datumString"
    #             }
    #           ]
    #         }
    #       ],
    #       result_set_metadata: {
    #         column_info: [
    #           {
    #             catalog_name: "String",
    #             schema_name: "String",
    #             table_name: "String",
    #             name: "String", # required
    #             label: "String",
    #             type: "String", # required
    #             precision: 1,
    #             scale: 1,
    #             nullable: "NOT_NULL" # One of: ["NOT_NULL", "NULLABLE", "UNKNOWN"],
    #             case_sensitive: false
    #           }
    #         ]
    #       }
    #     },
    #     next_token: "Token"
    #   }
    # @return [Types::GetQueryResultsOutput]
    def get_query_results(params = {}, options = {})
      request = build_request(:get_query_results, params)
      request.send_request(options)
    end

    # <p>Returns query execution runtime statistics related to a single execution of a query if
    #             you have access to the workgroup in which the query ran. Statistics from the
    #                 <code>Timeline</code> section of the response object are available as soon as <a>QueryExecutionStatus$State</a> is in a SUCCEEDED or FAILED state. The
    #             remaining non-timeline statistics in the response (like stage-level input and output row
    #             count and data size) are updated asynchronously and may not be available immediately
    #             after a query completes or, in some cases, may not be returned. The non-timeline
    #             statistics are also not included when a query has row-level filters defined in Lake Formation.</p>
    # @param [Hash, Types::GetQueryRuntimeStatisticsInput] params
    # @option params [String] :query_execution_id
    #   <p>The unique ID of the query execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_execution_id: "QueryExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_query_runtime_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_runtime_statistics: {
    #       timeline: {
    #         query_queue_time_in_millis: 1,
    #         service_pre_processing_time_in_millis: 1,
    #         query_planning_time_in_millis: 1,
    #         engine_execution_time_in_millis: 1,
    #         service_processing_time_in_millis: 1,
    #         total_execution_time_in_millis: 1
    #       },
    #       rows: {
    #         input_rows: 1,
    #         input_bytes: 1,
    #         output_bytes: 1,
    #         output_rows: 1
    #       },
    #       output_stage: {
    #         stage_id: 1,
    #         state: "String",
    #         output_bytes: 1,
    #         output_rows: 1,
    #         input_bytes: 1,
    #         input_rows: 1,
    #         execution_time: 1,
    #         query_stage_plan: {
    #           name: "String",
    #           identifier: "String",
    #           children: [
    #             {
    #               # recursive QueryStagePlanNode
    #             }
    #           ],
    #           remote_sources: ["String"]
    #         },
    #         sub_stages: [
    #           {
    #             # recursive QueryStage
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetQueryRuntimeStatisticsOutput]
    def get_query_runtime_statistics(params = {}, options = {})
      request = build_request(:get_query_runtime_statistics, params)
      request.send_request(options)
    end

    # <p>Gets the Live UI/Persistence UI for a session.</p>
    # @param [Hash, Types::GetResourceDashboardRequest] params
    # @option params [String] :resource_arn
    #   <p>The The Amazon Resource Name (ARN) for a session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_resource_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "String", # required
    #   }
    # @return [Types::GetResourceDashboardResponse]
    def get_resource_dashboard(params = {}, options = {})
      request = build_request(:get_resource_dashboard, params)
      request.send_request(options)
    end

    # <p>Gets the full details of a previously created session, including the session status
    #             and configuration.</p>
    # @param [Hash, Types::GetSessionRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId",
    #     description: "DescriptionString",
    #     work_group: "WorkGroupName",
    #     engine_version: "NameString",
    #     engine_configuration: {
    #       coordinator_dpu_size: 1,
    #       max_concurrent_dpus: 1,
    #       default_executor_dpu_size: 1,
    #       additional_configs: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       spark_properties: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       classifications: [
    #         {
    #           name: "NameString",
    #           properties: {
    #             "KeyString" => "ParametersMapValue"
    #           }
    #         }
    #       ]
    #     },
    #     notebook_version: "NameString",
    #     monitoring_configuration: {
    #       cloud_watch_logging_configuration: {
    #         enabled: false, # required
    #         log_group: "LogGroupName",
    #         log_stream_name_prefix: "LogStreamNamePrefix",
    #         log_types: {
    #           "LogTypeKey" => ["LogTypeValue"]
    #         }
    #       },
    #       managed_logging_configuration: {
    #         enabled: false, # required
    #         kms_key: "KmsKey"
    #       },
    #       s3_logging_configuration: {
    #         enabled: false, # required
    #         kms_key: "KmsKey",
    #         log_location: "S3OutputLocation"
    #       }
    #     },
    #     session_configuration: {
    #       execution_role: "RoleArn",
    #       working_directory: "ResultOutputLocation",
    #       idle_timeout_seconds: 1,
    #       session_idle_timeout_in_minutes: 1,
    #       encryption_configuration: {
    #         encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS", "CSE_KMS"], # required
    #         kms_key: "String"
    #       }
    #     },
    #     status: {
    #       start_date_time: Time.now,
    #       last_modified_date_time: Time.now,
    #       end_date_time: Time.now,
    #       idle_since_date_time: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "CREATED", "IDLE", "BUSY", "TERMINATING", "TERMINATED", "DEGRADED", "FAILED"],
    #       state_change_reason: "DescriptionString"
    #     },
    #     statistics: {
    #       dpu_execution_in_millis: 1
    #     }
    #   }
    # @return [Types::GetSessionResponse]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <p>Gets a connection endpoint and authentication token for a given session Id.</p>
    # @param [Hash, Types::GetSessionEndpointRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.get_session_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_url: "String", # required
    #     auth_token: "String", # required
    #     auth_token_expiration_time: Time.now, # required
    #   }
    # @return [Types::GetSessionEndpointResponse]
    def get_session_endpoint(params = {}, options = {})
      request = build_request(:get_session_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets the current status of a session.</p>
    # @param [Hash, Types::GetSessionStatusRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.get_session_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId",
    #     status: {
    #       start_date_time: Time.now,
    #       last_modified_date_time: Time.now,
    #       end_date_time: Time.now,
    #       idle_since_date_time: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "CREATED", "IDLE", "BUSY", "TERMINATING", "TERMINATED", "DEGRADED", "FAILED"],
    #       state_change_reason: "DescriptionString"
    #     }
    #   }
    # @return [Types::GetSessionStatusResponse]
    def get_session_status(params = {}, options = {})
      request = build_request(:get_session_status, params)
      request.send_request(options)
    end

    # <p>Returns table metadata for the specified catalog, database, and table.</p>
    # @param [Hash, Types::GetTableMetadataInput] params
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog that contains the database and table metadata to
    #               return.</p>
    # @option params [String] :database_name
    #   <p>The name of the database that contains the table metadata to return.</p>
    # @option params [String] :table_name
    #   <p>The name of the table for which metadata is returned.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_name: "CatalogNameString", # required
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.get_table_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_metadata: {
    #       name: "NameString", # required
    #       create_time: Time.now,
    #       last_access_time: Time.now,
    #       table_type: "TableTypeString",
    #       columns: [
    #         {
    #           name: "NameString", # required
    #           type: "TypeString",
    #           comment: "CommentString"
    #         }
    #       ],
    #       partition_keys: [
    #         {
    #           name: "NameString", # required
    #           type: "TypeString",
    #           comment: "CommentString"
    #         }
    #       ],
    #       parameters: {
    #         "KeyString" => "ParametersMapValue"
    #       }
    #     }
    #   }
    # @return [Types::GetTableMetadataOutput]
    def get_table_metadata(params = {}, options = {})
      request = build_request(:get_table_metadata, params)
      request.send_request(options)
    end

    # <p>Returns information about the workgroup with the specified name.</p>
    # @param [Hash, Types::GetWorkGroupInput] params
    # @option params [String] :work_group
    #   <p>The name of the workgroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_group: "WorkGroupName", # required
    #   }
    #   options = {}
    #   response = client.get_work_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     work_group: {
    #       name: "WorkGroupName", # required
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       configuration: {
    #         result_configuration: {
    #           output_location: "ResultOutputLocation",
    #           encryption_configuration: {
    #             encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS", "CSE_KMS"], # required
    #             kms_key: "String"
    #           },
    #           expected_bucket_owner: "AwsAccountId",
    #           acl_configuration: {
    #             s3_acl_option: "BUCKET_OWNER_FULL_CONTROL" # One of: ["BUCKET_OWNER_FULL_CONTROL"], # required
    #           }
    #         },
    #         managed_query_results_configuration: {
    #           enabled: false, # required
    #           encryption_configuration: {
    #             kms_key: "KmsKey", # required
    #           }
    #         },
    #         enforce_work_group_configuration: false,
    #         publish_cloud_watch_metrics_enabled: false,
    #         bytes_scanned_cutoff_per_query: 1,
    #         requester_pays_enabled: false,
    #         engine_version: {
    #           selected_engine_version: "NameString",
    #           effective_engine_version: "NameString"
    #         },
    #         additional_configuration: "NameString",
    #         execution_role: "RoleArn",
    #         monitoring_configuration: {
    #           cloud_watch_logging_configuration: {
    #             enabled: false, # required
    #             log_group: "LogGroupName",
    #             log_stream_name_prefix: "LogStreamNamePrefix",
    #             log_types: {
    #               "LogTypeKey" => ["LogTypeValue"]
    #             }
    #           },
    #           managed_logging_configuration: {
    #             enabled: false, # required
    #             kms_key: "KmsKey"
    #           },
    #           s3_logging_configuration: {
    #             enabled: false, # required
    #             kms_key: "KmsKey",
    #             log_location: "S3OutputLocation"
    #           }
    #         },
    #         engine_configuration: {
    #           coordinator_dpu_size: 1,
    #           max_concurrent_dpus: 1,
    #           default_executor_dpu_size: 1,
    #           additional_configs: {
    #             "KeyString" => "ParametersMapValue"
    #           },
    #           spark_properties: {
    #             "KeyString" => "ParametersMapValue"
    #           },
    #           classifications: [
    #             {
    #               name: "NameString",
    #               properties: {
    #                 "KeyString" => "ParametersMapValue"
    #               }
    #             }
    #           ]
    #         },
    #         customer_content_encryption_configuration: {
    #           kms_key: "KmsKey", # required
    #         },
    #         enable_minimum_encryption_configuration: false,
    #         identity_center_configuration: {
    #           enable_identity_center: false,
    #           identity_center_instance_arn: "IdentityCenterInstanceArn"
    #         },
    #         query_results_s3_access_grants_configuration: {
    #           enable_s3_access_grants: false, # required
    #           create_user_level_prefix: false,
    #           authentication_type: "DIRECTORY_IDENTITY" # One of: ["DIRECTORY_IDENTITY"], # required
    #         }
    #       },
    #       description: "WorkGroupDescriptionString",
    #       creation_time: Time.now,
    #       identity_center_application_arn: "IdentityCenterApplicationArn"
    #     }
    #   }
    # @return [Types::GetWorkGroupOutput]
    def get_work_group(params = {}, options = {})
      request = build_request(:get_work_group, params)
      request.send_request(options)
    end

    # <p>Imports a single <code>ipynb</code> file to a Spark enabled workgroup. To import the
    #             notebook, the request must specify a value for either <code>Payload</code> or
    #                 <code>NoteBookS3LocationUri</code>. If neither is specified or both are specified,
    #             an <code>InvalidRequestException</code> occurs. The maximum file size that can be
    #             imported is 10 megabytes. If an <code>ipynb</code> file with the same name already
    #             exists in the workgroup, throws an error.</p>
    # @param [Hash, Types::ImportNotebookInput] params
    # @option params [String] :work_group
    #   <p>The name of the Spark enabled workgroup to import the notebook to.</p>
    # @option params [String] :name
    #   <p>The name of the notebook to import.</p>
    # @option params [String] :payload
    #   <p>The notebook content to be imported. The payload must be in <code>ipynb</code>
    #               format.</p>
    # @option params [String] :type
    #   <p>The notebook content type. Currently, the only valid type is
    #               <code>IPYNB</code>.</p>
    # @option params [String] :notebook_s3_location_uri
    #   <p>A URI that specifies the Amazon S3 location of a notebook file in
    #                   <code>ipynb</code> format.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to import the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_group: "WorkGroupName", # required
    #     name: "NotebookName", # required
    #     payload: "Payload",
    #     type: "IPYNB" # One of: ["IPYNB"], # required
    #     notebook_s3_location_uri: "S3Uri",
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.import_notebook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_id: "NotebookId"
    #   }
    # @return [Types::ImportNotebookOutput]
    def import_notebook(params = {}, options = {})
      request = build_request(:import_notebook, params)
      request.send_request(options)
    end

    # <p>Returns the supported DPU sizes for the supported application runtimes (for example,
    #                 <code>Athena notebook version 1</code>). </p>
    # @param [Hash, Types::ListApplicationDPUSizesInput] params
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_application_dpu_sizes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_dpu_sizes: [
    #       {
    #         application_runtime_id: "NameString",
    #         supported_dpu_sizes: [1]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationDPUSizesOutput]
    def list_application_dpu_sizes(params = {}, options = {})
      request = build_request(:list_application_dpu_sizes, params)
      request.send_request(options)
    end

    # <p>Lists the calculations that have been submitted to a session in descending order.
    #             Newer calculations are listed first; older calculations are listed later.</p>
    # @param [Hash, Types::ListCalculationExecutionsRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @option params [String] :state_filter
    #   <p>A filter for a specific calculation execution state. A description of each state
    #               follows.</p>
    #            <p>
    #               <code>CREATING</code> - The calculation is in the process of being created.</p>
    #            <p>
    #               <code>CREATED</code> - The calculation has been created and is ready to run.</p>
    #            <p>
    #               <code>QUEUED</code> - The calculation has been queued for processing.</p>
    #            <p>
    #               <code>RUNNING</code> - The calculation is running.</p>
    #            <p>
    #               <code>CANCELING</code> - A request to cancel the calculation has been received and the
    #               system is working to stop it.</p>
    #            <p>
    #               <code>CANCELED</code> - The calculation is no longer running as the result of a cancel
    #               request.</p>
    #            <p>
    #               <code>COMPLETED</code> - The calculation has completed without error.</p>
    #            <p>
    #               <code>FAILED</code> - The calculation failed and is no longer running.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of calculation executions to return.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #     state_filter: "CREATING" # One of: ["CREATING", "CREATED", "QUEUED", "RUNNING", "CANCELING", "CANCELED", "COMPLETED", "FAILED"],
    #     max_results: 1,
    #     next_token: "SessionManagerToken"
    #   }
    #   options = {}
    #   response = client.list_calculation_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "SessionManagerToken",
    #     calculations: [
    #       {
    #         calculation_execution_id: "CalculationExecutionId",
    #         description: "DescriptionString",
    #         status: {
    #           submission_date_time: Time.now,
    #           completion_date_time: Time.now,
    #           state: "CREATING" # One of: ["CREATING", "CREATED", "QUEUED", "RUNNING", "CANCELING", "CANCELED", "COMPLETED", "FAILED"],
    #           state_change_reason: "DescriptionString"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListCalculationExecutionsResponse]
    def list_calculation_executions(params = {}, options = {})
      request = build_request(:list_calculation_executions, params)
      request.send_request(options)
    end

    # <p>Lists the capacity reservations for the current account.</p>
    # @param [Hash, Types::ListCapacityReservationsInput] params
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_capacity_reservations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     capacity_reservations: [ # required
    #       {
    #         name: "CapacityReservationName", # required
    #         status: "PENDING" # One of: ["PENDING", "ACTIVE", "CANCELLING", "CANCELLED", "FAILED", "UPDATE_PENDING"], # required
    #         target_dpus: 1, # required
    #         allocated_dpus: 1, # required
    #         last_allocation: {
    #           status: "PENDING" # One of: ["PENDING", "SUCCEEDED", "FAILED"], # required
    #           status_message: "String",
    #           request_time: Time.now, # required
    #           request_completion_time: Time.now
    #         },
    #         last_successful_allocation_time: Time.now,
    #         creation_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListCapacityReservationsOutput]
    def list_capacity_reservations(params = {}, options = {})
      request = build_request(:list_capacity_reservations, params)
      request.send_request(options)
    end

    # <p>Lists the data catalogs in the current Amazon Web Services account.</p>
    #          <note>
    #             <p>In the Athena console, data catalogs are listed as "data sources" on
    #                 the <b>Data sources</b> page under the <b>Data source name</b> column.</p>
    #          </note>
    # @param [Hash, Types::ListDataCatalogsInput] params
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of data catalogs to return.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup. Required if making an IAM Identity Center request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.list_data_catalogs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_catalogs_summary: [
    #       {
    #         catalog_name: "CatalogNameString",
    #         type: "LAMBDA" # One of: ["LAMBDA", "GLUE", "HIVE", "FEDERATED"],
    #         status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #         connection_type: "DYNAMODB" # One of: ["DYNAMODB", "MYSQL", "POSTGRESQL", "REDSHIFT", "ORACLE", "SYNAPSE", "SQLSERVER", "DB2", "OPENSEARCH", "BIGQUERY", "GOOGLECLOUDSTORAGE", "HBASE", "DOCUMENTDB", "CMDB", "TPCDS", "TIMESTREAM", "SAPHANA", "SNOWFLAKE", "DATALAKEGEN2", "DB2AS400"],
    #         error: "ErrorMessage"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListDataCatalogsOutput]
    def list_data_catalogs(params = {}, options = {})
      request = build_request(:list_data_catalogs, params)
      request.send_request(options)
    end

    # <p>Lists the databases in the specified data catalog.</p>
    # @param [Hash, Types::ListDatabasesInput] params
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog that contains the databases to return.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_name: "CatalogNameString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.list_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_list: [
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue"
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListDatabasesOutput]
    def list_databases(params = {}, options = {})
      request = build_request(:list_databases, params)
      request.send_request(options)
    end

    # <p>Returns a list of engine versions that are available to choose from, including the
    #             Auto option.</p>
    # @param [Hash, Types::ListEngineVersionsInput] params
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of engine versions to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_engine_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engine_versions: [
    #       {
    #         selected_engine_version: "NameString",
    #         effective_engine_version: "NameString"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListEngineVersionsOutput]
    def list_engine_versions(params = {}, options = {})
      request = build_request(:list_engine_versions, params)
      request.send_request(options)
    end

    # <p>Lists, in descending order, the executors that joined a session. Newer executors are
    #             listed first; older executors are listed later. The result can be optionally filtered by
    #             state.</p>
    # @param [Hash, Types::ListExecutorsRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @option params [String] :executor_state_filter
    #   <p>A filter for a specific executor state. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The executor is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The executor has been started.</p>
    #            <p>
    #               <code>REGISTERED</code> - The executor has been registered.</p>
    #            <p>
    #               <code>TERMINATING</code> - The executor is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The executor is no longer running.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the executor is no longer running.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of executors to return.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #     executor_state_filter: "CREATING" # One of: ["CREATING", "CREATED", "REGISTERED", "TERMINATING", "TERMINATED", "FAILED"],
    #     max_results: 1,
    #     next_token: "SessionManagerToken"
    #   }
    #   options = {}
    #   response = client.list_executors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId", # required
    #     next_token: "SessionManagerToken",
    #     executors_summary: [
    #       {
    #         executor_id: "ExecutorId", # required
    #         executor_type: "COORDINATOR" # One of: ["COORDINATOR", "GATEWAY", "WORKER"],
    #         start_date_time: 1,
    #         termination_date_time: 1,
    #         executor_state: "CREATING" # One of: ["CREATING", "CREATED", "REGISTERED", "TERMINATING", "TERMINATED", "FAILED"],
    #         executor_size: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListExecutorsResponse]
    def list_executors(params = {}, options = {})
      request = build_request(:list_executors, params)
      request.send_request(options)
    end

    # <p>Provides a list of available query IDs only for queries saved in the specified
    #             workgroup. Requires that you have access to the specified workgroup. If a workgroup is
    #             not specified, lists the saved queries for the primary workgroup.</p>
    # @param [Hash, Types::ListNamedQueriesInput] params
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of queries to return in this request.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup from which the named queries are being returned. If a
    #               workgroup is not specified, the saved queries for the primary workgroup are
    #               returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.list_named_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     named_query_ids: ["NamedQueryId"],
    #     next_token: "Token"
    #   }
    # @return [Types::ListNamedQueriesOutput]
    def list_named_queries(params = {}, options = {})
      request = build_request(:list_named_queries, params)
      request.send_request(options)
    end

    # <p>Displays the notebook files for the specified workgroup in paginated format.</p>
    # @param [Hash, Types::ListNotebookMetadataInput] params
    # @option params [Types::FilterDefinition] :filters
    #   <p>Search filter string.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return.</p>
    # @option params [String] :work_group
    #   <p>The name of the Spark enabled workgroup to retrieve notebook metadata for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       name: "NotebookName"
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName", # required
    #   }
    #   options = {}
    #   response = client.list_notebook_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     notebook_metadata_list: [
    #       {
    #         notebook_id: "NotebookId",
    #         name: "NotebookName",
    #         work_group: "WorkGroupName",
    #         creation_time: Time.now,
    #         type: "IPYNB" # One of: ["IPYNB"],
    #         last_modified_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListNotebookMetadataOutput]
    def list_notebook_metadata(params = {}, options = {})
      request = build_request(:list_notebook_metadata, params)
      request.send_request(options)
    end

    # <p>Lists, in descending order, the sessions that have been created in a notebook that are
    #             in an active state like <code>CREATING</code>, <code>CREATED</code>, <code>IDLE</code>
    #             or <code>BUSY</code>. Newer sessions are listed first; older sessions are listed
    #             later.</p>
    # @param [Hash, Types::ListNotebookSessionsRequest] params
    # @option params [String] :notebook_id
    #   <p>The ID of the notebook to list sessions for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of notebook sessions to return.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_id: "NotebookId", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_notebook_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_sessions_list: [ # required
    #       {
    #         session_id: "SessionId",
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListNotebookSessionsResponse]
    def list_notebook_sessions(params = {}, options = {})
      request = build_request(:list_notebook_sessions, params)
      request.send_request(options)
    end

    # <p>Lists the prepared statements in the specified workgroup.</p>
    # @param [Hash, Types::ListPreparedStatementsInput] params
    # @option params [String] :work_group
    #   <p>The workgroup to list the prepared statements for.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_group: "WorkGroupName", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_prepared_statements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prepared_statements: [
    #       {
    #         statement_name: "StatementName",
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPreparedStatementsOutput]
    def list_prepared_statements(params = {}, options = {})
      request = build_request(:list_prepared_statements, params)
      request.send_request(options)
    end

    # <p>Provides a list of available query execution IDs for the queries in the specified
    #             workgroup. Athena keeps a query history for 45 days. If a workgroup is not
    #             specified, returns a list of query execution IDs for the primary workgroup. Requires you
    #             to have access to the workgroup in which the queries ran.</p>
    # @param [Hash, Types::ListQueryExecutionsInput] params
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of query executions to return in this request.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup from which queries are being returned. If a workgroup is not
    #               specified, a list of available query execution IDs for the queries in the primary
    #               workgroup is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.list_query_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_execution_ids: ["QueryExecutionId"],
    #     next_token: "Token"
    #   }
    # @return [Types::ListQueryExecutionsOutput]
    def list_query_executions(params = {}, options = {})
      request = build_request(:list_query_executions, params)
      request.send_request(options)
    end

    # <p>Lists the sessions in a workgroup that are in an active state like
    #                 <code>CREATING</code>, <code>CREATED</code>, <code>IDLE</code>, or
    #             <code>BUSY</code>. Newer sessions are listed first; older sessions are listed
    #             later.</p>
    # @param [Hash, Types::ListSessionsRequest] params
    # @option params [String] :work_group
    #   <p>The workgroup to which the session belongs.</p>
    # @option params [String] :state_filter
    #   <p>A filter for a specific session state. A description of each state follows.</p>
    #            <p>
    #               <code>CREATING</code> - The session is being started, including acquiring
    #               resources.</p>
    #            <p>
    #               <code>CREATED</code> - The session has been started.</p>
    #            <p>
    #               <code>IDLE</code> - The session is able to accept a calculation.</p>
    #            <p>
    #               <code>BUSY</code> - The session is processing another task and is unable to accept a
    #               calculation.</p>
    #            <p>
    #               <code>TERMINATING</code> - The session is in the process of shutting down.</p>
    #            <p>
    #               <code>TERMINATED</code> - The session and its resources are no longer running.</p>
    #            <p>
    #               <code>DEGRADED</code> - The session has no healthy coordinators.</p>
    #            <p>
    #               <code>FAILED</code> - Due to a failure, the session and its resources are no longer
    #               running.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of sessions to return.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_group: "WorkGroupName", # required
    #     state_filter: "CREATING" # One of: ["CREATING", "CREATED", "IDLE", "BUSY", "TERMINATING", "TERMINATED", "DEGRADED", "FAILED"],
    #     max_results: 1,
    #     next_token: "SessionManagerToken"
    #   }
    #   options = {}
    #   response = client.list_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "SessionManagerToken",
    #     sessions: [
    #       {
    #         session_id: "SessionId",
    #         description: "DescriptionString",
    #         engine_version: {
    #           selected_engine_version: "NameString",
    #           effective_engine_version: "NameString"
    #         },
    #         notebook_version: "NameString",
    #         status: {
    #           start_date_time: Time.now,
    #           last_modified_date_time: Time.now,
    #           end_date_time: Time.now,
    #           idle_since_date_time: Time.now,
    #           state: "CREATING" # One of: ["CREATING", "CREATED", "IDLE", "BUSY", "TERMINATING", "TERMINATED", "DEGRADED", "FAILED"],
    #           state_change_reason: "DescriptionString"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSessionsResponse]
    def list_sessions(params = {}, options = {})
      request = build_request(:list_sessions, params)
      request.send_request(options)
    end

    # <p>Lists the metadata for the tables in the specified data catalog database.</p>
    # @param [Hash, Types::ListTableMetadataInput] params
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog for which table metadata should be returned.</p>
    # @option params [String] :database_name
    #   <p>The name of the database for which table metadata should be returned.</p>
    # @option params [String] :expression
    #   <p>A regex filter that pattern-matches table names. If no expression is supplied,
    #               metadata for all tables are listed.</p>
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup for which the metadata is being fetched. Required if
    #               requesting an IAM Identity Center enabled Glue Data Catalog.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog_name: "CatalogNameString", # required
    #     database_name: "NameString", # required
    #     expression: "ExpressionString",
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName"
    #   }
    #   options = {}
    #   response = client.list_table_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_metadata_list: [
    #       {
    #         name: "NameString", # required
    #         create_time: Time.now,
    #         last_access_time: Time.now,
    #         table_type: "TableTypeString",
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "TypeString",
    #             comment: "CommentString"
    #           }
    #         ],
    #         partition_keys: [
    #           {
    #             name: "NameString", # required
    #             type: "TypeString",
    #             comment: "CommentString"
    #           }
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue"
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListTableMetadataOutput]
    def list_table_metadata(params = {}, options = {})
      request = build_request(:list_table_metadata, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with an Athena resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Lists the tags for the resource with the specified ARN.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no additional results for
    #               this request, where the request lists the tags for the resource with the specified
    #               ARN.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request that lists the tags for the
    #               resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists available workgroups for the account.</p>
    # @param [Hash, Types::ListWorkGroupsInput] params
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of workgroups to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_work_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     work_groups: [
    #       {
    #         name: "WorkGroupName",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         description: "WorkGroupDescriptionString",
    #         creation_time: Time.now,
    #         engine_version: {
    #           selected_engine_version: "NameString",
    #           effective_engine_version: "NameString"
    #         },
    #         identity_center_application_arn: "IdentityCenterApplicationArn"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListWorkGroupsOutput]
    def list_work_groups(params = {}, options = {})
      request = build_request(:list_work_groups, params)
      request.send_request(options)
    end

    # <p>Puts a new capacity assignment configuration for a specified capacity reservation. If
    #             a capacity assignment configuration already exists for the capacity reservation,
    #             replaces the existing capacity assignment configuration.</p>
    # @param [Hash, Types::PutCapacityAssignmentConfigurationInput] params
    # @option params [String] :capacity_reservation_name
    #   <p>The name of the capacity reservation to put a capacity assignment configuration
    #               for.</p>
    # @option params [Array<Types::CapacityAssignment>] :capacity_assignments
    #   <p>The list of assignments for the capacity assignment configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_reservation_name: "CapacityReservationName", # required
    #     capacity_assignments: [ # required
    #       {
    #         work_group_names: ["WorkGroupName"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_capacity_assignment_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutCapacityAssignmentConfigurationOutput]
    def put_capacity_assignment_configuration(params = {}, options = {})
      request = build_request(:put_capacity_assignment_configuration, params)
      request.send_request(options)
    end

    # <p>Submits calculations for execution within a session. You can supply the code to run as
    #             an inline code block within the request.</p>
    #          <note>
    #             <p>The request syntax requires the <a>StartCalculationExecutionRequest$CodeBlock</a> parameter or the <a>CalculationConfiguration$CodeBlock</a> parameter, but not both. Because
    #                     <a>CalculationConfiguration$CodeBlock</a> is deprecated, use the
    #                     <a>StartCalculationExecutionRequest$CodeBlock</a> parameter
    #                 instead.</p>
    #          </note>
    # @param [Hash, Types::StartCalculationExecutionRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @option params [String] :description
    #   <p>A description of the calculation.</p>
    # @option params [Types::CalculationConfiguration] :calculation_configuration
    #   <p>Contains configuration information for the calculation.</p>
    # @option params [String] :code_block
    #   <p>A string that contains the code of the calculation. Use this parameter instead of
    #                   <a>CalculationConfiguration$CodeBlock</a>, which is deprecated.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the calculation is
    #               idempotent (executes only once). If another
    #                   <code>StartCalculationExecutionRequest</code> is received, the same response is
    #               returned and another calculation is not created. If a parameter has changed, an error is
    #               returned.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #     description: "DescriptionString",
    #     calculation_configuration: {
    #       code_block: "CodeBlock"
    #     },
    #     code_block: "CodeBlock",
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.start_calculation_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculation_execution_id: "CalculationExecutionId",
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "QUEUED", "RUNNING", "CANCELING", "CANCELED", "COMPLETED", "FAILED"]
    #   }
    # @return [Types::StartCalculationExecutionResponse]
    def start_calculation_execution(params = {}, options = {})
      request = build_request(:start_calculation_execution, params)
      request.send_request(options)
    end

    # <p>Runs the SQL query statements contained in the <code>Query</code>. Requires you to
    #             have access to the workgroup in which the query ran. Running queries against an external
    #             catalog requires <a>GetDataCatalog</a> permission to the catalog. For code
    #             samples using the Amazon Web Services SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
    #                 Code Samples</a> in the <i>Amazon Athena User
    #             Guide</i>.</p>
    # @param [Hash, Types::StartQueryExecutionInput] params
    # @option params [String] :query_string
    #   <p>The SQL query statements to be executed.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>StartQueryExecution</code> request is
    #               received, the same response is returned and another query is not created. An error is
    #               returned if a parameter, such as <code>QueryString</code>, has changed. A call to
    #                   <code>StartQueryExecution</code> that uses a previous client request token returns
    #               the same <code>QueryExecutionId</code> even if the requester doesn't have permission on
    #               the tables specified in <code>QueryString</code>.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @option params [Types::QueryExecutionContext] :query_execution_context
    #   <p>The database within which the query executes.</p>
    # @option params [Types::ResultConfiguration] :result_configuration
    #   <p>Specifies information about where and how to save the results of the query execution.
    #               If the query runs in a workgroup, then workgroup's settings may override query settings.
    #               This affects the query results location. The workgroup settings override is specified in
    #               EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    # @option params [String] :work_group
    #   <p>The name of the workgroup in which the query is being started.</p>
    # @option params [Array<String>] :execution_parameters
    #   <p>A list of values for the parameters in a query. The values are applied sequentially to
    #               the parameters in the query in the order in which the parameters occur.</p>
    # @option params [Types::ResultReuseConfiguration] :result_reuse_configuration
    #   <p>Specifies the query result reuse behavior for the query.</p>
    # @option params [Types::EngineConfiguration] :engine_configuration
    #   <p>The engine configuration for the workgroup, which includes the minimum/maximum number of Data Processing Units (DPU) that queries should use when
    #               running in provisioned capacity. If not specified, Athena uses default values (Default value for min is 4 and for max is Minimum of 124 and allocated DPUs).</p>
    #            <p>To specify minimum and maximum DPU values for Capacity Reservations queries, the workgroup containing <code>EngineConfiguration</code> should have the following values: The name of
    #               the <code>Classifications</code> should be <code>athena-query-engine-properties</code>, with the only allowed properties as <code>max-dpu-count</code> and <code>min-dpu-count</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_string: "QueryString", # required
    #     client_request_token: "IdempotencyToken",
    #     query_execution_context: {
    #       database: "DatabaseString",
    #       catalog: "CatalogNameString"
    #     },
    #     result_configuration: {
    #       output_location: "ResultOutputLocation",
    #       encryption_configuration: {
    #         encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS", "CSE_KMS"], # required
    #         kms_key: "String"
    #       },
    #       expected_bucket_owner: "AwsAccountId",
    #       acl_configuration: {
    #         s3_acl_option: "BUCKET_OWNER_FULL_CONTROL" # One of: ["BUCKET_OWNER_FULL_CONTROL"], # required
    #       }
    #     },
    #     work_group: "WorkGroupName",
    #     execution_parameters: ["ExecutionParameter"],
    #     result_reuse_configuration: {
    #       result_reuse_by_age_configuration: {
    #         enabled: false, # required
    #         max_age_in_minutes: 1
    #       }
    #     },
    #     engine_configuration: {
    #       coordinator_dpu_size: 1,
    #       max_concurrent_dpus: 1,
    #       default_executor_dpu_size: 1,
    #       additional_configs: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       spark_properties: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       classifications: [
    #         {
    #           name: "NameString",
    #           properties: {
    #             "KeyString" => "ParametersMapValue"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.start_query_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_execution_id: "QueryExecutionId"
    #   }
    # @return [Types::StartQueryExecutionOutput]
    def start_query_execution(params = {}, options = {})
      request = build_request(:start_query_execution, params)
      request.send_request(options)
    end

    # <p>Creates a session for running calculations within a workgroup. The session is ready
    #             when it reaches an <code>IDLE</code> state.</p>
    # @param [Hash, Types::StartSessionRequest] params
    # @option params [String] :description
    #   <p>The session description.</p>
    # @option params [String] :work_group
    #   <p>The workgroup to which the session belongs.</p>
    # @option params [Types::EngineConfiguration] :engine_configuration
    #   <p>Contains engine data processing unit (DPU) configuration settings and parameter
    #               mappings.</p>
    # @option params [String] :execution_role
    #   <p>The ARN of the execution role used to access user resources for Spark sessions and
    #               Identity Center enabled workgroups. This property applies only to Spark enabled
    #               workgroups and Identity Center enabled workgroups.</p>
    # @option params [Types::MonitoringConfiguration] :monitoring_configuration
    #   <p>Contains the configuration settings for managed log persistence, delivering logs to Amazon S3 buckets,
    #               Amazon CloudWatch log groups etc.</p>
    # @option params [String] :notebook_version
    #   <p>The notebook version. This value is supplied automatically for notebook sessions in
    #               the Athena console and is not required for programmatic session access. The
    #               only valid notebook version is <code>Athena notebook version 1</code>. If
    #               you specify a value for <code>NotebookVersion</code>, you must also specify a value for
    #                   <code>NotebookId</code>. See <a>EngineConfiguration$AdditionalConfigs</a>.</p>
    # @option params [Integer] :session_idle_timeout_in_minutes
    #   <p>The idle timeout in minutes for the session.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the session is
    #               idempotent (executes only once). If another <code>StartSessionRequest</code> is
    #               received, the same response is returned and another session is not created. If a
    #               parameter has changed, an error is returned.</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of comma separated tags to add to the session that is created.</p>
    # @option params [Boolean] :copy_work_group_tags
    #   <p>Copies the tags from the Workgroup to the Session when.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "DescriptionString",
    #     work_group: "WorkGroupName", # required
    #     engine_configuration: { # required
    #       coordinator_dpu_size: 1,
    #       max_concurrent_dpus: 1,
    #       default_executor_dpu_size: 1,
    #       additional_configs: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       spark_properties: {
    #         "KeyString" => "ParametersMapValue"
    #       },
    #       classifications: [
    #         {
    #           name: "NameString",
    #           properties: {
    #             "KeyString" => "ParametersMapValue"
    #           }
    #         }
    #       ]
    #     },
    #     execution_role: "RoleArn",
    #     monitoring_configuration: {
    #       cloud_watch_logging_configuration: {
    #         enabled: false, # required
    #         log_group: "LogGroupName",
    #         log_stream_name_prefix: "LogStreamNamePrefix",
    #         log_types: {
    #           "LogTypeKey" => ["LogTypeValue"]
    #         }
    #       },
    #       managed_logging_configuration: {
    #         enabled: false, # required
    #         kms_key: "KmsKey"
    #       },
    #       s3_logging_configuration: {
    #         enabled: false, # required
    #         kms_key: "KmsKey",
    #         log_location: "S3OutputLocation"
    #       }
    #     },
    #     notebook_version: "NameString",
    #     session_idle_timeout_in_minutes: 1,
    #     client_request_token: "IdempotencyToken",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     copy_work_group_tags: false
    #   }
    #   options = {}
    #   response = client.start_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId",
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "IDLE", "BUSY", "TERMINATING", "TERMINATED", "DEGRADED", "FAILED"]
    #   }
    # @return [Types::StartSessionResponse]
    def start_session(params = {}, options = {})
      request = build_request(:start_session, params)
      request.send_request(options)
    end

    # <p>Requests the cancellation of a calculation. A <code>StopCalculationExecution</code>
    #             call on a calculation that is already in a terminal state (for example,
    #                 <code>STOPPED</code>, <code>FAILED</code>, or <code>COMPLETED</code>) succeeds but
    #             has no effect.</p>
    #          <note>
    #             <p>Cancelling a calculation is done on a best effort basis. If a calculation cannot
    #                 be cancelled, you can be charged for its completion. If you are concerned about
    #                 being charged for a calculation that cannot be cancelled, consider terminating the
    #                 session in which the calculation is running.</p>
    #          </note>
    # @param [Hash, Types::StopCalculationExecutionRequest] params
    # @option params [String] :calculation_execution_id
    #   <p>The calculation execution UUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculation_execution_id: "CalculationExecutionId", # required
    #   }
    #   options = {}
    #   response = client.stop_calculation_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "QUEUED", "RUNNING", "CANCELING", "CANCELED", "COMPLETED", "FAILED"]
    #   }
    # @return [Types::StopCalculationExecutionResponse]
    def stop_calculation_execution(params = {}, options = {})
      request = build_request(:stop_calculation_execution, params)
      request.send_request(options)
    end

    # <p>Stops a query execution. Requires you to have access to the workgroup in which the
    #             query ran.</p>
    # @param [Hash, Types::StopQueryExecutionInput] params
    # @option params [String] :query_execution_id
    #   <p>The unique ID of the query execution to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_execution_id: "QueryExecutionId", # required
    #   }
    #   options = {}
    #   response = client.stop_query_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopQueryExecutionOutput]
    def stop_query_execution(params = {}, options = {})
      request = build_request(:stop_query_execution, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an Athena resource. A tag is a label that you
    #             assign to a resource. Each tag consists of a key and an optional value, both of which
    #             you define. For example, you can use tags to categorize Athena workgroups,
    #             data catalogs, or capacity reservations by purpose, owner, or environment. Use a
    #             consistent set of tag keys to make it easier to search and filter the resources in your
    #             account. For best practices, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html">Tagging
    #                 Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode characters, and
    #             tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and
    #             numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys
    #             and values are case-sensitive. Tag keys must be unique per resource. If you specify more
    #             than one tag, separate them by commas.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Specifies the ARN of the Athena resource to which tags are to be
    #               added.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of one or more tags, separated by commas, to be added to an Athena resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Terminates an active session. A <code>TerminateSession</code> call on a session that
    #             is already inactive (for example, in a <code>FAILED</code>, <code>TERMINATED</code> or
    #                 <code>TERMINATING</code> state) succeeds but has no effect. Calculations running in
    #             the session when <code>TerminateSession</code> is called are forcefully stopped, but may
    #             display as <code>FAILED</code> instead of <code>STOPPED</code>.</p>
    # @param [Hash, Types::TerminateSessionRequest] params
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.terminate_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "IDLE", "BUSY", "TERMINATING", "TERMINATED", "DEGRADED", "FAILED"]
    #   }
    # @return [Types::TerminateSessionResponse]
    def terminate_session(params = {}, options = {})
      request = build_request(:terminate_session, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from an Athena resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Specifies the ARN of the resource from which tags are to be removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A comma-separated list of one or more tag keys whose tags are to be removed from the
    #               specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the number of requested data processing units for the capacity reservation
    #             with the specified name.</p>
    # @param [Hash, Types::UpdateCapacityReservationInput] params
    # @option params [Integer] :target_dpus
    #   <p>The new number of requested data processing units.</p>
    # @option params [String] :name
    #   <p>The name of the capacity reservation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_dpus: 1, # required
    #     name: "CapacityReservationName", # required
    #   }
    #   options = {}
    #   response = client.update_capacity_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCapacityReservationOutput]
    def update_capacity_reservation(params = {}, options = {})
      request = build_request(:update_capacity_reservation, params)
      request.send_request(options)
    end

    # <p>Updates the data catalog that has the specified name.</p>
    # @param [Hash, Types::UpdateDataCatalogInput] params
    # @option params [String] :name
    #   <p>The name of the data catalog to update. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    # @option params [String] :type
    #   <p>Specifies the type of data catalog to update. Specify <code>LAMBDA</code> for a
    #               federated catalog, <code>HIVE</code> for an external hive metastore, or
    #                   <code>GLUE</code> for an Glue Data Catalog.</p>
    # @option params [String] :description
    #   <p>New or modified text that describes the data catalog.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>Specifies the Lambda function or functions to use for updating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                  <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                        <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                        <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CatalogNameString", # required
    #     type: "LAMBDA" # One of: ["LAMBDA", "GLUE", "HIVE", "FEDERATED"], # required
    #     description: "DescriptionString",
    #     parameters: {
    #       "KeyString" => "ParametersMapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataCatalogOutput]
    def update_data_catalog(params = {}, options = {})
      request = build_request(:update_data_catalog, params)
      request.send_request(options)
    end

    # <p>Updates a <a>NamedQuery</a> object. The database or workgroup cannot be
    #             updated.</p>
    # @param [Hash, Types::UpdateNamedQueryInput] params
    # @option params [String] :named_query_id
    #   <p>The unique identifier (UUID) of the query.</p>
    # @option params [String] :name
    #   <p>The name of the query.</p>
    # @option params [String] :description
    #   <p>The query description.</p>
    # @option params [String] :query_string
    #   <p>The contents of the query with all query statements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     named_query_id: "NamedQueryId", # required
    #     name: "NameString", # required
    #     description: "NamedQueryDescriptionString",
    #     query_string: "QueryString", # required
    #   }
    #   options = {}
    #   response = client.update_named_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNamedQueryOutput]
    def update_named_query(params = {}, options = {})
      request = build_request(:update_named_query, params)
      request.send_request(options)
    end

    # <p>Updates the contents of a Spark notebook.</p>
    # @param [Hash, Types::UpdateNotebookInput] params
    # @option params [String] :notebook_id
    #   <p>The ID of the notebook to update.</p>
    # @option params [String] :payload
    #   <p>The updated content for the notebook.</p>
    # @option params [String] :type
    #   <p>The notebook content type. Currently, the only valid type is
    #               <code>IPYNB</code>.</p>
    # @option params [String] :session_id
    #   <p>The active notebook session ID. Required if the notebook has an active session.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_id: "NotebookId", # required
    #     payload: "Payload", # required
    #     type: "IPYNB" # One of: ["IPYNB"], # required
    #     session_id: "SessionId",
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.update_notebook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNotebookOutput]
    def update_notebook(params = {}, options = {})
      request = build_request(:update_notebook, params)
      request.send_request(options)
    end

    # <p>Updates the metadata for a notebook.</p>
    # @param [Hash, Types::UpdateNotebookMetadataInput] params
    # @option params [String] :notebook_id
    #   <p>The ID of the notebook to update the metadata for.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the notebook is
    #               idempotent (executes only once).</p>
    #            <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not
    #                   using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #            </important>
    # @option params [String] :name
    #   <p>The name to update the notebook to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_id: "NotebookId", # required
    #     client_request_token: "ClientRequestToken",
    #     name: "NotebookName", # required
    #   }
    #   options = {}
    #   response = client.update_notebook_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNotebookMetadataOutput]
    def update_notebook_metadata(params = {}, options = {})
      request = build_request(:update_notebook_metadata, params)
      request.send_request(options)
    end

    # <p>Updates a prepared statement.</p>
    # @param [Hash, Types::UpdatePreparedStatementInput] params
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement.</p>
    # @option params [String] :work_group
    #   <p>The workgroup for the prepared statement.</p>
    # @option params [String] :query_statement
    #   <p>The query string for the prepared statement.</p>
    # @option params [String] :description
    #   <p>The description of the prepared statement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     statement_name: "StatementName", # required
    #     work_group: "WorkGroupName", # required
    #     query_statement: "QueryString", # required
    #     description: "DescriptionString"
    #   }
    #   options = {}
    #   response = client.update_prepared_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePreparedStatementOutput]
    def update_prepared_statement(params = {}, options = {})
      request = build_request(:update_prepared_statement, params)
      request.send_request(options)
    end

    # <p>Updates the workgroup with the specified name. The workgroup's name cannot be changed.
    #             Only <code>ConfigurationUpdates</code> can be specified.</p>
    # @param [Hash, Types::UpdateWorkGroupInput] params
    # @option params [String] :work_group
    #   <p>The specified workgroup that will be updated.</p>
    # @option params [String] :description
    #   <p>The workgroup description.</p>
    # @option params [Types::WorkGroupConfigurationUpdates] :configuration_updates
    #   <p>Contains configuration updates for an Athena SQL workgroup.</p>
    # @option params [String] :state
    #   <p>The workgroup state that will be updated for the given workgroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_group: "WorkGroupName", # required
    #     description: "WorkGroupDescriptionString",
    #     configuration_updates: {
    #       enforce_work_group_configuration: false,
    #       result_configuration_updates: {
    #         output_location: "ResultOutputLocation",
    #         remove_output_location: false,
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS", "CSE_KMS"], # required
    #           kms_key: "String"
    #         },
    #         remove_encryption_configuration: false,
    #         expected_bucket_owner: "AwsAccountId",
    #         remove_expected_bucket_owner: false,
    #         acl_configuration: {
    #           s3_acl_option: "BUCKET_OWNER_FULL_CONTROL" # One of: ["BUCKET_OWNER_FULL_CONTROL"], # required
    #         },
    #         remove_acl_configuration: false
    #       },
    #       managed_query_results_configuration_updates: {
    #         enabled: false,
    #         encryption_configuration: {
    #           kms_key: "KmsKey", # required
    #         },
    #         remove_encryption_configuration: false
    #       },
    #       publish_cloud_watch_metrics_enabled: false,
    #       bytes_scanned_cutoff_per_query: 1,
    #       remove_bytes_scanned_cutoff_per_query: false,
    #       requester_pays_enabled: false,
    #       engine_version: {
    #         selected_engine_version: "NameString",
    #         effective_engine_version: "NameString"
    #       },
    #       remove_customer_content_encryption_configuration: false,
    #       additional_configuration: "NameString",
    #       execution_role: "RoleArn",
    #       customer_content_encryption_configuration: {
    #         kms_key: "KmsKey", # required
    #       },
    #       enable_minimum_encryption_configuration: false,
    #       query_results_s3_access_grants_configuration: {
    #         enable_s3_access_grants: false, # required
    #         create_user_level_prefix: false,
    #         authentication_type: "DIRECTORY_IDENTITY" # One of: ["DIRECTORY_IDENTITY"], # required
    #       },
    #       monitoring_configuration: {
    #         cloud_watch_logging_configuration: {
    #           enabled: false, # required
    #           log_group: "LogGroupName",
    #           log_stream_name_prefix: "LogStreamNamePrefix",
    #           log_types: {
    #             "LogTypeKey" => ["LogTypeValue"]
    #           }
    #         },
    #         managed_logging_configuration: {
    #           enabled: false, # required
    #           kms_key: "KmsKey"
    #         },
    #         s3_logging_configuration: {
    #           enabled: false, # required
    #           kms_key: "KmsKey",
    #           log_location: "S3OutputLocation"
    #         }
    #       },
    #       engine_configuration: {
    #         coordinator_dpu_size: 1,
    #         max_concurrent_dpus: 1,
    #         default_executor_dpu_size: 1,
    #         additional_configs: {
    #           "KeyString" => "ParametersMapValue"
    #         },
    #         spark_properties: {
    #           "KeyString" => "ParametersMapValue"
    #         },
    #         classifications: [
    #           {
    #             name: "NameString",
    #             properties: {
    #               "KeyString" => "ParametersMapValue"
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_work_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWorkGroupOutput]
    def update_work_group(params = {}, options = {})
      request = build_request(:update_work_group, params)
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
      context[:gem_name] = 'aws-sdk-athena'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end

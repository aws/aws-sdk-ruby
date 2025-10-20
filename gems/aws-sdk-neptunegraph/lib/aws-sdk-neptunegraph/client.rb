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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::NeptuneGraph
  # An API client for Aws::NeptuneGraph.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonNeptuneGraph
    @identifier = :neptunegraph

    add_plugin(::Aws::NeptuneGraph::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::NeptuneGraph::EndpointProvider)
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

    # <p>Cancel the specified export task.</p>
    # @param [Hash, Types::CancelExportTaskInput] params
    # @option params [String] :task_identifier
    #   <p>The unique identifier of the export task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_identifier: "ExportTaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_id: "GraphId", # required
    #     role_arn: "RoleArn", # required
    #     task_id: "ExportTaskId", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #     format: "PARQUET" # One of: ["PARQUET", "CSV"], # required
    #     destination: "String", # required
    #     kms_key_identifier: "KmsKeyArn", # required
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     status_reason: "String"
    #   }
    # @return [Types::CancelExportTaskOutput]
    def cancel_export_task(params = {}, options = {})
      request = build_request(:cancel_export_task, params)
      request.send_request(options)
    end

    # <p>Deletes the specified import task.</p>
    # @param [Hash, Types::CancelImportTaskInput] params
    # @option params [String] :task_identifier
    #   <p>The unique identifier of the import task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_identifier: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_id: "GraphId",
    #     task_id: "TaskId", # required
    #     source: "String", # required
    #     format: "CSV" # One of: ["CSV", "OPEN_CYPHER", "PARQUET", "NTRIPLES"],
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     role_arn: "RoleArn", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #   }
    # @return [Types::CancelImportTaskOutput]
    def cancel_import_task(params = {}, options = {})
      request = build_request(:cancel_import_task, params)
      request.send_request(options)
    end

    # <p>Cancels a specified query.</p>
    # @param [Hash, Types::CancelQueryInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :query_id
    #   <p>The unique identifier of the query to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.cancel_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_query(params = {}, options = {})
      request = build_request(:cancel_query, params)
      request.send_request(options)
    end

    # <p>Creates a new Neptune Analytics graph.</p>
    # @param [Hash, Types::CreateGraphInput] params
    # @option params [String] :graph_name
    #   <p>A name for the new Neptune Analytics graph to be created.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Adds metadata tags to the new graph. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    # @option params [Boolean] :public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable.</p>
    # @option params [String] :kms_key_identifier
    #   <p>Specifies a KMS key to use to encrypt data in the new graph.</p>
    # @option params [Types::VectorSearchConfiguration] :vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings that will be loaded into the graph. The value is specified as <code>dimension=</code>value. Max = 65,535</p>
    # @option params [Integer] :replica_count
    #   <p>The number of replicas in other AZs. Min =0, Max = 2, Default = 1.</p> <important> <p> Additional charges equivalent to the m-NCUs selected for the graph apply for each replica. </p> </important>
    # @option params [Boolean] :deletion_protection
    #   <p>Indicates whether or not to enable deletion protection on the graph. The graph can’t be deleted when deletion protection is enabled. (<code>true</code> or <code>false</code>).</p>
    # @option params [Integer] :provisioned_memory
    #   <p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Min = 16</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_name: "GraphName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     public_connectivity: false,
    #     kms_key_identifier: "KmsKeyArn",
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     deletion_protection: false,
    #     provisioned_memory: 1, # required
    #   }
    #   options = {}
    #   response = client.create_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::CreateGraphOutput]
    def create_graph(params = {}, options = {})
      request = build_request(:create_graph, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of the specific graph.</p>
    # @param [Hash, Types::CreateGraphSnapshotInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :snapshot_name
    #   <p>The snapshot name. For example: <code>my-snapshot-1</code>.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Adds metadata tags to the new graph. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     snapshot_name: "SnapshotName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_graph_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SnapshotId", # required
    #     name: "SnapshotName", # required
    #     arn: "String", # required
    #     source_graph_id: "GraphId",
    #     snapshot_create_time: Time.now,
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"],
    #     kms_key_identifier: "KmsKeyArn"
    #   }
    # @return [Types::CreateGraphSnapshotOutput]
    def create_graph_snapshot(params = {}, options = {})
      request = build_request(:create_graph_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a new Neptune Analytics graph and imports data into it, either from Amazon Simple Storage Service (S3) or from a Neptune database or a Neptune database snapshot.</p> <p>The data can be loaded from files in S3 that in either the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV format</a> or the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher load format</a>.</p>
    # @param [Hash, Types::CreateGraphUsingImportTaskInput] params
    # @option params [String] :graph_name
    #   <p>A name for the new Neptune Analytics graph to be created.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Adds metadata tags to the new graph. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    # @option params [Boolean] :public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable).</p>
    # @option params [String] :kms_key_identifier
    #   <p>Specifies a KMS key to use to encrypt data imported into the new graph.</p>
    # @option params [Types::VectorSearchConfiguration] :vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings that will be loaded into the graph. The value is specified as <code>dimension=</code>value. Max = 65,535 </p>
    # @option params [Integer] :replica_count
    #   <p>The number of replicas in other AZs to provision on the new graph after import. Default = 0, Min = 0, Max = 2.</p> <important> <p> Additional charges equivalent to the m-NCUs selected for the graph apply for each replica. </p> </important>
    # @option params [Boolean] :deletion_protection
    #   <p>Indicates whether or not to enable deletion protection on the graph. The graph can’t be deleted when deletion protection is enabled. (<code>true</code> or <code>false</code>).</p>
    # @option params [Types::ImportOptions] :import_options
    #   <p>Contains options for controlling the import process. For example, if the <code>failOnError</code> key is set to <code>false</code>, the import skips problem data and attempts to continue (whereas if set to <code>true</code>, the default, or if omitted, the import operation halts immediately when an error is encountered.</p>
    # @option params [Integer] :max_provisioned_memory
    #   <p>The maximum provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Default: 1024, or the approved upper limit for your account.</p> <p> If both the minimum and maximum values are specified, the final <code>provisioned-memory</code> will be chosen per the actual size of your imported data. If neither value is specified, 128 m-NCUs are used.</p>
    # @option params [Integer] :min_provisioned_memory
    #   <p>The minimum provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Default: 16</p>
    # @option params [Boolean] :fail_on_error
    #   <p>If set to <code>true</code>, the task halts when an import error is encountered. If set to <code>false</code>, the task skips the data that caused the error and continues if possible.</p>
    # @option params [String] :source
    #   <p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot.</p>
    # @option params [String] :format
    #   <p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV format</a>, <code>OPEN_CYPHER</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher load format</a>, or <code>ntriples</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html">RDF n-triples</a> format.</p>
    # @option params [String] :parquet_type
    #   <p>The parquet type of the import task.</p>
    # @option params [String] :blank_node_handling
    #   <p>The method to handle blank nodes in the dataset. Currently, only <code>convertToIri</code> is supported, meaning blank nodes are converted to unique IRIs at load time. Must be provided when format is <code>ntriples</code>. For more information, see <a href="https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling">Handling RDF values</a>.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_name: "GraphName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     public_connectivity: false,
    #     kms_key_identifier: "KmsKeyArn",
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     deletion_protection: false,
    #     import_options: {
    #       # One of:
    #       neptune: {
    #         s3_export_path: "String", # required
    #         s3_export_kms_key_id: "String", # required
    #         preserve_default_vertex_labels: false,
    #         preserve_edge_ids: false
    #       }
    #     },
    #     max_provisioned_memory: 1,
    #     min_provisioned_memory: 1,
    #     fail_on_error: false,
    #     source: "String", # required
    #     format: "CSV" # One of: ["CSV", "OPEN_CYPHER", "PARQUET", "NTRIPLES"],
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     blank_node_handling: "convertToIri" # One of: ["convertToIri"],
    #     role_arn: "RoleArn", # required
    #   }
    #   options = {}
    #   response = client.create_graph_using_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_id: "GraphId",
    #     task_id: "TaskId", # required
    #     source: "String", # required
    #     format: "CSV" # One of: ["CSV", "OPEN_CYPHER", "PARQUET", "NTRIPLES"],
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     role_arn: "RoleArn", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #     import_options: {
    #       # One of:
    #       neptune: {
    #         s3_export_path: "String", # required
    #         s3_export_kms_key_id: "String", # required
    #         preserve_default_vertex_labels: false,
    #         preserve_edge_ids: false
    #       }
    #     }
    #   }
    # @return [Types::CreateGraphUsingImportTaskOutput]
    def create_graph_using_import_task(params = {}, options = {})
      request = build_request(:create_graph_using_import_task, params)
      request.send_request(options)
    end

    # <p>Create a private graph endpoint to allow private access from to the graph from within a VPC. You can attach security groups to the private graph endpoint.</p> <note> <p>VPC endpoint charges apply.</p> </note>
    # @param [Hash, Types::CreatePrivateGraphEndpointInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :vpc_id
    #   <p> The VPC in which the private graph endpoint needs to be created.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>Subnets in which private graph endpoint ENIs are created.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>Security groups to be attached to the private graph endpoint..</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     vpc_id: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     vpc_security_group_ids: ["SecurityGroupId"]
    #   }
    #   options = {}
    #   response = client.create_private_graph_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"], # required
    #     vpc_endpoint_id: "VpcEndpointId"
    #   }
    # @return [Types::CreatePrivateGraphEndpointOutput]
    def create_private_graph_endpoint(params = {}, options = {})
      request = build_request(:create_private_graph_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes the specified graph. Graphs cannot be deleted if delete-protection is enabled.</p>
    # @param [Hash, Types::DeleteGraphInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [Boolean] :skip_snapshot
    #   <p>Determines whether a final graph snapshot is created before the graph is deleted. If <code>true</code> is specified, no graph snapshot is created. If <code>false</code> is specified, a graph snapshot is created before the graph is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     skip_snapshot: false, # required
    #   }
    #   options = {}
    #   response = client.delete_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::DeleteGraphOutput]
    def delete_graph(params = {}, options = {})
      request = build_request(:delete_graph, params)
      request.send_request(options)
    end

    # <p>Deletes the specifed graph snapshot.</p>
    # @param [Hash, Types::DeleteGraphSnapshotInput] params
    # @option params [String] :snapshot_identifier
    #   <p>ID of the graph snapshot to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "SnapshotIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_graph_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SnapshotId", # required
    #     name: "SnapshotName", # required
    #     arn: "String", # required
    #     source_graph_id: "GraphId",
    #     snapshot_create_time: Time.now,
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"],
    #     kms_key_identifier: "KmsKeyArn"
    #   }
    # @return [Types::DeleteGraphSnapshotOutput]
    def delete_graph_snapshot(params = {}, options = {})
      request = build_request(:delete_graph_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes a private graph endpoint.</p>
    # @param [Hash, Types::DeletePrivateGraphEndpointInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC where the private endpoint is located.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     vpc_id: "VpcId", # required
    #   }
    #   options = {}
    #   response = client.delete_private_graph_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"], # required
    #     vpc_endpoint_id: "VpcEndpointId"
    #   }
    # @return [Types::DeletePrivateGraphEndpointOutput]
    def delete_private_graph_endpoint(params = {}, options = {})
      request = build_request(:delete_private_graph_endpoint, params)
      request.send_request(options)
    end

    # <p>Execute an openCypher query.</p> <p> When invoking this operation in a Neptune Analytics cluster, the IAM user or role making the request must have a policy attached that allows one of the following IAM actions in that cluster, depending on the query: </p> <ul> <li> <p>neptune-graph:ReadDataViaQuery</p> </li> <li> <p>neptune-graph:WriteDataViaQuery</p> </li> <li> <p>neptune-graph:DeleteDataViaQuery</p> </li> </ul>
    # @param [Hash, Types::ExecuteQueryInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :query_string
    #   <p>The query string to be executed.</p>
    # @option params [String] :language
    #   <p>The query language the query is written in. Currently only openCypher is supported.</p>
    # @option params [Hash<String, JSON>] :parameters
    #   <p>The data parameters the query can use in JSON format. For example: {"name": "john", "age": 20}. (optional) </p>
    # @option params [String] :plan_cache
    #   <p>Query plan cache is a feature that saves the query plan and reuses it on successive executions of the same query. This reduces query latency, and works for both <code>READ</code> and <code>UPDATE</code> queries. The plan cache is an LRU cache with a 5 minute TTL and a capacity of 1000.</p>
    # @option params [String] :explain_mode
    #   <p>The explain mode parameter returns a query explain instead of the actual query results. A query explain can be used to gather insights about the query execution such as planning decisions, time spent on each operator, solutions flowing etc.</p>
    # @option params [Integer] :query_timeout_milliseconds
    #   <p>Specifies the query timeout duration, in milliseconds. (optional)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     query_string: "String", # required
    #     language: "OPEN_CYPHER" # One of: ["OPEN_CYPHER"], # required
    #     parameters: {
    #       "String" => ""null""
    #     },
    #     plan_cache: "ENABLED" # One of: ["ENABLED", "DISABLED", "AUTO"],
    #     explain_mode: "STATIC" # One of: ["STATIC", "DETAILS"],
    #     query_timeout_milliseconds: 1
    #   }
    #   options = {}
    #   response = client.execute_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payload: File.read("source_file"), # required
    #   }
    # @return [Types::ExecuteQueryOutput]
    def execute_query(params = {}, options = {})
      request = build_request(:execute_query, params)
      request.send_request(options)
    end

    # <p>Retrieves a specified export task.</p>
    # @param [Hash, Types::GetExportTaskInput] params
    # @option params [String] :task_identifier
    #   <p>The unique identifier of the export task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_identifier: "ExportTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_id: "GraphId", # required
    #     role_arn: "RoleArn", # required
    #     task_id: "ExportTaskId", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #     format: "PARQUET" # One of: ["PARQUET", "CSV"], # required
    #     destination: "String", # required
    #     kms_key_identifier: "KmsKeyArn", # required
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     status_reason: "String",
    #     export_task_details: {
    #       start_time: Time.now, # required
    #       time_elapsed_seconds: 1, # required
    #       progress_percentage: 1, # required
    #       num_vertices_written: 1,
    #       num_edges_written: 1
    #     },
    #     export_filter: {
    #       vertex_filter: {
    #         "ExportFilterLabel" => {
    #           properties: {
    #             "ExportFilterOutputPropertyName" => {
    #               output_type: "ExportFilterOutputDataType",
    #               source_property_name: "ExportFilterSourcePropertyName",
    #               multi_value_handling: "TO_LIST" # One of: ["TO_LIST", "PICK_FIRST"]
    #             }
    #           }
    #         }
    #       },
    #       edge_filter: {
    #         "ExportFilterLabel" => {
    #           properties: {
    #             "ExportFilterOutputPropertyName" => {
    #               output_type: "ExportFilterOutputDataType",
    #               source_property_name: "ExportFilterSourcePropertyName",
    #               multi_value_handling: "TO_LIST" # One of: ["TO_LIST", "PICK_FIRST"]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetExportTaskOutput]
    def get_export_task(params = {}, options = {})
      request = build_request(:get_export_task, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified graph.</p>
    # @param [Hash, Types::GetGraphInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::GetGraphOutput]
    def get_graph(params = {}, options = {})
      request = build_request(:get_graph, params)
      request.send_request(options)
    end

    # <p>Retrieves a specified graph snapshot.</p>
    # @param [Hash, Types::GetGraphSnapshotInput] params
    # @option params [String] :snapshot_identifier
    #   <p>The ID of the snapshot to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "SnapshotIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_graph_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SnapshotId", # required
    #     name: "SnapshotName", # required
    #     arn: "String", # required
    #     source_graph_id: "GraphId",
    #     snapshot_create_time: Time.now,
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"],
    #     kms_key_identifier: "KmsKeyArn"
    #   }
    # @return [Types::GetGraphSnapshotOutput]
    def get_graph_snapshot(params = {}, options = {})
      request = build_request(:get_graph_snapshot, params)
      request.send_request(options)
    end

    # <p>Gets a graph summary for a property graph.</p>
    # @param [Hash, Types::GetGraphSummaryInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :mode
    #   <p>The summary mode can take one of two values: <code>basic</code> (the default), and <code>detailed</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     mode: "BASIC" # One of: ["BASIC", "DETAILED"]
    #   }
    #   options = {}
    #   response = client.get_graph_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: "String",
    #     last_statistics_computation_time: Time.now,
    #     graph_summary: {
    #       num_nodes: 1,
    #       num_edges: 1,
    #       num_node_labels: 1,
    #       num_edge_labels: 1,
    #       node_labels: ["String"],
    #       edge_labels: ["String"],
    #       num_node_properties: 1,
    #       num_edge_properties: 1,
    #       node_properties: [
    #         {
    #           "String" => 1
    #         }
    #       ],
    #       edge_properties: [
    #         {
    #           "String" => 1
    #         }
    #       ],
    #       total_node_property_values: 1,
    #       total_edge_property_values: 1,
    #       node_structures: [
    #         {
    #           count: 1,
    #           node_properties: ["String"],
    #           distinct_outgoing_edge_labels: ["String"]
    #         }
    #       ],
    #       edge_structures: [
    #         {
    #           count: 1,
    #           edge_properties: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetGraphSummaryOutput]
    def get_graph_summary(params = {}, options = {})
      request = build_request(:get_graph_summary, params)
      request.send_request(options)
    end

    # <p>Retrieves a specified import task.</p>
    # @param [Hash, Types::GetImportTaskInput] params
    # @option params [String] :task_identifier
    #   <p>The unique identifier of the import task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_identifier: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.get_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_id: "GraphId",
    #     task_id: "TaskId", # required
    #     source: "String", # required
    #     format: "CSV" # One of: ["CSV", "OPEN_CYPHER", "PARQUET", "NTRIPLES"],
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     role_arn: "RoleArn", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #     import_options: {
    #       # One of:
    #       neptune: {
    #         s3_export_path: "String", # required
    #         s3_export_kms_key_id: "String", # required
    #         preserve_default_vertex_labels: false,
    #         preserve_edge_ids: false
    #       }
    #     },
    #     import_task_details: {
    #       status: "String", # required
    #       start_time: Time.now, # required
    #       time_elapsed_seconds: 1, # required
    #       progress_percentage: 1, # required
    #       error_count: 1, # required
    #       error_details: "String",
    #       statement_count: 1, # required
    #       dictionary_entry_count: 1, # required
    #     },
    #     attempt_number: 1,
    #     status_reason: "String"
    #   }
    # @return [Types::GetImportTaskOutput]
    def get_import_task(params = {}, options = {})
      request = build_request(:get_import_task, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specified private endpoint.</p>
    # @param [Hash, Types::GetPrivateGraphEndpointInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC where the private endpoint is located.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     vpc_id: "VpcId", # required
    #   }
    #   options = {}
    #   response = client.get_private_graph_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"], # required
    #     vpc_endpoint_id: "VpcEndpointId"
    #   }
    # @return [Types::GetPrivateGraphEndpointOutput]
    def get_private_graph_endpoint(params = {}, options = {})
      request = build_request(:get_private_graph_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of a specified query.</p> <note> <p> When invoking this operation in a Neptune Analytics cluster, the IAM user or role making the request must have the <code>neptune-graph:GetQueryStatus</code> IAM action attached. </p> </note>
    # @param [Hash, Types::GetQueryInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :query_id
    #   <p>The ID of the query in question.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     query_string: "String",
    #     waited: 1,
    #     elapsed: 1,
    #     state: "RUNNING" # One of: ["RUNNING", "WAITING", "CANCELLING"]
    #   }
    # @return [Types::GetQueryOutput]
    def get_query(params = {}, options = {})
      request = build_request(:get_query, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of export tasks.</p>
    # @param [Hash, Types::ListExportTasksInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :next_token
    #   <p>Pagination token used to paginate input.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of export tasks to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_export_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [ # required
    #       {
    #         graph_id: "GraphId", # required
    #         role_arn: "RoleArn", # required
    #         task_id: "ExportTaskId", # required
    #         status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #         format: "PARQUET" # One of: ["PARQUET", "CSV"], # required
    #         destination: "String", # required
    #         kms_key_identifier: "KmsKeyArn", # required
    #         parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #         status_reason: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListExportTasksOutput]
    def list_export_tasks(params = {}, options = {})
      request = build_request(:list_export_tasks, params)
      request.send_request(options)
    end

    # <p>Lists available snapshots of a specified Neptune Analytics graph.</p>
    # @param [Hash, Types::ListGraphSnapshotsInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_graph_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_snapshots: [ # required
    #       {
    #         id: "SnapshotId", # required
    #         name: "SnapshotName", # required
    #         arn: "String", # required
    #         source_graph_id: "GraphId",
    #         snapshot_create_time: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"],
    #         kms_key_identifier: "KmsKeyArn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListGraphSnapshotsOutput]
    def list_graph_snapshots(params = {}, options = {})
      request = build_request(:list_graph_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists available Neptune Analytics graphs.</p>
    # @param [Hash, Types::ListGraphsInput] params
    # @option params [String] :next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
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
    #     graphs: [ # required
    #       {
    #         id: "GraphId", # required
    #         name: "GraphName", # required
    #         arn: "String", # required
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #         provisioned_memory: 1,
    #         public_connectivity: false,
    #         endpoint: "String",
    #         replica_count: 1,
    #         kms_key_identifier: "String",
    #         deletion_protection: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListGraphsOutput]
    def list_graphs(params = {}, options = {})
      request = build_request(:list_graphs, params)
      request.send_request(options)
    end

    # <p>Lists import tasks.</p>
    # @param [Hash, Types::ListImportTasksInput] params
    # @option params [String] :next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_import_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [ # required
    #       {
    #         graph_id: "GraphId",
    #         task_id: "TaskId", # required
    #         source: "String", # required
    #         format: "CSV" # One of: ["CSV", "OPEN_CYPHER", "PARQUET", "NTRIPLES"],
    #         parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #         role_arn: "RoleArn", # required
    #         status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImportTasksOutput]
    def list_import_tasks(params = {}, options = {})
      request = build_request(:list_import_tasks, params)
      request.send_request(options)
    end

    # <p>Lists private endpoints for a specified Neptune Analytics graph.</p>
    # @param [Hash, Types::ListPrivateGraphEndpointsInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_private_graph_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     private_graph_endpoints: [ # required
    #       {
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "FAILED"], # required
    #         vpc_endpoint_id: "VpcEndpointId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPrivateGraphEndpointsOutput]
    def list_private_graph_endpoints(params = {}, options = {})
      request = build_request(:list_private_graph_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists active openCypher queries.</p>
    # @param [Hash, Types::ListQueriesInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be fetched by the API.</p>
    # @option params [String] :state
    #   <p>Filtered list of queries based on state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     max_results: 1, # required
    #     state: "ALL" # One of: ["ALL", "RUNNING", "WAITING", "CANCELLING"]
    #   }
    #   options = {}
    #   response = client.list_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queries: [ # required
    #       {
    #         id: "String",
    #         query_string: "String",
    #         waited: 1,
    #         elapsed: 1,
    #         state: "RUNNING" # One of: ["RUNNING", "WAITING", "CANCELLING"]
    #       }
    #     ]
    #   }
    # @return [Types::ListQueriesOutput]
    def list_queries(params = {}, options = {})
      request = build_request(:list_queries, params)
      request.send_request(options)
    end

    # <p>Lists tags associated with a specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Empties the data from a specified Neptune Analytics graph.</p>
    # @param [Hash, Types::ResetGraphInput] params
    # @option params [String] :graph_identifier
    #   <p>ID of the graph to reset.</p>
    # @option params [Boolean] :skip_snapshot
    #   <p>Determines whether a final graph snapshot is created before the graph data is deleted. If set to <code>true</code>, no graph snapshot is created. If set to <code>false</code>, a graph snapshot is created before the data is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     skip_snapshot: false, # required
    #   }
    #   options = {}
    #   response = client.reset_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::ResetGraphOutput]
    def reset_graph(params = {}, options = {})
      request = build_request(:reset_graph, params)
      request.send_request(options)
    end

    # <p>Restores a graph from a snapshot.</p>
    # @param [Hash, Types::RestoreGraphFromSnapshotInput] params
    # @option params [String] :snapshot_identifier
    #   <p>The ID of the snapshot in question.</p>
    # @option params [String] :graph_name
    #   <p>A name for the new Neptune Analytics graph to be created from the snapshot.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    # @option params [Integer] :provisioned_memory
    #   <p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p> <p>Min = 16</p>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Adds metadata tags to the snapshot. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    # @option params [Integer] :replica_count
    #   <p>The number of replicas in other AZs. Min =0, Max = 2, Default =1</p> <important> <p> Additional charges equivalent to the m-NCUs selected for the graph apply for each replica. </p> </important>
    # @option params [Boolean] :public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "SnapshotIdentifier", # required
    #     graph_name: "GraphName", # required
    #     provisioned_memory: 1,
    #     deletion_protection: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     replica_count: 1,
    #     public_connectivity: false
    #   }
    #   options = {}
    #   response = client.restore_graph_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::RestoreGraphFromSnapshotOutput]
    def restore_graph_from_snapshot(params = {}, options = {})
      request = build_request(:restore_graph_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Export data from an existing Neptune Analytics graph to Amazon S3. The graph state should be <code>AVAILABLE</code>.</p>
    # @param [Hash, Types::StartExportTaskInput] params
    # @option params [String] :graph_identifier
    #   <p>The source graph identifier of the export task.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that will allow data to be exported to the destination.</p>
    # @option params [String] :format
    #   <p>The format of the export task.</p>
    # @option params [String] :destination
    #   <p>The Amazon S3 URI where data will be exported to.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The KMS key identifier of the export task.</p>
    # @option params [String] :parquet_type
    #   <p>The parquet type of the export task.</p>
    # @option params [Types::ExportFilter] :export_filter
    #   <p>The export filter of the export task.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be applied to the export task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     role_arn: "RoleArn", # required
    #     format: "PARQUET" # One of: ["PARQUET", "CSV"], # required
    #     destination: "String", # required
    #     kms_key_identifier: "KmsKeyArn", # required
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     export_filter: {
    #       vertex_filter: {
    #         "ExportFilterLabel" => {
    #           properties: {
    #             "ExportFilterOutputPropertyName" => {
    #               output_type: "ExportFilterOutputDataType",
    #               source_property_name: "ExportFilterSourcePropertyName",
    #               multi_value_handling: "TO_LIST" # One of: ["TO_LIST", "PICK_FIRST"]
    #             }
    #           }
    #         }
    #       },
    #       edge_filter: {
    #         "ExportFilterLabel" => {
    #           properties: {
    #             "ExportFilterOutputPropertyName" => {
    #               output_type: "ExportFilterOutputDataType",
    #               source_property_name: "ExportFilterSourcePropertyName",
    #               multi_value_handling: "TO_LIST" # One of: ["TO_LIST", "PICK_FIRST"]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_id: "GraphId", # required
    #     role_arn: "RoleArn", # required
    #     task_id: "ExportTaskId", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #     format: "PARQUET" # One of: ["PARQUET", "CSV"], # required
    #     destination: "String", # required
    #     kms_key_identifier: "KmsKeyArn", # required
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     status_reason: "String",
    #     export_filter: {
    #       vertex_filter: {
    #         "ExportFilterLabel" => {
    #           properties: {
    #             "ExportFilterOutputPropertyName" => {
    #               output_type: "ExportFilterOutputDataType",
    #               source_property_name: "ExportFilterSourcePropertyName",
    #               multi_value_handling: "TO_LIST" # One of: ["TO_LIST", "PICK_FIRST"]
    #             }
    #           }
    #         }
    #       },
    #       edge_filter: {
    #         "ExportFilterLabel" => {
    #           properties: {
    #             "ExportFilterOutputPropertyName" => {
    #               output_type: "ExportFilterOutputDataType",
    #               source_property_name: "ExportFilterSourcePropertyName",
    #               multi_value_handling: "TO_LIST" # One of: ["TO_LIST", "PICK_FIRST"]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::StartExportTaskOutput]
    def start_export_task(params = {}, options = {})
      request = build_request(:start_export_task, params)
      request.send_request(options)
    end

    # <p>Starts the specific graph.</p>
    # @param [Hash, Types::StartGraphInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #   }
    #   options = {}
    #   response = client.start_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::StartGraphOutput]
    def start_graph(params = {}, options = {})
      request = build_request(:start_graph, params)
      request.send_request(options)
    end

    # <p>Import data into existing Neptune Analytics graph from Amazon Simple Storage Service (S3). The graph needs to be empty and in the AVAILABLE state.</p>
    # @param [Hash, Types::StartImportTaskInput] params
    # @option params [Types::ImportOptions] :import_options
    #   <p>Options for how to perform an import.</p>
    # @option params [Boolean] :fail_on_error
    #   <p>If set to true, the task halts when an import error is encountered. If set to false, the task skips the data that caused the error and continues if possible.</p>
    # @option params [String] :source
    #   <p>A URL identifying the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot.</p>
    # @option params [String] :format
    #   <p>Specifies the format of Amazon S3 data to be imported. Valid values are CSV, which identifies the Gremlin CSV format or OPENCYPHER, which identies the openCypher load format.</p>
    # @option params [String] :parquet_type
    #   <p>The parquet type of the import task.</p>
    # @option params [String] :blank_node_handling
    #   <p>The method to handle blank nodes in the dataset. Currently, only <code>convertToIri</code> is supported, meaning blank nodes are converted to unique IRIs at load time. Must be provided when format is <code>ntriples</code>. For more information, see <a href="https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling">Handling RDF values</a>.</p>
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_options: {
    #       # One of:
    #       neptune: {
    #         s3_export_path: "String", # required
    #         s3_export_kms_key_id: "String", # required
    #         preserve_default_vertex_labels: false,
    #         preserve_edge_ids: false
    #       }
    #     },
    #     fail_on_error: false,
    #     source: "String", # required
    #     format: "CSV" # One of: ["CSV", "OPEN_CYPHER", "PARQUET", "NTRIPLES"],
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     blank_node_handling: "convertToIri" # One of: ["convertToIri"],
    #     graph_identifier: "GraphIdentifier", # required
    #     role_arn: "RoleArn", # required
    #   }
    #   options = {}
    #   response = client.start_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     graph_id: "GraphId",
    #     task_id: "TaskId", # required
    #     source: "String", # required
    #     format: "CSV" # One of: ["CSV", "OPEN_CYPHER", "PARQUET", "NTRIPLES"],
    #     parquet_type: "COLUMNAR" # One of: ["COLUMNAR"],
    #     role_arn: "RoleArn", # required
    #     status: "INITIALIZING" # One of: ["INITIALIZING", "EXPORTING", "ANALYZING_DATA", "IMPORTING", "REPROVISIONING", "ROLLING_BACK", "SUCCEEDED", "FAILED", "CANCELLING", "CANCELLED", "DELETED"], # required
    #     import_options: {
    #       # One of:
    #       neptune: {
    #         s3_export_path: "String", # required
    #         s3_export_kms_key_id: "String", # required
    #         preserve_default_vertex_labels: false,
    #         preserve_edge_ids: false
    #       }
    #     }
    #   }
    # @return [Types::StartImportTaskOutput]
    def start_import_task(params = {}, options = {})
      request = build_request(:start_import_task, params)
      request.send_request(options)
    end

    # <p>Stops the specific graph.</p>
    # @param [Hash, Types::StopGraphInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #   }
    #   options = {}
    #   response = client.stop_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::StopGraphOutput]
    def stop_graph(params = {}, options = {})
      request = build_request(:stop_graph, params)
      request.send_request(options)
    end

    # <p>Adds tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags need to be added.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be assigned to the Neptune Analytics resource.</p> <p>The tags are metadata that are specified as a list of key-value pairs:</p> <p> <b>Key</b> (string)   –   A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length. It can't be prefixed with <code>aws:</code> and can only contain the set of Unicode characters specified by this Java regular expression: <code>"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")</code>.</p> <p> <b>Value</b> (string)   –   A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length. It can't be prefixed with <code>aws:</code> and can only contain the set of Unicode characters specified by this Java regular expression: <code>"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>ARN of the resource whose tag needs to be removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys for the tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Updates the configuration of a specified Neptune Analytics graph</p>
    # @param [Hash, Types::UpdateGraphInput] params
    # @option params [String] :graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    # @option params [Boolean] :public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable.</p>
    # @option params [Integer] :provisioned_memory
    #   <p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p> <p>Min = 16</p>
    # @option params [Boolean] :deletion_protection
    #   <p>A value that indicates whether the graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     graph_identifier: "GraphIdentifier", # required
    #     public_connectivity: false,
    #     provisioned_memory: 1,
    #     deletion_protection: false
    #   }
    #   options = {}
    #   response = client.update_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GraphId", # required
    #     name: "GraphName", # required
    #     arn: "String", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "RESETTING", "UPDATING", "SNAPSHOTTING", "FAILED", "IMPORTING", "STARTING", "STOPPING", "STOPPED"],
    #     status_reason: "String",
    #     create_time: Time.now,
    #     provisioned_memory: 1,
    #     endpoint: "String",
    #     public_connectivity: false,
    #     vector_search_configuration: {
    #       dimension: 1, # required
    #     },
    #     replica_count: 1,
    #     kms_key_identifier: "KmsKeyArn",
    #     source_snapshot_id: "SnapshotId",
    #     deletion_protection: false,
    #     build_number: "String"
    #   }
    # @return [Types::UpdateGraphOutput]
    def update_graph(params = {}, options = {})
      request = build_request(:update_graph, params)
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
      context[:gem_name] = 'aws-sdk-neptunegraph'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        export_task_cancelled: Waiters::ExportTaskCancelled,
        export_task_successful: Waiters::ExportTaskSuccessful,
        graph_available: Waiters::GraphAvailable,
        graph_deleted: Waiters::GraphDeleted,
        graph_snapshot_available: Waiters::GraphSnapshotAvailable,
        graph_snapshot_deleted: Waiters::GraphSnapshotDeleted,
        graph_stopped: Waiters::GraphStopped,
        import_task_cancelled: Waiters::ImportTaskCancelled,
        import_task_successful: Waiters::ImportTaskSuccessful,
        private_graph_endpoint_available: Waiters::PrivateGraphEndpointAvailable,
        private_graph_endpoint_deleted: Waiters::PrivateGraphEndpointDeleted
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

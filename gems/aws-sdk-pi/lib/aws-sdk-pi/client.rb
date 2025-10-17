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

module Aws::PI
  # An API client for Aws::PI.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PerformanceInsightsv20180227

    add_plugin(::Aws::PI::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PI::EndpointProvider)
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

    # <p>Creates a new performance analysis report for a specific time period for the
    #             DB instance.</p>
    # @param [Hash, Types::CreatePerformanceAnalysisReportRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights will return metrics. Valid value is <code>RDS</code>.</p>
    # @option params [String] :identifier
    #   <p>An immutable, Amazon Web Services Region-unique identifier for a data source. Performance Insights gathers metrics from
    #               this data source.</p>
    #            <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value. 
    #               For example, specify <code>db-ADECBTYHKTSAUMUZQYPDS2GW4A</code>.</p>
    # @option params [Time] :start_time
    #   <p>The start time defined for the analysis report.</p>
    # @option params [Time] :end_time
    #   <p>The end time defined for the analysis report.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata assigned to the analysis report consisting of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_performance_analysis_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_report_id: "AnalysisReportId"
    #   }
    # @return [Types::CreatePerformanceAnalysisReportResponse]
    def create_performance_analysis_report(params = {}, options = {})
      request = build_request(:create_performance_analysis_report, params)
      request.send_request(options)
    end

    # <p>Deletes a performance analysis report.</p>
    # @param [Hash, Types::DeletePerformanceAnalysisReportRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights will return metrics. Valid value is <code>RDS</code>.</p>
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. Performance Insights gathers metrics from this data source. 
    #               In the console, the identifier is shown as <i>ResourceID</i>. When you 
    #               call <code>DescribeDBInstances</code>, the identifier is returned as <code>DbiResourceId</code>.</p>
    #            <p>To use a DB instance as a data source, specify its <code>DbiResourceId</code> value. For example, specify
    #               <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p>
    # @option params [String] :analysis_report_id
    #   <p>The unique identifier of the analysis report for deletion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     analysis_report_id: "AnalysisReportId", # required
    #   }
    #   options = {}
    #   response = client.delete_performance_analysis_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePerformanceAnalysisReportResponse]
    def delete_performance_analysis_report(params = {}, options = {})
      request = build_request(:delete_performance_analysis_report, params)
      request.send_request(options)
    end

    # <p>For a specific time period, retrieve the top <code>N</code> dimension keys for a metric.
    #       </p>
    #          <note>
    #             <p>Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements, 
    #         only the first 500 bytes are returned.</p>
    #          </note>
    # @param [Hash, Types::DescribeDimensionKeysRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights will return metrics. Valid values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RDS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DOCDB</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :identifier
    #   <p>An immutable, Amazon Web Services Region-unique identifier for a data source. Performance Insights gathers metrics from
    #               this data source.</p>
    #            <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value. 
    #               For example, specify <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code>.
    #           </p>
    # @option params [Time] :start_time
    #   <p>The date and time specifying the beginning of the requested time series data. You must specify a
    #               <code>StartTime</code> within the past 7 days. The value specified is <i>inclusive</i>, 
    #               which means that data points equal to or greater than <code>StartTime</code> are returned.
    #           </p>
    #            <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.
    #           </p>
    # @option params [Time] :end_time
    #   <p>The date and time specifying the end of the requested time series data. The value specified is
    #         <i>exclusive</i>, which means that data points less than (but not equal to) <code>EndTime</code> are
    #         returned.</p>
    #            <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
    # @option params [String] :metric
    #   <p>The name of a Performance Insights metric to be measured.</p>
    #            <p>Valid values for <code>Metric</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db.load.avg</code> - A scaled representation of the number of active sessions for the database engine. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sampledload.avg</code> - The raw number of active sessions for the database engine. </p>
    #               </li>
    #            </ul>
    #            <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code> 
    #               and <code>db.sampledload.avg</code> are the same value. If the number of active sessions is greater than 
    #               the internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code> 
    #               showing the scaled values, <code>db.sampledload.avg</code> showing the raw values, and 
    #               <code>db.sampledload.avg</code> less than <code>db.load.avg</code>. For most use cases, you can 
    #               query <code>db.load.avg</code> only.
    #           </p>
    # @option params [Integer] :period_in_seconds
    #   <p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as 
    #               one second, or as long as one day (86400 seconds). Valid values are:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> (one second)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>60</code> (one minute)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>300</code> (five minutes)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3600</code> (one hour)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>86400</code> (twenty-four hours)</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights chooses a value for you, with a 
    #               goal of returning roughly 100-200 data points in the response.
    #           </p>
    # @option params [Types::DimensionGroup] :group_by
    #   <p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights returns all
    #               dimensions within this group, unless you provide the names of specific dimensions within this group. You can also request that Performance Insights return
    #               a limited number of values for a dimension. </p>
    # @option params [Array<String>] :additional_metrics
    #   <p>Additional metrics for the top <code>N</code> dimension keys. If the specified dimension group in the <code>GroupBy</code> parameter is
    #                   <code>db.sql_tokenized</code>, you can specify per-SQL metrics to get the values for the top <code>N</code> SQL digests. The response
    #               syntax is as follows: <code>"AdditionalMetrics" : { "<i>string</i>" : "<i>string</i>" }</code>.</p>
    #            <p>The only supported statistic function is <code>.avg</code>.</p>
    # @option params [Types::DimensionGroup] :partition_by
    #   <p>For each dimension specified in <code>GroupBy</code>, specify a secondary dimension 
    #               to further subdivide the partition keys in the response.
    #           </p>
    # @option params [Hash<String, String>] :filter
    #   <p>One or more filters to apply in the request. Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> or
    #             <code>Partition</code> parameters.</p>
    #               </li>
    #               <li>
    #                  <p>A single filter for any other dimension in this dimension group.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>db.sql.db_id</code> filter isn't available for RDS for SQL Server DB instances.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a
    #               pagination token is included in the response so that the remaining results can be retrieved. </p>
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond
    #               the token, up to the value specified by <code>MaxRecords</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric: "RequestString", # required
    #     period_in_seconds: 1,
    #     group_by: { # required
    #       group: "SanitizedString", # required
    #       dimensions: ["SanitizedString"],
    #       limit: 1
    #     },
    #     additional_metrics: ["SanitizedString"],
    #     partition_by: {
    #       group: "SanitizedString", # required
    #       dimensions: ["SanitizedString"],
    #       limit: 1
    #     },
    #     filter: {
    #       "SanitizedString" => "RequestString"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_dimension_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aligned_start_time: Time.now,
    #     aligned_end_time: Time.now,
    #     partition_keys: [
    #       {
    #         dimensions: { # required
    #           "RequestString" => "RequestString"
    #         }
    #       }
    #     ],
    #     keys: [
    #       {
    #         dimensions: {
    #           "RequestString" => "RequestString"
    #         },
    #         total: 1.0,
    #         additional_metrics: {
    #           "RequestString" => 1.0
    #         },
    #         partitions: [1.0]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDimensionKeysResponse]
    def describe_dimension_keys(params = {}, options = {})
      request = build_request(:describe_dimension_keys, params)
      request.send_request(options)
    end

    # <p>Get the attributes of the specified dimension group for a DB instance or data source. For example, if you specify a SQL ID,
    #                 <code>GetDimensionKeyDetails</code> retrieves the full text of the dimension <code>db.sql.statement</code> associated with this ID.
    #             This operation is useful because <code>GetResourceMetrics</code> and <code>DescribeDimensionKeys</code> don't support retrieval of large
    #           SQL statement text, lock snapshots, and execution plans.</p>
    # @param [Hash, Types::GetDimensionKeyDetailsRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns data. The only valid value is <code>RDS</code>.</p>
    # @option params [String] :identifier
    #   <p>The ID for a data source from which to gather dimension data. This ID must be immutable and 
    #             unique within an Amazon Web Services Region. When a DB instance is the data source, specify its 
    #             <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.
    #         </p>
    # @option params [String] :group
    #   <p>The name of the dimension group. Performance Insights searches the specified group for the dimension group ID. The following group name values are
    #               valid:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db.execution_plan</code> (Amazon RDS and Aurora only)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.lock_snapshot</code> (Aurora only)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.query</code> (Amazon DocumentDB only)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql</code> (Amazon RDS and Aurora only)</p>
    #               </li>
    #            </ul>
    # @option params [String] :group_identifier
    #   <p>The ID of the dimension group from which to retrieve dimension details. For dimension group <code>db.sql</code>, the group ID is
    #                   <code>db.sql.id</code>. The following group ID values are valid:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db.execution_plan.id</code> for dimension group <code>db.execution_plan</code> (Aurora and RDS only)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql.id</code> for dimension group <code>db.sql</code> (Aurora and RDS only)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.query.id</code> for dimension group <code>db.query</code> (DocumentDB only)</p>
    #               </li>
    #               <li>
    #                  <p>For the dimension group <code>db.lock_snapshot</code>, the <code>GroupIdentifier</code> is the epoch timestamp when Performance Insights captured the snapshot, in seconds. 
    #                       You can retrieve this value with the <code>GetResourceMetrics</code> operation for a 1 second period.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :requested_dimensions
    #   <p>A list of dimensions to retrieve the detail data for within the given dimension group. If you don't specify this parameter, Performance Insights returns
    #               all dimension data within the specified dimension group. Specify dimension names for the following dimension groups:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db.execution_plan</code> - Specify the dimension name <code>db.execution_plan.raw_plan</code> or the short dimension name <code>raw_plan</code> (Amazon RDS and Aurora only)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.lock_snapshot</code> - Specify the dimension name <code>db.lock_snapshot.lock_trees</code> or the short dimension name <code>lock_trees</code>. (Aurora only)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql</code> - Specify either the full dimension name <code>db.sql.statement</code> or the short dimension name
    #                           <code>statement</code> (Aurora and RDS only).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.query</code> - Specify either the full dimension name <code>db.query.statement</code> or the short dimension name
    #                           <code>statement</code> (DocumentDB only).</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     group: "RequestString", # required
    #     group_identifier: "RequestString", # required
    #     requested_dimensions: ["SanitizedString"]
    #   }
    #   options = {}
    #   response = client.get_dimension_key_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dimensions: [
    #       {
    #         value: "String",
    #         dimension: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "PROCESSING", "UNAVAILABLE"]
    #       }
    #     ]
    #   }
    # @return [Types::GetDimensionKeyDetailsResponse]
    def get_dimension_key_details(params = {}, options = {})
      request = build_request(:get_dimension_key_details, params)
      request.send_request(options)
    end

    # <p>Retrieves the report including the report ID, status, time details, and the insights
    #             with recommendations. The report status can be <code>RUNNING</code>,
    #             <code>SUCCEEDED</code>, or <code>FAILED</code>. The insights include the
    #             <code>description</code> and <code>recommendation</code> fields. </p>
    # @param [Hash, Types::GetPerformanceAnalysisReportRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights will return metrics. Valid value is
    #               <code>RDS</code>.</p>
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. Performance Insights gathers 
    #               metrics from this data source. In the console, the identifier is shown as 
    #               <i>ResourceID</i>. When you call <code>DescribeDBInstances</code>, the identifier is
    #               returned as <code>DbiResourceId</code>.</p>
    #            <p>To use a DB instance as a data source, specify its <code>DbiResourceId</code> value. For example, specify
    #               <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p>
    # @option params [String] :analysis_report_id
    #   <p>A unique identifier of the created analysis report. For example,
    #               <code>report-12345678901234567</code>
    #            </p>
    # @option params [String] :text_format
    #   <p>Indicates the text format in the report. The options are <code>PLAIN_TEXT</code> or <code>MARKDOWN</code>. The default
    #               value is <code>plain text</code>.</p>
    # @option params [String] :accept_language
    #   <p>The text language in the report. The default language is <code>EN_US</code> (English). 
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     analysis_report_id: "AnalysisReportId", # required
    #     text_format: "PLAIN_TEXT" # One of: ["PLAIN_TEXT", "MARKDOWN"],
    #     accept_language: "EN_US" # One of: ["EN_US"]
    #   }
    #   options = {}
    #   response = client.get_performance_analysis_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_report: {
    #       analysis_report_id: "AnalysisReportId", # required
    #       identifier: "IdentifierString",
    #       service_type: "RDS" # One of: ["RDS", "DOCDB"],
    #       create_time: Time.now,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED"],
    #       insights: [
    #         {
    #           insight_id: "String", # required
    #           insight_type: "String",
    #           context: "CAUSAL" # One of: ["CAUSAL", "CONTEXTUAL"],
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #           supporting_insights: {
    #             # recursive InsightList
    #           },
    #           description: "MarkdownString",
    #           recommendations: [
    #             {
    #               recommendation_id: "String",
    #               recommendation_description: "MarkdownString"
    #             }
    #           ],
    #           insight_data: [
    #             {
    #               performance_insights_metric: {
    #                 metric: "DescriptiveString",
    #                 display_name: "DescriptiveString",
    #                 dimensions: {
    #                   "DescriptiveString" => "DescriptiveString"
    #                 },
    #                 filter: {
    #                   "DescriptiveString" => "DescriptiveString"
    #                 },
    #                 value: 1.0
    #               }
    #             }
    #           ],
    #           baseline_data: [
    #             {
    #               performance_insights_metric: {
    #                 metric: "DescriptiveString",
    #                 display_name: "DescriptiveString",
    #                 dimensions: {
    #                   "DescriptiveString" => "DescriptiveString"
    #                 },
    #                 filter: {
    #                   "DescriptiveString" => "DescriptiveString"
    #                 },
    #                 value: 1.0
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetPerformanceAnalysisReportResponse]
    def get_performance_analysis_report(params = {}, options = {})
      request = build_request(:get_performance_analysis_report, params)
      request.send_request(options)
    end

    # <p>Retrieve the metadata for different features. For example, the metadata might indicate 
    #             that a feature is turned on or off on a specific DB instance.
    #         </p>
    # @param [Hash, Types::GetResourceMetadataRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. 
    #               Performance Insights gathers metrics from this data source. To use a DB instance as a data source, 
    #               specify its <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #   }
    #   options = {}
    #   response = client.get_resource_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "String",
    #     features: {
    #       "String" => {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED", "UNSUPPORTED", "ENABLED_PENDING_REBOOT", "DISABLED_PENDING_REBOOT", "UNKNOWN"]
    #       }
    #     }
    #   }
    # @return [Types::GetResourceMetadataResponse]
    def get_resource_metadata(params = {}, options = {})
      request = build_request(:get_resource_metadata, params)
      request.send_request(options)
    end

    # <p>Retrieve Performance Insights metrics for a set of data sources over a time period. You can provide
    #           specific dimension groups and dimensions, and provide filtering criteria for each group. You must specify an aggregate function for
    #           each metric.</p>
    #          <note>
    #             <p>Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements, 
    #                only the first 500 bytes are returned.</p>
    #          </note>
    # @param [Hash, Types::GetResourceMetricsRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics. Valid values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RDS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DOCDB</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. Performance Insights gathers metrics from this data source. In the
    #               console, the identifier is shown as <i>ResourceID</i>. When you call <code>DescribeDBInstances</code>, the identifier is
    #               returned as <code>DbiResourceId</code>.</p>
    #            <p>To use a DB instance as a data source, specify its <code>DbiResourceId</code> value. For example, specify
    #                   <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p>
    # @option params [Array<Types::MetricQuery>] :metric_queries
    #   <p>An array of one or more queries to perform. Each query must specify a Performance Insights metric and specify an aggregate function, and you can provide filtering
    #               criteria. You must append the aggregate function to the metric. For example, to find the average for the metric <code>db.load</code> 
    #               you must use <code>db.load.avg</code>. Valid values for aggregate functions include <code>.avg</code>, <code>.min</code>, 
    #               <code>.max</code>, and <code>.sum</code>.</p>
    # @option params [Time] :start_time
    #   <p>The date and time specifying the beginning of the requested time series query range. You can't
    #               specify a <code>StartTime</code> that is earlier than 7 days ago. By default, Performance Insights has 7 days of 
    #               retention, but you can extend this range up to 2 years. The value specified is
    #               <i>inclusive</i>. Thus, the command returns data points equal to or greater 
    #               than <code>StartTime</code>.</p>
    #            <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>
    # @option params [Time] :end_time
    #   <p>The date and time specifying the end of the requested time series query range. The value 
    #               specified is <i>exclusive</i>. Thus, the command returns data points less than 
    #               (but not equal to) <code>EndTime</code>.</p>
    #            <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
    # @option params [Integer] :period_in_seconds
    #   <p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400
    #               seconds). Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> (one second)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>60</code> (one minute)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>300</code> (five minutes)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3600</code> (one hour)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>86400</code> (twenty-four hours)</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data
    #               points in the response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response.</p>
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond
    #               the token, up to the value specified by <code>MaxRecords</code>.</p>
    # @option params [String] :period_alignment
    #   <p>The returned timestamp which is the start or end time of the time periods. The default value is <code>END_TIME</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     metric_queries: [ # required
    #       {
    #         metric: "SanitizedString", # required
    #         group_by: {
    #           group: "SanitizedString", # required
    #           dimensions: ["SanitizedString"],
    #           limit: 1
    #         },
    #         filter: {
    #           "SanitizedString" => "RequestString"
    #         }
    #       }
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period_in_seconds: 1,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     period_alignment: "END_TIME" # One of: ["END_TIME", "START_TIME"]
    #   }
    #   options = {}
    #   response = client.get_resource_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aligned_start_time: Time.now,
    #     aligned_end_time: Time.now,
    #     identifier: "String",
    #     metric_list: [
    #       {
    #         key: {
    #           metric: "String", # required
    #           dimensions: {
    #             "RequestString" => "RequestString"
    #           }
    #         },
    #         data_points: [
    #           {
    #             timestamp: Time.now, # required
    #             value: 1.0, # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetResourceMetricsResponse]
    def get_resource_metrics(params = {}, options = {})
      request = build_request(:get_resource_metrics, params)
      request.send_request(options)
    end

    # <p>Retrieve the dimensions that can be queried for each specified metric type on a specified DB instance.</p>
    # @param [Hash, Types::ListAvailableResourceDimensionsRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique within an Amazon Web Services Region. Performance Insights gathers
    #               metrics from this data source. To use an Amazon RDS DB instance as a data source, specify its
    #                   <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>. </p>
    # @option params [Array<String>] :metrics
    #   <p>The types of metrics for which to retrieve dimensions. Valid values include <code>db.load</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified 
    #               <code>MaxRecords</code> value, a pagination token is included in the response so that the remaining 
    #               results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, 
    #               the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.
    #           </p>
    # @option params [Array<String>] :authorized_actions
    #   <p>The actions to discover the dimensions you are authorized to access. If you specify multiple actions, then the response will
    #           contain the dimensions common for all the actions.</p>
    #            <p>When you don't specify this request parameter or provide an empty list, the response contains all the 
    #               available dimensions for the target database engine whether or not you are authorized to access them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     metrics: ["SanitizedString"], # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     authorized_actions: ["DescribeDimensionKeys" # One of: ["DescribeDimensionKeys", "GetDimensionKeyDetails", "GetResourceMetrics"]]
    #   }
    #   options = {}
    #   response = client.list_available_resource_dimensions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_dimensions: [
    #       {
    #         metric: "String",
    #         groups: [
    #           {
    #             group: "String",
    #             dimensions: [
    #               {
    #                 identifier: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAvailableResourceDimensionsResponse]
    def list_available_resource_dimensions(params = {}, options = {})
      request = build_request(:list_available_resource_dimensions, params)
      request.send_request(options)
    end

    # <p>Retrieve metrics of the specified types that can be queried for a specified DB instance.
    #       </p>
    # @param [Hash, Types::ListAvailableResourceMetricsRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique within an Amazon Web Services Region. Performance Insights gathers
    #               metrics from this data source. To use an Amazon RDS DB instance as a data source, specify its
    #                   <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>. </p>
    # @option params [Array<String>] :metric_types
    #   <p>The types of metrics to return in the response. Valid values in the array include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>os</code> (OS counter metrics) - All engines</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db</code> (DB load metrics) - All engines except for Amazon DocumentDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql.stats</code> (per-SQL metrics) - All engines except for Amazon DocumentDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql_tokenized.stats</code> (per-SQL digest metrics) - All engines except for Amazon DocumentDB</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, 
    #             the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return. If the <code>MaxRecords</code> value is less than the number 
    #               of existing items, the response includes a pagination token. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     metric_types: ["SanitizedString"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_available_resource_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics: [
    #       {
    #         metric: "String",
    #         description: "Description",
    #         unit: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAvailableResourceMetricsResponse]
    def list_available_resource_metrics(params = {}, options = {})
      request = build_request(:list_available_resource_metrics, params)
      request.send_request(options)
    end

    # <p>Lists all the analysis reports created for the DB instance. The reports are sorted based on the start time of each report.</p>
    # @param [Hash, Types::ListPerformanceAnalysisReportsRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics. Valid value is
    #               <code>RDS</code>.</p>
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. Performance Insights gathers metrics from this data source. In the
    #               console, the identifier is shown as <i>ResourceID</i>. When you call <code>DescribeDBInstances</code>, the identifier is
    #               returned as <code>DbiResourceId</code>.</p>
    #            <p>To use a DB instance as a data source, specify its <code>DbiResourceId</code> value. For example, specify
    #               <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p>
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. 
    #               If this parameter is specified, the response includes only records beyond
    #               the token, up to the value specified by <code>MaxResults</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxResults</code> value, a
    #               pagination token is included in the response so that the remaining results can be retrieved. </p>
    # @option params [Boolean] :list_tags
    #   <p>Specifies whether or not to include the list of tags in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     identifier: "IdentifierString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     list_tags: false
    #   }
    #   options = {}
    #   response = client.list_performance_analysis_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_reports: [
    #       {
    #         analysis_report_id: "String",
    #         create_time: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPerformanceAnalysisReportsResponse]
    def list_performance_analysis_reports(params = {}, options = {})
      request = build_request(:list_performance_analysis_reports, params)
      request.send_request(options)
    end

    # <p>Retrieves all the metadata tags associated with Amazon RDS Performance Insights resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :service_type
    #   <p>List the tags for the Amazon Web Services service for which Performance Insights returns metrics. Valid value is <code>RDS</code>.</p>
    # @option params [String] :resource_arn
    #   <p>Lists all the tags for the Amazon RDS Performance Insights resource. This value is an 
    #               Amazon Resource Name (ARN). For information about creating an ARN, 
    #               see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">
    #                   Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     resource_arn: "AmazonResourceName", # required
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
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds metadata tags to the Amazon RDS Performance Insights resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics. Valid value is <code>RDS</code>.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon RDS Performance Insights resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about  
    #               creating an ARN, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">
    #                   Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     resource_arn: "AmazonResourceName", # required
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes the metadata tags from the Amazon RDS Performance Insights resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :service_type
    #   <p>List the tags for the Amazon Web Services service for which Performance Insights returns metrics. Valid value is <code>RDS</code>.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon RDS Performance Insights resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about  
    #               creating an ARN, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">
    #                   Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The metadata assigned to an Amazon RDS Performance Insights resource consisting of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_type: "RDS" # One of: ["RDS", "DOCDB"], # required
    #     resource_arn: "AmazonResourceName", # required
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
      context[:gem_name] = 'aws-sdk-pi'
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

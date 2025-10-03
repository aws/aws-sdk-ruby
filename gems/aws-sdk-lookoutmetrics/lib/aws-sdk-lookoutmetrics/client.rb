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

module Aws::LookoutMetrics
  # An API client for Aws::LookoutMetrics.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LookoutMetrics

    add_plugin(::Aws::LookoutMetrics::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LookoutMetrics::EndpointProvider)
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

    # <p>Activates an anomaly detector.</p>
    # @param [Hash, Types::ActivateAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.activate_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ActivateAnomalyDetectorResponse]
    def activate_anomaly_detector(params = {}, options = {})
      request = build_request(:activate_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Runs a backtest for anomaly detection for the specified resource.</p>
    # @param [Hash, Types::BackTestAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.back_test_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::BackTestAnomalyDetectorResponse]
    def back_test_anomaly_detector(params = {}, options = {})
      request = build_request(:back_test_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Creates an alert for an anomaly detector.</p>
    # @param [Hash, Types::CreateAlertRequest] params
    # @option params [String] :alert_name
    #   <p>The name of the alert.</p>
    # @option params [Integer] :alert_sensitivity_threshold
    #   <p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>
    # @option params [String] :alert_description
    #   <p>A description of the alert.</p>
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    # @option params [Types::Action] :action
    #   <p>Action that will be triggered when there is an alert.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the alert.</p>
    # @option params [Types::AlertFilters] :alert_filters
    #   <p>The configuration of the alert filters, containing MetricList and DimensionFilterList.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alert_name: "AlertName", # required
    #     alert_sensitivity_threshold: 1,
    #     alert_description: "AlertDescription",
    #     anomaly_detector_arn: "Arn", # required
    #     action: { # required
    #       sns_configuration: {
    #         role_arn: "Arn", # required
    #         sns_topic_arn: "Arn", # required
    #         sns_format: "LONG_TEXT" # One of: ["LONG_TEXT", "SHORT_TEXT", "JSON"]
    #       },
    #       lambda_configuration: {
    #         role_arn: "Arn", # required
    #         lambda_arn: "Arn", # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     alert_filters: {
    #       metric_list: ["MetricName"],
    #       dimension_filter_list: [
    #         {
    #           dimension_name: "ColumnName",
    #           dimension_value_list: ["DimensionValue"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alert_arn: "Arn"
    #   }
    # @return [Types::CreateAlertResponse]
    def create_alert(params = {}, options = {})
      request = build_request(:create_alert, params)
      request.send_request(options)
    end

    # <p>Creates an anomaly detector.</p>
    # @param [Hash, Types::CreateAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_name
    #   <p>The name of the detector.</p>
    # @option params [String] :anomaly_detector_description
    #   <p>A description of the detector.</p>
    # @option params [Types::AnomalyDetectorConfig] :anomaly_detector_config
    #   <p>Contains information about the configuration of the anomaly detector.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key to use to encrypt your data.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the anomaly detector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_name: "AnomalyDetectorName", # required
    #     anomaly_detector_description: "AnomalyDetectorDescription",
    #     anomaly_detector_config: { # required
    #       anomaly_detector_frequency: "P1D" # One of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detector_arn: "Arn"
    #   }
    # @return [Types::CreateAnomalyDetectorResponse]
    def create_anomaly_detector(params = {}, options = {})
      request = build_request(:create_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Creates a dataset.</p>
    # @param [Hash, Types::CreateMetricSetRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector that will use the dataset.</p>
    # @option params [String] :metric_set_name
    #   <p>The name of the dataset.</p>
    # @option params [String] :metric_set_description
    #   <p>A description of the dataset you are creating.</p>
    # @option params [Array<Types::Metric>] :metric_list
    #   <p>A list of metrics that the dataset will contain.</p>
    # @option params [Integer] :offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>
    # @option params [Types::TimestampColumn] :timestamp_column
    #   <p>Contains information about the column used for tracking time in your source data.</p>
    # @option params [Array<String>] :dimension_list
    #   <p>A list of the fields you want to treat as dimensions.</p>
    # @option params [String] :metric_set_frequency
    #   <p>The frequency with which the source data will be analyzed for anomalies.</p>
    # @option params [Types::MetricSource] :metric_source
    #   <p>Contains information about how the source data should be interpreted.</p>
    # @option params [String] :timezone
    #   <p>The time zone in which your source data was recorded.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the dataset.</p>
    # @option params [Array<Types::MetricSetDimensionFilter>] :dimension_filter_list
    #   <p>A list of filters that specify which data is kept for anomaly detection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     metric_set_name: "MetricSetName", # required
    #     metric_set_description: "MetricSetDescription",
    #     metric_list: [ # required
    #       {
    #         metric_name: "ColumnName", # required
    #         aggregation_function: "AVG" # One of: ["AVG", "SUM"], # required
    #         namespace: "Namespace"
    #       }
    #     ],
    #     offset: 1,
    #     timestamp_column: {
    #       column_name: "ColumnName",
    #       column_format: "DateTimeFormat"
    #     },
    #     dimension_list: ["ColumnName"],
    #     metric_set_frequency: "P1D" # One of: ["P1D", "PT1H", "PT10M", "PT5M"],
    #     metric_source: { # required
    #       s3_source_config: {
    #         role_arn: "Arn",
    #         templated_path_list: ["TemplatedPath"],
    #         historical_data_path_list: ["HistoricalDataPath"],
    #         file_format_descriptor: {
    #           csv_format_descriptor: {
    #             file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #             charset: "Charset",
    #             contains_header: false,
    #             delimiter: "Delimiter",
    #             header_list: ["ColumnName"],
    #             quote_symbol: "QuoteSymbol"
    #           },
    #           json_format_descriptor: {
    #             file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #             charset: "Charset"
    #           }
    #         }
    #       },
    #       app_flow_config: {
    #         role_arn: "Arn",
    #         flow_name: "FlowName"
    #       },
    #       cloud_watch_config: {
    #         role_arn: "Arn",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         }
    #       },
    #       rds_source_config: {
    #         db_instance_identifier: "RDSDatabaseIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RDSDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         }
    #       },
    #       redshift_source_config: {
    #         cluster_identifier: "RedshiftClusterIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RedshiftDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         }
    #       },
    #       athena_source_config: {
    #         role_arn: "Arn",
    #         database_name: "AthenaDatabaseName",
    #         data_catalog: "AthenaDataCatalog",
    #         table_name: "AthenaTableName",
    #         work_group_name: "AthenaWorkGroupName",
    #         s3_results_path: "AthenaS3ResultsPath",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         }
    #       }
    #     },
    #     timezone: "Timezone",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     dimension_filter_list: [
    #       {
    #         name: "ColumnName",
    #         filter_list: [
    #           {
    #             dimension_value: "DimensionValue",
    #             filter_operation: "EQUALS" # One of: ["EQUALS"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_metric_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_set_arn: "Arn"
    #   }
    # @return [Types::CreateMetricSetResponse]
    def create_metric_set(params = {}, options = {})
      request = build_request(:create_metric_set, params)
      request.send_request(options)
    end

    # <p>Deactivates an anomaly detector.</p>
    # @param [Hash, Types::DeactivateAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.deactivate_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeactivateAnomalyDetectorResponse]
    def deactivate_anomaly_detector(params = {}, options = {})
      request = build_request(:deactivate_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Deletes an alert.</p>
    # @param [Hash, Types::DeleteAlertRequest] params
    # @option params [String] :alert_arn
    #   <p>The ARN of the alert to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alert_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAlertResponse]
    def delete_alert(params = {}, options = {})
      request = build_request(:delete_alert, params)
      request.send_request(options)
    end

    # <p>Deletes a detector. Deleting an anomaly detector will delete all of its corresponding resources including any
    #       configured datasets and alerts.</p>
    # @param [Hash, Types::DeleteAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAnomalyDetectorResponse]
    def delete_anomaly_detector(params = {}, options = {})
      request = build_request(:delete_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Describes an alert.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    # @param [Hash, Types::DescribeAlertRequest] params
    # @option params [String] :alert_arn
    #   <p>The ARN of the alert to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alert_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alert: {
    #       action: {
    #         sns_configuration: {
    #           role_arn: "Arn", # required
    #           sns_topic_arn: "Arn", # required
    #           sns_format: "LONG_TEXT" # One of: ["LONG_TEXT", "SHORT_TEXT", "JSON"]
    #         },
    #         lambda_configuration: {
    #           role_arn: "Arn", # required
    #           lambda_arn: "Arn", # required
    #         }
    #       },
    #       alert_description: "AlertDescription",
    #       alert_arn: "Arn",
    #       anomaly_detector_arn: "Arn",
    #       alert_name: "AlertName",
    #       alert_sensitivity_threshold: 1,
    #       alert_type: "SNS" # One of: ["SNS", "LAMBDA"],
    #       alert_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       last_modification_time: Time.now,
    #       creation_time: Time.now,
    #       alert_filters: {
    #         metric_list: ["MetricName"],
    #         dimension_filter_list: [
    #           {
    #             dimension_name: "ColumnName",
    #             dimension_value_list: ["DimensionValue"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeAlertResponse]
    def describe_alert(params = {}, options = {})
      request = build_request(:describe_alert, params)
      request.send_request(options)
    end

    # <p>Returns information about the status of the specified anomaly detection jobs.</p>
    # @param [Hash, Types::DescribeAnomalyDetectionExecutionsRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @option params [String] :timestamp
    #   <p>The timestamp of the anomaly detection job.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     timestamp: "TimestampString",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_anomaly_detection_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_list: [
    #       {
    #         timestamp: "TimestampString",
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE"],
    #         failure_reason: "AnomalyDetectionTaskStatusMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAnomalyDetectionExecutionsResponse]
    def describe_anomaly_detection_executions(params = {}, options = {})
      request = build_request(:describe_anomaly_detection_executions, params)
      request.send_request(options)
    end

    # <p>Describes a detector.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    # @param [Hash, Types::DescribeAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detector_arn: "Arn",
    #     anomaly_detector_name: "AnomalyDetectorName",
    #     anomaly_detector_description: "AnomalyDetectorDescription",
    #     anomaly_detector_config: {
    #       anomaly_detector_frequency: "P1D" # One of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #     },
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"],
    #     failure_reason: "ErrorMessage",
    #     kms_key_arn: "KmsKeyArn",
    #     failure_type: "ACTIVATION_FAILURE" # One of: ["ACTIVATION_FAILURE", "BACK_TEST_ACTIVATION_FAILURE", "DELETION_FAILURE", "DEACTIVATION_FAILURE"]
    #   }
    # @return [Types::DescribeAnomalyDetectorResponse]
    def describe_anomaly_detector(params = {}, options = {})
      request = build_request(:describe_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Describes a dataset.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    # @param [Hash, Types::DescribeMetricSetRequest] params
    # @option params [String] :metric_set_arn
    #   <p>The ARN of the dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_set_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_metric_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_set_arn: "Arn",
    #     anomaly_detector_arn: "Arn",
    #     metric_set_name: "MetricSetName",
    #     metric_set_description: "MetricSetDescription",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     offset: 1,
    #     metric_list: [
    #       {
    #         metric_name: "ColumnName", # required
    #         aggregation_function: "AVG" # One of: ["AVG", "SUM"], # required
    #         namespace: "Namespace"
    #       }
    #     ],
    #     timestamp_column: {
    #       column_name: "ColumnName",
    #       column_format: "DateTimeFormat"
    #     },
    #     dimension_list: ["ColumnName"],
    #     metric_set_frequency: "P1D" # One of: ["P1D", "PT1H", "PT10M", "PT5M"],
    #     timezone: "Timezone",
    #     metric_source: {
    #       s3_source_config: {
    #         role_arn: "Arn",
    #         templated_path_list: ["TemplatedPath"],
    #         historical_data_path_list: ["HistoricalDataPath"],
    #         file_format_descriptor: {
    #           csv_format_descriptor: {
    #             file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #             charset: "Charset",
    #             contains_header: false,
    #             delimiter: "Delimiter",
    #             header_list: ["ColumnName"],
    #             quote_symbol: "QuoteSymbol"
    #           },
    #           json_format_descriptor: {
    #             file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #             charset: "Charset"
    #           }
    #         }
    #       },
    #       app_flow_config: {
    #         role_arn: "Arn",
    #         flow_name: "FlowName"
    #       },
    #       cloud_watch_config: {
    #         role_arn: "Arn",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         }
    #       },
    #       rds_source_config: {
    #         db_instance_identifier: "RDSDatabaseIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RDSDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         }
    #       },
    #       redshift_source_config: {
    #         cluster_identifier: "RedshiftClusterIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RedshiftDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         }
    #       },
    #       athena_source_config: {
    #         role_arn: "Arn",
    #         database_name: "AthenaDatabaseName",
    #         data_catalog: "AthenaDataCatalog",
    #         table_name: "AthenaTableName",
    #         work_group_name: "AthenaWorkGroupName",
    #         s3_results_path: "AthenaS3ResultsPath",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         }
    #       }
    #     },
    #     dimension_filter_list: [
    #       {
    #         name: "ColumnName",
    #         filter_list: [
    #           {
    #             dimension_value: "DimensionValue",
    #             filter_operation: "EQUALS" # One of: ["EQUALS"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMetricSetResponse]
    def describe_metric_set(params = {}, options = {})
      request = build_request(:describe_metric_set, params)
      request.send_request(options)
    end

    # <p>Detects an Amazon S3 dataset's file format, interval, and offset.</p>
    # @param [Hash, Types::DetectMetricSetConfigRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>An anomaly detector ARN.</p>
    # @option params [Types::AutoDetectionMetricSource] :auto_detection_metric_source
    #   <p>A data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     auto_detection_metric_source: { # required
    #       s3_source_config: {
    #         templated_path_list: ["TemplatedPath"],
    #         historical_data_path_list: ["HistoricalDataPath"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.detect_metric_set_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detected_metric_set_config: {
    #       offset: {
    #         value: {
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "BinaryAttributeValue",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["BinaryAttributeValue"]
    #         },
    #         confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #         message: "Message"
    #       },
    #       metric_set_frequency: {
    #         value: {
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "BinaryAttributeValue",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["BinaryAttributeValue"]
    #         },
    #         confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #         message: "Message"
    #       },
    #       metric_source: {
    #         s3_source_config: {
    #           file_format_descriptor: {
    #             csv_format_descriptor: {
    #               file_compression: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               },
    #               charset: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               },
    #               contains_header: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               },
    #               delimiter: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               },
    #               header_list: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               },
    #               quote_symbol: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               }
    #             },
    #             json_format_descriptor: {
    #               file_compression: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               },
    #               charset: {
    #                 value: {
    #                   s: "StringAttributeValue",
    #                   n: "NumberAttributeValue",
    #                   b: "BinaryAttributeValue",
    #                   ss: ["StringAttributeValue"],
    #                   ns: ["NumberAttributeValue"],
    #                   bs: ["BinaryAttributeValue"]
    #                 },
    #                 confidence: "HIGH" # One of: ["HIGH", "LOW", "NONE"],
    #                 message: "Message"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DetectMetricSetConfigResponse]
    def detect_metric_set_config(params = {}, options = {})
      request = build_request(:detect_metric_set_config, params)
      request.send_request(options)
    end

    # <p>Returns details about a group of anomalous metrics.</p>
    # @param [Hash, Types::GetAnomalyGroupRequest] params
    # @option params [String] :anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_group_id: "UUID", # required
    #     anomaly_detector_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_anomaly_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_group: {
    #       start_time: "TimestampString",
    #       end_time: "TimestampString",
    #       anomaly_group_id: "UUID",
    #       anomaly_group_score: 1.0,
    #       primary_metric_name: "MetricName",
    #       metric_level_impact_list: [
    #         {
    #           metric_name: "MetricName",
    #           num_time_series: 1,
    #           contribution_matrix: {
    #             dimension_contribution_list: [
    #               {
    #                 dimension_name: "ColumnName",
    #                 dimension_value_contribution_list: [
    #                   {
    #                     dimension_value: "DimensionValue",
    #                     contribution_score: 1.0
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetAnomalyGroupResponse]
    def get_anomaly_group(params = {}, options = {})
      request = build_request(:get_anomaly_group, params)
      request.send_request(options)
    end

    # <p>Returns details about the requested data quality metrics.</p>
    # @param [Hash, Types::GetDataQualityMetricsRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector that you want to investigate.</p>
    # @option params [String] :metric_set_arn
    #   <p>The Amazon Resource Name (ARN) of a specific data quality metric set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     metric_set_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.get_data_quality_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detector_data_quality_metric_list: [
    #       {
    #         start_timestamp: Time.now,
    #         metric_set_data_quality_metric_list: [
    #           {
    #             metric_set_arn: "Arn",
    #             data_quality_metric_list: [
    #               {
    #                 metric_type: "COLUMN_COMPLETENESS" # One of: ["COLUMN_COMPLETENESS", "DIMENSION_UNIQUENESS", "TIME_SERIES_COUNT", "ROWS_PROCESSED", "ROWS_PARTIAL_COMPLIANCE", "INVALID_ROWS_COMPLIANCE", "BACKTEST_TRAINING_DATA_START_TIME_STAMP", "BACKTEST_TRAINING_DATA_END_TIME_STAMP", "BACKTEST_INFERENCE_DATA_START_TIME_STAMP", "BACKTEST_INFERENCE_DATA_END_TIME_STAMP"],
    #                 metric_description: "DataQualityMetricDescription",
    #                 related_column_name: "RelatedColumnName",
    #                 metric_value: 1.0
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetDataQualityMetricsResponse]
    def get_data_quality_metrics(params = {}, options = {})
      request = build_request(:get_data_quality_metrics, params)
      request.send_request(options)
    end

    # <p>Get feedback for an anomaly group.</p>
    # @param [Hash, Types::GetFeedbackRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @option params [Types::AnomalyGroupTimeSeries] :anomaly_group_time_series_feedback
    #   <p>The anomalous metric and group ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_time_series_feedback: { # required
    #       anomaly_group_id: "UUID", # required
    #       time_series_id: "TimeSeriesId"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_group_time_series_feedback: [
    #       {
    #         time_series_id: "TimeSeriesId",
    #         is_anomaly: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetFeedbackResponse]
    def get_feedback(params = {}, options = {})
      request = build_request(:get_feedback, params)
      request.send_request(options)
    end

    # <p>Returns a selection of sample records from an Amazon S3 datasource.</p>
    # @param [Hash, Types::GetSampleDataRequest] params
    # @option params [Types::SampleDataS3SourceConfig] :s3_source_config
    #   <p>A datasource bucket in Amazon S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_source_config: {
    #       role_arn: "Arn", # required
    #       templated_path_list: ["TemplatedPath"],
    #       historical_data_path_list: ["HistoricalDataPath"],
    #       file_format_descriptor: { # required
    #         csv_format_descriptor: {
    #           file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #           charset: "Charset",
    #           contains_header: false,
    #           delimiter: "Delimiter",
    #           header_list: ["ColumnName"],
    #           quote_symbol: "QuoteSymbol"
    #         },
    #         json_format_descriptor: {
    #           file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #           charset: "Charset"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_sample_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     header_values: ["HeaderValue"],
    #     sample_rows: [
    #       ["DataItem"]
    #     ]
    #   }
    # @return [Types::GetSampleDataResponse]
    def get_sample_data(params = {}, options = {})
      request = build_request(:get_sample_data, params)
      request.send_request(options)
    end

    # <p>Lists the alerts attached to a detector.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    # @param [Hash, Types::ListAlertsRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the alert's detector.</p>
    # @option params [String] :next_token
    #   <p>If the result of the previous request is truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that will be displayed by the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_alerts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alert_summary_list: [
    #       {
    #         alert_arn: "Arn",
    #         anomaly_detector_arn: "Arn",
    #         alert_name: "AlertName",
    #         alert_sensitivity_threshold: 1,
    #         alert_type: "SNS" # One of: ["SNS", "LAMBDA"],
    #         alert_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         last_modification_time: Time.now,
    #         creation_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAlertsResponse]
    def list_alerts(params = {}, options = {})
      request = build_request(:list_alerts, params)
      request.send_request(options)
    end

    # <p>Lists the detectors in the current AWS Region.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    # @param [Hash, Types::ListAnomalyDetectorsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_anomaly_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detector_summary_list: [
    #       {
    #         anomaly_detector_arn: "Arn",
    #         anomaly_detector_name: "AnomalyDetectorName",
    #         anomaly_detector_description: "AnomalyDetectorDescription",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now,
    #         status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnomalyDetectorsResponse]
    def list_anomaly_detectors(params = {}, options = {})
      request = build_request(:list_anomaly_detectors, params)
      request.send_request(options)
    end

    # <p>Returns a list of measures that are potential causes or effects of an
    #             anomaly group.</p>
    # @param [Hash, Types::ListAnomalyGroupRelatedMetricsRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @option params [String] :anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    # @option params [String] :relationship_type_filter
    #   <p>Filter for potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>) or
    #               downstream effects (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>) of the anomaly group.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next
    #               page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_id: "UUID", # required
    #     relationship_type_filter: "CAUSE_OF_INPUT_ANOMALY_GROUP" # One of: ["CAUSE_OF_INPUT_ANOMALY_GROUP", "EFFECT_OF_INPUT_ANOMALY_GROUP"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_anomaly_group_related_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inter_metric_impact_list: [
    #       {
    #         metric_name: "MetricName",
    #         anomaly_group_id: "UUID",
    #         relationship_type: "CAUSE_OF_INPUT_ANOMALY_GROUP" # One of: ["CAUSE_OF_INPUT_ANOMALY_GROUP", "EFFECT_OF_INPUT_ANOMALY_GROUP"],
    #         contribution_percentage: 1.0
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnomalyGroupRelatedMetricsResponse]
    def list_anomaly_group_related_metrics(params = {}, options = {})
      request = build_request(:list_anomaly_group_related_metrics, params)
      request.send_request(options)
    end

    # <p>Returns a list of anomaly groups.</p>
    # @param [Hash, Types::ListAnomalyGroupSummariesRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @option params [Integer] :sensitivity_threshold
    #   <p>The minimum severity score for inclusion in the output.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     sensitivity_threshold: 1, # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_anomaly_group_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_group_summary_list: [
    #       {
    #         start_time: "TimestampString",
    #         end_time: "TimestampString",
    #         anomaly_group_id: "UUID",
    #         anomaly_group_score: 1.0,
    #         primary_metric_name: "MetricName"
    #       }
    #     ],
    #     anomaly_group_statistics: {
    #       evaluation_start_date: "TimestampString",
    #       total_count: 1,
    #       itemized_metric_stats_list: [
    #         {
    #           metric_name: "ColumnName",
    #           occurrence_count: 1
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnomalyGroupSummariesResponse]
    def list_anomaly_group_summaries(params = {}, options = {})
      request = build_request(:list_anomaly_group_summaries, params)
      request.send_request(options)
    end

    # <p>Gets a list of anomalous metrics for a measure in an anomaly group.</p>
    # @param [Hash, Types::ListAnomalyGroupTimeSeriesRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @option params [String] :anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    # @option params [String] :metric_name
    #   <p>The name of the measure field.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_id: "UUID", # required
    #     metric_name: "MetricName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_anomaly_group_time_series(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_group_id: "UUID",
    #     metric_name: "MetricName",
    #     timestamp_list: ["TimestampString"],
    #     next_token: "NextToken",
    #     time_series_list: [
    #       {
    #         time_series_id: "TimeSeriesId", # required
    #         dimension_list: [ # required
    #           {
    #             dimension_name: "ColumnName", # required
    #             dimension_value: "DimensionValue", # required
    #           }
    #         ],
    #         metric_value_list: [1.0], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListAnomalyGroupTimeSeriesResponse]
    def list_anomaly_group_time_series(params = {}, options = {})
      request = build_request(:list_anomaly_group_time_series, params)
      request.send_request(options)
    end

    # <p>Lists the datasets in the current AWS Region.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    # @param [Hash, Types::ListMetricSetsRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector containing the metrics sets to list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_metric_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_set_summary_list: [
    #       {
    #         metric_set_arn: "Arn",
    #         anomaly_detector_arn: "Arn",
    #         metric_set_description: "MetricSetDescription",
    #         metric_set_name: "MetricSetName",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMetricSetsResponse]
    def list_metric_sets(params = {}, options = {})
      request = build_request(:list_metric_sets, params)
      request.send_request(options)
    end

    # <p>Gets a list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> for a detector, dataset, or alert.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Add feedback for an anomalous metric.</p>
    # @param [Hash, Types::PutFeedbackRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    # @option params [Types::AnomalyGroupTimeSeriesFeedback] :anomaly_group_time_series_feedback
    #   <p>Feedback for an anomalous metric.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     anomaly_group_time_series_feedback: { # required
    #       anomaly_group_id: "UUID", # required
    #       time_series_id: "TimeSeriesId", # required
    #       is_anomaly: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutFeedbackResponse]
    def put_feedback(params = {}, options = {})
      request = build_request(:put_feedback, params)
      request.send_request(options)
    end

    # <p>Adds <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to a detector, dataset, or alert.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to apply to the resource. Tag keys and values can contain letters, numbers, spaces, and the following
    #         symbols: <code>_.:/=+@-</code>
    #            </p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> from a detector, dataset, or alert.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys to remove from the resource's tags.</p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Make changes to an existing alert.</p>
    # @param [Hash, Types::UpdateAlertRequest] params
    # @option params [String] :alert_arn
    #   <p>The ARN of the alert to update.</p>
    # @option params [String] :alert_description
    #   <p>A description of the alert.</p>
    # @option params [Integer] :alert_sensitivity_threshold
    #   <p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>
    # @option params [Types::Action] :action
    #   <p>Action that will be triggered when there is an alert.</p>
    # @option params [Types::AlertFilters] :alert_filters
    #   <p>The configuration of the alert filters, containing MetricList and DimensionFilterList.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alert_arn: "Arn", # required
    #     alert_description: "AlertDescription",
    #     alert_sensitivity_threshold: 1,
    #     action: {
    #       sns_configuration: {
    #         role_arn: "Arn", # required
    #         sns_topic_arn: "Arn", # required
    #         sns_format: "LONG_TEXT" # One of: ["LONG_TEXT", "SHORT_TEXT", "JSON"]
    #       },
    #       lambda_configuration: {
    #         role_arn: "Arn", # required
    #         lambda_arn: "Arn", # required
    #       }
    #     },
    #     alert_filters: {
    #       metric_list: ["MetricName"],
    #       dimension_filter_list: [
    #         {
    #           dimension_name: "ColumnName",
    #           dimension_value_list: ["DimensionValue"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alert_arn: "Arn"
    #   }
    # @return [Types::UpdateAlertResponse]
    def update_alert(params = {}, options = {})
      request = build_request(:update_alert, params)
      request.send_request(options)
    end

    # <p>Updates a detector. After activation, you can only change a detector's ingestion delay and description.</p>
    # @param [Hash, Types::UpdateAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to update.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS KMS encryption key.</p>
    # @option params [String] :anomaly_detector_description
    #   <p>The updated detector description.</p>
    # @option params [Types::AnomalyDetectorConfig] :anomaly_detector_config
    #   <p>Contains information about the configuration to which the detector will be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "Arn", # required
    #     kms_key_arn: "KmsKeyArn",
    #     anomaly_detector_description: "AnomalyDetectorDescription",
    #     anomaly_detector_config: {
    #       anomaly_detector_frequency: "P1D" # One of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detector_arn: "Arn"
    #   }
    # @return [Types::UpdateAnomalyDetectorResponse]
    def update_anomaly_detector(params = {}, options = {})
      request = build_request(:update_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Updates a dataset.</p>
    # @param [Hash, Types::UpdateMetricSetRequest] params
    # @option params [String] :metric_set_arn
    #   <p>The ARN of the dataset to update.</p>
    # @option params [String] :metric_set_description
    #   <p>The dataset's description.</p>
    # @option params [Array<Types::Metric>] :metric_list
    #   <p>The metric list.</p>
    # @option params [Integer] :offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>
    # @option params [Types::TimestampColumn] :timestamp_column
    #   <p>The timestamp column.</p>
    # @option params [Array<String>] :dimension_list
    #   <p>The dimension list.</p>
    # @option params [String] :metric_set_frequency
    #   <p>The dataset's interval.</p>
    # @option params [Types::MetricSource] :metric_source
    #   <p>Contains information about source data used to generate metrics.</p>
    # @option params [Array<Types::MetricSetDimensionFilter>] :dimension_filter_list
    #   <p>Describes a list of filters for choosing specific dimensions and specific values. Each
    #         filter consists of the dimension and one of its values that you want to include. When
    #         multiple dimensions or values are specified, the dimensions are joined with an AND operation
    #         and the values are joined with an OR operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_set_arn: "Arn", # required
    #     metric_set_description: "MetricSetDescription",
    #     metric_list: [
    #       {
    #         metric_name: "ColumnName", # required
    #         aggregation_function: "AVG" # One of: ["AVG", "SUM"], # required
    #         namespace: "Namespace"
    #       }
    #     ],
    #     offset: 1,
    #     timestamp_column: {
    #       column_name: "ColumnName",
    #       column_format: "DateTimeFormat"
    #     },
    #     dimension_list: ["ColumnName"],
    #     metric_set_frequency: "P1D" # One of: ["P1D", "PT1H", "PT10M", "PT5M"],
    #     metric_source: {
    #       s3_source_config: {
    #         role_arn: "Arn",
    #         templated_path_list: ["TemplatedPath"],
    #         historical_data_path_list: ["HistoricalDataPath"],
    #         file_format_descriptor: {
    #           csv_format_descriptor: {
    #             file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #             charset: "Charset",
    #             contains_header: false,
    #             delimiter: "Delimiter",
    #             header_list: ["ColumnName"],
    #             quote_symbol: "QuoteSymbol"
    #           },
    #           json_format_descriptor: {
    #             file_compression: "NONE" # One of: ["NONE", "GZIP"],
    #             charset: "Charset"
    #           }
    #         }
    #       },
    #       app_flow_config: {
    #         role_arn: "Arn",
    #         flow_name: "FlowName"
    #       },
    #       cloud_watch_config: {
    #         role_arn: "Arn",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         }
    #       },
    #       rds_source_config: {
    #         db_instance_identifier: "RDSDatabaseIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RDSDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         }
    #       },
    #       redshift_source_config: {
    #         cluster_identifier: "RedshiftClusterIdentifier",
    #         database_host: "DatabaseHost",
    #         database_port: 1,
    #         secret_manager_arn: "PoirotSecretManagerArn",
    #         database_name: "RedshiftDatabaseName",
    #         table_name: "TableName",
    #         role_arn: "Arn",
    #         vpc_configuration: {
    #           subnet_id_list: ["SubnetId"], # required
    #           security_group_id_list: ["SecurityGroupId"], # required
    #         }
    #       },
    #       athena_source_config: {
    #         role_arn: "Arn",
    #         database_name: "AthenaDatabaseName",
    #         data_catalog: "AthenaDataCatalog",
    #         table_name: "AthenaTableName",
    #         work_group_name: "AthenaWorkGroupName",
    #         s3_results_path: "AthenaS3ResultsPath",
    #         back_test_configuration: {
    #           run_back_test_mode: false, # required
    #         }
    #       }
    #     },
    #     dimension_filter_list: [
    #       {
    #         name: "ColumnName",
    #         filter_list: [
    #           {
    #             dimension_value: "DimensionValue",
    #             filter_operation: "EQUALS" # One of: ["EQUALS"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_metric_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_set_arn: "Arn"
    #   }
    # @return [Types::UpdateMetricSetResponse]
    def update_metric_set(params = {}, options = {})
      request = build_request(:update_metric_set, params)
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
      context[:gem_name] = 'aws-sdk-lookoutmetrics'
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

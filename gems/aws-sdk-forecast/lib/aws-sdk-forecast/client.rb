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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::Forecast
  # An API client for Aws::Forecast.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonForecast

    add_plugin(::Aws::Forecast::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
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
    # @option options [Aws::Forecast::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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

    # <p>Creates an Amazon Forecast predictor.</p>
    #          <p>Amazon Forecast creates predictors with AutoPredictor, which involves applying the
    #             optimal combination of algorithms to each time series in your datasets. You can use
    #                 <a>CreateAutoPredictor</a> to create new predictors or upgrade/retrain
    #             existing predictors.</p>
    #          <p>
    #             <b>Creating new predictors</b>
    #          </p>
    #          <p>The following parameters are required when creating a new predictor:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PredictorName</code> - A unique name for the predictor.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DatasetGroupArn</code> - The ARN of the dataset group used to train the
    #                     predictor.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ForecastFrequency</code> - The granularity of your forecasts (hourly,
    #                     daily, weekly, etc).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ForecastHorizon</code> - The number of time-steps that the model
    #                     predicts. The forecast horizon is also called the prediction length.</p>
    #             </li>
    #          </ul>
    #          <p>When creating a new predictor, do not specify a value for
    #                 <code>ReferencePredictorArn</code>.</p>
    #          <p>
    #             <b>Upgrading and retraining predictors</b>
    #          </p>
    #          <p>The following parameters are required when retraining or upgrading a predictor:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PredictorName</code> - A unique name for the predictor.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ReferencePredictorArn</code> - The ARN of the predictor to retrain or
    #                     upgrade.</p>
    #             </li>
    #          </ul>
    #          <p>When upgrading or retraining a predictor, only specify values for the
    #                 <code>ReferencePredictorArn</code> and <code>PredictorName</code>. </p>
    # @param [Hash, Types::CreateAutoPredictorRequest] params
    # @option params [String] :predictor_name
    #   <p>A unique name for the predictor</p>
    # @option params [Integer] :forecast_horizon
    #   <p>The number of time-steps that the model predicts. The forecast horizon is also called
    #               the prediction length.</p>
    #            <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/4 of the
    #               TARGET_TIME_SERIES dataset length. If you are retraining an existing AutoPredictor, then
    #               the maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
    #               TARGET_TIME_SERIES dataset length.</p>
    #            <p>If you are upgrading to an AutoPredictor or retraining an existing AutoPredictor, you
    #               cannot update the forecast horizon parameter. You can meet this requirement by providing
    #               longer time-series in the dataset.</p>
    # @option params [Array<String>] :forecast_types
    #   <p>The forecast types used to train a predictor. You can specify up to five forecast
    #               types. Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or
    #               higher. You can also specify the mean forecast with <code>mean</code>.</p>
    # @option params [Array<String>] :forecast_dimensions
    #   <p>An array of dimension (field) names that specify how to group the generated
    #               forecast.</p>
    #            <p>For example, if you are generating forecasts for item sales across all your stores,
    #               and your dataset contains a <code>store_id</code> field, you would specify
    #                   <code>store_id</code> as a dimension to group sales forecasts for each store.</p>
    # @option params [String] :forecast_frequency
    #   <p>The frequency of predictions in a forecast.</p>
    #            <p>Valid intervals are an integer followed by Y (Year), M (Month), W (Week), D (Day), H (Hour), and min (Minute). For example,
    #           "1D" indicates every day and "15min" indicates every 15 minutes. You cannot specify a value that would overlap with the next larger frequency. That means, for example, you cannot specify a frequency of 60 minutes, because that is equivalent to 1 hour. The valid values for each frequency are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Minute - 1-59</p>
    #               </li>
    #               <li>
    #                  <p>Hour - 1-23</p>
    #               </li>
    #               <li>
    #                  <p>Day - 1-6</p>
    #               </li>
    #               <li>
    #                  <p>Week - 1-4</p>
    #               </li>
    #               <li>
    #                  <p>Month - 1-11</p>
    #               </li>
    #               <li>
    #                  <p>Year - 1</p>
    #               </li>
    #            </ul>
    #            <p>Thus, if you want every other week forecasts, specify "2W". Or, if you want quarterly forecasts, you specify "3M".</p>
    #            <p>The frequency must be greater than or equal to the TARGET_TIME_SERIES dataset
    #               frequency.</p>
    #            <p>When a RELATED_TIME_SERIES dataset is provided, the frequency must be equal to the
    #               RELATED_TIME_SERIES dataset frequency.</p>
    # @option params [Types::DataConfig] :data_config
    #   <p>The data configuration for your dataset group and any additional datasets.</p>
    # @option params [Types::EncryptionConfig] :encryption_config
    #   <p>An Key Management Service (KMS) key and an Identity and Access Management (IAM) role that Amazon Forecast can assume to
    #         access the key. You can specify this optional object in the
    #         <a>CreateDataset</a> and <a>CreatePredictor</a> requests.</p>
    # @option params [String] :reference_predictor_arn
    #   <p>The ARN of the predictor to retrain or upgrade. This parameter is only used when
    #               retraining or upgrading a predictor. When creating a new predictor, do not specify a
    #               value for this parameter.</p>
    #            <p>When upgrading or retraining a predictor, only specify values for the
    #                   <code>ReferencePredictorArn</code> and <code>PredictorName</code>. The value for
    #                   <code>PredictorName</code> must be a unique predictor name.</p>
    # @option params [String] :optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    # @option params [Boolean] :explain_predictor
    #   <p>Create an Explainability resource for the predictor.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your predictors. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    # @option params [Types::MonitorConfig] :monitor_config
    #   <p>The configuration details for predictor monitoring. Provide a name for the monitor resource to enable predictor monitoring.</p>
    #            <p>Predictor monitoring allows you to see how your predictor's performance changes over time.
    #            For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html">Predictor Monitoring</a>.</p>
    # @option params [Types::TimeAlignmentBoundary] :time_alignment_boundary
    #   <p>The time boundary Forecast uses to align and aggregate any data that doesn't align with your forecast frequency. Provide the unit of time and the time boundary as a key value pair. 
    #               For more information on specifying a time boundary, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#specifying-time-boundary">Specifying a Time Boundary</a>.
    #               If you
    #               don't provide a time boundary, Forecast uses a set of <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#default-time-boundaries">Default Time Boundaries</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_name: "Name", # required
    #     forecast_horizon: 1,
    #     forecast_types: ["ForecastType"],
    #     forecast_dimensions: ["Name"],
    #     forecast_frequency: "Frequency",
    #     data_config: {
    #       dataset_group_arn: "Arn", # required
    #       attribute_configs: [
    #         {
    #           attribute_name: "Name", # required
    #           transformations: { # required
    #             "Name" => "Value"
    #           }
    #         }
    #       ],
    #       additional_datasets: [
    #         {
    #           name: "Name", # required
    #           configuration: {
    #             "Name" => ["Value"]
    #           }
    #         }
    #       ]
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
    #     },
    #     reference_predictor_arn: "Arn",
    #     optimization_metric: "WAPE" # One of: ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"],
    #     explain_predictor: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     monitor_config: {
    #       monitor_name: "Name", # required
    #     },
    #     time_alignment_boundary: {
    #       month: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"],
    #       day_of_month: 1,
    #       day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"],
    #       hour: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_auto_predictor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_arn: "Arn"
    #   }
    # @return [Types::CreateAutoPredictorResponse]
    def create_auto_predictor(params = {}, options = {})
      request = build_request(:create_auto_predictor, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Forecast dataset. The information about the dataset that you provide helps
    #       Forecast understand how to consume the data for model training. This includes the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>
    #                      <code>DataFrequency</code>
    #                   </i> - How frequently your historical
    #           time-series data is collected.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>
    #                      <code>Domain</code>
    #                   </i> and
    #             <i>
    #                      <code>DatasetType</code>
    #                   </i> - Each dataset has an associated dataset
    #           domain and a type within the domain. Amazon Forecast provides a list of predefined domains and
    #           types within each domain. For each unique dataset domain and type within the domain,
    #           Amazon Forecast requires your data to include a minimum set of predefined fields.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>
    #                      <code>Schema</code>
    #                   </i> - A schema specifies the fields in the dataset,
    #           including the field name and data type.</p>
    #             </li>
    #          </ul>
    #          <p>After creating a dataset, you import your training data into it and add the dataset to a
    #       dataset group. You use the dataset group to create a predictor. For more information, see
    #         <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Importing datasets</a>.</p>
    #          <p>To get a list of all your datasets, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html">ListDatasets</a> operation.</p>
    #          <p>For example Forecast datasets, see the <a href="https://github.com/aws-samples/amazon-forecast-samples">Amazon Forecast Sample GitHub
    #         repository</a>.</p>
    #          <note>
    #             <p>The <code>Status</code> of a dataset must be <code>ACTIVE</code> before you can import
    #         training data. Use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html">DescribeDataset</a> operation to get
    #         the status.</p>
    #          </note>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>A name for the dataset.</p>
    # @option params [String] :domain
    #   <p>The domain associated with the dataset. When you add a dataset to a dataset group, this
    #         value and the value specified for the <code>Domain</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a> operation must match.</p>
    #            <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
    #         that must be present in the training data that you import to the dataset. For example, if you
    #         choose the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
    #           <code>DatasetType</code>, Amazon Forecast requires <code>item_id</code>, <code>timestamp</code>,
    #         and <code>demand</code> fields to be present in your data. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Importing
    #           datasets</a>.</p>
    # @option params [String] :dataset_type
    #   <p>The dataset type. Valid values depend on the chosen <code>Domain</code>.</p>
    # @option params [String] :data_frequency
    #   <p>The frequency of data collection. This parameter is required for RELATED_TIME_SERIES
    #         datasets.</p>
    #            <p>Valid intervals are an integer followed by Y (Year), M (Month), W (Week), D (Day), H (Hour), and min (Minute). For example,
    #         "1D" indicates every day and "15min" indicates every 15 minutes. You cannot specify a value that would overlap with the next larger frequency. That means, for example, you cannot specify a frequency of 60 minutes, because that is equivalent to 1 hour. The valid values for each frequency are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Minute - 1-59</p>
    #               </li>
    #               <li>
    #                  <p>Hour - 1-23</p>
    #               </li>
    #               <li>
    #                  <p>Day - 1-6</p>
    #               </li>
    #               <li>
    #                  <p>Week - 1-4</p>
    #               </li>
    #               <li>
    #                  <p>Month - 1-11</p>
    #               </li>
    #               <li>
    #                  <p>Year - 1</p>
    #               </li>
    #            </ul>
    #            <p>Thus, if you want every other week forecasts, specify "2W". Or, if you want quarterly forecasts, you specify "3M".</p>
    # @option params [Types::Schema] :schema
    #   <p>The schema for the dataset. The schema attributes and their order must match the fields in
    #         your data. The dataset <code>Domain</code> and <code>DatasetType</code> that you choose
    #         determine the minimum required fields in your training data. For information about the
    #         required fields for a specific dataset domain and type, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-domains-ds-types.html">Dataset Domains and Dataset
    #           Types</a>.</p>
    # @option params [Types::EncryptionConfig] :encryption_config
    #   <p>An Key Management Service (KMS) key and the Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The optional metadata that you apply to the dataset to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "Name", # required
    #     domain: "RETAIL" # One of: ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"], # required
    #     dataset_type: "TARGET_TIME_SERIES" # One of: ["TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"], # required
    #     data_frequency: "Frequency",
    #     schema: { # required
    #       attributes: [
    #         {
    #           attribute_name: "Name",
    #           attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #         }
    #       ]
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "Arn"
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>Creates a dataset group, which holds a collection of related datasets. You can add
    #       datasets to the dataset group when you create the dataset group, or later by using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html">UpdateDatasetGroup</a> operation.</p>
    #          <p>After creating a dataset group and adding datasets, you use the dataset group when you
    #       create a predictor. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Dataset groups</a>.</p>
    #          <p>To get a list of all your datasets groups, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetGroups.html">ListDatasetGroups</a>
    #       operation.</p>
    #          <note>
    #             <p>The <code>Status</code> of a dataset group must be <code>ACTIVE</code> before you can
    #         use the dataset group to create a predictor. To get the status, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a> operation.</p>
    #          </note>
    # @param [Hash, Types::CreateDatasetGroupRequest] params
    # @option params [String] :dataset_group_name
    #   <p>A name for the dataset group.</p>
    # @option params [String] :domain
    #   <p>The domain associated with the dataset group. When you add a dataset to a dataset group,
    #         this value and the value specified for the <code>Domain</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #         operation must match.</p>
    #            <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
    #         that must be present in training data that you import to a dataset. For example, if you choose
    #         the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
    #           <code>DatasetType</code>, Amazon Forecast requires that <code>item_id</code>,
    #           <code>timestamp</code>, and <code>demand</code> fields are present in your data. For more
    #         information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Dataset groups</a>.</p>
    # @option params [Array<String>] :dataset_arns
    #   <p>An array of Amazon Resource Names (ARNs) of the datasets that you want to include in the
    #         dataset group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The optional metadata that you apply to the dataset group to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_name: "Name", # required
    #     domain: "RETAIL" # One of: ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"], # required
    #     dataset_arns: ["Arn"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dataset_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_group_arn: "Arn"
    #   }
    # @return [Types::CreateDatasetGroupResponse]
    def create_dataset_group(params = {}, options = {})
      request = build_request(:create_dataset_group, params)
      request.send_request(options)
    end

    # <p>Imports your training data to an Amazon Forecast dataset. You provide the location of your
    #       training data in an Amazon Simple Storage Service (Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
    #       that you want to import the data to.</p>
    #          <p>You must specify a <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html">DataSource</a> object that includes an
    #       Identity and Access Management (IAM) role that Amazon Forecast can assume to access the data, as Amazon Forecast makes a copy
    #       of your data and processes it in an internal Amazon Web Services system. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html">Set up
    #         permissions</a>.</p>
    #          <p>The training data must be in CSV or Parquet format. The delimiter must be a comma (,).</p>
    #          <p>You can specify the path to a specific file, the S3 bucket, or to a folder in the S3
    #       bucket. For the latter two cases, Amazon Forecast imports all files up to the limit of 10,000
    #       files.</p>
    #          <p>Because dataset imports are not aggregated, your most recent dataset import is the one
    #       that is used when training a predictor or generating a forecast. Make sure that your most
    #       recent dataset import contains all of the data you want to model off of, and not just the new
    #       data collected since the previous import.</p>
    #          <p>To get a list of all your dataset import jobs, filtered by specified criteria, use the
    #         <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetImportJobs.html">ListDatasetImportJobs</a> operation.</p>
    # @param [Hash, Types::CreateDatasetImportJobRequest] params
    # @option params [String] :dataset_import_job_name
    #   <p>The name for the dataset import job. We recommend including the current timestamp in the
    #         name, for example, <code>20190721DatasetImport</code>. This can help you avoid getting a
    #           <code>ResourceAlreadyExistsException</code> exception.</p>
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Forecast dataset that you want to import data
    #         to.</p>
    # @option params [Types::DataSource] :data_source
    #   <p>The location of the training data to import and an Identity and Access Management (IAM) role that Amazon Forecast
    #         can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p>
    #            <p>If encryption is used, <code>DataSource</code> must include an Key Management Service (KMS) key and the
    #         IAM role must allow Amazon Forecast permission to access the key. The KMS key and IAM role must
    #         match those specified in the <code>EncryptionConfig</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #         operation.</p>
    # @option params [String] :timestamp_format
    #   <p>The format of timestamps in the dataset. The format that you specify depends on the
    #           <code>DataFrequency</code> specified when the dataset was created. The following formats are
    #         supported</p>
    #            <ul>
    #               <li>
    #                  <p>"yyyy-MM-dd"</p>
    #                  <p>For the following data frequencies: Y, M, W, and D</p>
    #               </li>
    #               <li>
    #                  <p>"yyyy-MM-dd HH:mm:ss"</p>
    #                  <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y,
    #             M, W, and D</p>
    #               </li>
    #            </ul>
    #            <p>If the format isn't specified, Amazon Forecast expects the format to be "yyyy-MM-dd
    #         HH:mm:ss".</p>
    # @option params [String] :time_zone
    #   <p>A single time zone for every item in your dataset. This option is ideal for datasets
    #               with all timestamps within a single time zone, or if all timestamps are normalized to a
    #               single time zone. </p>
    #            <p>Refer to the <a href="http://joda-time.sourceforge.net/timezones.html">Joda-Time
    #                   API</a> for a complete list of valid time zone names.</p>
    # @option params [Boolean] :use_geolocation_for_time_zone
    #   <p>Automatically derive time zone information from the geolocation attribute. This option
    #               is ideal for datasets that contain timestamps in multiple time zones and those
    #               timestamps are expressed in local time.</p>
    # @option params [String] :geolocation_format
    #   <p>The format of the geolocation attribute. The geolocation attribute can be formatted in
    #               one of two ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAT_LONG</code> - the latitude and longitude in decimal format (Example: 47.61_-122.33).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CC_POSTALCODE</code> (US Only) - the country code (US), followed by the 5-digit ZIP code (Example: US_98121).</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The optional metadata that you apply to the dataset import job to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [String] :format
    #   <p>The format of the imported data, CSV or PARQUET. The default value is CSV.</p>
    # @option params [String] :import_mode
    #   <p>Specifies whether the dataset import job is a <code>FULL</code> or <code>INCREMENTAL</code> import. A <code>FULL</code> dataset import replaces all of the existing data with the newly imported data. An <code>INCREMENTAL</code> import appends the imported data to the existing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_import_job_name: "Name", # required
    #     dataset_arn: "Arn", # required
    #     data_source: { # required
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     timestamp_format: "TimestampFormat",
    #     time_zone: "TimeZone",
    #     use_geolocation_for_time_zone: false,
    #     geolocation_format: "GeolocationFormat",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     format: "Format",
    #     import_mode: "FULL" # One of: ["FULL", "INCREMENTAL"]
    #   }
    #   options = {}
    #   response = client.create_dataset_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_import_job_arn: "Arn"
    #   }
    # @return [Types::CreateDatasetImportJobResponse]
    def create_dataset_import_job(params = {}, options = {})
      request = build_request(:create_dataset_import_job, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Explainability is only available for Forecasts and Predictors generated from an
    #                 AutoPredictor (<a>CreateAutoPredictor</a>)</p>
    #          </note>
    #          <p>Creates an Amazon Forecast Explainability.</p>
    #          <p>Explainability helps you better understand how the attributes in your datasets impact
    #             forecast. Amazon Forecast uses a metric called Impact scores to quantify the relative
    #             impact of each attribute and determine whether they increase or decrease forecast
    #             values.</p>
    #          <p>To enable Forecast Explainability, your predictor must include at least one of the
    #             following: related time series, item metadata, or additional datasets like Holidays and
    #             the Weather Index.</p>
    #          <p>CreateExplainability accepts either a Predictor ARN or Forecast ARN. To receive
    #             aggregated Impact scores for all time series and time points in your datasets, provide a
    #             Predictor ARN. To receive Impact scores for specific time series and time points,
    #             provide a Forecast ARN.</p>
    #          <p>
    #             <b>CreateExplainability with a Predictor ARN</b>
    #          </p>
    #          <note>
    #             <p>You can only have one Explainability resource per predictor. If you already
    #                 enabled <code>ExplainPredictor</code> in <a>CreateAutoPredictor</a>, that
    #                 predictor already has an Explainability resource.</p>
    #          </note>
    #          <p>The following parameters are required when providing a Predictor ARN:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ExplainabilityName</code> - A unique name for the Explainability.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ResourceArn</code> - The Arn of the predictor.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TimePointGranularity</code> - Must be set to “ALL”.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TimeSeriesGranularity</code> - Must be set to “ALL”.</p>
    #             </li>
    #          </ul>
    #          <p>Do not specify a value for the following parameters:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DataSource</code> - Only valid when TimeSeriesGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Schema</code> - Only valid when TimeSeriesGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StartDateTime</code> - Only valid when TimePointGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EndDateTime</code> - Only valid when TimePointGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>CreateExplainability with a Forecast ARN</b>
    #          </p>
    #          <note>
    #             <p>You can specify a maximum of 50 time series and 500 time points.</p>
    #          </note>
    #          <p>The following parameters are required when providing a Predictor ARN:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ExplainabilityName</code> - A unique name for the Explainability.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ResourceArn</code> - The Arn of the forecast.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TimePointGranularity</code> - Either “ALL” or “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TimeSeriesGranularity</code> - Either “ALL” or “SPECIFIC”.</p>
    #             </li>
    #          </ul>
    #          <p>If you set TimeSeriesGranularity to “SPECIFIC”, you must also provide the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DataSource</code> - The S3 location of the CSV file specifying your time
    #                     series.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Schema</code> - The Schema defines the attributes and attribute types
    #                     listed in the Data Source.</p>
    #             </li>
    #          </ul>
    #          <p>If you set TimePointGranularity to “SPECIFIC”, you must also provide the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>StartDateTime</code> - The first timestamp in the range of time
    #                     points.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EndDateTime</code> - The last timestamp in the range of time
    #                     points.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateExplainabilityRequest] params
    # @option params [String] :explainability_name
    #   <p>A unique name for the Explainability.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Predictor or Forecast used to create the
    #               Explainability.</p>
    # @option params [Types::ExplainabilityConfig] :explainability_config
    #   <p>The configuration settings that define the granularity of time series and time points
    #               for the Explainability.</p>
    # @option params [Types::DataSource] :data_source
    #   <p>The source of your data, an Identity and Access Management (IAM) role that allows Amazon Forecast to
    #         access the data and, optionally, an Key Management Service (KMS) key.</p>
    # @option params [Types::Schema] :schema
    #   <p>Defines the fields of a dataset.</p>
    # @option params [Boolean] :enable_visualization
    #   <p>Create an Explainability visualization that is viewable within the Amazon Web Services console.</p>
    # @option params [String] :start_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, define the first
    #               point for the Explainability.</p>
    #            <p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #               2015-01-01T20:00:00)</p>
    # @option params [String] :end_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, define the last
    #               time point for the Explainability.</p>
    #            <p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #               2015-01-01T20:00:00)</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your resources. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     explainability_name: "Name", # required
    #     resource_arn: "Arn", # required
    #     explainability_config: { # required
    #       time_series_granularity: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #       time_point_granularity: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #     },
    #     data_source: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     schema: {
    #       attributes: [
    #         {
    #           attribute_name: "Name",
    #           attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #         }
    #       ]
    #     },
    #     enable_visualization: false,
    #     start_date_time: "LocalDateTime",
    #     end_date_time: "LocalDateTime",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_explainability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     explainability_arn: "Arn"
    #   }
    # @return [Types::CreateExplainabilityResponse]
    def create_explainability(params = {}, options = {})
      request = build_request(:create_explainability, params)
      request.send_request(options)
    end

    # <p>Exports an Explainability resource created by the <a>CreateExplainability</a> operation. Exported files are exported to an Amazon Simple Storage Service (Amazon
    #             S3) bucket.</p>
    #          <p>You must specify a <a>DataDestination</a> object that includes an Amazon S3
    #             bucket and an Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
    #             bucket. For more information, see <a>aws-forecast-iam-roles</a>.</p>
    #          <note>
    #             <p>The <code>Status</code> of the export job must be <code>ACTIVE</code> before you
    #                 can access the export in your Amazon S3 bucket. To get the status, use the <a>DescribeExplainabilityExport</a> operation.</p>
    #          </note>
    # @param [Hash, Types::CreateExplainabilityExportRequest] params
    # @option params [String] :explainability_export_name
    #   <p>A unique name for the Explainability export.</p>
    # @option params [String] :explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability to export.</p>
    # @option params [Types::DataDestination] :destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your resources. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    # @option params [String] :format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     explainability_export_name: "Name", # required
    #     explainability_arn: "Arn", # required
    #     destination: { # required
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     format: "Format"
    #   }
    #   options = {}
    #   response = client.create_explainability_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     explainability_export_arn: "Arn"
    #   }
    # @return [Types::CreateExplainabilityExportResponse]
    def create_explainability_export(params = {}, options = {})
      request = build_request(:create_explainability_export, params)
      request.send_request(options)
    end

    # <p>Creates a forecast for each item in the <code>TARGET_TIME_SERIES</code> dataset that was
    #       used to train the predictor. This is known as inference. To retrieve the forecast for a single
    #       item at low latency, use the  operation. To
    #       export the complete forecast into your Amazon Simple Storage Service (Amazon S3) bucket, use the <a>CreateForecastExportJob</a> operation.</p>
    #          <p>The range of the forecast is determined by the <code>ForecastHorizon</code> value, which
    #       you specify in the <a>CreatePredictor</a> request. When you query a forecast, you
    #       can request a specific date range within the forecast.</p>
    #          <p>To get a list of all your forecasts, use the <a>ListForecasts</a>
    #       operation.</p>
    #          <note>
    #             <p>The forecasts generated by Amazon Forecast are in the same time zone as the dataset that was
    #         used to create the predictor.</p>
    #          </note>
    #          <p>For more information, see <a>howitworks-forecast</a>.</p>
    #          <note>
    #             <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query
    #         or export the forecast. Use the <a>DescribeForecast</a> operation to get the
    #         status.</p>
    #          </note>
    #          <p>By default, a forecast includes predictions for every item (<code>item_id</code>) in the dataset group that was used to train the predictor.
    #       However, you can use the <code>TimeSeriesSelector</code> object to generate a forecast on a subset of time series. Forecast creation is skipped for any time series that you specify that are not in the input dataset. The forecast export file will not contain these time series or their forecasted values.</p>
    # @param [Hash, Types::CreateForecastRequest] params
    # @option params [String] :forecast_name
    #   <p>A name for the forecast.</p>
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to use to generate the forecast.</p>
    # @option params [Array<String>] :forecast_types
    #   <p>The quantiles at which probabilistic forecasts are generated. <b>You
    #           can currently specify up to 5 quantiles per forecast</b>. Accepted values include
    #           <code>0.01 to 0.99</code> (increments of .01 only) and <code>mean</code>. The mean forecast
    #         is different from the median (0.50) when the distribution is not symmetric (for example, Beta
    #         and Negative Binomial).
    #         </p>
    #            <p>The default quantiles are the quantiles you specified during predictor creation.
    #         If you didn't specify quantiles, the default values are <code>["0.1", "0.5", "0.9"]</code>.
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The optional metadata that you apply to the forecast to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [Types::TimeSeriesSelector] :time_series_selector
    #   <p>Defines the set of time series that are used to create the forecasts in a <code>TimeSeriesIdentifiers</code> object.</p>
    #            <p>The <code>TimeSeriesIdentifiers</code> object needs the following information:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DataSource</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Format</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Schema</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     forecast_name: "Name", # required
    #     predictor_arn: "Arn", # required
    #     forecast_types: ["ForecastType"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     time_series_selector: {
    #       time_series_identifiers: {
    #         data_source: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         schema: {
    #           attributes: [
    #             {
    #               attribute_name: "Name",
    #               attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #             }
    #           ]
    #         },
    #         format: "Format"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     forecast_arn: "Arn"
    #   }
    # @return [Types::CreateForecastResponse]
    def create_forecast(params = {}, options = {})
      request = build_request(:create_forecast, params)
      request.send_request(options)
    end

    # <p>Exports a forecast created by the <a>CreateForecast</a> operation to your
    #       Amazon Simple Storage Service (Amazon S3) bucket. The forecast file name will match the following conventions:</p>
    #          <p><ForecastExportJobName>_<ExportTimestamp>_<PartNumber></p>
    #          <p>where the <ExportTimestamp> component is in Java SimpleDateFormat
    #       (yyyy-MM-ddTHH-mm-ssZ).</p>
    #          <p>You must specify a <a>DataDestination</a> object that includes an Identity and Access Management
    #       (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket. For more information, see
    #         <a>aws-forecast-iam-roles</a>.</p>
    #          <p>For more information, see <a>howitworks-forecast</a>.</p>
    #          <p>To get a list of all your forecast export jobs, use the <a>ListForecastExportJobs</a> operation.</p>
    #          <note>
    #             <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before
    #         you can access the forecast in your Amazon S3 bucket. To get the status, use the <a>DescribeForecastExportJob</a> operation.</p>
    #          </note>
    # @param [Hash, Types::CreateForecastExportJobRequest] params
    # @option params [String] :forecast_export_job_name
    #   <p>The name for the forecast export job.</p>
    # @option params [String] :forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast that you want to export.</p>
    # @option params [Types::DataDestination] :destination
    #   <p>The location where you want to save the forecast and an Identity and Access Management (IAM) role that
    #         Amazon Forecast can assume to access the location. The forecast must be exported to an Amazon S3
    #         bucket.</p>
    #            <p>If encryption is used, <code>Destination</code> must include an Key Management Service (KMS) key. The
    #         IAM role must allow Amazon Forecast permission to access the key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The optional metadata that you apply to the forecast export job to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [String] :format
    #   <p>The format of the exported data, CSV or PARQUET. The default value is CSV.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     forecast_export_job_name: "Name", # required
    #     forecast_arn: "Arn", # required
    #     destination: { # required
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     format: "Format"
    #   }
    #   options = {}
    #   response = client.create_forecast_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     forecast_export_job_arn: "Arn"
    #   }
    # @return [Types::CreateForecastExportJobResponse]
    def create_forecast_export_job(params = {}, options = {})
      request = build_request(:create_forecast_export_job, params)
      request.send_request(options)
    end

    # <p>Creates a predictor monitor resource for an existing auto predictor. Predictor monitoring allows you to see how your predictor's performance changes over time.
    #            For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html">Predictor Monitoring</a>.
    #        </p>
    # @param [Hash, Types::CreateMonitorRequest] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor resource.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to monitor.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the monitor resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "Name", # required
    #     resource_arn: "Arn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "Arn"
    #   }
    # @return [Types::CreateMonitorResponse]
    def create_monitor(params = {}, options = {})
      request = build_request(:create_monitor, params)
      request.send_request(options)
    end

    # <note>
    #             <p> This operation creates a legacy predictor that does not include all the predictor
    #         functionalities provided by Amazon Forecast. To create a predictor that is compatible with all
    #         aspects of Forecast, use <a>CreateAutoPredictor</a>.</p>
    #          </note>
    #          <p>Creates an Amazon Forecast predictor.</p>
    #          <p>In the request, provide a dataset group and either specify an algorithm or let Amazon Forecast
    #       choose an algorithm for you using AutoML. If you specify an algorithm, you also can override
    #       algorithm-specific hyperparameters.</p>
    #          <p>Amazon Forecast uses the algorithm to train a predictor using the latest version of the datasets
    #       in the specified dataset group. You can then generate a forecast using the <a>CreateForecast</a> operation.</p>
    #          <p> To see the evaluation metrics, use the <a>GetAccuracyMetrics</a> operation. </p>
    #          <p>You can specify a featurization configuration to fill and aggregate the data fields in the
    #         <code>TARGET_TIME_SERIES</code> dataset to improve model training. For more information, see
    #         <a>FeaturizationConfig</a>.</p>
    #          <p>For RELATED_TIME_SERIES datasets, <code>CreatePredictor</code> verifies that the
    #         <code>DataFrequency</code> specified when the dataset was created matches the
    #         <code>ForecastFrequency</code>. TARGET_TIME_SERIES datasets don't have this restriction.
    #       Amazon Forecast also verifies the delimiter and timestamp format. For more information, see <a>howitworks-datasets-groups</a>.</p>
    #          <p>By default, predictors are trained and evaluated at the 0.1 (P10), 0.5 (P50), and 0.9
    #       (P90) quantiles. You can choose custom forecast types to train and evaluate your predictor by
    #       setting the <code>ForecastTypes</code>. </p>
    #          <p>
    #             <b>AutoML</b>
    #          </p>
    #          <p>If you want Amazon Forecast to evaluate each algorithm and choose the one that minimizes the
    #         <code>objective function</code>, set <code>PerformAutoML</code> to <code>true</code>. The
    #         <code>objective function</code> is defined as the mean of the weighted losses over the
    #       forecast types. By default, these are the p10, p50, and p90 quantile losses. For more
    #       information, see <a>EvaluationResult</a>.</p>
    #          <p>When AutoML is enabled, the following properties are disallowed:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AlgorithmArn</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HPOConfig</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PerformHPO</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TrainingParameters</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>To get a list of all of your predictors, use the <a>ListPredictors</a>
    #       operation.</p>
    #          <note>
    #             <p>Before you can use the predictor to create a forecast, the <code>Status</code> of the
    #         predictor must be <code>ACTIVE</code>, signifying that training has completed. To get the
    #         status, use the <a>DescribePredictor</a> operation.</p>
    #          </note>
    # @param [Hash, Types::CreatePredictorRequest] params
    # @option params [String] :predictor_name
    #   <p>A name for the predictor.</p>
    # @option params [String] :algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm to use for model training. Required if
    #           <code>PerformAutoML</code> is not set to <code>true</code>.</p>
    #            <p class="title">
    #               <b>Supported algorithms:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/ARIMA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/CNN-QR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/Deep_AR_Plus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/ETS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/NPTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/Prophet</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :forecast_horizon
    #   <p>Specifies the number of time-steps that the model is trained to predict. The forecast
    #         horizon is also called the prediction length.</p>
    #            <p>For example, if you configure a dataset for daily data collection (using the
    #           <code>DataFrequency</code> parameter of the <a>CreateDataset</a> operation) and
    #         set the forecast horizon to 10, the model returns predictions for 10 days.</p>
    #            <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
    #         TARGET_TIME_SERIES dataset length.</p>
    # @option params [Array<String>] :forecast_types
    #   <p>Specifies the forecast types used to train a predictor. You can specify up to five
    #         forecast types. Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or
    #         higher. You can also specify the mean forecast with <code>mean</code>. </p>
    #            <p>The default value is <code>["0.10", "0.50", "0.9"]</code>.</p>
    # @option params [Boolean] :perform_auto_ml
    #   <p>Whether to perform AutoML. When Amazon Forecast performs AutoML, it evaluates the algorithms it
    #         provides and chooses the best algorithm and configuration for your training dataset.</p>
    #            <p>The default value is <code>false</code>. In this case, you are required to specify an
    #         algorithm.</p>
    #            <p>Set <code>PerformAutoML</code> to <code>true</code> to have Amazon Forecast perform AutoML. This
    #         is a good option if you aren't sure which algorithm is suitable for your training data. In
    #         this case, <code>PerformHPO</code> must be false.</p>
    # @option params [String] :auto_ml_override_strategy
    #   <note>
    #               <p> The <code>LatencyOptimized</code> AutoML override strategy is only available in private beta.
    #                   Contact Amazon Web Services Support or your account manager to learn more about access privileges.
    #               </p>
    #            </note>
    #            <p>Used to overide the default AutoML strategy, which is to optimize predictor accuracy.
    #               To apply an AutoML strategy that minimizes training time, use
    #                   <code>LatencyOptimized</code>.</p>
    #            <p>This parameter is only valid for predictors trained using AutoML.</p>
    # @option params [Boolean] :perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO). HPO finds optimal hyperparameter
    #         values for your training data. The process of performing HPO is known as running a
    #         hyperparameter tuning job.</p>
    #            <p>The default value is <code>false</code>. In this case, Amazon Forecast uses default
    #         hyperparameter values from the chosen algorithm.</p>
    #            <p>To override the default values, set <code>PerformHPO</code> to <code>true</code> and,
    #         optionally, supply the <a>HyperParameterTuningJobConfig</a> object. The tuning job
    #         specifies a metric to optimize, which hyperparameters participate in tuning, and the valid
    #         range for each tunable hyperparameter. In this case, you are required to specify an algorithm
    #         and <code>PerformAutoML</code> must be false.</p>
    #            <p>The following algorithms support HPO:</p>
    #            <ul>
    #               <li>
    #                  <p>DeepAR+</p>
    #               </li>
    #               <li>
    #                  <p>CNN-QR</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :training_parameters
    #   <p>The hyperparameters to override for model training. The hyperparameters that you can
    #         override are listed in the individual algorithms. For the list of supported algorithms, see
    #           <a>aws-forecast-choosing-recipes</a>.</p>
    # @option params [Types::EvaluationParameters] :evaluation_parameters
    #   <p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast
    #         evaluates a predictor by splitting a dataset into training data and testing data. The
    #         evaluation parameters define how to perform the split and the number of iterations.</p>
    # @option params [Types::HyperParameterTuningJobConfig] :hpo_config
    #   <p>Provides hyperparameter override values for the algorithm. If you don't provide this
    #         parameter, Amazon Forecast uses default values. The individual algorithms specify which
    #         hyperparameters support hyperparameter optimization (HPO). For more information, see <a>aws-forecast-choosing-recipes</a>.</p>
    #            <p>If you included the <code>HPOConfig</code> object, you must set <code>PerformHPO</code> to
    #         true.</p>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Describes the dataset group that contains the data to use to train the predictor.</p>
    # @option params [Types::FeaturizationConfig] :featurization_config
    #   <p>The featurization configuration.</p>
    # @option params [Types::EncryptionConfig] :encryption_config
    #   <p>An Key Management Service (KMS) key and the Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The optional metadata that you apply to the predictor to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [String] :optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_name: "Name", # required
    #     algorithm_arn: "Arn",
    #     forecast_horizon: 1, # required
    #     forecast_types: ["ForecastType"],
    #     perform_auto_ml: false,
    #     auto_ml_override_strategy: "LatencyOptimized" # One of: ["LatencyOptimized", "AccuracyOptimized"],
    #     perform_hpo: false,
    #     training_parameters: {
    #       "ParameterKey" => "ParameterValue"
    #     },
    #     evaluation_parameters: {
    #       number_of_backtest_windows: 1,
    #       back_test_window_offset: 1
    #     },
    #     hpo_config: {
    #       parameter_ranges: {
    #         categorical_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             values: ["Value"], # required
    #           }
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1.0, # required
    #             min_value: 1.0, # required
    #             scaling_type: "Auto" # One of: ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #           }
    #         ],
    #         integer_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1, # required
    #             min_value: 1, # required
    #             scaling_type: "Auto" # One of: ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #           }
    #         ]
    #       }
    #     },
    #     input_data_config: { # required
    #       dataset_group_arn: "Arn", # required
    #       supplementary_features: [
    #         {
    #           name: "Name", # required
    #           value: "Value", # required
    #         }
    #       ]
    #     },
    #     featurization_config: { # required
    #       forecast_frequency: "Frequency", # required
    #       forecast_dimensions: ["Name"],
    #       featurizations: [
    #         {
    #           attribute_name: "Name", # required
    #           featurization_pipeline: [
    #             {
    #               featurization_method_name: "filling" # One of: ["filling"], # required
    #               featurization_method_parameters: {
    #                 "ParameterKey" => "ParameterValue"
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     optimization_metric: "WAPE" # One of: ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #   }
    #   options = {}
    #   response = client.create_predictor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_arn: "Arn"
    #   }
    # @return [Types::CreatePredictorResponse]
    def create_predictor(params = {}, options = {})
      request = build_request(:create_predictor, params)
      request.send_request(options)
    end

    # <p>Exports backtest forecasts and accuracy metrics generated by the <a>CreateAutoPredictor</a> or <a>CreatePredictor</a> operations. Two
    #             folders containing CSV or Parquet files are exported to your specified S3 bucket.</p>
    #          <p> The export file names will match the following conventions:</p>
    #          <p>
    #             <code><ExportJobName>_<ExportTimestamp>_<PartNumber>.csv</code>
    #          </p>
    #          <p>The <ExportTimestamp> component is in Java SimpleDate format
    #             (yyyy-MM-ddTHH-mm-ssZ).</p>
    #          <p>You must specify a <a>DataDestination</a> object that includes an Amazon S3
    #             bucket and an Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
    #             bucket. For more information, see <a>aws-forecast-iam-roles</a>.</p>
    #          <note>
    #             <p>The <code>Status</code> of the export job must be <code>ACTIVE</code> before you
    #                 can access the export in your Amazon S3 bucket. To get the status, use the <a>DescribePredictorBacktestExportJob</a> operation.</p>
    #          </note>
    # @param [Hash, Types::CreatePredictorBacktestExportJobRequest] params
    # @option params [String] :predictor_backtest_export_job_name
    #   <p>The name for the backtest export job.</p>
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor that you want to export.</p>
    # @option params [Types::DataDestination] :destination
    #   <p>The destination for an export job. Provide an S3 path, an Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an Key Management Service (KMS) key (optional). </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your backtests. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                  <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    # @option params [String] :format
    #   <p>The format of the exported data, CSV or PARQUET. The default value is CSV.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_backtest_export_job_name: "Name", # required
    #     predictor_arn: "Arn", # required
    #     destination: { # required
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     format: "Format"
    #   }
    #   options = {}
    #   response = client.create_predictor_backtest_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_backtest_export_job_arn: "Arn"
    #   }
    # @return [Types::CreatePredictorBacktestExportJobResponse]
    def create_predictor_backtest_export_job(params = {}, options = {})
      request = build_request(:create_predictor_backtest_export_job, params)
      request.send_request(options)
    end

    # <p>What-if analysis is a scenario modeling technique where you make a hypothetical change to a time series and
    #       compare the forecasts generated by these changes against the baseline, unchanged time series. It is important to
    #       remember that the purpose of a what-if analysis is to understand how a forecast can change given different
    #       modifications to the baseline time series.</p>
    #          <p>For example, imagine you are a clothing retailer who is considering an end of season sale
    #       to clear space for new styles. After creating a baseline forecast, you can use a what-if
    #       analysis to investigate how different sales tactics might affect your goals.</p>
    #          <p>You could create a scenario where everything is given a 25% markdown, and another where
    #       everything is given a fixed dollar markdown. You could create a scenario where the sale lasts for one week and
    #       another where the sale lasts for one month.
    #       With a what-if analysis, you can compare many different scenarios against each other.</p>
    #          <p>Note that a what-if analysis is meant to display what the forecasting model has learned and how it will behave in the scenarios that you are evaluating. Do not blindly use the results of the what-if analysis to make business decisions. For instance, forecasts might not be accurate for novel scenarios where there is no reference available to determine whether a forecast is good.</p>
    #          <p>The <a>TimeSeriesSelector</a> object defines the items that you want in the what-if analysis.</p>
    # @param [Hash, Types::CreateWhatIfAnalysisRequest] params
    # @option params [String] :what_if_analysis_name
    #   <p>The name of the what-if analysis. Each name must be unique.</p>
    # @option params [String] :forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the baseline forecast.</p>
    # @option params [Types::TimeSeriesSelector] :time_series_selector
    #   <p>Defines the set of time series that are used in the what-if analysis with a <code>TimeSeriesIdentifiers</code>
    #         object. What-if analyses are performed only for the time series in this object.</p>
    #            <p>The <code>TimeSeriesIdentifiers</code> object needs the following information:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DataSource</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Format</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Schema</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the what if forecast.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_analysis_name: "Name", # required
    #     forecast_arn: "Arn", # required
    #     time_series_selector: {
    #       time_series_identifiers: {
    #         data_source: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         schema: {
    #           attributes: [
    #             {
    #               attribute_name: "Name",
    #               attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #             }
    #           ]
    #         },
    #         format: "Format"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_what_if_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_analysis_arn: "Arn"
    #   }
    # @return [Types::CreateWhatIfAnalysisResponse]
    def create_what_if_analysis(params = {}, options = {})
      request = build_request(:create_what_if_analysis, params)
      request.send_request(options)
    end

    # <p>A what-if forecast is a forecast that is created from a modified version of the baseline forecast. Each
    #       what-if forecast incorporates either a replacement dataset or a set of transformations to the original dataset. </p>
    # @param [Hash, Types::CreateWhatIfForecastRequest] params
    # @option params [String] :what_if_forecast_name
    #   <p>The name of the what-if forecast. Names must be unique within each what-if analysis.</p>
    # @option params [String] :what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis.</p>
    # @option params [Array<Types::TimeSeriesTransformation>] :time_series_transformations
    #   <p>The transformations that are applied to the baseline time series. Each transformation contains an action and a set of conditions. An action is applied only when all conditions are met. If no conditions are provided, the action is applied to all items.</p>
    # @option params [Types::TimeSeriesReplacementsDataSource] :time_series_replacements_data_source
    #   <p>The replacement time series dataset, which contains the rows that you want to change in the related time
    #         series dataset. A replacement time series does not need to contain all rows that are in the baseline related time
    #         series. Include only the rows (measure-dimension combinations) that you want to include in the what-if
    #         forecast.</p>
    #            <p>This dataset is merged with the
    #         original time series to create a transformed dataset that is used for the what-if analysis.</p>
    #            <p>This dataset should contain the items to modify (such as item_id or workforce_type), any relevant dimensions, the timestamp column, and at least one of the related time series columns. This file should not contain duplicate timestamps for the same time series.</p>
    #            <p>Timestamps and item_ids not included in this dataset are not included in the what-if analysis. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the what if forecast.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_forecast_name: "Name", # required
    #     what_if_analysis_arn: "Arn", # required
    #     time_series_transformations: [
    #       {
    #         action: {
    #           attribute_name: "Name", # required
    #           operation: "ADD" # One of: ["ADD", "SUBTRACT", "MULTIPLY", "DIVIDE"], # required
    #           value: 1.0, # required
    #         },
    #         time_series_conditions: [
    #           {
    #             attribute_name: "Name", # required
    #             attribute_value: "AttributeValue", # required
    #             condition: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     time_series_replacements_data_source: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       },
    #       schema: { # required
    #         attributes: [
    #           {
    #             attribute_name: "Name",
    #             attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #           }
    #         ]
    #       },
    #       format: "Format",
    #       timestamp_format: "TimestampFormat"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_what_if_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_forecast_arn: "LongArn"
    #   }
    # @return [Types::CreateWhatIfForecastResponse]
    def create_what_if_forecast(params = {}, options = {})
      request = build_request(:create_what_if_forecast, params)
      request.send_request(options)
    end

    # <p>Exports a forecast created by the <a>CreateWhatIfForecast</a> operation to your
    #       Amazon Simple Storage Service (Amazon S3) bucket. The forecast file name will match the following conventions:</p>
    #          <p>
    #             <code>≈<ForecastExportJobName>_<ExportTimestamp>_<PartNumber></code>
    #          </p>
    #          <p>The <ExportTimestamp> component is in Java SimpleDateFormat
    #       (yyyy-MM-ddTHH-mm-ssZ).</p>
    #          <p>You must specify a <a>DataDestination</a> object that includes an Identity and Access Management
    #       (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket. For more information, see
    #       <a>aws-forecast-iam-roles</a>.</p>
    #          <p>For more information, see <a>howitworks-forecast</a>.</p>
    #          <p>To get a list of all your what-if forecast export jobs, use the <a>ListWhatIfForecastExports</a>
    #       operation.</p>
    #          <note>
    #             <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before
    #         you can access the forecast in your Amazon S3 bucket. To get the status, use the <a>DescribeWhatIfForecastExport</a> operation.</p>
    #          </note>
    # @param [Hash, Types::CreateWhatIfForecastExportRequest] params
    # @option params [String] :what_if_forecast_export_name
    #   <p>The name of the what-if forecast to export.</p>
    # @option params [Array<String>] :what_if_forecast_arns
    #   <p>The list of what-if forecast Amazon Resource Names (ARNs) to export.</p>
    # @option params [Types::DataDestination] :destination
    #   <p>The location where you want to save the forecast and an Identity and Access Management (IAM) role that
    #         Amazon Forecast can assume to access the location. The forecast must be exported to an Amazon S3
    #         bucket.</p>
    #            <p>If encryption is used, <code>Destination</code> must include an Key Management Service (KMS) key. The
    #         IAM role must allow Amazon Forecast permission to access the key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the what if forecast.</p>
    # @option params [String] :format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_forecast_export_name: "Name", # required
    #     what_if_forecast_arns: ["LongArn"], # required
    #     destination: { # required
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     format: "Format"
    #   }
    #   options = {}
    #   response = client.create_what_if_forecast_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_forecast_export_arn: "LongArn"
    #   }
    # @return [Types::CreateWhatIfForecastExportResponse]
    def create_what_if_forecast_export(params = {}, options = {})
      request = build_request(:create_what_if_forecast_export, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Forecast dataset that was created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a> operation. You can
    #       only delete datasets that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>.
    #       To get the status use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html">DescribeDataset</a> operation.</p>
    #          <note>
    #             <p>Forecast does not automatically update any dataset groups that contain the deleted dataset.
    #         In order to update the dataset group, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html">UpdateDatasetGroup</a> operation,
    #         omitting the deleted dataset's ARN.</p>
    #          </note>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes a dataset group created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a> operation.
    #       You can only delete dataset groups that have a status of <code>ACTIVE</code>,
    #         <code>CREATE_FAILED</code>, or <code>UPDATE_FAILED</code>. To get the status, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a> operation.</p>
    #          <p>This operation deletes only the dataset group, not the datasets in the group.</p>
    # @param [Hash, Types::DeleteDatasetGroupRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_dataset_group(params = {}, options = {})
      request = build_request(:delete_dataset_group, params)
      request.send_request(options)
    end

    # <p>Deletes a dataset import job created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>
    #       operation. You can delete only dataset import jobs that have a status of <code>ACTIVE</code>
    #       or <code>CREATE_FAILED</code>. To get the status, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>
    #       operation.</p>
    # @param [Hash, Types::DeleteDatasetImportJobRequest] params
    # @option params [String] :dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_import_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_dataset_import_job(params = {}, options = {})
      request = build_request(:delete_dataset_import_job, params)
      request.send_request(options)
    end

    # <p>Deletes an Explainability resource.</p>
    #          <p>You can delete only predictor that have a status of <code>ACTIVE</code> or
    #                 <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeExplainability</a> operation.</p>
    # @param [Hash, Types::DeleteExplainabilityRequest] params
    # @option params [String] :explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     explainability_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_explainability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_explainability(params = {}, options = {})
      request = build_request(:delete_explainability, params)
      request.send_request(options)
    end

    # <p>Deletes an Explainability export.</p>
    # @param [Hash, Types::DeleteExplainabilityExportRequest] params
    # @option params [String] :explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     explainability_export_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_explainability_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_explainability_export(params = {}, options = {})
      request = build_request(:delete_explainability_export, params)
      request.send_request(options)
    end

    # <p>Deletes a forecast created using the <a>CreateForecast</a> operation. You can
    #       delete only forecasts that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>.
    #       To get the status, use the <a>DescribeForecast</a> operation.</p>
    #          <p>You can't delete a forecast while it is being exported. After a forecast is deleted, you
    #       can no longer query the forecast.</p>
    # @param [Hash, Types::DeleteForecastRequest] params
    # @option params [String] :forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     forecast_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_forecast(params = {}, options = {})
      request = build_request(:delete_forecast, params)
      request.send_request(options)
    end

    # <p>Deletes a forecast export job created using the <a>CreateForecastExportJob</a>
    #       operation. You can delete only export jobs that have a status of <code>ACTIVE</code> or
    #         <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeForecastExportJob</a> operation.</p>
    # @param [Hash, Types::DeleteForecastExportJobRequest] params
    # @option params [String] :forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast export job to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     forecast_export_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_forecast_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_forecast_export_job(params = {}, options = {})
      request = build_request(:delete_forecast_export_job, params)
      request.send_request(options)
    end

    # <p>Deletes a monitor resource. You can only delete a monitor resource with a status of <code>ACTIVE</code>, <code>ACTIVE_STOPPED</code>, <code>CREATE_FAILED</code>, or <code>CREATE_STOPPED</code>.</p>
    # @param [Hash, Types::DeleteMonitorRequest] params
    # @option params [String] :monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_monitor(params = {}, options = {})
      request = build_request(:delete_monitor, params)
      request.send_request(options)
    end

    # <p>Deletes a predictor created using the <a>DescribePredictor</a> or <a>CreatePredictor</a> operations. You can delete only predictor that have a status of
    #         <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribePredictor</a> operation.</p>
    # @param [Hash, Types::DeletePredictorRequest] params
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_predictor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_predictor(params = {}, options = {})
      request = build_request(:delete_predictor, params)
      request.send_request(options)
    end

    # <p>Deletes a predictor backtest export job.</p>
    # @param [Hash, Types::DeletePredictorBacktestExportJobRequest] params
    # @option params [String] :predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_backtest_export_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_predictor_backtest_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_predictor_backtest_export_job(params = {}, options = {})
      request = build_request(:delete_predictor_backtest_export_job, params)
      request.send_request(options)
    end

    # <p>Deletes an entire resource tree. This operation will delete the parent resource and
    #             its child resources.</p>
    #          <p>Child resources are resources that were created from another resource. For example,
    #             when a forecast is generated from a predictor, the forecast is the child resource and
    #             the predictor is the parent resource.</p>
    #          <p>Amazon Forecast resources possess the following parent-child resource hierarchies:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Dataset</b>: dataset import jobs</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Dataset Group</b>: predictors, predictor backtest
    #                     export jobs, forecasts, forecast export jobs</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Predictor</b>: predictor backtest export jobs,
    #                     forecasts, forecast export jobs</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Forecast</b>: forecast export jobs</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>
    #                <code>DeleteResourceTree</code> will only delete Amazon Forecast resources, and will not
    #                 delete datasets or exported files stored in Amazon S3. </p>
    #          </note>
    # @param [Hash, Types::DeleteResourceTreeRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the parent resource to delete. All child resources
    #               of the parent resource will also be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_tree(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_tree(params = {}, options = {})
      request = build_request(:delete_resource_tree, params)
      request.send_request(options)
    end

    # <p>Deletes a what-if analysis created using the <a>CreateWhatIfAnalysis</a>
    #       operation. You can delete only what-if analyses that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeWhatIfAnalysis</a> operation. </p>
    #          <p>You can't delete a what-if analysis while any of its forecasts are being exported.</p>
    # @param [Hash, Types::DeleteWhatIfAnalysisRequest] params
    # @option params [String] :what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_analysis_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_what_if_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_what_if_analysis(params = {}, options = {})
      request = build_request(:delete_what_if_analysis, params)
      request.send_request(options)
    end

    # <p>Deletes a what-if forecast created using the <a>CreateWhatIfForecast</a>
    #       operation. You can delete only what-if forecasts that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeWhatIfForecast</a> operation. </p>
    #          <p>You can't delete a what-if forecast while it is being exported. After a what-if forecast is deleted, you can no longer query the what-if analysis.</p>
    # @param [Hash, Types::DeleteWhatIfForecastRequest] params
    # @option params [String] :what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_forecast_arn: "LongArn", # required
    #   }
    #   options = {}
    #   response = client.delete_what_if_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_what_if_forecast(params = {}, options = {})
      request = build_request(:delete_what_if_forecast, params)
      request.send_request(options)
    end

    # <p>Deletes a what-if forecast export created using the <a>CreateWhatIfForecastExport</a>
    #       operation. You can delete only what-if forecast exports that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeWhatIfForecastExport</a> operation. </p>
    # @param [Hash, Types::DeleteWhatIfForecastExportRequest] params
    # @option params [String] :what_if_forecast_export_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast export that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_forecast_export_arn: "LongArn", # required
    #   }
    #   options = {}
    #   response = client.delete_what_if_forecast_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_what_if_forecast_export(params = {}, options = {})
      request = build_request(:delete_what_if_forecast_export, params)
      request.send_request(options)
    end

    # <p>Describes a predictor created using the CreateAutoPredictor operation.</p>
    # @param [Hash, Types::DescribeAutoPredictorRequest] params
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_auto_predictor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_arn: "Arn",
    #     predictor_name: "Name",
    #     forecast_horizon: 1,
    #     forecast_types: ["ForecastType"],
    #     forecast_frequency: "Frequency",
    #     forecast_dimensions: ["Name"],
    #     dataset_import_job_arns: ["Arn"],
    #     data_config: {
    #       dataset_group_arn: "Arn", # required
    #       attribute_configs: [
    #         {
    #           attribute_name: "Name", # required
    #           transformations: { # required
    #             "Name" => "Value"
    #           }
    #         }
    #       ],
    #       additional_datasets: [
    #         {
    #           name: "Name", # required
    #           configuration: {
    #             "Name" => ["Value"]
    #           }
    #         }
    #       ]
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
    #     },
    #     reference_predictor_summary: {
    #       arn: "Arn",
    #       state: "Active" # One of: ["Active", "Deleted"]
    #     },
    #     estimated_time_remaining_in_minutes: 1,
    #     status: "Status",
    #     message: "Message",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     optimization_metric: "WAPE" # One of: ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"],
    #     explainability_info: {
    #       explainability_arn: "Arn",
    #       status: "Status"
    #     },
    #     monitor_info: {
    #       monitor_arn: "Arn",
    #       status: "Status"
    #     },
    #     time_alignment_boundary: {
    #       month: "JANUARY" # One of: ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"],
    #       day_of_month: 1,
    #       day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"],
    #       hour: 1
    #     }
    #   }
    # @return [Types::DescribeAutoPredictorResponse]
    def describe_auto_predictor(params = {}, options = {})
      request = build_request(:describe_auto_predictor, params)
      request.send_request(options)
    end

    # <p>Describes an Amazon Forecast dataset created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a> operation.</p>
    #          <p>In addition to listing the parameters specified in the <code>CreateDataset</code> request,
    #       this operation includes the following dataset properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "Arn",
    #     dataset_name: "Name",
    #     domain: "RETAIL" # One of: ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"],
    #     dataset_type: "TARGET_TIME_SERIES" # One of: ["TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"],
    #     data_frequency: "Frequency",
    #     schema: {
    #       attributes: [
    #         {
    #           attribute_name: "Name",
    #           attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #         }
    #       ]
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
    #     },
    #     status: "Status",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Describes a dataset group created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>
    #       operation.</p>
    #          <p>In addition to listing the parameters provided in the <code>CreateDatasetGroup</code>
    #       request, this operation includes the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DatasetArns</code> - The datasets belonging to the group.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeDatasetGroupRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_group_name: "Name",
    #     dataset_group_arn: "Arn",
    #     dataset_arns: ["Arn"],
    #     domain: "RETAIL" # One of: ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"],
    #     status: "Status",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now
    #   }
    # @return [Types::DescribeDatasetGroupResponse]
    def describe_dataset_group(params = {}, options = {})
      request = build_request(:describe_dataset_group, params)
      request.send_request(options)
    end

    # <p>Describes a dataset import job created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>
    #       operation.</p>
    #          <p>In addition to listing the parameters provided in the <code>CreateDatasetImportJob</code>
    #       request, this operation includes the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataSize</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FieldStatistics</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeDatasetImportJobRequest] params
    # @option params [String] :dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_import_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_import_job_name: "Name",
    #     dataset_import_job_arn: "Arn",
    #     dataset_arn: "Arn",
    #     timestamp_format: "TimestampFormat",
    #     time_zone: "TimeZone",
    #     use_geolocation_for_time_zone: false,
    #     geolocation_format: "GeolocationFormat",
    #     data_source: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     estimated_time_remaining_in_minutes: 1,
    #     field_statistics: {
    #       "String" => {
    #         count: 1,
    #         count_distinct: 1,
    #         count_null: 1,
    #         count_nan: 1,
    #         min: "String",
    #         max: "String",
    #         avg: 1.0,
    #         stddev: 1.0,
    #         count_long: 1,
    #         count_distinct_long: 1,
    #         count_null_long: 1,
    #         count_nan_long: 1
    #       }
    #     },
    #     data_size: 1.0,
    #     status: "Status",
    #     message: "Message",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     format: "Format",
    #     import_mode: "FULL" # One of: ["FULL", "INCREMENTAL"]
    #   }
    # @return [Types::DescribeDatasetImportJobResponse]
    def describe_dataset_import_job(params = {}, options = {})
      request = build_request(:describe_dataset_import_job, params)
      request.send_request(options)
    end

    # <p>Describes an Explainability resource created using the <a>CreateExplainability</a> operation.</p>
    # @param [Hash, Types::DescribeExplainabilityRequest] params
    # @option params [String] :explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explaianability to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     explainability_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_explainability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     explainability_arn: "Arn",
    #     explainability_name: "Name",
    #     resource_arn: "Arn",
    #     explainability_config: {
    #       time_series_granularity: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #       time_point_granularity: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #     },
    #     enable_visualization: false,
    #     data_source: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     schema: {
    #       attributes: [
    #         {
    #           attribute_name: "Name",
    #           attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #         }
    #       ]
    #     },
    #     start_date_time: "LocalDateTime",
    #     end_date_time: "LocalDateTime",
    #     estimated_time_remaining_in_minutes: 1,
    #     message: "Message",
    #     status: "Status",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now
    #   }
    # @return [Types::DescribeExplainabilityResponse]
    def describe_explainability(params = {}, options = {})
      request = build_request(:describe_explainability, params)
      request.send_request(options)
    end

    # <p>Describes an Explainability export created using the <a>CreateExplainabilityExport</a> operation.</p>
    # @param [Hash, Types::DescribeExplainabilityExportRequest] params
    # @option params [String] :explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     explainability_export_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_explainability_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     explainability_export_arn: "Arn",
    #     explainability_export_name: "Name",
    #     explainability_arn: "Arn",
    #     destination: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     message: "Message",
    #     status: "Status",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     format: "Format"
    #   }
    # @return [Types::DescribeExplainabilityExportResponse]
    def describe_explainability_export(params = {}, options = {})
      request = build_request(:describe_explainability_export, params)
      request.send_request(options)
    end

    # <p>Describes a forecast created using the <a>CreateForecast</a> operation.</p>
    #          <p>In addition to listing the properties provided in the <code>CreateForecast</code> request,
    #       this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DatasetGroupArn</code> - The dataset group that provided the training
    #           data.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeForecastRequest] params
    # @option params [String] :forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     forecast_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     forecast_arn: "Arn",
    #     forecast_name: "Name",
    #     forecast_types: ["ForecastType"],
    #     predictor_arn: "Arn",
    #     dataset_group_arn: "Arn",
    #     estimated_time_remaining_in_minutes: 1,
    #     status: "String",
    #     message: "ErrorMessage",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     time_series_selector: {
    #       time_series_identifiers: {
    #         data_source: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         schema: {
    #           attributes: [
    #             {
    #               attribute_name: "Name",
    #               attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #             }
    #           ]
    #         },
    #         format: "Format"
    #       }
    #     }
    #   }
    # @return [Types::DescribeForecastResponse]
    def describe_forecast(params = {}, options = {})
      request = build_request(:describe_forecast, params)
      request.send_request(options)
    end

    # <p>Describes a forecast export job created using the <a>CreateForecastExportJob</a> operation.</p>
    #          <p>In addition to listing the properties provided by the user in the
    #         <code>CreateForecastExportJob</code> request, this operation lists the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeForecastExportJobRequest] params
    # @option params [String] :forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast export job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     forecast_export_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_forecast_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     forecast_export_job_arn: "Arn",
    #     forecast_export_job_name: "Name",
    #     forecast_arn: "Arn",
    #     destination: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     message: "Message",
    #     status: "Status",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     format: "Format"
    #   }
    # @return [Types::DescribeForecastExportJobResponse]
    def describe_forecast_export_job(params = {}, options = {})
      request = build_request(:describe_forecast_export_job, params)
      request.send_request(options)
    end

    # <p>Describes a monitor resource. In addition to listing the properties provided in the <a>CreateMonitor</a> request, this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Baseline</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastEvaluationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastEvaluationState</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeMonitorRequest] params
    # @option params [String] :monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_name: "Name",
    #     monitor_arn: "Arn",
    #     resource_arn: "Arn",
    #     status: "Status",
    #     last_evaluation_time: Time.now,
    #     last_evaluation_state: "EvaluationState",
    #     baseline: {
    #       predictor_baseline: {
    #         baseline_metrics: [
    #           {
    #             name: "Name",
    #             value: 1.0
    #           }
    #         ]
    #       }
    #     },
    #     message: "Message",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     estimated_evaluation_time_remaining_in_minutes: 1
    #   }
    # @return [Types::DescribeMonitorResponse]
    def describe_monitor(params = {}, options = {})
      request = build_request(:describe_monitor, params)
      request.send_request(options)
    end

    # <note>
    #             <p> This operation is only valid for legacy predictors created with CreatePredictor. If you
    #         are not using a legacy predictor, use <a>DescribeAutoPredictor</a>.</p>
    #          </note>
    #          <p>Describes a predictor created using the <a>CreatePredictor</a>
    #       operation.</p>
    #          <p>In addition to listing the properties provided in the <code>CreatePredictor</code>
    #       request, this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DatasetImportJobArns</code> - The dataset import jobs used to import training
    #           data.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutoMLAlgorithmArns</code> - If AutoML is performed, the algorithms that were
    #           evaluated.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribePredictorRequest] params
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor that you want information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_predictor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_arn: "Name",
    #     predictor_name: "Name",
    #     algorithm_arn: "Arn",
    #     auto_ml_algorithm_arns: ["Arn"],
    #     forecast_horizon: 1,
    #     forecast_types: ["ForecastType"],
    #     perform_auto_ml: false,
    #     auto_ml_override_strategy: "LatencyOptimized" # One of: ["LatencyOptimized", "AccuracyOptimized"],
    #     perform_hpo: false,
    #     training_parameters: {
    #       "ParameterKey" => "ParameterValue"
    #     },
    #     evaluation_parameters: {
    #       number_of_backtest_windows: 1,
    #       back_test_window_offset: 1
    #     },
    #     hpo_config: {
    #       parameter_ranges: {
    #         categorical_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             values: ["Value"], # required
    #           }
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1.0, # required
    #             min_value: 1.0, # required
    #             scaling_type: "Auto" # One of: ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #           }
    #         ],
    #         integer_parameter_ranges: [
    #           {
    #             name: "Name", # required
    #             max_value: 1, # required
    #             min_value: 1, # required
    #             scaling_type: "Auto" # One of: ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #           }
    #         ]
    #       }
    #     },
    #     input_data_config: {
    #       dataset_group_arn: "Arn", # required
    #       supplementary_features: [
    #         {
    #           name: "Name", # required
    #           value: "Value", # required
    #         }
    #       ]
    #     },
    #     featurization_config: {
    #       forecast_frequency: "Frequency", # required
    #       forecast_dimensions: ["Name"],
    #       featurizations: [
    #         {
    #           attribute_name: "Name", # required
    #           featurization_pipeline: [
    #             {
    #               featurization_method_name: "filling" # One of: ["filling"], # required
    #               featurization_method_parameters: {
    #                 "ParameterKey" => "ParameterValue"
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     encryption_config: {
    #       role_arn: "Arn", # required
    #       kms_key_arn: "KMSKeyArn", # required
    #     },
    #     predictor_execution_details: {
    #       predictor_executions: [
    #         {
    #           algorithm_arn: "Arn",
    #           test_windows: [
    #             {
    #               test_window_start: Time.now,
    #               test_window_end: Time.now,
    #               status: "Status",
    #               message: "ErrorMessage"
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     estimated_time_remaining_in_minutes: 1,
    #     is_auto_predictor: false,
    #     dataset_import_job_arns: ["Arn"],
    #     status: "Status",
    #     message: "Message",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     optimization_metric: "WAPE" # One of: ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #   }
    # @return [Types::DescribePredictorResponse]
    def describe_predictor(params = {}, options = {})
      request = build_request(:describe_predictor, params)
      request.send_request(options)
    end

    # <p>Describes a predictor backtest export job created using the <a>CreatePredictorBacktestExportJob</a> operation.</p>
    #          <p>In addition to listing the properties provided by the user in the
    #                 <code>CreatePredictorBacktestExportJob</code> request, this operation lists the
    #             following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> (if an error occurred)</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribePredictorBacktestExportJobRequest] params
    # @option params [String] :predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_backtest_export_job_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_predictor_backtest_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_backtest_export_job_arn: "Arn",
    #     predictor_backtest_export_job_name: "Name",
    #     predictor_arn: "Arn",
    #     destination: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     message: "Message",
    #     status: "Status",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     format: "Format"
    #   }
    # @return [Types::DescribePredictorBacktestExportJobResponse]
    def describe_predictor_backtest_export_job(params = {}, options = {})
      request = build_request(:describe_predictor_backtest_export_job, params)
      request.send_request(options)
    end

    # <p>Describes the what-if analysis created using the <a>CreateWhatIfAnalysis</a> operation.</p>
    #          <p>In addition to listing the properties provided in the <code>CreateWhatIfAnalysis</code> request, this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeWhatIfAnalysisRequest] params
    # @option params [String] :what_if_analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if analysis that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_analysis_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_what_if_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_analysis_name: "Name",
    #     what_if_analysis_arn: "Arn",
    #     forecast_arn: "Arn",
    #     estimated_time_remaining_in_minutes: 1,
    #     status: "String",
    #     message: "ErrorMessage",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     time_series_selector: {
    #       time_series_identifiers: {
    #         data_source: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         schema: {
    #           attributes: [
    #             {
    #               attribute_name: "Name",
    #               attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #             }
    #           ]
    #         },
    #         format: "Format"
    #       }
    #     }
    #   }
    # @return [Types::DescribeWhatIfAnalysisResponse]
    def describe_what_if_analysis(params = {}, options = {})
      request = build_request(:describe_what_if_analysis, params)
      request.send_request(options)
    end

    # <p>Describes the what-if forecast created using the <a>CreateWhatIfForecast</a> operation.</p>
    #          <p>In addition to listing the properties provided in the <code>CreateWhatIfForecast</code> request, this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeWhatIfForecastRequest] params
    # @option params [String] :what_if_forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_forecast_arn: "LongArn", # required
    #   }
    #   options = {}
    #   response = client.describe_what_if_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_forecast_name: "Name",
    #     what_if_forecast_arn: "LongArn",
    #     what_if_analysis_arn: "Arn",
    #     estimated_time_remaining_in_minutes: 1,
    #     status: "String",
    #     message: "ErrorMessage",
    #     creation_time: Time.now,
    #     last_modification_time: Time.now,
    #     time_series_transformations: [
    #       {
    #         action: {
    #           attribute_name: "Name", # required
    #           operation: "ADD" # One of: ["ADD", "SUBTRACT", "MULTIPLY", "DIVIDE"], # required
    #           value: 1.0, # required
    #         },
    #         time_series_conditions: [
    #           {
    #             attribute_name: "Name", # required
    #             attribute_value: "AttributeValue", # required
    #             condition: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     time_series_replacements_data_source: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       },
    #       schema: { # required
    #         attributes: [
    #           {
    #             attribute_name: "Name",
    #             attribute_type: "string" # One of: ["string", "integer", "float", "timestamp", "geolocation"]
    #           }
    #         ]
    #       },
    #       format: "Format",
    #       timestamp_format: "TimestampFormat"
    #     },
    #     forecast_types: ["ForecastType"]
    #   }
    # @return [Types::DescribeWhatIfForecastResponse]
    def describe_what_if_forecast(params = {}, options = {})
      request = build_request(:describe_what_if_forecast, params)
      request.send_request(options)
    end

    # <p>Describes the what-if forecast export created using the <a>CreateWhatIfForecastExport</a> operation.</p>
    #          <p>In addition to listing the properties provided in the <code>CreateWhatIfForecastExport</code> request, this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeWhatIfForecastExportRequest] params
    # @option params [String] :what_if_forecast_export_arn
    #   <p>The Amazon Resource Name (ARN) of the what-if forecast export that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     what_if_forecast_export_arn: "LongArn", # required
    #   }
    #   options = {}
    #   response = client.describe_what_if_forecast_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_forecast_export_arn: "LongArn",
    #     what_if_forecast_export_name: "Name",
    #     what_if_forecast_arns: ["LongArn"],
    #     destination: {
    #       s3_config: { # required
    #         path: "S3Path", # required
    #         role_arn: "Arn", # required
    #         kms_key_arn: "KMSKeyArn"
    #       }
    #     },
    #     message: "Message",
    #     status: "Status",
    #     creation_time: Time.now,
    #     estimated_time_remaining_in_minutes: 1,
    #     last_modification_time: Time.now,
    #     format: "Format"
    #   }
    # @return [Types::DescribeWhatIfForecastExportResponse]
    def describe_what_if_forecast_export(params = {}, options = {})
      request = build_request(:describe_what_if_forecast_export, params)
      request.send_request(options)
    end

    # <p>Provides metrics on the accuracy of the models that were trained by the <a>CreatePredictor</a> operation. Use metrics to see how well the model performed and
    #       to decide whether to use the predictor to generate a forecast. For more information, see
    #         <a href="https://docs.aws.amazon.com/forecast/latest/dg/metrics.html">Predictor
    #         Metrics</a>.</p>
    #          <p>This operation generates metrics for each backtest window that was evaluated. The number
    #       of backtest windows (<code>NumberOfBacktestWindows</code>) is specified using the <a>EvaluationParameters</a> object, which is optionally included in the
    #         <code>CreatePredictor</code> request. If <code>NumberOfBacktestWindows</code> isn't
    #       specified, the number defaults to one.</p>
    #          <p>The parameters of the <code>filling</code> method determine which items contribute to the
    #       metrics. If you want all items to contribute, specify <code>zero</code>. If you want only
    #       those items that have complete data in the range being evaluated to contribute, specify
    #         <code>nan</code>. For more information, see <a>FeaturizationMethod</a>.</p>
    #          <note>
    #             <p>Before you can get accuracy metrics, the <code>Status</code> of the predictor must be
    #           <code>ACTIVE</code>, signifying that training has completed. To get the status, use the
    #           <a>DescribePredictor</a> operation.</p>
    #          </note>
    # @param [Hash, Types::GetAccuracyMetricsRequest] params
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to get metrics for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     predictor_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_accuracy_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_evaluation_results: [
    #       {
    #         algorithm_arn: "Arn",
    #         test_windows: [
    #           {
    #             test_window_start: Time.now,
    #             test_window_end: Time.now,
    #             item_count: 1,
    #             evaluation_type: "SUMMARY" # One of: ["SUMMARY", "COMPUTED"],
    #             metrics: {
    #               rmse: 1.0,
    #               weighted_quantile_losses: [
    #                 {
    #                   quantile: 1.0,
    #                   loss_value: 1.0
    #                 }
    #               ],
    #               error_metrics: [
    #                 {
    #                   forecast_type: "ForecastType",
    #                   wape: 1.0,
    #                   rmse: 1.0,
    #                   mase: 1.0,
    #                   mape: 1.0
    #                 }
    #               ],
    #               average_weighted_quantile_loss: 1.0
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     is_auto_predictor: false,
    #     auto_ml_override_strategy: "LatencyOptimized" # One of: ["LatencyOptimized", "AccuracyOptimized"],
    #     optimization_metric: "WAPE" # One of: ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #   }
    # @return [Types::GetAccuracyMetricsResponse]
    def get_accuracy_metrics(params = {}, options = {})
      request = build_request(:get_accuracy_metrics, params)
      request.send_request(options)
    end

    # <p>Returns a list of dataset groups created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a> operation.
    #       For each dataset group, this operation returns a summary of its properties, including its
    #       Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the
    #       dataset group ARN with the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>
    #       operation.</p>
    # @param [Hash, Types::ListDatasetGroupsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dataset_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_groups: [
    #       {
    #         dataset_group_arn: "Arn",
    #         dataset_group_name: "Name",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetGroupsResponse]
    def list_dataset_groups(params = {}, options = {})
      request = build_request(:list_dataset_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of dataset import jobs created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>
    #       operation. For each import job, this operation returns a summary of its properties, including
    #       its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the
    #       ARN with the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>
    #       operation. You can filter the list by providing an array of <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html">Filter</a> objects.</p>
    # @param [Hash, Types::ListDatasetImportJobsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the datasets that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the datasets that match the statement, specify
    #               <code>IS</code>. To exclude matching datasets, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all dataset import jobs whose status is ACTIVE, you specify the
    #         following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" } ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_dataset_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_import_jobs: [
    #       {
    #         dataset_import_job_arn: "Arn",
    #         dataset_import_job_name: "Name",
    #         data_source: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now,
    #         import_mode: "FULL" # One of: ["FULL", "INCREMENTAL"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetImportJobsResponse]
    def list_dataset_import_jobs(params = {}, options = {})
      request = build_request(:list_dataset_import_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of datasets created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a> operation. For each
    #       dataset, a summary of its properties, including its Amazon Resource Name (ARN), is returned.
    #       To retrieve the complete set of properties, use the ARN with the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html">DescribeDataset</a> operation.</p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasets: [
    #       {
    #         dataset_arn: "Arn",
    #         dataset_name: "Name",
    #         dataset_type: "TARGET_TIME_SERIES" # One of: ["TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"],
    #         domain: "RETAIL" # One of: ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"],
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Returns a list of Explainability resources created using the <a>CreateExplainability</a> operation. This operation returns a summary for
    #             each Explainability. You can filter the list using an array of <a>Filter</a>
    #             objects.</p>
    #          <p>To retrieve the complete set of properties for a particular Explainability resource,
    #             use the ARN with the <a>DescribeExplainability</a> operation.</p>
    # @param [Hash, Types::ListExplainabilitiesRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items returned in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude the resources that match the statement from the list. The match
    #               statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>ResourceArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_explainabilities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     explainabilities: [
    #       {
    #         explainability_arn: "Arn",
    #         explainability_name: "Name",
    #         resource_arn: "Arn",
    #         explainability_config: {
    #           time_series_granularity: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #           time_point_granularity: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         },
    #         status: "Status",
    #         message: "Message",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExplainabilitiesResponse]
    def list_explainabilities(params = {}, options = {})
      request = build_request(:list_explainabilities, params)
      request.send_request(options)
    end

    # <p>Returns a list of Explainability exports created using the <a>CreateExplainabilityExport</a> operation. This operation returns a summary
    #             for each Explainability export. You can filter the list using an array of <a>Filter</a> objects.</p>
    #          <p>To retrieve the complete set of properties for a particular Explainability export, use
    #             the ARN with the <a>DescribeExplainability</a> operation.</p>
    # @param [Hash, Types::ListExplainabilityExportsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude resources that match the statement from the list. The match statement
    #               consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>ResourceArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_explainability_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     explainability_exports: [
    #       {
    #         explainability_export_arn: "Arn",
    #         explainability_export_name: "Name",
    #         destination: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExplainabilityExportsResponse]
    def list_explainability_exports(params = {}, options = {})
      request = build_request(:list_explainability_exports, params)
      request.send_request(options)
    end

    # <p>Returns a list of forecast export jobs created using the <a>CreateForecastExportJob</a> operation. For each forecast export job, this operation
    #       returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the
    #       complete set of properties, use the ARN with the <a>DescribeForecastExportJob</a>
    #       operation. You can filter the list using an array of <a>Filter</a> objects.</p>
    # @param [Hash, Types::ListForecastExportJobsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the forecast export jobs that match the statement from the list, respectively. The
    #         match statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
    #             specify <code>IS</code>. To exclude matching forecast export jobs, specify
    #               <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>ForecastArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #           <i>electricityforecast</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "ForecastArn", "Value":
    #           "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityforecast" } ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_forecast_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     forecast_export_jobs: [
    #       {
    #         forecast_export_job_arn: "Arn",
    #         forecast_export_job_name: "Name",
    #         destination: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListForecastExportJobsResponse]
    def list_forecast_export_jobs(params = {}, options = {})
      request = build_request(:list_forecast_export_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of forecasts created using the <a>CreateForecast</a> operation.
    #       For each forecast, this operation returns a summary of its properties, including its Amazon
    #       Resource Name (ARN). To retrieve the complete set of properties, specify the ARN with the
    #         <a>DescribeForecast</a> operation. You can filter the list using an array of
    #         <a>Filter</a> objects.</p>
    # @param [Hash, Types::ListForecastsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the forecasts that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the forecasts that match the statement, specify
    #               <code>IS</code>. To exclude matching forecasts, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetGroupArn</code>, <code>PredictorArn</code>, and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all forecasts whose status is not ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS_NOT", "Key": "Status", "Value": "ACTIVE" }
    #         ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_forecasts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     forecasts: [
    #       {
    #         forecast_arn: "Arn",
    #         forecast_name: "Name",
    #         predictor_arn: "String",
    #         created_using_auto_predictor: false,
    #         dataset_group_arn: "String",
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListForecastsResponse]
    def list_forecasts(params = {}, options = {})
      request = build_request(:list_forecasts, params)
      request.send_request(options)
    end

    # <p>Returns a list of the monitoring evaluation results and predictor events collected by
    #          the monitor resource during different windows of time.</p>
    #          <p>For information about monitoring see <a>predictor-monitoring</a>. For
    #          more information about retrieving monitoring results see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html">Viewing Monitoring Results</a>.</p>
    # @param [Hash, Types::ListMonitorEvaluationsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #            <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #            request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of monitoring results to return.</p>
    # @option params [String] :monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to get results from.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #            condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #            include or exclude the resources that match the statement from the list. The match
    #            statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                  <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. The only valid value is 
    #                  <code>EvaluationState</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match. Valid values are only <code>SUCCESS</code> or <code>FAILURE</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list only successful monitor evaluations, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "EvaluationState", "Value": "SUCCESS" } ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     monitor_arn: "Arn", # required
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_monitor_evaluations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     predictor_monitor_evaluations: [
    #       {
    #         resource_arn: "Arn",
    #         monitor_arn: "Arn",
    #         evaluation_time: Time.now,
    #         evaluation_state: "EvaluationState",
    #         window_start_datetime: Time.now,
    #         window_end_datetime: Time.now,
    #         predictor_event: {
    #           detail: "Detail",
    #           datetime: Time.now
    #         },
    #         monitor_data_source: {
    #           dataset_import_job_arn: "Arn",
    #           forecast_arn: "Arn",
    #           predictor_arn: "Arn"
    #         },
    #         metric_results: [
    #           {
    #             metric_name: "MetricName",
    #             metric_value: 1.0
    #           }
    #         ],
    #         num_items_evaluated: 1,
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::ListMonitorEvaluationsResponse]
    def list_monitor_evaluations(params = {}, options = {})
      request = build_request(:list_monitor_evaluations, params)
      request.send_request(options)
    end

    # <p>Returns a list of monitors created with the <a>CreateMonitor</a> operation and <a>CreateAutoPredictor</a> operation. For each monitor resource, this operation returns of a summary of its properties, including its Amazon Resource Name (ARN). You
    #          can retrieve a complete set of properties of a monitor resource by specify the monitor's ARN in the <a>DescribeMonitor</a> operation.</p>
    # @param [Hash, Types::ListMonitorsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #            <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #            request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of monitors to include in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #            condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #            include or exclude the resources that match the statement from the list. The match
    #            statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                  <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. The only valid value is 
    #                  <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all monitors who's status is ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" } ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_monitors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitors: [
    #       {
    #         monitor_arn: "Arn",
    #         monitor_name: "Name",
    #         resource_arn: "Arn",
    #         status: "Status",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMonitorsResponse]
    def list_monitors(params = {}, options = {})
      request = build_request(:list_monitors, params)
      request.send_request(options)
    end

    # <p>Returns a list of predictor backtest export jobs created using the <a>CreatePredictorBacktestExportJob</a> operation. This operation returns a
    #             summary for each backtest export job. You can filter the list using an array of <a>Filter</a> objects.</p>
    #          <p>To retrieve the complete set of properties for a particular backtest export job, use
    #             the ARN with the <a>DescribePredictorBacktestExportJob</a> operation.</p>
    # @param [Hash, Types::ListPredictorBacktestExportJobsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude the predictor backtest export jobs that match the statement from the
    #               list. The match statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>. To include the predictor backtest
    #                       export jobs that match the statement, specify <code>IS</code>. To exclude
    #                       matching predictor backtest export jobs, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>PredictorArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_predictor_backtest_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictor_backtest_export_jobs: [
    #       {
    #         predictor_backtest_export_job_arn: "Arn",
    #         predictor_backtest_export_job_name: "Name",
    #         destination: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPredictorBacktestExportJobsResponse]
    def list_predictor_backtest_export_jobs(params = {}, options = {})
      request = build_request(:list_predictor_backtest_export_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of predictors created using the <a>CreateAutoPredictor</a> or
    #         <a>CreatePredictor</a> operations. For each predictor, this operation returns a
    #       summary of its properties, including its Amazon Resource Name (ARN). </p>
    #          <p>You can retrieve the complete set of properties by using the ARN with the <a>DescribeAutoPredictor</a> and <a>DescribePredictor</a> operations. You
    #       can filter the list using an array of <a>Filter</a> objects.</p>
    # @param [Hash, Types::ListPredictorsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the predictors that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the predictors that match the statement, specify
    #               <code>IS</code>. To exclude matching predictors, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetGroupArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all predictors whose status is ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" }
    #         ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_predictors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predictors: [
    #       {
    #         predictor_arn: "Arn",
    #         predictor_name: "Name",
    #         dataset_group_arn: "Arn",
    #         is_auto_predictor: false,
    #         reference_predictor_summary: {
    #           arn: "Arn",
    #           state: "Active" # One of: ["Active", "Deleted"]
    #         },
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPredictorsResponse]
    def list_predictors(params = {}, options = {})
      request = build_request(:list_predictors, params)
      request.send_request(options)
    end

    # <p>Lists the tags for an Amazon Forecast resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Returns a list of what-if analyses created using the <a>CreateWhatIfAnalysis</a> operation. For each what-if analysis, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the what-if analysis ARN with the <a>DescribeWhatIfAnalysis</a> operation.</p>
    # @param [Hash, Types::ListWhatIfAnalysesRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #         <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either
    #           <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the what-if analysis jobs
    #         that match the statement from the list, respectively. The match statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the what-if analysis jobs that match the statement, specify <code>IS</code>.
    #             To exclude matching what-if analysis jobs, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>WhatIfAnalysisArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #           <i>electricityWhatIf</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "WhatIfAnalysisArn", "Value":
    #           "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityWhatIf" } ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_what_if_analyses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_analyses: [
    #       {
    #         what_if_analysis_arn: "Arn",
    #         what_if_analysis_name: "Name",
    #         forecast_arn: "Arn",
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWhatIfAnalysesResponse]
    def list_what_if_analyses(params = {}, options = {})
      request = build_request(:list_what_if_analyses, params)
      request.send_request(options)
    end

    # <p>Returns a list of what-if forecast exports created using the <a>CreateWhatIfForecastExport</a> operation. For each what-if forecast export, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the what-if forecast export ARN with the <a>DescribeWhatIfForecastExport</a> operation.</p>
    # @param [Hash, Types::ListWhatIfForecastExportsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next  request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either
    #           <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the what-if forecast
    #         export jobs that match the statement from the list, respectively. The match statement consists of a key and a
    #         value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #             <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
    #             specify <code>IS</code>. To exclude matching forecast export jobs, specify
    #             <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #             <code>WhatIfForecastExportArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #         <i>electricityWIFExport</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "WhatIfForecastExportArn", "Value":
    #         "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityWIFExport" } ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_what_if_forecast_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_forecast_exports: [
    #       {
    #         what_if_forecast_export_arn: "LongArn",
    #         what_if_forecast_arns: ["LongArn"],
    #         what_if_forecast_export_name: "Name",
    #         destination: {
    #           s3_config: { # required
    #             path: "S3Path", # required
    #             role_arn: "Arn", # required
    #             kms_key_arn: "KMSKeyArn"
    #           }
    #         },
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWhatIfForecastExportsResponse]
    def list_what_if_forecast_exports(params = {}, options = {})
      request = build_request(:list_what_if_forecast_exports, params)
      request.send_request(options)
    end

    # <p>Returns a list of what-if forecasts created using the <a>CreateWhatIfForecast</a> operation. For each what-if forecast, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the what-if forecast ARN with the <a>DescribeWhatIfForecast</a> operation.</p>
    # @param [Hash, Types::ListWhatIfForecastsRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next  request. Tokens expire after 24 hours.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either
    #           <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the what-if forecast
    #         export jobs that match the statement from the list, respectively. The match statement consists of a key and a
    #         value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #             <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
    #             specify <code>IS</code>. To exclude matching forecast export jobs, specify
    #             <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #             <code>WhatIfForecastArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #         <i>electricityWhatIfForecast</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "WhatIfForecastArn", "Value":
    #         "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityWhatIfForecast" } ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "String", # required
    #         value: "Arn", # required
    #         condition: "IS" # One of: ["IS", "IS_NOT"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_what_if_forecasts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     what_if_forecasts: [
    #       {
    #         what_if_forecast_arn: "LongArn",
    #         what_if_forecast_name: "Name",
    #         what_if_analysis_arn: "Arn",
    #         status: "Status",
    #         message: "ErrorMessage",
    #         creation_time: Time.now,
    #         last_modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWhatIfForecastsResponse]
    def list_what_if_forecasts(params = {}, options = {})
      request = build_request(:list_what_if_forecasts, params)
      request.send_request(options)
    end

    # <p>Resumes a stopped monitor resource.</p>
    # @param [Hash, Types::ResumeResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to resume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.resume_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def resume_resource(params = {}, options = {})
      request = build_request(:resume_resource, params)
      request.send_request(options)
    end

    # <p>Stops a resource.</p>
    #          <p>The resource undergoes the following states: <code>CREATE_STOPPING</code> and
    #             <code>CREATE_STOPPED</code>. You cannot resume a resource once it has been
    #          stopped.</p>
    #          <p>This operation can be applied to the following resources (and their corresponding child
    #          resources):</p>
    #          <ul>
    #             <li>
    #                <p>Dataset Import Job</p>
    #             </li>
    #             <li>
    #                <p>Predictor Job</p>
    #             </li>
    #             <li>
    #                <p>Forecast Job</p>
    #             </li>
    #             <li>
    #                <p>Forecast Export Job</p>
    #             </li>
    #             <li>
    #                <p>Predictor Backtest Export Job</p>
    #             </li>
    #             <li>
    #                <p>Explainability Job</p>
    #             </li>
    #             <li>
    #                <p>Explainability Export Job</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StopResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to stop. The supported ARNs
    #            are <code>DatasetImportJobArn</code>, <code>PredictorArn</code>,
    #               <code>PredictorBacktestExportJobArn</code>, <code>ForecastArn</code>,
    #               <code>ForecastExportJobArn</code>, <code>ExplainabilityArn</code>, and
    #               <code>ExplainabilityExportArn</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.stop_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_resource(params = {}, options = {})
      request = build_request(:stop_resource, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #       If existing tags on a resource are not specified in the request parameters, they are not
    #       changed. When a resource is deleted, the tags associated with that resource are also
    #       deleted.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for Amazon Web Services use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Deletes the specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
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

    # <p>Replaces the datasets in a dataset group with the specified datasets.</p>
    #          <note>
    #             <p>The <code>Status</code> of the dataset group must be <code>ACTIVE</code> before you can
    #         use the dataset group to create a predictor. Use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>
    #         operation to get the status.</p>
    #          </note>
    # @param [Hash, Types::UpdateDatasetGroupRequest] params
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group.</p>
    # @option params [Array<String>] :dataset_arns
    #   <p>An array of the Amazon Resource Names (ARNs) of the datasets to add to the dataset
    #         group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_group_arn: "Arn", # required
    #     dataset_arns: ["Arn"], # required
    #   }
    #   options = {}
    #   response = client.update_dataset_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDatasetGroupResponse]
    def update_dataset_group(params = {}, options = {})
      request = build_request(:update_dataset_group, params)
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
      context[:gem_name] = 'aws-sdk-forecast'
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

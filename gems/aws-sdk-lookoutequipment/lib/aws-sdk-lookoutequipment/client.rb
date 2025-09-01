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
require 'aws-sdk-core/plugins/json_rpc'

module Aws::LookoutEquipment
  # An API client for Aws::LookoutEquipment.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSLookoutEquipmentFrontendService

    add_plugin(::Aws::LookoutEquipment::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpc)

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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::LookoutEquipment::EndpointProvider] :endpoint_provider
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

    # <p>Creates a container for a collection of data being ingested for analysis. The dataset
    #          contains the metadata describing where the data is and what the data actually looks like.
    #          For example, it contains the location of the data source, the data schema, and other
    #          information. A dataset also contains any tags associated with the ingested data. </p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset being created. </p>
    # @option params [Types::DatasetSchema] :dataset_schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout
    #            for Equipment. </p>
    # @option params [String] :client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Any tags associated with the ingested data described in the dataset. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     dataset_schema: {
    #       inline_data_schema: "SynthesizedJsonInlineDataSchema"
    #     },
    #     server_side_kms_key_id: "NameOrArn",
    #     client_token: "IdempotenceToken", # required
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
    #     dataset_name: "DatasetName",
    #     dataset_arn: "DatasetArn",
    #     status: "CREATED" # One of: ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE", "IMPORT_IN_PROGRESS"]
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p> Creates a scheduled inference. Scheduling an inference is setting up a continuous
    #          real-time inference plan to analyze new measurement data. When setting up the schedule, you
    #          provide an S3 bucket location for the input data, assign it a delimiter between separate
    #          entries in the data, set an offset delay if desired, and set the frequency of inferencing.
    #          You must also provide an S3 bucket location for the output data. </p>
    # @param [Hash, Types::CreateInferenceSchedulerRequest] params
    # @option params [String] :model_name
    #   <p>The name of the previously trained machine learning model being used to create the
    #            inference scheduler. </p>
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler being created. </p>
    # @option params [Integer] :data_delay_offset_in_minutes
    #   <p>The interval (in minutes) of planned delay at the start of each inference segment. For
    #            example, if inference is set to run every ten minutes, the delay is set to five minutes and
    #            the time is 09:08. The inference scheduler will wake up at the configured interval (which,
    #            without a delay configured, would be 09:10) plus the additional five minute delay time (so
    #            09:15) to check your Amazon S3 bucket. The delay provides a buffer for you to upload data at the
    #            same frequency, so that you don't have to stop and restart the scheduler when uploading new
    #            data.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html">Understanding
    #               the inference process</a>.</p>
    # @option params [String] :data_upload_frequency
    #   <p> How often data is uploaded to the source Amazon S3 bucket for the input data. The value
    #            chosen is the length of time between data uploads. For instance, if you select 5 minutes,
    #            Amazon Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This
    #            frequency also determines how often Amazon Lookout for Equipment runs inference on your data.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html">Understanding
    #               the inference process</a>.</p>
    # @option params [Types::InferenceInputConfiguration] :data_input_configuration
    #   <p>Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    # @option params [Types::InferenceOutputConfiguration] :data_output_configuration
    #   <p>Specifies configuration information for the output results for the inference scheduler,
    #            including the S3 location for the output. </p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the data source being
    #            used for the inference. </p>
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt inference scheduler data by
    #            Amazon Lookout for Equipment. </p>
    # @option params [String] :client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Any tags associated with the inference scheduler. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     inference_scheduler_name: "InferenceSchedulerName", # required
    #     data_delay_offset_in_minutes: 1,
    #     data_upload_frequency: "PT5M" # One of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"], # required
    #     data_input_configuration: { # required
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       input_time_zone_offset: "TimeZoneOffset",
    #       inference_input_name_configuration: {
    #         timestamp_format: "FileNameTimestampFormat",
    #         component_timestamp_delimiter: "ComponentTimestampDelimiter"
    #       }
    #     },
    #     data_output_configuration: { # required
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       kms_key_id: "NameOrArn"
    #     },
    #     role_arn: "IamRoleArn", # required
    #     server_side_kms_key_id: "NameOrArn",
    #     client_token: "IdempotenceToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_inference_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inference_scheduler_arn: "InferenceSchedulerArn",
    #     inference_scheduler_name: "InferenceSchedulerName",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #     model_quality: "QUALITY_THRESHOLD_MET" # One of: ["QUALITY_THRESHOLD_MET", "CANNOT_DETERMINE_QUALITY", "POOR_QUALITY_DETECTED"]
    #   }
    # @return [Types::CreateInferenceSchedulerResponse]
    def create_inference_scheduler(params = {}, options = {})
      request = build_request(:create_inference_scheduler, params)
      request.send_request(options)
    end

    # <p> Creates a label for an event. </p>
    # @param [Hash, Types::CreateLabelRequest] params
    # @option params [String] :label_group_name
    #   <p> The name of a group of labels. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data. </p>
    # @option params [Time] :start_time
    #   <p> The start time of the labeled event. </p>
    # @option params [Time] :end_time
    #   <p> The end time of the labeled event. </p>
    # @option params [String] :rating
    #   <p> Indicates whether a labeled event represents an anomaly. </p>
    # @option params [String] :fault_code
    #   <p> Provides additional information about the label. The fault code must be defined in the
    #            FaultCodes attribute of the label group.</p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data. </p>
    # @option params [String] :notes
    #   <p> Metadata providing additional information about the label. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    # @option params [String] :equipment
    #   <p> Indicates that a label pertains to a particular piece of equipment. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    # @option params [String] :client_token
    #   <p> A unique identifier for the request to create a label. If you do not set the client
    #            request token, Lookout for Equipment generates one. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     rating: "ANOMALY" # One of: ["ANOMALY", "NO_ANOMALY", "NEUTRAL"], # required
    #     fault_code: "FaultCode",
    #     notes: "Comments",
    #     equipment: "Equipment",
    #     client_token: "IdempotenceToken", # required
    #   }
    #   options = {}
    #   response = client.create_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     label_id: "LabelId"
    #   }
    # @return [Types::CreateLabelResponse]
    def create_label(params = {}, options = {})
      request = build_request(:create_label, params)
      request.send_request(options)
    end

    # <p> Creates a group of labels. </p>
    # @param [Hash, Types::CreateLabelGroupRequest] params
    # @option params [String] :label_group_name
    #   <p> Names a group of labels.</p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data. </p>
    # @option params [Array<String>] :fault_codes
    #   <p> The acceptable fault codes (indicating the type of anomaly associated with the label)
    #            that can be used with this label group.</p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    # @option params [String] :client_token
    #   <p> A unique identifier for the request to create a label group. If you do not set the
    #            client request token, Lookout for Equipment generates one. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> Tags that provide metadata about the label group you are creating. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #     fault_codes: ["FaultCode"],
    #     client_token: "IdempotenceToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_label_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     label_group_name: "LabelGroupName",
    #     label_group_arn: "LabelGroupArn"
    #   }
    # @return [Types::CreateLabelGroupResponse]
    def create_label_group(params = {}, options = {})
      request = build_request(:create_label_group, params)
      request.send_request(options)
    end

    # <p>Creates a machine learning model for data inference. </p>
    #          <p>A machine-learning (ML) model is a mathematical model that finds patterns in your data.
    #          In Amazon Lookout for Equipment, the model learns the patterns of normal behavior and detects abnormal
    #          behavior that could be potential equipment failure (or maintenance events). The models are
    #          made by analyzing normal data and abnormalities in machine behavior that have already
    #          occurred.</p>
    #          <p>Your model is trained using a portion of the data from your dataset and uses that data
    #          to learn patterns of normal behavior and abnormal patterns that lead to equipment failure.
    #          Another portion of the data is used to evaluate the model's accuracy. </p>
    # @param [Hash, Types::CreateModelRequest] params
    # @option params [String] :model_name
    #   <p>The name for the machine learning model to be created.</p>
    # @option params [String] :dataset_name
    #   <p>The name of the dataset for the machine learning model being created. </p>
    # @option params [Types::DatasetSchema] :dataset_schema
    #   <p>The data schema for the machine learning model being created. </p>
    # @option params [Types::LabelsInputConfiguration] :labels_input_configuration
    #   <p>The input configuration for the labels being used for the machine learning model that's
    #            being created. </p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    # @option params [Time] :training_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            training data for the machine learning model. </p>
    # @option params [Time] :training_data_end_time
    #   <p>Indicates the time reference in the dataset that should be used to end the subset of
    #            training data for the machine learning model. </p>
    # @option params [Time] :evaluation_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            evaluation data for the machine learning model. </p>
    # @option params [Time] :evaluation_data_end_time
    #   <p> Indicates the time reference in the dataset that should be used to end the subset of
    #            evaluation data for the machine learning model. </p>
    # @option params [String] :role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source
    #            being used to create the machine learning model. </p>
    # @option params [Types::DataPreProcessingConfiguration] :data_pre_processing_configuration
    #   <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #            the data after post processing by Amazon Lookout for Equipment. For example, if you provide data that has been
    #            collected at a 1 second level and you want the system to resample the data at a 1 minute
    #            rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the
    #            prefix "PT" to the rate you want. The value for a 1 second rate is therefore
    #               <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,
    #            and the value for a 1 hour rate is <i>PT1H</i>
    #            </p>
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout
    #            for Equipment. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> Any tags associated with the machine learning model being created. </p>
    # @option params [String] :off_condition
    #   <p>Indicates that the asset associated with this sensor has been shut off. As long as this
    #            condition is met, Lookout for Equipment will not use data from this asset for training,
    #            evaluation, or inference.</p>
    # @option params [Types::ModelDiagnosticsOutputConfiguration] :model_diagnostics_output_configuration
    #   <p>The Amazon S3 location where you want Amazon Lookout for Equipment to save the pointwise model diagnostics.
    #           
    #            
    #         You must also specify the <code>RoleArn</code> request parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     dataset_name: "DatasetIdentifier", # required
    #     dataset_schema: {
    #       inline_data_schema: "SynthesizedJsonInlineDataSchema"
    #     },
    #     labels_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       label_group_name: "LabelGroupName"
    #     },
    #     client_token: "IdempotenceToken", # required
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     evaluation_data_start_time: Time.now,
    #     evaluation_data_end_time: Time.now,
    #     role_arn: "IamRoleArn",
    #     data_pre_processing_configuration: {
    #       target_sampling_rate: "PT1S" # One of: ["PT1S", "PT5S", "PT10S", "PT15S", "PT30S", "PT1M", "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #     },
    #     server_side_kms_key_id: "NameOrArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     off_condition: "OffCondition",
    #     model_diagnostics_output_configuration: {
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       kms_key_id: "NameOrArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ModelArn",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"]
    #   }
    # @return [Types::CreateModelResponse]
    def create_model(params = {}, options = {})
      request = build_request(:create_model, params)
      request.send_request(options)
    end

    # <p>Creates a retraining scheduler on the specified model. </p>
    # @param [Hash, Types::CreateRetrainingSchedulerRequest] params
    # @option params [String] :model_name
    #   <p>The name of the model to add the retraining scheduler to. </p>
    # @option params [Time] :retraining_start_date
    #   <p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the
    #            nearest UTC day.</p>
    # @option params [String] :retraining_frequency
    #   <p>This parameter uses the <a href="https://en.wikipedia.org/wiki/ISO_8601#Durations">ISO 8601</a> standard to set the frequency at which you want retraining to occur in
    #            terms of Years, Months, and/or Days (note: other parameters like Time are not currently
    #            supported). The minimum value is 30 days (P30D) and the maximum value is 1 year (P1Y). For
    #            example, the following values are valid:</p>
    #            <ul>
    #               <li>
    #                  <p>P3M15D – Every 3 months and 15 days</p>
    #               </li>
    #               <li>
    #                  <p>P2M – Every 2 months</p>
    #               </li>
    #               <li>
    #                  <p>P150D – Every 150 days</p>
    #               </li>
    #            </ul>
    # @option params [String] :lookback_window
    #   <p>The number of past days of data that will be used for retraining.</p>
    # @option params [String] :promote_mode
    #   <p>Indicates how the service will use new models. In <code>MANAGED</code> mode, new models
    #            will automatically be used for inference if they have better performance than the current
    #            model. In <code>MANUAL</code> mode, the new models will not be used <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation">until they
    #               are manually activated</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    # @example Creates a retraining scheduler with a specific start date
    #   
    #   params = {
    #     model_name: "sample-model",
    #     retraining_start_date: Time.parse("2024-01-01T00:00:00Z"),
    #     retraining_frequency: "P1M",
    #     lookback_window: "P360D",
    #     client_token: "sample-client-token"
    #   }
    #   options = {}
    #   response = client.create_retraining_scheduler(params, options)
    #   response.to_h #=>
    #   {
    #     model_name: "sample-model",
    #     model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     status: PENDING
    #   }
    # @example Creates a retraining scheduler with manual promote mode
    #   
    #   params = {
    #     model_name: "sample-model",
    #     retraining_frequency: "P1M",
    #     lookback_window: "P360D",
    #     promote_mode: MANUAL,
    #     client_token: "sample-client-token"
    #   }
    #   options = {}
    #   response = client.create_retraining_scheduler(params, options)
    #   response.to_h #=>
    #   {
    #     model_name: "sample-model",
    #     model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     status: PENDING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     retraining_start_date: Time.now,
    #     retraining_frequency: "RetrainingFrequency", # required
    #     lookback_window: "LookbackWindow", # required
    #     promote_mode: "MANAGED" # One of: ["MANAGED", "MANUAL"],
    #     client_token: "IdempotenceToken", # required
    #   }
    #   options = {}
    #   response = client.create_retraining_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   }
    # @return [Types::CreateRetrainingSchedulerResponse]
    def create_retraining_scheduler(params = {}, options = {})
      request = build_request(:create_retraining_scheduler, params)
      request.send_request(options)
    end

    # <p> Deletes a dataset and associated artifacts. The operation will check to see if any
    #          inference scheduler or data ingestion job is currently using the dataset, and if there
    #          isn't, the dataset, its metadata, and any associated data stored in S3 will be deleted.
    #          This does not affect any models that used this dataset for training and evaluation, but
    #          does prevent it from being used in the future. </p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to be deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetIdentifier", # required
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

    # <p>Deletes an inference scheduler that has been set up. Prior inference results will not be
    #          deleted.</p>
    # @param [Hash, Types::DeleteInferenceSchedulerRequest] params
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_inference_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_inference_scheduler(params = {}, options = {})
      request = build_request(:delete_inference_scheduler, params)
      request.send_request(options)
    end

    # <p> Deletes a label. </p>
    # @param [Hash, Types::DeleteLabelRequest] params
    # @option params [String] :label_group_name
    #   <p> The name of the label group that contains the label that you want to delete. Data in
    #            this field will be retained for service usage. Follow best practices for the security of
    #            your data. </p>
    # @option params [String] :label_id
    #   <p> The ID of the label that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #     label_id: "LabelId", # required
    #   }
    #   options = {}
    #   response = client.delete_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_label(params = {}, options = {})
      request = build_request(:delete_label, params)
      request.send_request(options)
    end

    # <p> Deletes a group of labels. </p>
    # @param [Hash, Types::DeleteLabelGroupRequest] params
    # @option params [String] :label_group_name
    #   <p> The name of the label group that you want to delete. Data in this field will be
    #            retained for service usage. Follow best practices for the security of your data. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_label_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_label_group(params = {}, options = {})
      request = build_request(:delete_label_group, params)
      request.send_request(options)
    end

    # <p>Deletes a machine learning model currently available for Amazon Lookout for Equipment. This will prevent it
    #          from being used with an inference scheduler, even one that is already set up. </p>
    # @param [Hash, Types::DeleteModelRequest] params
    # @option params [String] :model_name
    #   <p>The name of the machine learning model to be deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.delete_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_model(params = {}, options = {})
      request = build_request(:delete_model, params)
      request.send_request(options)
    end

    # <p>Deletes the resource policy attached to the resource.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the resource policy should be
    #            deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a retraining scheduler from a model. The retraining scheduler must be in the
    #             <code>STOPPED</code> status. </p>
    # @param [Hash, Types::DeleteRetrainingSchedulerRequest] params
    # @option params [String] :model_name
    #   <p>The name of the model whose retraining scheduler you want to delete. </p>
    # @example Deletes a retraining scheduler
    #   
    #   params = {
    #     model_name: "sample-model"
    #   }
    #   options = {}
    #   response = client.delete_retraining_scheduler(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.delete_retraining_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_retraining_scheduler(params = {}, options = {})
      request = build_request(:delete_retraining_scheduler, params)
      request.send_request(options)
    end

    # <p>Provides information on a specific data ingestion job such as creation time, dataset
    #          ARN, and status.</p>
    # @param [Hash, Types::DescribeDataIngestionJobRequest] params
    # @option params [String] :job_id
    #   <p>The job ID of the data ingestion job. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "IngestionJobId", # required
    #   }
    #   options = {}
    #   response = client.describe_data_ingestion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "IngestionJobId",
    #     dataset_arn: "DatasetArn",
    #     ingestion_input_configuration: {
    #       s3_input_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #         key_pattern: "KeyPattern"
    #       }
    #     },
    #     role_arn: "IamRoleArn",
    #     created_at: Time.now,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"],
    #     failed_reason: "BoundedLengthString",
    #     data_quality_summary: {
    #       insufficient_sensor_data: { # required
    #         missing_complete_sensor_data: { # required
    #           affected_sensor_count: 1, # required
    #         },
    #         sensors_with_short_date_range: { # required
    #           affected_sensor_count: 1, # required
    #         }
    #       },
    #       missing_sensor_data: { # required
    #         affected_sensor_count: 1, # required
    #         total_number_of_missing_values: 1, # required
    #       },
    #       invalid_sensor_data: { # required
    #         affected_sensor_count: 1, # required
    #         total_number_of_invalid_values: 1, # required
    #       },
    #       unsupported_timestamps: { # required
    #         total_number_of_unsupported_timestamps: 1, # required
    #       },
    #       duplicate_timestamps: { # required
    #         total_number_of_duplicate_timestamps: 1, # required
    #       }
    #     },
    #     ingested_files_summary: {
    #       total_number_of_files: 1, # required
    #       ingested_number_of_files: 1, # required
    #       discarded_files: [
    #         {
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         }
    #       ]
    #     },
    #     status_detail: "BoundedLengthString",
    #     ingested_data_size: 1,
    #     data_start_time: Time.now,
    #     data_end_time: Time.now,
    #     source_dataset_arn: "DatasetArn"
    #   }
    # @return [Types::DescribeDataIngestionJobResponse]
    def describe_data_ingestion_job(params = {}, options = {})
      request = build_request(:describe_data_ingestion_job, params)
      request.send_request(options)
    end

    # <p>Provides a JSON description of the data in each time series dataset, including names,
    #          column names, and data types.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to be described. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetIdentifier", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_name: "DatasetName",
    #     dataset_arn: "DatasetArn",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     status: "CREATED" # One of: ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE", "IMPORT_IN_PROGRESS"],
    #     schema: "SynthesizedJsonInlineDataSchema",
    #     server_side_kms_key_id: "KmsKeyArn",
    #     ingestion_input_configuration: {
    #       s3_input_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #         key_pattern: "KeyPattern"
    #       }
    #     },
    #     data_quality_summary: {
    #       insufficient_sensor_data: { # required
    #         missing_complete_sensor_data: { # required
    #           affected_sensor_count: 1, # required
    #         },
    #         sensors_with_short_date_range: { # required
    #           affected_sensor_count: 1, # required
    #         }
    #       },
    #       missing_sensor_data: { # required
    #         affected_sensor_count: 1, # required
    #         total_number_of_missing_values: 1, # required
    #       },
    #       invalid_sensor_data: { # required
    #         affected_sensor_count: 1, # required
    #         total_number_of_invalid_values: 1, # required
    #       },
    #       unsupported_timestamps: { # required
    #         total_number_of_unsupported_timestamps: 1, # required
    #       },
    #       duplicate_timestamps: { # required
    #         total_number_of_duplicate_timestamps: 1, # required
    #       }
    #     },
    #     ingested_files_summary: {
    #       total_number_of_files: 1, # required
    #       ingested_number_of_files: 1, # required
    #       discarded_files: [
    #         {
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         }
    #       ]
    #     },
    #     role_arn: "IamRoleArn",
    #     data_start_time: Time.now,
    #     data_end_time: Time.now,
    #     source_dataset_arn: "DatasetArn"
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p> Specifies information about the inference scheduler being used, including name, model,
    #          status, and associated metadata </p>
    # @param [Hash, Types::DescribeInferenceSchedulerRequest] params
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler being described. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.describe_inference_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ModelArn",
    #     model_name: "ModelName",
    #     inference_scheduler_name: "InferenceSchedulerName",
    #     inference_scheduler_arn: "InferenceSchedulerArn",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #     data_delay_offset_in_minutes: 1,
    #     data_upload_frequency: "PT5M" # One of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     data_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       input_time_zone_offset: "TimeZoneOffset",
    #       inference_input_name_configuration: {
    #         timestamp_format: "FileNameTimestampFormat",
    #         component_timestamp_delimiter: "ComponentTimestampDelimiter"
    #       }
    #     },
    #     data_output_configuration: {
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       kms_key_id: "NameOrArn"
    #     },
    #     role_arn: "IamRoleArn",
    #     server_side_kms_key_id: "KmsKeyArn",
    #     latest_inference_result: "ANOMALOUS" # One of: ["ANOMALOUS", "NORMAL"]
    #   }
    # @return [Types::DescribeInferenceSchedulerResponse]
    def describe_inference_scheduler(params = {}, options = {})
      request = build_request(:describe_inference_scheduler, params)
      request.send_request(options)
    end

    # <p> Returns the name of the label. </p>
    # @param [Hash, Types::DescribeLabelRequest] params
    # @option params [String] :label_group_name
    #   <p> Returns the name of the group containing the label. </p>
    # @option params [String] :label_id
    #   <p> Returns the ID of the label. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #     label_id: "LabelId", # required
    #   }
    #   options = {}
    #   response = client.describe_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     label_group_name: "LabelGroupName",
    #     label_group_arn: "LabelGroupArn",
    #     label_id: "LabelId",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     rating: "ANOMALY" # One of: ["ANOMALY", "NO_ANOMALY", "NEUTRAL"],
    #     fault_code: "FaultCode",
    #     notes: "Comments",
    #     equipment: "Equipment",
    #     created_at: Time.now
    #   }
    # @return [Types::DescribeLabelResponse]
    def describe_label(params = {}, options = {})
      request = build_request(:describe_label, params)
      request.send_request(options)
    end

    # <p> Returns information about the label group. </p>
    # @param [Hash, Types::DescribeLabelGroupRequest] params
    # @option params [String] :label_group_name
    #   <p> Returns the name of the label group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #   }
    #   options = {}
    #   response = client.describe_label_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     label_group_name: "LabelGroupName",
    #     label_group_arn: "LabelGroupArn",
    #     fault_codes: ["FaultCode"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::DescribeLabelGroupResponse]
    def describe_label_group(params = {}, options = {})
      request = build_request(:describe_label_group, params)
      request.send_request(options)
    end

    # <p>Provides a JSON containing the overall information about a specific machine learning
    #          model, including model name and ARN, dataset, training and evaluation information, status,
    #          and so on. </p>
    # @param [Hash, Types::DescribeModelRequest] params
    # @option params [String] :model_name
    #   <p>The name of the machine learning model to be described. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.describe_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     dataset_name: "DatasetName",
    #     dataset_arn: "DatasetArn",
    #     schema: "SynthesizedJsonInlineDataSchema",
    #     labels_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       label_group_name: "LabelGroupName"
    #     },
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     evaluation_data_start_time: Time.now,
    #     evaluation_data_end_time: Time.now,
    #     role_arn: "IamRoleArn",
    #     data_pre_processing_configuration: {
    #       target_sampling_rate: "PT1S" # One of: ["PT1S", "PT5S", "PT10S", "PT15S", "PT30S", "PT1M", "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #     },
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"],
    #     training_execution_start_time: Time.now,
    #     training_execution_end_time: Time.now,
    #     failed_reason: "BoundedLengthString",
    #     model_metrics: "SynthesizedJsonModelMetrics",
    #     last_updated_time: Time.now,
    #     created_at: Time.now,
    #     server_side_kms_key_id: "KmsKeyArn",
    #     off_condition: "OffCondition",
    #     source_model_version_arn: "ModelVersionArn",
    #     import_job_start_time: Time.now,
    #     import_job_end_time: Time.now,
    #     active_model_version: 1,
    #     active_model_version_arn: "ModelVersionArn",
    #     model_version_activated_at: Time.now,
    #     previous_active_model_version: 1,
    #     previous_active_model_version_arn: "ModelVersionArn",
    #     previous_model_version_activated_at: Time.now,
    #     prior_model_metrics: "SynthesizedJsonModelMetrics",
    #     latest_scheduled_retraining_failed_reason: "BoundedLengthString",
    #     latest_scheduled_retraining_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS", "CANCELED"],
    #     latest_scheduled_retraining_model_version: 1,
    #     latest_scheduled_retraining_start_time: Time.now,
    #     latest_scheduled_retraining_available_data_in_days: 1,
    #     next_scheduled_retraining_start_date: Time.now,
    #     accumulated_inference_data_start_time: Time.now,
    #     accumulated_inference_data_end_time: Time.now,
    #     retraining_scheduler_status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #     model_diagnostics_output_configuration: {
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       kms_key_id: "NameOrArn"
    #     },
    #     model_quality: "QUALITY_THRESHOLD_MET" # One of: ["QUALITY_THRESHOLD_MET", "CANNOT_DETERMINE_QUALITY", "POOR_QUALITY_DETECTED"]
    #   }
    # @return [Types::DescribeModelResponse]
    def describe_model(params = {}, options = {})
      request = build_request(:describe_model, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific machine learning model version.</p>
    # @param [Hash, Types::DescribeModelVersionRequest] params
    # @option params [String] :model_name
    #   <p>The name of the machine learning model that this version belongs to.</p>
    # @option params [Integer] :model_version
    #   <p>The version of the machine learning model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     model_version: 1, # required
    #   }
    #   options = {}
    #   response = client.describe_model_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     model_version: 1,
    #     model_version_arn: "ModelVersionArn",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS", "CANCELED"],
    #     source_type: "TRAINING" # One of: ["TRAINING", "RETRAINING", "IMPORT"],
    #     dataset_name: "DatasetName",
    #     dataset_arn: "DatasetArn",
    #     schema: "InlineDataSchema",
    #     labels_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       label_group_name: "LabelGroupName"
    #     },
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     evaluation_data_start_time: Time.now,
    #     evaluation_data_end_time: Time.now,
    #     role_arn: "IamRoleArn",
    #     data_pre_processing_configuration: {
    #       target_sampling_rate: "PT1S" # One of: ["PT1S", "PT5S", "PT10S", "PT15S", "PT30S", "PT1M", "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #     },
    #     training_execution_start_time: Time.now,
    #     training_execution_end_time: Time.now,
    #     failed_reason: "BoundedLengthString",
    #     model_metrics: "ModelMetrics",
    #     last_updated_time: Time.now,
    #     created_at: Time.now,
    #     server_side_kms_key_id: "KmsKeyArn",
    #     off_condition: "OffCondition",
    #     source_model_version_arn: "ModelVersionArn",
    #     import_job_start_time: Time.now,
    #     import_job_end_time: Time.now,
    #     imported_data_size_in_bytes: 1,
    #     prior_model_metrics: "ModelMetrics",
    #     retraining_available_data_in_days: 1,
    #     auto_promotion_result: "MODEL_PROMOTED" # One of: ["MODEL_PROMOTED", "MODEL_NOT_PROMOTED", "RETRAINING_INTERNAL_ERROR", "RETRAINING_CUSTOMER_ERROR", "RETRAINING_CANCELLED"],
    #     auto_promotion_result_reason: "AutoPromotionResultReason",
    #     model_diagnostics_output_configuration: {
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       kms_key_id: "NameOrArn"
    #     },
    #     model_diagnostics_results_object: {
    #       bucket: "S3Bucket", # required
    #       key: "S3Key", # required
    #     },
    #     model_quality: "QUALITY_THRESHOLD_MET" # One of: ["QUALITY_THRESHOLD_MET", "CANNOT_DETERMINE_QUALITY", "POOR_QUALITY_DETECTED"]
    #   }
    # @return [Types::DescribeModelVersionResponse]
    def describe_model_version(params = {}, options = {})
      request = build_request(:describe_model_version, params)
      request.send_request(options)
    end

    # <p>Provides the details of a resource policy attached to a resource.</p>
    # @param [Hash, Types::DescribeResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that is associated with the resource
    #            policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_revision_id: "PolicyRevisionId",
    #     resource_policy: "Policy",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DescribeResourcePolicyResponse]
    def describe_resource_policy(params = {}, options = {})
      request = build_request(:describe_resource_policy, params)
      request.send_request(options)
    end

    # <p>Provides a description of the retraining scheduler, including information such as the
    #          model name and retraining parameters. </p>
    # @param [Hash, Types::DescribeRetrainingSchedulerRequest] params
    # @option params [String] :model_name
    #   <p>The name of the model that the retraining scheduler is attached to. </p>
    # @example Describes a retraining scheduler
    #   
    #   params = {
    #     model_name: "sample-model"
    #   }
    #   options = {}
    #   response = client.describe_retraining_scheduler(params, options)
    #   response.to_h #=>
    #   {
    #     model_name: "sample-model",
    #     model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     retraining_start_date: Time.parse("2023-11-01T00:00:00Z"),
    #     retraining_frequency: "P1M",
    #     lookback_window: "P360D",
    #     status: RUNNING,
    #     promote_mode: MANAGED,
    #     created_at: Time.parse("2023-10-01T15:00:00Z"),
    #     updated_at: Time.parse("2023-10-01T15:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.describe_retraining_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     retraining_start_date: Time.now,
    #     retraining_frequency: "RetrainingFrequency",
    #     lookback_window: "LookbackWindow",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #     promote_mode: "MANAGED" # One of: ["MANAGED", "MANUAL"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::DescribeRetrainingSchedulerResponse]
    def describe_retraining_scheduler(params = {}, options = {})
      request = build_request(:describe_retraining_scheduler, params)
      request.send_request(options)
    end

    # <p>Imports a dataset.</p>
    # @param [Hash, Types::ImportDatasetRequest] params
    # @option params [String] :source_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to import.</p>
    # @option params [String] :dataset_name
    #   <p>The name of the machine learning dataset to be created. If the dataset already exists,
    #            Amazon Lookout for Equipment overwrites the existing dataset. If you don't specify this field, it is filled
    #            with the name of the source dataset.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. If you do not set the client request token,
    #            Amazon Lookout for Equipment generates one. </p>
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key key used to encrypt model data by Amazon Lookout for Equipment.
    #         </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Any tags associated with the dataset to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_dataset_arn: "DatasetArn", # required
    #     dataset_name: "DatasetName",
    #     client_token: "IdempotenceToken", # required
    #     server_side_kms_key_id: "NameOrArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_name: "DatasetName",
    #     dataset_arn: "DatasetArn",
    #     status: "CREATED" # One of: ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE", "IMPORT_IN_PROGRESS"],
    #     job_id: "IngestionJobId"
    #   }
    # @return [Types::ImportDatasetResponse]
    def import_dataset(params = {}, options = {})
      request = build_request(:import_dataset, params)
      request.send_request(options)
    end

    # <p>Imports a model that has been trained successfully.</p>
    # @param [Hash, Types::ImportModelVersionRequest] params
    # @option params [String] :source_model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version to import.</p>
    # @option params [String] :model_name
    #   <p>The name for the machine learning model to be created. If the model already exists,
    #            Amazon Lookout for Equipment creates a new version. If you do not specify this field, it is filled with the
    #            name of the source model.</p>
    # @option params [String] :dataset_name
    #   <p>The name of the dataset for the machine learning model being imported. </p>
    # @option params [Types::LabelsInputConfiguration] :labels_input_configuration
    #   <p>Contains the configuration information for the S3 location being used to hold label
    #            data. </p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. If you do not set the client request token,
    #            Amazon Lookout for Equipment generates one. </p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the data source being
    #            used to create the machine learning model. </p>
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key key used to encrypt model data by Amazon Lookout for Equipment.
    #         </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the machine learning model to be created. </p>
    # @option params [String] :inference_data_import_strategy
    #   <p>Indicates how to import the accumulated inference data when a model version is imported.
    #            The possible values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>NO_IMPORT – Don't import the data.</p>
    #               </li>
    #               <li>
    #                  <p>ADD_WHEN_EMPTY – Only import the data from the source model if there is no
    #                  existing data in the target model.</p>
    #               </li>
    #               <li>
    #                  <p>OVERWRITE – Import the data from the source model and overwrite the
    #                  existing data in the target model.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_model_version_arn: "ModelVersionArn", # required
    #     model_name: "ModelName",
    #     dataset_name: "DatasetIdentifier", # required
    #     labels_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       label_group_name: "LabelGroupName"
    #     },
    #     client_token: "IdempotenceToken", # required
    #     role_arn: "IamRoleArn",
    #     server_side_kms_key_id: "NameOrArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     inference_data_import_strategy: "NO_IMPORT" # One of: ["NO_IMPORT", "ADD_WHEN_EMPTY", "OVERWRITE"]
    #   }
    #   options = {}
    #   response = client.import_model_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     model_version_arn: "ModelVersionArn",
    #     model_version: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS", "CANCELED"]
    #   }
    # @return [Types::ImportModelVersionResponse]
    def import_model_version(params = {}, options = {})
      request = build_request(:import_model_version, params)
      request.send_request(options)
    end

    # <p>Provides a list of all data ingestion jobs, including dataset name and ARN, S3 location
    #          of the input data, status, and so on. </p>
    # @param [Hash, Types::ListDataIngestionJobsRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset being used for the data ingestion job. </p>
    # @option params [String] :next_token
    #   <p>An opaque pagination token indicating where to continue the listing of data ingestion
    #            jobs. </p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of data ingestion jobs to list. </p>
    # @option params [String] :status
    #   <p>Indicates the status of the data ingestion job. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"]
    #   }
    #   options = {}
    #   response = client.list_data_ingestion_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     data_ingestion_job_summaries: [
    #       {
    #         job_id: "IngestionJobId",
    #         dataset_name: "DatasetName",
    #         dataset_arn: "DatasetArn",
    #         ingestion_input_configuration: {
    #           s3_input_configuration: { # required
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix",
    #             key_pattern: "KeyPattern"
    #           }
    #         },
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"]
    #       }
    #     ]
    #   }
    # @return [Types::ListDataIngestionJobsResponse]
    def list_data_ingestion_jobs(params = {}, options = {})
      request = build_request(:list_data_ingestion_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all datasets currently available in your account, filtering on the dataset name.
    #       </p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of datasets.
    #         </p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of datasets to list. </p>
    # @option params [String] :dataset_name_begins_with
    #   <p>The beginning of the name of the datasets to be listed. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     dataset_name_begins_with: "DatasetName"
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     dataset_summaries: [
    #       {
    #         dataset_name: "DatasetName",
    #         dataset_arn: "DatasetArn",
    #         status: "CREATED" # One of: ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE", "IMPORT_IN_PROGRESS"],
    #         created_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p> Lists all inference events that have been found for the specified inference scheduler.
    #       </p>
    # @param [Hash, Types::ListInferenceEventsRequest] params
    # @option params [String] :next_token
    #   <p>An opaque pagination token indicating where to continue the listing of inference
    #            events.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of inference events to list. </p>
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler for the inference events listed. </p>
    # @option params [Time] :interval_start_time
    #   <p> Lookout for Equipment will return all the inference events with an end time equal to or greater than
    #            the start time given.</p>
    # @option params [Time] :interval_end_time
    #   <p>Returns all the inference events with an end start time equal to or greater than less
    #            than the end time given.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #     interval_start_time: Time.now, # required
    #     interval_end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.list_inference_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     inference_event_summaries: [
    #       {
    #         inference_scheduler_arn: "InferenceSchedulerArn",
    #         inference_scheduler_name: "InferenceSchedulerName",
    #         event_start_time: Time.now,
    #         event_end_time: Time.now,
    #         diagnostics: "ModelMetrics",
    #         event_duration_in_seconds: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListInferenceEventsResponse]
    def list_inference_events(params = {}, options = {})
      request = build_request(:list_inference_events, params)
      request.send_request(options)
    end

    # <p> Lists all inference executions that have been performed by the specified inference
    #          scheduler. </p>
    # @param [Hash, Types::ListInferenceExecutionsRequest] params
    # @option params [String] :next_token
    #   <p>An opaque pagination token indicating where to continue the listing of inference
    #            executions.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of inference executions to list. </p>
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler for the inference execution listed. </p>
    # @option params [Time] :data_start_time_after
    #   <p>The time reference in the inferenced dataset after which Amazon Lookout for Equipment started the inference
    #            execution. </p>
    # @option params [Time] :data_end_time_before
    #   <p>The time reference in the inferenced dataset before which Amazon Lookout for Equipment stopped the
    #            inference execution. </p>
    # @option params [String] :status
    #   <p>The status of the inference execution. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #     data_start_time_after: Time.now,
    #     data_end_time_before: Time.now,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_inference_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     inference_execution_summaries: [
    #       {
    #         model_name: "ModelName",
    #         model_arn: "ModelArn",
    #         inference_scheduler_name: "InferenceSchedulerName",
    #         inference_scheduler_arn: "InferenceSchedulerArn",
    #         scheduled_start_time: Time.now,
    #         data_start_time: Time.now,
    #         data_end_time: Time.now,
    #         data_input_configuration: {
    #           s3_input_configuration: {
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix"
    #           },
    #           input_time_zone_offset: "TimeZoneOffset",
    #           inference_input_name_configuration: {
    #             timestamp_format: "FileNameTimestampFormat",
    #             component_timestamp_delimiter: "ComponentTimestampDelimiter"
    #           }
    #         },
    #         data_output_configuration: {
    #           s3_output_configuration: { # required
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix"
    #           },
    #           kms_key_id: "NameOrArn"
    #         },
    #         customer_result_object: {
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED"],
    #         failed_reason: "BoundedLengthString",
    #         model_version: 1,
    #         model_version_arn: "ModelVersionArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListInferenceExecutionsResponse]
    def list_inference_executions(params = {}, options = {})
      request = build_request(:list_inference_executions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all inference schedulers currently available for your account.
    #       </p>
    # @param [Hash, Types::ListInferenceSchedulersRequest] params
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            schedulers. </p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of inference schedulers to list. </p>
    # @option params [String] :inference_scheduler_name_begins_with
    #   <p>The beginning of the name of the inference schedulers to be listed. </p>
    # @option params [String] :model_name
    #   <p>The name of the machine learning model used by the inference scheduler to be listed.
    #         </p>
    # @option params [String] :status
    #   <p>Specifies the current status of the inference schedulers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     inference_scheduler_name_begins_with: "InferenceSchedulerIdentifier",
    #     model_name: "ModelName",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   }
    #   options = {}
    #   response = client.list_inference_schedulers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     inference_scheduler_summaries: [
    #       {
    #         model_name: "ModelName",
    #         model_arn: "ModelArn",
    #         inference_scheduler_name: "InferenceSchedulerName",
    #         inference_scheduler_arn: "InferenceSchedulerArn",
    #         status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #         data_delay_offset_in_minutes: 1,
    #         data_upload_frequency: "PT5M" # One of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"],
    #         latest_inference_result: "ANOMALOUS" # One of: ["ANOMALOUS", "NORMAL"]
    #       }
    #     ]
    #   }
    # @return [Types::ListInferenceSchedulersResponse]
    def list_inference_schedulers(params = {}, options = {})
      request = build_request(:list_inference_schedulers, params)
      request.send_request(options)
    end

    # <p> Returns a list of the label groups. </p>
    # @param [Hash, Types::ListLabelGroupsRequest] params
    # @option params [String] :label_group_name_begins_with
    #   <p> The beginning of the name of the label groups to be listed. </p>
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of label groups.
    #         </p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of label groups to list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name_begins_with: "LabelGroupName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_label_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     label_group_summaries: [
    #       {
    #         label_group_name: "LabelGroupName",
    #         label_group_arn: "LabelGroupArn",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListLabelGroupsResponse]
    def list_label_groups(params = {}, options = {})
      request = build_request(:list_label_groups, params)
      request.send_request(options)
    end

    # <p> Provides a list of labels. </p>
    # @param [Hash, Types::ListLabelsRequest] params
    # @option params [String] :label_group_name
    #   <p> Returns the name of the label group. </p>
    # @option params [Time] :interval_start_time
    #   <p> Returns all the labels with a end time equal to or later than the start time given.
    #         </p>
    # @option params [Time] :interval_end_time
    #   <p> Returns all labels with a start time earlier than the end time given. </p>
    # @option params [String] :fault_code
    #   <p> Returns labels with a particular fault code. </p>
    # @option params [String] :equipment
    #   <p> Lists the labels that pertain to a particular piece of equipment. </p>
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of label groups.
    #         </p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of labels to list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #     interval_start_time: Time.now,
    #     interval_end_time: Time.now,
    #     fault_code: "FaultCode",
    #     equipment: "Equipment",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     label_summaries: [
    #       {
    #         label_group_name: "LabelGroupName",
    #         label_id: "LabelId",
    #         label_group_arn: "LabelGroupArn",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         rating: "ANOMALY" # One of: ["ANOMALY", "NO_ANOMALY", "NEUTRAL"],
    #         fault_code: "FaultCode",
    #         equipment: "Equipment",
    #         created_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListLabelsResponse]
    def list_labels(params = {}, options = {})
      request = build_request(:list_labels, params)
      request.send_request(options)
    end

    # <p>Generates a list of all model versions for a given model, including the model version,
    #          model version ARN, and status. To list a subset of versions, use the
    #             <code>MaxModelVersion</code> and <code>MinModelVersion</code> fields.</p>
    # @param [Hash, Types::ListModelVersionsRequest] params
    # @option params [String] :model_name
    #   <p>Then name of the machine learning model for which the model versions are to be
    #            listed.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results exceeds the limit that the response can display, the
    #            response returns an opaque pagination token indicating where to continue the listing of
    #            machine learning model versions. Use this token in the <code>NextToken</code> field in the
    #            request to list the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of machine learning model versions to list.</p>
    # @option params [String] :status
    #   <p>Filter the results based on the current status of the model version.</p>
    # @option params [String] :source_type
    #   <p>Filter the results based on the way the model version was generated.</p>
    # @option params [Time] :created_at_end_time
    #   <p>Filter results to return all the model versions created before this time.</p>
    # @option params [Time] :created_at_start_time
    #   <p>Filter results to return all the model versions created after this time.</p>
    # @option params [Integer] :max_model_version
    #   <p>Specifies the highest version of the model to return in the list.</p>
    # @option params [Integer] :min_model_version
    #   <p>Specifies the lowest version of the model to return in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS", "CANCELED"],
    #     source_type: "TRAINING" # One of: ["TRAINING", "RETRAINING", "IMPORT"],
    #     created_at_end_time: Time.now,
    #     created_at_start_time: Time.now,
    #     max_model_version: 1,
    #     min_model_version: 1
    #   }
    #   options = {}
    #   response = client.list_model_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     model_version_summaries: [
    #       {
    #         model_name: "ModelName",
    #         model_arn: "ModelArn",
    #         model_version: 1,
    #         model_version_arn: "ModelVersionArn",
    #         created_at: Time.now,
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS", "CANCELED"],
    #         source_type: "TRAINING" # One of: ["TRAINING", "RETRAINING", "IMPORT"],
    #         model_quality: "QUALITY_THRESHOLD_MET" # One of: ["QUALITY_THRESHOLD_MET", "CANNOT_DETERMINE_QUALITY", "POOR_QUALITY_DETECTED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListModelVersionsResponse]
    def list_model_versions(params = {}, options = {})
      request = build_request(:list_model_versions, params)
      request.send_request(options)
    end

    # <p>Generates a list of all models in the account, including model name and ARN, dataset,
    #          and status. </p>
    # @param [Hash, Types::ListModelsRequest] params
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of machine learning
    #            models. </p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of machine learning models to list. </p>
    # @option params [String] :status
    #   <p>The status of the machine learning model. </p>
    # @option params [String] :model_name_begins_with
    #   <p>The beginning of the name of the machine learning models being listed. </p>
    # @option params [String] :dataset_name_begins_with
    #   <p>The beginning of the name of the dataset of the machine learning models to be listed.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"],
    #     model_name_begins_with: "ModelName",
    #     dataset_name_begins_with: "DatasetName"
    #   }
    #   options = {}
    #   response = client.list_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     model_summaries: [
    #       {
    #         model_name: "ModelName",
    #         model_arn: "ModelArn",
    #         dataset_name: "DatasetName",
    #         dataset_arn: "DatasetArn",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"],
    #         created_at: Time.now,
    #         active_model_version: 1,
    #         active_model_version_arn: "ModelVersionArn",
    #         latest_scheduled_retraining_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS", "CANCELED"],
    #         latest_scheduled_retraining_model_version: 1,
    #         latest_scheduled_retraining_start_time: Time.now,
    #         next_scheduled_retraining_start_date: Time.now,
    #         retraining_scheduler_status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #         model_diagnostics_output_configuration: {
    #           s3_output_configuration: { # required
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix"
    #           },
    #           kms_key_id: "NameOrArn"
    #         },
    #         model_quality: "QUALITY_THRESHOLD_MET" # One of: ["QUALITY_THRESHOLD_MET", "CANNOT_DETERMINE_QUALITY", "POOR_QUALITY_DETECTED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListModelsResponse]
    def list_models(params = {}, options = {})
      request = build_request(:list_models, params)
      request.send_request(options)
    end

    # <p>Lists all retraining schedulers in your account, filtering by model name prefix and
    #          status. </p>
    # @param [Hash, Types::ListRetrainingSchedulersRequest] params
    # @option params [String] :model_name_begins_with
    #   <p>Specify this field to only list retraining schedulers whose machine learning models
    #            begin with the value you specify. </p>
    # @option params [String] :status
    #   <p>Specify this field to only list retraining schedulers whose status matches the value you
    #            specify. </p>
    # @option params [String] :next_token
    #   <p>If the number of results exceeds the maximum, a pagination token is returned. Use the
    #            token in the request to show the next page of retraining schedulers.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of retraining schedulers to list. </p>
    # @example Listing retraining schedulers
    #   
    #   params = {
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_retraining_schedulers(params, options)
    #   response.to_h #=>
    #   {
    #     retraining_scheduler_summaries: [
    #       {
    #         model_name: "sample-model-1",
    #         model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model-1/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #         status: RUNNING,
    #         retraining_start_date: Time.parse("2023-06-01T00:00:00Z"),
    #         retraining_frequency: "P1M",
    #         lookback_window: "P180D"
    #       },
    #       {
    #         model_name: "sample-model-2",
    #         model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model-2/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222",
    #         status: RUNNING,
    #         retraining_start_date: Time.parse("2023-08-15T00:00:00Z"),
    #         retraining_frequency: "P30D",
    #         lookback_window: "P180D"
    #       },
    #       {
    #         model_name: "sample-model-3",
    #         model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model-3/a1b2c3d4-5678-90ab-cdef-EXAMPLE33333",
    #         status: STOPPED,
    #         retraining_start_date: Time.parse("2023-09-01T00:00:00Z"),
    #         retraining_frequency: "P1M",
    #         lookback_window: "P360D"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name_begins_with: "ModelName",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_retraining_schedulers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retraining_scheduler_summaries: [
    #       {
    #         model_name: "ModelName",
    #         model_arn: "ModelArn",
    #         status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"],
    #         retraining_start_date: Time.now,
    #         retraining_frequency: "RetrainingFrequency",
    #         lookback_window: "LookbackWindow"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRetrainingSchedulersResponse]
    def list_retraining_schedulers(params = {}, options = {})
      request = build_request(:list_retraining_schedulers, params)
      request.send_request(options)
    end

    # <p> Lists statistics about the data collected for each of the sensors that have been
    #          successfully ingested in the particular dataset. Can also be used to retreive Sensor
    #          Statistics for a previous ingestion job. </p>
    # @param [Hash, Types::ListSensorStatisticsRequest] params
    # @option params [String] :dataset_name
    #   <p> The name of the dataset associated with the list of Sensor Statistics. </p>
    # @option params [String] :ingestion_job_id
    #   <p> The ingestion job id associated with the list of Sensor Statistics. To get sensor
    #            statistics for a particular ingestion job id, both dataset name and ingestion job id must
    #            be submitted as inputs. </p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of sensors for which to retrieve statistics. </p>
    # @option params [String] :next_token
    #   <p>An opaque pagination token indicating where to continue the listing of sensor
    #            statistics. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     ingestion_job_id: "IngestionJobId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_sensor_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sensor_statistics_summaries: [
    #       {
    #         component_name: "ComponentName",
    #         sensor_name: "SensorName",
    #         data_exists: false,
    #         missing_values: {
    #           count: 1, # required
    #           percentage: 1.0, # required
    #         },
    #         invalid_values: {
    #           count: 1, # required
    #           percentage: 1.0, # required
    #         },
    #         invalid_date_entries: {
    #           count: 1, # required
    #           percentage: 1.0, # required
    #         },
    #         duplicate_timestamps: {
    #           count: 1, # required
    #           percentage: 1.0, # required
    #         },
    #         categorical_values: {
    #           status: "POTENTIAL_ISSUE_DETECTED" # One of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"], # required
    #           number_of_category: 1
    #         },
    #         multiple_operating_modes: {
    #           status: "POTENTIAL_ISSUE_DETECTED" # One of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"], # required
    #         },
    #         large_timestamp_gaps: {
    #           status: "POTENTIAL_ISSUE_DETECTED" # One of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"], # required
    #           number_of_large_timestamp_gaps: 1,
    #           max_timestamp_gap_in_days: 1
    #         },
    #         monotonic_values: {
    #           status: "POTENTIAL_ISSUE_DETECTED" # One of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"], # required
    #           monotonicity: "DECREASING" # One of: ["DECREASING", "INCREASING", "STATIC"]
    #         },
    #         data_start_time: Time.now,
    #         data_end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSensorStatisticsResponse]
    def list_sensor_statistics(params = {}, options = {})
      request = build_request(:list_sensor_statistics, params)
      request.send_request(options)
    end

    # <p>Lists all the tags for a specified resource, including key and value. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource (such as the dataset or model) that is
    #            the focus of the <code>ListTagsForResource</code> operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceArn", # required
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

    # <p>Creates a resource control policy for a given resource.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the policy is being
    #            created.</p>
    # @option params [String] :resource_policy
    #   <p>The JSON-formatted resource policy to create.</p>
    # @option params [String] :policy_revision_id
    #   <p>A unique identifier for a revision of the resource policy.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. If you do not set the client request token,
    #            Amazon Lookout for Equipment generates one. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     resource_policy: "Policy", # required
    #     policy_revision_id: "PolicyRevisionId",
    #     client_token: "IdempotenceToken", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn",
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Starts a data ingestion job. Amazon Lookout for Equipment returns the job status. </p>
    # @param [Hash, Types::StartDataIngestionJobRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset being used by the data ingestion job. </p>
    # @option params [Types::IngestionInputConfiguration] :ingestion_input_configuration
    #   <p> Specifies information for the input data for the data ingestion job, including dataset
    #            S3 location. </p>
    # @option params [String] :role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the data ingestion job. </p>
    # @option params [String] :client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetIdentifier", # required
    #     ingestion_input_configuration: { # required
    #       s3_input_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #         key_pattern: "KeyPattern"
    #       }
    #     },
    #     role_arn: "IamRoleArn", # required
    #     client_token: "IdempotenceToken", # required
    #   }
    #   options = {}
    #   response = client.start_data_ingestion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "IngestionJobId",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "IMPORT_IN_PROGRESS"]
    #   }
    # @return [Types::StartDataIngestionJobResponse]
    def start_data_ingestion_job(params = {}, options = {})
      request = build_request(:start_data_ingestion_job, params)
      request.send_request(options)
    end

    # <p>Starts an inference scheduler. </p>
    # @param [Hash, Types::StartInferenceSchedulerRequest] params
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be started. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.start_inference_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ModelArn",
    #     model_name: "ModelName",
    #     inference_scheduler_name: "InferenceSchedulerName",
    #     inference_scheduler_arn: "InferenceSchedulerArn",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   }
    # @return [Types::StartInferenceSchedulerResponse]
    def start_inference_scheduler(params = {}, options = {})
      request = build_request(:start_inference_scheduler, params)
      request.send_request(options)
    end

    # <p>Starts a retraining scheduler. </p>
    # @param [Hash, Types::StartRetrainingSchedulerRequest] params
    # @option params [String] :model_name
    #   <p>The name of the model whose retraining scheduler you want to start.</p>
    # @example Starts a retraining scheduler
    #   
    #   params = {
    #     model_name: "sample-model"
    #   }
    #   options = {}
    #   response = client.start_retraining_scheduler(params, options)
    #   response.to_h #=>
    #   {
    #     model_name: "sample-model",
    #     model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     status: PENDING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.start_retraining_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   }
    # @return [Types::StartRetrainingSchedulerResponse]
    def start_retraining_scheduler(params = {}, options = {})
      request = build_request(:start_retraining_scheduler, params)
      request.send_request(options)
    end

    # <p>Stops an inference scheduler. </p>
    # @param [Hash, Types::StopInferenceSchedulerRequest] params
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be stopped. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.stop_inference_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ModelArn",
    #     model_name: "ModelName",
    #     inference_scheduler_name: "InferenceSchedulerName",
    #     inference_scheduler_arn: "InferenceSchedulerArn",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   }
    # @return [Types::StopInferenceSchedulerResponse]
    def stop_inference_scheduler(params = {}, options = {})
      request = build_request(:stop_inference_scheduler, params)
      request.send_request(options)
    end

    # <p>Stops a retraining scheduler. </p>
    # @param [Hash, Types::StopRetrainingSchedulerRequest] params
    # @option params [String] :model_name
    #   <p>The name of the model whose retraining scheduler you want to stop.</p>
    # @example Stops a retraining scheduler
    #   
    #   params = {
    #     model_name: "sample-model"
    #   }
    #   options = {}
    #   response = client.stop_retraining_scheduler(params, options)
    #   response.to_h #=>
    #   {
    #     model_name: "sample-model",
    #     model_arn: "arn:aws:lookoutequipment:us-east-1:123456789012:model/sample-model/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111",
    #     status: STOPPING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.stop_retraining_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   }
    # @return [Types::StopRetrainingSchedulerResponse]
    def stop_retraining_scheduler(params = {}, options = {})
      request = build_request(:stop_retraining_scheduler, params)
      request.send_request(options)
    end

    # <p>Associates a given tag to a resource in your account. A tag is a key-value pair which
    #          can be added to an Amazon Lookout for Equipment resource as metadata. Tags can be used for organizing your
    #          resources as well as helping you to search and filter by tag. Multiple tags can be added to
    #          a resource, either when you create it, or later. Up to 50 tags can be associated with each
    #          resource. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the specific resource to which the tag should be
    #            associated. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag or tags to be associated with a specific resource. Both the tag key and value
    #            are specified. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceArn", # required
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

    # <p>Removes a specific tag from a given resource. The tag is specified by its key. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tag is currently associated.
    #         </p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the key of the tag to be removed from a specified resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceArn", # required
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

    # <p>Sets the active model version for a given machine learning model.</p>
    # @param [Hash, Types::UpdateActiveModelVersionRequest] params
    # @option params [String] :model_name
    #   <p>The name of the machine learning model for which the active model version is being
    #            set.</p>
    # @option params [Integer] :model_version
    #   <p>The version of the machine learning model for which the active model version is being
    #            set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     model_version: 1, # required
    #   }
    #   options = {}
    #   response = client.update_active_model_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_name: "ModelName",
    #     model_arn: "ModelArn",
    #     current_active_version: 1,
    #     previous_active_version: 1,
    #     current_active_version_arn: "ModelVersionArn",
    #     previous_active_version_arn: "ModelVersionArn"
    #   }
    # @return [Types::UpdateActiveModelVersionResponse]
    def update_active_model_version(params = {}, options = {})
      request = build_request(:update_active_model_version, params)
      request.send_request(options)
    end

    # <p>Updates an inference scheduler. </p>
    # @param [Hash, Types::UpdateInferenceSchedulerRequest] params
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be updated. </p>
    # @option params [Integer] :data_delay_offset_in_minutes
    #   <p> A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For
    #            example, if five minutes is selected, the inference scheduler will wake up at the
    #            configured frequency with the additional five minute delay time to check the customer S3
    #            bucket. The customer can upload data at the same frequency and they don't need to stop and
    #            restart the scheduler when uploading new data.</p>
    # @option params [String] :data_upload_frequency
    #   <p>How often data is uploaded to the source S3 bucket for the input data. The value chosen
    #            is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
    #            Lookout for Equipment will upload the real-time data to the source bucket once every 5
    #            minutes. This frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on
    #            your data. In this example, it starts once every 5 minutes. </p>
    # @option params [Types::InferenceInputConfiguration] :data_input_configuration
    #   <p> Specifies information for the input data for the inference scheduler, including
    #            delimiter, format, and dataset location. </p>
    # @option params [Types::InferenceOutputConfiguration] :data_output_configuration
    #   <p> Specifies information for the output results from the inference scheduler, including
    #            the output S3 location. </p>
    # @option params [String] :role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the inference scheduler. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #     data_delay_offset_in_minutes: 1,
    #     data_upload_frequency: "PT5M" # One of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"],
    #     data_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       input_time_zone_offset: "TimeZoneOffset",
    #       inference_input_name_configuration: {
    #         timestamp_format: "FileNameTimestampFormat",
    #         component_timestamp_delimiter: "ComponentTimestampDelimiter"
    #       }
    #     },
    #     data_output_configuration: {
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       kms_key_id: "NameOrArn"
    #     },
    #     role_arn: "IamRoleArn"
    #   }
    #   options = {}
    #   response = client.update_inference_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_inference_scheduler(params = {}, options = {})
      request = build_request(:update_inference_scheduler, params)
      request.send_request(options)
    end

    # <p> Updates the label group. </p>
    # @param [Hash, Types::UpdateLabelGroupRequest] params
    # @option params [String] :label_group_name
    #   <p> The name of the label group to be updated. </p>
    # @option params [Array<String>] :fault_codes
    #   <p> Updates the code indicating the type of anomaly associated with the label. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_group_name: "LabelGroupName", # required
    #     fault_codes: ["FaultCode"]
    #   }
    #   options = {}
    #   response = client.update_label_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_label_group(params = {}, options = {})
      request = build_request(:update_label_group, params)
      request.send_request(options)
    end

    # <p>Updates a model in the account.</p>
    # @param [Hash, Types::UpdateModelRequest] params
    # @option params [String] :model_name
    #   <p>The name of the model to update.</p>
    # @option params [Types::LabelsInputConfiguration] :labels_input_configuration
    #   <p>Contains the configuration information for the S3 location being used to hold label
    #            data. </p>
    # @option params [String] :role_arn
    #   <p>The ARN of the model to update.</p>
    # @option params [Types::ModelDiagnosticsOutputConfiguration] :model_diagnostics_output_configuration
    #   <p>The Amazon S3 location where you want Amazon Lookout for Equipment to save the pointwise model diagnostics for the model.
    #            You must also specify the <code>RoleArn</code> request parameter.</p>
    # @example Updates a model
    #   
    #   params = {
    #     model_name: "sample-model",
    #     labels_input_configuration: {
    #       label_group_name: "sample-label-group"
    #     }
    #   }
    #   options = {}
    #   response = client.update_model(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     labels_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       label_group_name: "LabelGroupName"
    #     },
    #     role_arn: "IamRoleArn",
    #     model_diagnostics_output_configuration: {
    #       s3_output_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix"
    #       },
    #       kms_key_id: "NameOrArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_model(params = {}, options = {})
      request = build_request(:update_model, params)
      request.send_request(options)
    end

    # <p>Updates a retraining scheduler. </p>
    # @param [Hash, Types::UpdateRetrainingSchedulerRequest] params
    # @option params [String] :model_name
    #   <p>The name of the model whose retraining scheduler you want to update. </p>
    # @option params [Time] :retraining_start_date
    #   <p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the
    #            nearest UTC day.</p>
    # @option params [String] :retraining_frequency
    #   <p>This parameter uses the <a href="https://en.wikipedia.org/wiki/ISO_8601#Durations">ISO 8601</a> standard to set the frequency at which you want retraining to occur in
    #            terms of Years, Months, and/or Days (note: other parameters like Time are not currently
    #            supported). The minimum value is 30 days (P30D) and the maximum value is 1 year (P1Y). For
    #            example, the following values are valid:</p>
    #            <ul>
    #               <li>
    #                  <p>P3M15D – Every 3 months and 15 days</p>
    #               </li>
    #               <li>
    #                  <p>P2M – Every 2 months</p>
    #               </li>
    #               <li>
    #                  <p>P150D – Every 150 days</p>
    #               </li>
    #            </ul>
    # @option params [String] :lookback_window
    #   <p>The number of past days of data that will be used for retraining.</p>
    # @option params [String] :promote_mode
    #   <p>Indicates how the service will use new models. In <code>MANAGED</code> mode, new models
    #            will automatically be used for inference if they have better performance than the current
    #            model. In <code>MANUAL</code> mode, the new models will not be used <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation">until they
    #               are manually activated</a>.</p>
    # @example Updates a retraining scheduler
    #   
    #   params = {
    #     model_name: "sample-model",
    #     retraining_start_date: Time.parse("2024-01-01T00:00:00Z"),
    #     retraining_frequency: "P1Y"
    #   }
    #   options = {}
    #   response = client.update_retraining_scheduler(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #     retraining_start_date: Time.now,
    #     retraining_frequency: "RetrainingFrequency",
    #     lookback_window: "LookbackWindow",
    #     promote_mode: "MANAGED" # One of: ["MANAGED", "MANUAL"]
    #   }
    #   options = {}
    #   response = client.update_retraining_scheduler(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_retraining_scheduler(params = {}, options = {})
      request = build_request(:update_retraining_scheduler, params)
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
      context[:gem_name] = 'aws-sdk-lookoutequipment'
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

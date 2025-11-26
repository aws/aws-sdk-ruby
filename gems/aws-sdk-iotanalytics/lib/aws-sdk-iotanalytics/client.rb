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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iotanalytics)

module Aws::IoTAnalytics
  # An API client for Aws::IoTAnalytics.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIoTAnalytics
    @identifier = :iotanalytics

    add_plugin(::Aws::IoTAnalytics::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTAnalytics::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Sends messages to a channel.</p>
    # @param [Hash, Types::BatchPutMessageRequest] params
    # @option params [String] :channel_name
    #   <p>The name of the channel where the messages are sent.</p>
    # @option params [Array<Types::Message>] :messages
    #   <p>The list of messages to be sent. Each message has the format: { "messageId": "string",
    #            "payload": "string"}.</p>
    #            <p>The field names of message payloads (data) that you send to IoT Analytics:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain only alphanumeric characters and undescores (_). No other special characters are
    #                  allowed.</p>
    #               </li>
    #               <li>
    #                  <p>Must begin with an alphabetic character or single underscore (_).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain hyphens (-).</p>
    #               </li>
    #               <li>
    #                  <p>In regular expression terms: "^[A-Za-z_]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9_]*)$".
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Cannot be more than 255 characters.</p>
    #               </li>
    #               <li>
    #                  <p>Are case insensitive. (Fields named foo and FOO in the same payload are considered
    #                  duplicates.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, {"temp_01": 29} or {"_temp_01": 29} are valid, but {"temp-01": 29},
    #    {"01_temp": 29} or {"__temp_01": 29} are invalid in message payloads.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName", # required
    #     messages: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         payload: "data", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_put_message_error_entries: [
    #       {
    #         message_id: "MessageId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutMessageResponse]
    def batch_put_message(params = {}, options = {})
      request = build_request(:batch_put_message, params)
      request.send_request(options)
    end

    # <p>Cancels the reprocessing of data through the pipeline.</p>
    # @param [Hash, Types::CancelPipelineReprocessingRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of pipeline for which data reprocessing is canceled.</p>
    # @option params [String] :reprocessing_id
    #   <p>The ID of the reprocessing task (returned by
    #         <code>StartPipelineReprocessing</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     reprocessing_id: "ReprocessingId", # required
    #   }
    #   options = {}
    #   response = client.cancel_pipeline_reprocessing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelPipelineReprocessingResponse]
    def cancel_pipeline_reprocessing(params = {}, options = {})
      request = build_request(:cancel_pipeline_reprocessing, params)
      request.send_request(options)
    end

    # <p>Used to create a channel. A channel collects data from an MQTT topic and archives the raw,
    #       unprocessed messages before publishing the data to a pipeline.</p>
    # @param [Hash, Types::CreateChannelRequest] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @option params [Types::ChannelStorage] :channel_storage
    #   <p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
    #           <code>customerManagedS3</code> storage. If not specified, the default is
    #           <code>serviceManagedS3</code>. You can't change this storage option after the channel is
    #         created.</p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the channel. When
    #           <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName", # required
    #     channel_storage: {
    #       service_managed_s3: {
    #       },
    #       customer_managed_s3: {
    #         bucket: "BucketName", # required
    #         key_prefix: "S3KeyPrefix",
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_name: "ChannelName",
    #     channel_arn: "ChannelArn",
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     }
    #   }
    # @return [Types::CreateChannelResponse]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # <p>Used to create a dataset. A dataset stores data retrieved from a data store by applying a
    #         <code>queryAction</code> (a SQL query) or a <code>containerAction</code> (executing a
    #       containerized application). This operation creates the skeleton of a dataset. The dataset can
    #       be populated manually by calling <code>CreateDatasetContent</code> or automatically according
    #       to a trigger you specify.</p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset.</p>
    # @option params [Array<Types::DatasetAction>] :actions
    #   <p>A list of actions that create the dataset contents.</p>
    # @option params [Array<Types::DatasetTrigger>] :triggers
    #   <p>A list of triggers. A trigger causes dataset contents to be populated at a specified time
    #         interval or when another dataset's contents are created. The list of triggers can be empty or
    #         contain up to five <code>DataSetTrigger</code> objects.</p>
    # @option params [Array<Types::DatasetContentDeliveryRule>] :content_delivery_rules
    #   <p>When dataset contents are created, they are delivered to destinations specified
    #         here.</p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>Optional. How long, in days, versions of dataset contents are kept for the dataset. If not
    #         specified or set to <code>null</code>, versions of dataset contents are retained for at most
    #         90 days. The number of versions of dataset contents retained is determined by the
    #           <code>versioningConfiguration</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions">
    #           Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    # @option params [Types::VersioningConfiguration] :versioning_configuration
    #   <p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
    #         only the latest version plus the latest succeeded version (if they are different) are kept for
    #         the time period specified by the <code>retentionPeriod</code> parameter. For more information,
    #         see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions">Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the dataset.</p>
    # @option params [Array<Types::LateDataRule>] :late_data_rules
    #   <p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     actions: [ # required
    #       {
    #         action_name: "DatasetActionName",
    #         query_action: {
    #           sql_query: "SqlQuery", # required
    #           filters: [
    #             {
    #               delta_time: {
    #                 offset_seconds: 1, # required
    #                 time_expression: "TimeExpression", # required
    #               }
    #             }
    #           ]
    #         },
    #         container_action: {
    #           image: "Image", # required
    #           execution_role_arn: "RoleArn", # required
    #           resource_configuration: { # required
    #             compute_type: "ACU_1" # One of: ["ACU_1", "ACU_2"], # required
    #             volume_size_in_gb: 1, # required
    #           },
    #           variables: [
    #             {
    #               name: "VariableName", # required
    #               string_value: "StringValue",
    #               double_value: 1.0,
    #               dataset_content_version_value: {
    #                 dataset_name: "DatasetName", # required
    #               },
    #               output_file_uri_value: {
    #                 file_name: "OutputFileName", # required
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     triggers: [
    #       {
    #         schedule: {
    #           expression: "ScheduleExpression"
    #         },
    #         dataset: {
    #           name: "DatasetName", # required
    #         }
    #       }
    #     ],
    #     content_delivery_rules: [
    #       {
    #         entry_name: "EntryName",
    #         destination: { # required
    #           iot_events_destination_configuration: {
    #             input_name: "IotEventsInputName", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           s3_destination_configuration: {
    #             bucket: "BucketName", # required
    #             key: "BucketKeyExpression", # required
    #             glue_configuration: {
    #               table_name: "GlueTableName", # required
    #               database_name: "GlueDatabaseName", # required
    #             },
    #             role_arn: "RoleArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     versioning_configuration: {
    #       unlimited: false,
    #       max_versions: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     late_data_rules: [
    #       {
    #         rule_name: "LateDataRuleName",
    #         rule_configuration: { # required
    #           delta_time_session_window_configuration: {
    #             timeout_in_minutes: 1, # required
    #           }
    #         }
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
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     }
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>Creates the content of a dataset by applying a <code>queryAction</code> (a SQL query) or a
    #         <code>containerAction</code> (executing a containerized application).</p>
    # @param [Hash, Types::CreateDatasetContentRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset.</p>
    # @option params [String] :version_id
    #   <p>The version ID of the dataset content. To specify <code>versionId</code> for a dataset
    #         content, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     version_id: "DatasetContentVersion"
    #   }
    #   options = {}
    #   response = client.create_dataset_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version_id: "DatasetContentVersion"
    #   }
    # @return [Types::CreateDatasetContentResponse]
    def create_dataset_content(params = {}, options = {})
      request = build_request(:create_dataset_content, params)
      request.send_request(options)
    end

    # <p>Creates a data store, which is a repository for messages.</p>
    # @param [Hash, Types::CreateDatastoreRequest] params
    # @option params [String] :datastore_name
    #   <p>The name of the data store.</p>
    # @option params [Types::DatastoreStorage] :datastore_storage
    #   <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the data store. When
    #           <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the data store.</p>
    # @option params [Types::FileFormatConfiguration] :file_format_configuration
    #   <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #            <p>The default file format is JSON. You can specify only one format.</p>
    #            <p>You can't change the file format after you create the data store.</p>
    # @option params [Types::DatastorePartitions] :datastore_partitions
    #   <p> Contains information about the partition dimensions in a data store. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_name: "DatastoreName", # required
    #     datastore_storage: {
    #       # One of:
    #       service_managed_s3: {
    #       },
    #       customer_managed_s3: {
    #         bucket: "BucketName", # required
    #         key_prefix: "S3KeyPrefix",
    #         role_arn: "RoleArn", # required
    #       },
    #       iot_site_wise_multi_layer_storage: {
    #         customer_managed_s3_storage: { # required
    #           bucket: "BucketName", # required
    #           key_prefix: "S3KeyPrefix"
    #         }
    #       }
    #     },
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_format_configuration: {
    #       json_configuration: {
    #       },
    #       parquet_configuration: {
    #         schema_definition: {
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "ColumnDataType", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     datastore_partitions: {
    #       partitions: [
    #         {
    #           attribute_partition: {
    #             attribute_name: "PartitionAttributeName", # required
    #           },
    #           timestamp_partition: {
    #             attribute_name: "PartitionAttributeName", # required
    #             timestamp_format: "TimestampFormat"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_name: "DatastoreName",
    #     datastore_arn: "DatastoreArn",
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     }
    #   }
    # @return [Types::CreateDatastoreResponse]
    def create_datastore(params = {}, options = {})
      request = build_request(:create_datastore, params)
      request.send_request(options)
    end

    # <p>Creates a pipeline. A pipeline consumes messages from a channel and allows you to process
    #       the messages before storing them in a data store. You must specify both a <code>channel</code>
    #       and a <code>datastore</code> activity and, optionally, as many as 23 additional activities in
    #       the <code>pipelineActivities</code> array.</p>
    # @param [Hash, Types::CreatePipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline.</p>
    # @option params [Array<Types::PipelineActivity>] :pipeline_activities
    #   <p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
    #         your messages, such as removing, renaming or adding message attributes; filtering messages
    #         based on attribute values; invoking your Lambda unctions on messages for advanced processing;
    #         or performing mathematical transformations to normalize device data.</p>
    #            <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
    #           <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
    #         contain only one activity. For example:</p>
    #            <p>
    #               <code>pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ...
    #         ]</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     pipeline_activities: [ # required
    #       {
    #         channel: {
    #           name: "ActivityName", # required
    #           channel_name: "ChannelName", # required
    #           next: "ActivityName"
    #         },
    #         lambda: {
    #           name: "ActivityName", # required
    #           lambda_name: "LambdaName", # required
    #           batch_size: 1, # required
    #           next: "ActivityName"
    #         },
    #         datastore: {
    #           name: "ActivityName", # required
    #           datastore_name: "DatastoreName", # required
    #         },
    #         add_attributes: {
    #           name: "ActivityName", # required
    #           attributes: { # required
    #             "AttributeName" => "AttributeName"
    #           },
    #           next: "ActivityName"
    #         },
    #         remove_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName"
    #         },
    #         select_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName"
    #         },
    #         filter: {
    #           name: "ActivityName", # required
    #           filter: "FilterExpression", # required
    #           next: "ActivityName"
    #         },
    #         math: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           math: "MathExpression", # required
    #           next: "ActivityName"
    #         },
    #         device_registry_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName"
    #         },
    #         device_shadow_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName"
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_name: "PipelineName",
    #     pipeline_arn: "PipelineArn"
    #   }
    # @return [Types::CreatePipelineResponse]
    def create_pipeline(params = {}, options = {})
      request = build_request(:create_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes the specified channel.</p>
    # @param [Hash, Types::DeleteChannelRequest] params
    # @option params [String] :channel_name
    #   <p>The name of the channel to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName", # required
    #   }
    #   options = {}
    #   response = client.delete_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel(params = {}, options = {})
      request = build_request(:delete_channel, params)
      request.send_request(options)
    end

    # <p>Deletes the specified dataset.</p>
    #          <p>You do not have to delete the content of the dataset before you perform this
    #       operation.</p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
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

    # <p>Deletes the content of the specified dataset.</p>
    # @param [Hash, Types::DeleteDatasetContentRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose content is deleted.</p>
    # @option params [String] :version_id
    #   <p>The version of the dataset whose content is deleted. You can also use the strings
    #         "$LATEST" or "$LATEST_SUCCEEDED" to delete the latest or latest successfully completed data
    #         set. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     version_id: "DatasetContentVersion"
    #   }
    #   options = {}
    #   response = client.delete_dataset_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_dataset_content(params = {}, options = {})
      request = build_request(:delete_dataset_content, params)
      request.send_request(options)
    end

    # <p>Deletes the specified data store.</p>
    # @param [Hash, Types::DeleteDatastoreRequest] params
    # @option params [String] :datastore_name
    #   <p>The name of the data store to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_name: "DatastoreName", # required
    #   }
    #   options = {}
    #   response = client.delete_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_datastore(params = {}, options = {})
      request = build_request(:delete_datastore, params)
      request.send_request(options)
    end

    # <p>Deletes the specified pipeline.</p>
    # @param [Hash, Types::DeletePipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.delete_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_pipeline(params = {}, options = {})
      request = build_request(:delete_pipeline, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a channel.</p>
    # @param [Hash, Types::DescribeChannelRequest] params
    # @option params [String] :channel_name
    #   <p>The name of the channel whose information is retrieved.</p>
    # @option params [Boolean] :include_statistics
    #   <p>If true, additional statistical information about the channel is included in the response.
    #         This feature can't be used with a channel whose S3 storage is customer-managed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName", # required
    #     include_statistics: false
    #   }
    #   options = {}
    #   response = client.describe_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel: {
    #       name: "ChannelName",
    #       storage: {
    #         service_managed_s3: {
    #         },
    #         customer_managed_s3: {
    #           bucket: "BucketName", # required
    #           key_prefix: "S3KeyPrefix",
    #           role_arn: "RoleArn", # required
    #         }
    #       },
    #       arn: "ChannelArn",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING"],
    #       retention_period: {
    #         unlimited: false,
    #         number_of_days: 1
    #       },
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       last_message_arrival_time: Time.now
    #     },
    #     statistics: {
    #       size: {
    #         estimated_size_in_bytes: 1.0,
    #         estimated_on: Time.now
    #       }
    #     }
    #   }
    # @return [Types::DescribeChannelResponse]
    def describe_channel(params = {}, options = {})
      request = build_request(:describe_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a dataset.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose information is retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       name: "DatasetName",
    #       arn: "DatasetArn",
    #       actions: [
    #         {
    #           action_name: "DatasetActionName",
    #           query_action: {
    #             sql_query: "SqlQuery", # required
    #             filters: [
    #               {
    #                 delta_time: {
    #                   offset_seconds: 1, # required
    #                   time_expression: "TimeExpression", # required
    #                 }
    #               }
    #             ]
    #           },
    #           container_action: {
    #             image: "Image", # required
    #             execution_role_arn: "RoleArn", # required
    #             resource_configuration: { # required
    #               compute_type: "ACU_1" # One of: ["ACU_1", "ACU_2"], # required
    #               volume_size_in_gb: 1, # required
    #             },
    #             variables: [
    #               {
    #                 name: "VariableName", # required
    #                 string_value: "StringValue",
    #                 double_value: 1.0,
    #                 dataset_content_version_value: {
    #                   dataset_name: "DatasetName", # required
    #                 },
    #                 output_file_uri_value: {
    #                   file_name: "OutputFileName", # required
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       triggers: [
    #         {
    #           schedule: {
    #             expression: "ScheduleExpression"
    #           },
    #           dataset: {
    #             name: "DatasetName", # required
    #           }
    #         }
    #       ],
    #       content_delivery_rules: [
    #         {
    #           entry_name: "EntryName",
    #           destination: { # required
    #             iot_events_destination_configuration: {
    #               input_name: "IotEventsInputName", # required
    #               role_arn: "RoleArn", # required
    #             },
    #             s3_destination_configuration: {
    #               bucket: "BucketName", # required
    #               key: "BucketKeyExpression", # required
    #               glue_configuration: {
    #                 table_name: "GlueTableName", # required
    #                 database_name: "GlueDatabaseName", # required
    #               },
    #               role_arn: "RoleArn", # required
    #             }
    #           }
    #         }
    #       ],
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING"],
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       retention_period: {
    #         unlimited: false,
    #         number_of_days: 1
    #       },
    #       versioning_configuration: {
    #         unlimited: false,
    #         max_versions: 1
    #       },
    #       late_data_rules: [
    #         {
    #           rule_name: "LateDataRuleName",
    #           rule_configuration: { # required
    #             delta_time_session_window_configuration: {
    #               timeout_in_minutes: 1, # required
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a data store.</p>
    # @param [Hash, Types::DescribeDatastoreRequest] params
    # @option params [String] :datastore_name
    #   <p>The name of the data store</p>
    # @option params [Boolean] :include_statistics
    #   <p>If true, additional statistical information about the data store is included in the
    #         response. This feature can't be used with a data store whose S3 storage is
    #         customer-managed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_name: "DatastoreName", # required
    #     include_statistics: false
    #   }
    #   options = {}
    #   response = client.describe_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore: {
    #       name: "DatastoreName",
    #       storage: {
    #         # One of:
    #         service_managed_s3: {
    #         },
    #         customer_managed_s3: {
    #           bucket: "BucketName", # required
    #           key_prefix: "S3KeyPrefix",
    #           role_arn: "RoleArn", # required
    #         },
    #         iot_site_wise_multi_layer_storage: {
    #           customer_managed_s3_storage: { # required
    #             bucket: "BucketName", # required
    #             key_prefix: "S3KeyPrefix"
    #           }
    #         }
    #       },
    #       arn: "DatastoreArn",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING"],
    #       retention_period: {
    #         unlimited: false,
    #         number_of_days: 1
    #       },
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       last_message_arrival_time: Time.now,
    #       file_format_configuration: {
    #         json_configuration: {
    #         },
    #         parquet_configuration: {
    #           schema_definition: {
    #             columns: [
    #               {
    #                 name: "ColumnName", # required
    #                 type: "ColumnDataType", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       datastore_partitions: {
    #         partitions: [
    #           {
    #             attribute_partition: {
    #               attribute_name: "PartitionAttributeName", # required
    #             },
    #             timestamp_partition: {
    #               attribute_name: "PartitionAttributeName", # required
    #               timestamp_format: "TimestampFormat"
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     statistics: {
    #       size: {
    #         estimated_size_in_bytes: 1.0,
    #         estimated_on: Time.now
    #       }
    #     }
    #   }
    # @return [Types::DescribeDatastoreResponse]
    def describe_datastore(params = {}, options = {})
      request = build_request(:describe_datastore, params)
      request.send_request(options)
    end

    # <p>Retrieves the current settings of the IoT Analytics logging options.</p>
    # @param [Hash, Types::DescribeLoggingOptionsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_options: {
    #       role_arn: "RoleArn", # required
    #       level: "ERROR" # One of: ["ERROR"], # required
    #       enabled: false, # required
    #     }
    #   }
    # @return [Types::DescribeLoggingOptionsResponse]
    def describe_logging_options(params = {}, options = {})
      request = build_request(:describe_logging_options, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a pipeline.</p>
    # @param [Hash, Types::DescribePipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline whose information is retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.describe_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       name: "PipelineName",
    #       arn: "PipelineArn",
    #       activities: [
    #         {
    #           channel: {
    #             name: "ActivityName", # required
    #             channel_name: "ChannelName", # required
    #             next: "ActivityName"
    #           },
    #           lambda: {
    #             name: "ActivityName", # required
    #             lambda_name: "LambdaName", # required
    #             batch_size: 1, # required
    #             next: "ActivityName"
    #           },
    #           datastore: {
    #             name: "ActivityName", # required
    #             datastore_name: "DatastoreName", # required
    #           },
    #           add_attributes: {
    #             name: "ActivityName", # required
    #             attributes: { # required
    #               "AttributeName" => "AttributeName"
    #             },
    #             next: "ActivityName"
    #           },
    #           remove_attributes: {
    #             name: "ActivityName", # required
    #             attributes: ["AttributeName"], # required
    #             next: "ActivityName"
    #           },
    #           select_attributes: {
    #             name: "ActivityName", # required
    #             attributes: ["AttributeName"], # required
    #             next: "ActivityName"
    #           },
    #           filter: {
    #             name: "ActivityName", # required
    #             filter: "FilterExpression", # required
    #             next: "ActivityName"
    #           },
    #           math: {
    #             name: "ActivityName", # required
    #             attribute: "AttributeName", # required
    #             math: "MathExpression", # required
    #             next: "ActivityName"
    #           },
    #           device_registry_enrich: {
    #             name: "ActivityName", # required
    #             attribute: "AttributeName", # required
    #             thing_name: "AttributeName", # required
    #             role_arn: "RoleArn", # required
    #             next: "ActivityName"
    #           },
    #           device_shadow_enrich: {
    #             name: "ActivityName", # required
    #             attribute: "AttributeName", # required
    #             thing_name: "AttributeName", # required
    #             role_arn: "RoleArn", # required
    #             next: "ActivityName"
    #           }
    #         }
    #       ],
    #       reprocessing_summaries: [
    #         {
    #           id: "ReprocessingId",
    #           status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "CANCELLED", "FAILED"],
    #           creation_time: Time.now
    #         }
    #       ],
    #       creation_time: Time.now,
    #       last_update_time: Time.now
    #     }
    #   }
    # @return [Types::DescribePipelineResponse]
    def describe_pipeline(params = {}, options = {})
      request = build_request(:describe_pipeline, params)
      request.send_request(options)
    end

    # <p>Retrieves the contents of a dataset as presigned URIs.</p>
    # @param [Hash, Types::GetDatasetContentRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose contents are retrieved.</p>
    # @option params [String] :version_id
    #   <p>The version of the dataset whose contents are retrieved. You can also use the strings
    #         "$LATEST" or "$LATEST_SUCCEEDED" to retrieve the contents of the latest or latest successfully
    #         completed dataset. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     version_id: "DatasetContentVersion"
    #   }
    #   options = {}
    #   response = client.get_dataset_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entries: [
    #       {
    #         entry_name: "EntryName",
    #         data_uri: "PresignedURI"
    #       }
    #     ],
    #     timestamp: Time.now,
    #     status: {
    #       state: "CREATING" # One of: ["CREATING", "SUCCEEDED", "FAILED"],
    #       reason: "Reason"
    #     }
    #   }
    # @return [Types::GetDatasetContentResponse]
    def get_dataset_content(params = {}, options = {})
      request = build_request(:get_dataset_content, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of channels.</p>
    # @param [Hash, Types::ListChannelsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_summaries: [
    #       {
    #         channel_name: "ChannelName",
    #         channel_storage: {
    #           service_managed_s3: {
    #           },
    #           customer_managed_s3: {
    #             bucket: "BucketName",
    #             key_prefix: "S3KeyPrefix",
    #             role_arn: "RoleArn"
    #           }
    #         },
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING"],
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         last_message_arrival_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelsResponse]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>Lists information about dataset contents that have been created.</p>
    # @param [Hash, Types::ListDatasetContentsRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose contents information you want to list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @option params [Time] :scheduled_on_or_after
    #   <p>A filter to limit results to those dataset contents whose creation is scheduled on or
    #         after the given time. See the field <code>triggers.schedule</code> in the
    #           <code>CreateDataset</code> request. (timestamp)</p>
    # @option params [Time] :scheduled_before
    #   <p>A filter to limit results to those dataset contents whose creation is scheduled before the
    #         given time. See the field <code>triggers.schedule</code> in the <code>CreateDataset</code>
    #         request. (timestamp)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     scheduled_on_or_after: Time.now,
    #     scheduled_before: Time.now
    #   }
    #   options = {}
    #   response = client.list_dataset_contents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_content_summaries: [
    #       {
    #         version: "DatasetContentVersion",
    #         status: {
    #           state: "CREATING" # One of: ["CREATING", "SUCCEEDED", "FAILED"],
    #           reason: "Reason"
    #         },
    #         creation_time: Time.now,
    #         schedule_time: Time.now,
    #         completion_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetContentsResponse]
    def list_dataset_contents(params = {}, options = {})
      request = build_request(:list_dataset_contents, params)
      request.send_request(options)
    end

    # <p>Retrieves information about datasets.</p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
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
    #     dataset_summaries: [
    #       {
    #         dataset_name: "DatasetName",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING"],
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         triggers: [
    #           {
    #             schedule: {
    #               expression: "ScheduleExpression"
    #             },
    #             dataset: {
    #               name: "DatasetName", # required
    #             }
    #           }
    #         ],
    #         actions: [
    #           {
    #             action_name: "DatasetActionName",
    #             action_type: "QUERY" # One of: ["QUERY", "CONTAINER"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of data stores.</p>
    # @param [Hash, Types::ListDatastoresRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datastores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_summaries: [
    #       {
    #         datastore_name: "DatastoreName",
    #         datastore_storage: {
    #           service_managed_s3: {
    #           },
    #           customer_managed_s3: {
    #             bucket: "BucketName",
    #             key_prefix: "S3KeyPrefix",
    #             role_arn: "RoleArn"
    #           },
    #           iot_site_wise_multi_layer_storage: {
    #             customer_managed_s3_storage: {
    #               bucket: "BucketName",
    #               key_prefix: "S3KeyPrefix"
    #             }
    #           }
    #         },
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING"],
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         last_message_arrival_time: Time.now,
    #         file_format_type: "JSON" # One of: ["JSON", "PARQUET"],
    #         datastore_partitions: {
    #           partitions: [
    #             {
    #               attribute_partition: {
    #                 attribute_name: "PartitionAttributeName", # required
    #               },
    #               timestamp_partition: {
    #                 attribute_name: "PartitionAttributeName", # required
    #                 timestamp_format: "TimestampFormat"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatastoresResponse]
    def list_datastores(params = {}, options = {})
      request = build_request(:list_datastores, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of pipelines.</p>
    # @param [Hash, Types::ListPipelinesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_summaries: [
    #       {
    #         pipeline_name: "PipelineName",
    #         reprocessing_summaries: [
    #           {
    #             id: "ReprocessingId",
    #             status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "CANCELLED", "FAILED"],
    #             creation_time: Time.now
    #           }
    #         ],
    #         creation_time: Time.now,
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPipelinesResponse]
    def list_pipelines(params = {}, options = {})
      request = build_request(:list_pipelines, params)
      request.send_request(options)
    end

    # <p>Lists the tags (metadata) that you have assigned to the resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Sets or updates the IoT Analytics logging options.</p>
    #          <p>If you update the value of any <code>loggingOptions</code> field, it takes up to one
    #       minute for the change to take effect. Also, if you change the policy attached to the role you
    #       specified in the <code>roleArn</code> field (for example, to correct an invalid policy), it
    #       takes up to five minutes for that change to take effect. </p>
    # @param [Hash, Types::PutLoggingOptionsRequest] params
    # @option params [Types::LoggingOptions] :logging_options
    #   <p>The new values of the IoT Analytics logging options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     logging_options: { # required
    #       role_arn: "RoleArn", # required
    #       level: "ERROR" # One of: ["ERROR"], # required
    #       enabled: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_logging_options(params = {}, options = {})
      request = build_request(:put_logging_options, params)
      request.send_request(options)
    end

    # <p>Simulates the results of running a pipeline activity on a message payload.</p>
    # @param [Hash, Types::RunPipelineActivityRequest] params
    # @option params [Types::PipelineActivity] :pipeline_activity
    #   <p>The pipeline activity that is run. This must not be a channel activity or a data store
    #         activity because these activities are used in a pipeline only to load the original message and
    #         to store the (possibly) transformed message. If a Lambda activity is specified, only
    #         short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be
    #         used.</p>
    # @option params [Array<String>] :payloads
    #   <p>The sample message payloads on which the pipeline activity is run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_activity: { # required
    #       channel: {
    #         name: "ActivityName", # required
    #         channel_name: "ChannelName", # required
    #         next: "ActivityName"
    #       },
    #       lambda: {
    #         name: "ActivityName", # required
    #         lambda_name: "LambdaName", # required
    #         batch_size: 1, # required
    #         next: "ActivityName"
    #       },
    #       datastore: {
    #         name: "ActivityName", # required
    #         datastore_name: "DatastoreName", # required
    #       },
    #       add_attributes: {
    #         name: "ActivityName", # required
    #         attributes: { # required
    #           "AttributeName" => "AttributeName"
    #         },
    #         next: "ActivityName"
    #       },
    #       remove_attributes: {
    #         name: "ActivityName", # required
    #         attributes: ["AttributeName"], # required
    #         next: "ActivityName"
    #       },
    #       select_attributes: {
    #         name: "ActivityName", # required
    #         attributes: ["AttributeName"], # required
    #         next: "ActivityName"
    #       },
    #       filter: {
    #         name: "ActivityName", # required
    #         filter: "FilterExpression", # required
    #         next: "ActivityName"
    #       },
    #       math: {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         math: "MathExpression", # required
    #         next: "ActivityName"
    #       },
    #       device_registry_enrich: {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         thing_name: "AttributeName", # required
    #         role_arn: "RoleArn", # required
    #         next: "ActivityName"
    #       },
    #       device_shadow_enrich: {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         thing_name: "AttributeName", # required
    #         role_arn: "RoleArn", # required
    #         next: "ActivityName"
    #       }
    #     },
    #     payloads: ["data"], # required
    #   }
    #   options = {}
    #   response = client.run_pipeline_activity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payloads: ["data"],
    #     log_result: "LogResult"
    #   }
    # @return [Types::RunPipelineActivityResponse]
    def run_pipeline_activity(params = {}, options = {})
      request = build_request(:run_pipeline_activity, params)
      request.send_request(options)
    end

    # <p>Retrieves a sample of messages from the specified channel ingested during the specified
    #       timeframe. Up to 10 messages can be retrieved.</p>
    # @param [Hash, Types::SampleChannelDataRequest] params
    # @option params [String] :channel_name
    #   <p>The name of the channel whose message samples are retrieved.</p>
    # @option params [Integer] :max_messages
    #   <p>The number of sample messages to be retrieved. The limit is 10. The default is also
    #         10.</p>
    # @option params [Time] :start_time
    #   <p>The start of the time window from which sample messages are retrieved.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time window from which sample messages are retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName", # required
    #     max_messages: 1,
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    #   options = {}
    #   response = client.sample_channel_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payloads: ["data"]
    #   }
    # @return [Types::SampleChannelDataResponse]
    def sample_channel_data(params = {}, options = {})
      request = build_request(:sample_channel_data, params)
      request.send_request(options)
    end

    # <p>Starts the reprocessing of raw message data through the pipeline.</p>
    # @param [Hash, Types::StartPipelineReprocessingRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline on which to start reprocessing.</p>
    # @option params [Time] :start_time
    #   <p>The start time (inclusive) of raw message data that is reprocessed.</p>
    #            <p>If you specify a value for the <code>startTime</code> parameter, you must not use the
    #           <code>channelMessages</code> object.</p>
    # @option params [Time] :end_time
    #   <p>The end time (exclusive) of raw message data that is reprocessed.</p>
    #            <p>If you specify a value for the <code>endTime</code> parameter, you must not use the
    #           <code>channelMessages</code> object.</p>
    # @option params [Types::ChannelMessages] :channel_messages
    #   <p>Specifies one or more sets of channel messages that you want to reprocess.</p>
    #            <p>If you use the <code>channelMessages</code> object, you must not specify a value for
    #           <code>startTime</code> and <code>endTime</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     channel_messages: {
    #       s3_paths: ["S3PathChannelMessage"]
    #     }
    #   }
    #   options = {}
    #   response = client.start_pipeline_reprocessing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reprocessing_id: "ReprocessingId"
    #   }
    # @return [Types::StartPipelineReprocessingResponse]
    def start_pipeline_reprocessing(params = {}, options = {})
      request = build_request(:start_pipeline_reprocessing, params)
      request.send_request(options)
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used to
    #       manage a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to modify.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The new or modified tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Removes the given tags (metadata) from the resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to remove.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of those tags which you want to remove.</p>
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

    # <p>Used to update the settings of a channel.</p>
    # @param [Hash, Types::UpdateChannelRequest] params
    # @option params [String] :channel_name
    #   <p>The name of the channel to be updated.</p>
    # @option params [Types::ChannelStorage] :channel_storage
    #   <p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
    #           <code>customerManagedS3</code> storage. If not specified, the default is
    #           <code>serviceManagedS3</code>. You can't change this storage option after the channel is
    #         created.</p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the channel. The retention period can't be
    #         updated if the channel's Amazon S3 storage is customer-managed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName", # required
    #     channel_storage: {
    #       service_managed_s3: {
    #       },
    #       customer_managed_s3: {
    #         bucket: "BucketName", # required
    #         key_prefix: "S3KeyPrefix",
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # <p>Updates the settings of a dataset.</p>
    # @param [Hash, Types::UpdateDatasetRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to update.</p>
    # @option params [Array<Types::DatasetAction>] :actions
    #   <p>A list of <code>DatasetAction</code> objects.</p>
    # @option params [Array<Types::DatasetTrigger>] :triggers
    #   <p>A list of <code>DatasetTrigger</code> objects. The list can be empty or can contain up to
    #         five <code>DatasetTrigger</code> objects.</p>
    # @option params [Array<Types::DatasetContentDeliveryRule>] :content_delivery_rules
    #   <p>When dataset contents are created, they are delivered to destinations specified
    #         here.</p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>How long, in days, dataset contents are kept for the dataset.</p>
    # @option params [Types::VersioningConfiguration] :versioning_configuration
    #   <p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
    #         only the latest version plus the latest succeeded version (if they are different) are kept for
    #         the time period specified by the <code>retentionPeriod</code> parameter. For more information,
    #         see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions">Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    # @option params [Array<Types::LateDataRule>] :late_data_rules
    #   <p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     actions: [ # required
    #       {
    #         action_name: "DatasetActionName",
    #         query_action: {
    #           sql_query: "SqlQuery", # required
    #           filters: [
    #             {
    #               delta_time: {
    #                 offset_seconds: 1, # required
    #                 time_expression: "TimeExpression", # required
    #               }
    #             }
    #           ]
    #         },
    #         container_action: {
    #           image: "Image", # required
    #           execution_role_arn: "RoleArn", # required
    #           resource_configuration: { # required
    #             compute_type: "ACU_1" # One of: ["ACU_1", "ACU_2"], # required
    #             volume_size_in_gb: 1, # required
    #           },
    #           variables: [
    #             {
    #               name: "VariableName", # required
    #               string_value: "StringValue",
    #               double_value: 1.0,
    #               dataset_content_version_value: {
    #                 dataset_name: "DatasetName", # required
    #               },
    #               output_file_uri_value: {
    #                 file_name: "OutputFileName", # required
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     triggers: [
    #       {
    #         schedule: {
    #           expression: "ScheduleExpression"
    #         },
    #         dataset: {
    #           name: "DatasetName", # required
    #         }
    #       }
    #     ],
    #     content_delivery_rules: [
    #       {
    #         entry_name: "EntryName",
    #         destination: { # required
    #           iot_events_destination_configuration: {
    #             input_name: "IotEventsInputName", # required
    #             role_arn: "RoleArn", # required
    #           },
    #           s3_destination_configuration: {
    #             bucket: "BucketName", # required
    #             key: "BucketKeyExpression", # required
    #             glue_configuration: {
    #               table_name: "GlueTableName", # required
    #               database_name: "GlueDatabaseName", # required
    #             },
    #             role_arn: "RoleArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     versioning_configuration: {
    #       unlimited: false,
    #       max_versions: 1
    #     },
    #     late_data_rules: [
    #       {
    #         rule_name: "LateDataRuleName",
    #         rule_configuration: { # required
    #           delta_time_session_window_configuration: {
    #             timeout_in_minutes: 1, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_dataset(params = {}, options = {})
      request = build_request(:update_dataset, params)
      request.send_request(options)
    end

    # <p>Used to update the settings of a data store.</p>
    # @param [Hash, Types::UpdateDatastoreRequest] params
    # @option params [String] :datastore_name
    #   <p>The name of the data store to be updated.</p>
    # @option params [Types::RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the data store. The retention period can't be
    #         updated if the data store's Amazon S3 storage is customer-managed.</p>
    # @option params [Types::DatastoreStorage] :datastore_storage
    #   <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    # @option params [Types::FileFormatConfiguration] :file_format_configuration
    #   <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #            <p>The default file format is JSON. You can specify only one format.</p>
    #            <p>You can't change the file format after you create the data store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_name: "DatastoreName", # required
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     datastore_storage: {
    #       # One of:
    #       service_managed_s3: {
    #       },
    #       customer_managed_s3: {
    #         bucket: "BucketName", # required
    #         key_prefix: "S3KeyPrefix",
    #         role_arn: "RoleArn", # required
    #       },
    #       iot_site_wise_multi_layer_storage: {
    #         customer_managed_s3_storage: { # required
    #           bucket: "BucketName", # required
    #           key_prefix: "S3KeyPrefix"
    #         }
    #       }
    #     },
    #     file_format_configuration: {
    #       json_configuration: {
    #       },
    #       parquet_configuration: {
    #         schema_definition: {
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "ColumnDataType", # required
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_datastore(params = {}, options = {})
      request = build_request(:update_datastore, params)
      request.send_request(options)
    end

    # <p>Updates the settings of a pipeline. You must specify both a <code>channel</code> and a
    #         <code>datastore</code> activity and, optionally, as many as 23 additional activities in the
    #         <code>pipelineActivities</code> array.</p>
    # @param [Hash, Types::UpdatePipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to update.</p>
    # @option params [Array<Types::PipelineActivity>] :pipeline_activities
    #   <p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
    #         your messages, such as removing, renaming or adding message attributes; filtering messages
    #         based on attribute values; invoking your Lambda functions on messages for advanced processing;
    #         or performing mathematical transformations to normalize device data.</p>
    #            <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
    #           <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
    #         contain only one activity. For example:</p>
    #            <p>
    #               <code>pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ...
    #         ]</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     pipeline_activities: [ # required
    #       {
    #         channel: {
    #           name: "ActivityName", # required
    #           channel_name: "ChannelName", # required
    #           next: "ActivityName"
    #         },
    #         lambda: {
    #           name: "ActivityName", # required
    #           lambda_name: "LambdaName", # required
    #           batch_size: 1, # required
    #           next: "ActivityName"
    #         },
    #         datastore: {
    #           name: "ActivityName", # required
    #           datastore_name: "DatastoreName", # required
    #         },
    #         add_attributes: {
    #           name: "ActivityName", # required
    #           attributes: { # required
    #             "AttributeName" => "AttributeName"
    #           },
    #           next: "ActivityName"
    #         },
    #         remove_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName"
    #         },
    #         select_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName"
    #         },
    #         filter: {
    #           name: "ActivityName", # required
    #           filter: "FilterExpression", # required
    #           next: "ActivityName"
    #         },
    #         math: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           math: "MathExpression", # required
    #           next: "ActivityName"
    #         },
    #         device_registry_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName"
    #         },
    #         device_shadow_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_pipeline(params = {}, options = {})
      request = build_request(:update_pipeline, params)
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
      context[:gem_name] = 'aws-sdk-iotanalytics'
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

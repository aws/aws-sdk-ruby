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

module Aws::CloudWatchLogs
  # An API client for Aws::CloudWatchLogs.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Logs20140328

    add_plugin(::Aws::CloudWatchLogs::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudWatchLogs::EndpointProvider)
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

    # <p>Associates the specified KMS key with either one log group in the
    #       account, or with all stored CloudWatch Logs query insights results in the
    #       account.</p>
    #          <p>When you use <code>AssociateKmsKey</code>, you specify either the
    #         <code>logGroupName</code> parameter or the <code>resourceIdentifier</code> parameter. You
    #       can't specify both of those parameters in the same operation.</p>
    #          <ul>
    #             <li>
    #                <p>Specify the <code>logGroupName</code> parameter to cause log events ingested into that
    #           log group to be encrypted with that key. Only the log events ingested after the key is
    #           associated are encrypted with that key.</p>
    #                <p>Associating a KMS key with a log group overrides any existing
    #           associations between the log group and a KMS key. After a KMS key is associated with a log group, all newly ingested data for the log group
    #           is encrypted using the KMS key. This association is stored as long as the
    #           data encrypted with the KMS key is still within CloudWatch Logs. This
    #           enables CloudWatch Logs to decrypt this data whenever it is requested.</p>
    #                <p>Associating a key with a log group does not cause the results of queries of that log
    #           group to be encrypted with that key. To have query results encrypted with a KMS key, you must use an <code>AssociateKmsKey</code> operation with the
    #             <code>resourceIdentifier</code> parameter that specifies a <code>query-result</code>
    #           resource. </p>
    #             </li>
    #             <li>
    #                <p>Specify the <code>resourceIdentifier</code> parameter with a <code>query-result</code>
    #           resource, to use that key to encrypt the stored results of all future <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html">StartQuery</a> operations in the account. The response from a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html">GetQueryResults</a> operation will still return the query results in plain
    #           text.</p>
    #                <p>Even if you have not associated a key with your query results, the query results are
    #           encrypted when stored, using the default CloudWatch Logs method.</p>
    #                <p>If you run a query from a monitoring account that queries logs in a source account,
    #           the query results key from the monitoring account, if any, is used.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>If you delete the key that is used to encrypt log events or log group query results,
    #         then all the associated stored log events or query results that were encrypted with that key
    #         will be unencryptable and unusable.</p>
    #          </important>
    #          <note>
    #             <p>CloudWatch Logs supports only symmetric KMS keys. Do not associate an
    #         asymmetric KMS key with your log group or query results. For more
    #         information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using Symmetric and Asymmetric
    #           Keys</a>.</p>
    #          </note>
    #          <p>It can take up to 5 minutes for this operation to take effect.</p>
    #          <p>If you attempt to associate a KMS key with a log group but the KMS key does not exist or the KMS key is disabled, you receive an
    #         <code>InvalidParameterException</code> error. </p>
    # @param [Hash, Types::AssociateKmsKeyRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #            <p>In your <code>AssociateKmsKey</code> operation, you must specify either the
    #           <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you
    #         can't specify both.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use when encrypting log
    #         data. This must be a symmetric KMS key. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">Amazon Resource Names</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using Symmetric and Asymmetric
    #           Keys</a>.</p>
    # @option params [String] :resource_identifier
    #   <p>Specifies the target for this operation. You must specify one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify the following ARN to have future <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html">GetQueryResults</a> operations in this account encrypt the results with the
    #             specified KMS key. Replace <i>REGION</i> and
    #               <i>ACCOUNT_ID</i> with your Region and account ID.</p>
    #                  <p>
    #                     <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:query-result:*</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specify the ARN of a log group to have CloudWatch Logs use the KMS key to encrypt log events that are ingested and stored by that log
    #             group. The log group ARN must be in the following format. Replace
    #               <i>REGION</i> and <i>ACCOUNT_ID</i> with your Region and
    #             account ID.</p>
    #                  <p>
    #                     <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:log-group:<i>LOG_GROUP_NAME</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>In your <code>AssociateKmsKey</code> operation, you must specify either the
    #           <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you
    #         can't specify both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     kms_key_id: "KmsKeyId", # required
    #     resource_identifier: "ResourceIdentifier"
    #   }
    #   options = {}
    #   response = client.associate_kms_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_kms_key(params = {}, options = {})
      request = build_request(:associate_kms_key, params)
      request.send_request(options)
    end

    # <p>Cancels the specified export task.</p>
    #          <p>The task must be in the <code>PENDING</code> or <code>RUNNING</code> state.</p>
    # @param [Hash, Types::CancelExportTaskRequest] params
    # @option params [String] :task_id
    #   <p>The ID of the export task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "ExportTaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_export_task(params = {}, options = {})
      request = build_request(:cancel_export_task, params)
      request.send_request(options)
    end

    # <p>Creates a <i>delivery</i>. A delivery is a connection between a logical
    #         <i>delivery source</i> and a logical <i>delivery destination</i>
    #       that you have already created.</p>
    #          <p>Only some Amazon Web Services services support being configured as a delivery source using
    #       this operation. These services are listed as <b>Supported [V2
    #         Permissions]</b> in the table at <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html">Enabling logging from
    #           Amazon Web Services services.</a>
    #          </p>
    #          <p>A delivery destination can represent a log group in CloudWatch Logs, an Amazon S3 bucket, a delivery stream in Firehose, or X-Ray.</p>
    #          <p>To configure logs delivery between a supported Amazon Web Services service and a
    #       destination, you must do the following:</p>
    #          <ul>
    #             <li>
    #                <p>Create a delivery source, which is a logical object that represents the resource that
    #           is actually sending the logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html">PutDeliverySource</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create a <i>delivery destination</i>, which is a logical object that
    #           represents the actual delivery destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html">PutDeliveryDestination</a>.</p>
    #             </li>
    #             <li>
    #                <p>If you are delivering logs cross-account, you must use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html">PutDeliveryDestinationPolicy</a> in the destination account to assign an IAM policy to the destination. This policy allows delivery to that destination.
    #         </p>
    #             </li>
    #             <li>
    #                <p>Use <code>CreateDelivery</code> to create a <i>delivery</i> by pairing
    #           exactly one delivery source and one delivery destination. </p>
    #             </li>
    #          </ul>
    #          <p>You can configure a single delivery source to send logs to multiple destinations by
    #       creating multiple deliveries. You can also create multiple deliveries to configure multiple
    #       delivery sources to send logs to the same delivery destination.</p>
    #          <p>To update an existing delivery configuration, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UpdateDeliveryConfiguration.html">UpdateDeliveryConfiguration</a>.</p>
    # @param [Hash, Types::CreateDeliveryRequest] params
    # @option params [String] :delivery_source_name
    #   <p>The name of the delivery source to use for this delivery.</p>
    # @option params [String] :delivery_destination_arn
    #   <p>The ARN of the delivery destination to use for this delivery.</p>
    # @option params [Array<String>] :record_fields
    #   <p>The list of record fields to be delivered to the destination, in order. If the delivery's
    #         log source has mandatory fields, they must be included in this list.</p>
    # @option params [String] :field_delimiter
    #   <p>The field delimiter to use between record fields when the final output format of a
    #         delivery is in <code>Plain</code>, <code>W3C</code>, or <code>Raw</code> format.</p>
    # @option params [Types::S3DeliveryConfiguration] :s3_delivery_configuration
    #   <p>This structure contains parameters that are valid only when the delivery's delivery
    #         destination is an S3 bucket.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional list of key-value pairs to associate with the resource.</p>
    #            <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_source_name: "DeliverySourceName", # required
    #     delivery_destination_arn: "Arn", # required
    #     record_fields: ["FieldHeader"],
    #     field_delimiter: "FieldDelimiter",
    #     s3_delivery_configuration: {
    #       suffix_path: "DeliverySuffixPath",
    #       enable_hive_compatible_path: false
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_delivery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery: {
    #       id: "DeliveryId",
    #       arn: "Arn",
    #       delivery_source_name: "DeliverySourceName",
    #       delivery_destination_arn: "Arn",
    #       delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #       record_fields: ["FieldHeader"],
    #       field_delimiter: "FieldDelimiter",
    #       s3_delivery_configuration: {
    #         suffix_path: "DeliverySuffixPath",
    #         enable_hive_compatible_path: false
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateDeliveryResponse]
    def create_delivery(params = {}, options = {})
      request = build_request(:create_delivery, params)
      request.send_request(options)
    end

    # <p>Creates an export task so that you can efficiently export data from a log group to an
    #       Amazon S3 bucket. When you perform a <code>CreateExportTask</code> operation, you must use
    #       credentials that have permission to write to the S3 bucket that you specify as the
    #       destination.</p>
    #          <p>Exporting log data to S3 buckets that are encrypted by KMS is supported.
    #       Exporting log data to Amazon S3 buckets that have S3 Object Lock enabled with a
    #       retention period is also supported.</p>
    #          <p>Exporting to S3 buckets that are encrypted with AES-256 is supported. </p>
    #          <p>This is an asynchronous call. If all the required information is provided, this
    #       operation initiates an export task and responds with the ID of the task. After the task has
    #       started, you can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html">DescribeExportTasks</a> to get the status of the export task. Each account can only
    #       have one active (<code>RUNNING</code> or <code>PENDING</code>) export task at a time. To
    #       cancel an export task, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html">CancelExportTask</a>.</p>
    #          <p>You can export logs from multiple log groups or multiple time ranges to the same S3
    #       bucket. To separate log data for each export task, specify a prefix to be used as the Amazon
    #       S3 key prefix for all exported objects.</p>
    #          <note>
    #             <p>We recommend that you don't regularly export to Amazon S3 as a way to
    #         continuously archive your logs. For that use case, we instead recommend that you use
    #         subscriptions. For more information about subscriptions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions.html">Real-time processing of log data
    #           with subscriptions</a>.</p>
    #          </note>
    #          <note>
    #             <p>Time-based sorting on chunks of log data inside an exported file is not guaranteed. You
    #         can sort the exported log field data by using Linux utilities.</p>
    #          </note>
    # @param [Hash, Types::CreateExportTaskRequest] params
    # @option params [String] :task_name
    #   <p>The name of the export task.</p>
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :log_stream_name_prefix
    #   <p>Export only log streams that match the provided prefix. If you don't specify a value,
    #         no prefix filter is applied.</p>
    # @option params [Integer] :from
    #   <p>The start time of the range for the request, expressed as the number of milliseconds
    #         after <code>Jan 1, 1970 00:00:00 UTC</code>. Events with a timestamp earlier than this time
    #         are not exported.</p>
    # @option params [Integer] :to
    #   <p>The end time of the range for the request, expressed as the number of milliseconds
    #         after <code>Jan 1, 1970 00:00:00 UTC</code>. Events with a timestamp later than this time are
    #         not exported.</p>
    #            <p>You must specify a time that is not earlier than when this log group was created.</p>
    # @option params [String] :destination
    #   <p>The name of S3 bucket for the exported log data. The bucket must be in the same Amazon Web Services Region.</p>
    # @option params [String] :destination_prefix
    #   <p>The prefix used as the start of the key for every object exported. If you don't specify
    #         a value, the default is <code>exportedlogs</code>.</p>
    #            <p>The length of this parameter must comply with the S3 object key name length limits. The
    #         object key name is a sequence of Unicode characters with UTF-8 encoding, and can be up to
    #         1,024 bytes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_name: "ExportTaskName",
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name_prefix: "LogStreamName",
    #     from: 1, # required
    #     to: 1, # required
    #     destination: "ExportDestinationBucket", # required
    #     destination_prefix: "ExportDestinationPrefix"
    #   }
    #   options = {}
    #   response = client.create_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "ExportTaskId"
    #   }
    # @return [Types::CreateExportTaskResponse]
    def create_export_task(params = {}, options = {})
      request = build_request(:create_export_task, params)
      request.send_request(options)
    end

    # <p>Creates an <i>anomaly detector</i> that regularly scans one or more log
    #       groups and look for patterns and anomalies in the logs.</p>
    #          <p>An anomaly detector can help surface issues by automatically discovering anomalies in your
    #       log event traffic. An anomaly detector uses machine learning algorithms to scan log events and
    #       find <i>patterns</i>. A pattern is a shared text structure that recurs among
    #       your log fields. Patterns provide a useful tool for analyzing large sets of logs because a
    #       large number of log events can often be compressed into a few patterns.</p>
    #          <p>The anomaly detector uses pattern recognition to find <code>anomalies</code>, which are
    #       unusual log events. It uses the <code>evaluationFrequency</code> to compare current log events
    #       and patterns with trained baselines. </p>
    #          <p>Fields within a pattern are called <i>tokens</i>. Fields that vary within a
    #       pattern, such as a request ID or timestamp, are referred to as <i>dynamic
    #         tokens</i> and represented by <code><*></code>. </p>
    #          <p>The following is an example of a pattern:</p>
    #          <p>
    #             <code>[INFO] Request time: <*> ms</code>
    #          </p>
    #          <p>This pattern represents log events like <code>[INFO] Request time: 327 ms</code> and other
    #       similar log events that differ only by the number, in this csse 327. When the pattern is
    #       displayed, the different numbers are replaced by <code><*></code>
    #          </p>
    #          <note>
    #             <p>Any parts of log events that are masked as sensitive data are not scanned for anomalies.
    #         For more information about masking sensitive data, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html">Help protect sensitive log
    #           data with masking</a>. </p>
    #          </note>
    # @param [Hash, Types::CreateLogAnomalyDetectorRequest] params
    # @option params [Array<String>] :log_group_arn_list
    #   <p>An array containing the ARN of the log group that this anomaly detector will watch. You
    #         can specify only one log group ARN.</p>
    # @option params [String] :detector_name
    #   <p>A name for this anomaly detector.</p>
    # @option params [String] :evaluation_frequency
    #   <p>Specifies how often the anomaly detector is to run and look for anomalies. Set this value
    #         according to the frequency that the log group receives new logs. For example, if the log group
    #         receives new log events every 10 minutes, then 15 minutes might be a good setting for
    #           <code>evaluationFrequency</code> .</p>
    # @option params [String] :filter_pattern
    #   <p>You can use this parameter to limit the anomaly detection model to examine only log events
    #         that match the pattern you specify here. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html">Filter and Pattern
    #           Syntax</a>.</p>
    # @option params [String] :kms_key_id
    #   <p>Optionally assigns a KMS key to secure this anomaly detector and its
    #         findings. If a key is assigned, the anomalies found and the model used by this detector are
    #         encrypted at rest with the key. If a key is assigned to an anomaly detector, a user must have
    #         permissions for both this key and for the anomaly detector to retrieve information about the
    #         anomalies that it finds.</p>
    #            <p> Make sure the value provided is a valid KMS key ARN. For more information
    #         about using a KMS key and to see the required IAM policy, see
    #           <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/LogsAnomalyDetection-KMS.html">Use a KMS key with an anomaly detector</a>.</p>
    # @option params [Integer] :anomaly_visibility_time
    #   <p>The number of days to have visibility on an anomaly. After this time period has elapsed
    #         for an anomaly, it will be automatically baselined and the anomaly detector will treat new
    #         occurrences of a similar anomaly as normal. Therefore, if you do not correct the cause of an
    #         anomaly during the time period specified in <code>anomalyVisibilityTime</code>, it will be
    #         considered normal going forward and will not be detected as an anomaly.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional list of key-value pairs to associate with the resource.</p>
    #            <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_arn_list: ["LogGroupArn"], # required
    #     detector_name: "DetectorName",
    #     evaluation_frequency: "ONE_MIN" # One of: ["ONE_MIN", "FIVE_MIN", "TEN_MIN", "FIFTEEN_MIN", "THIRTY_MIN", "ONE_HOUR"],
    #     filter_pattern: "FilterPattern",
    #     kms_key_id: "DetectorKmsKeyArn",
    #     anomaly_visibility_time: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_log_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detector_arn: "AnomalyDetectorArn"
    #   }
    # @return [Types::CreateLogAnomalyDetectorResponse]
    def create_log_anomaly_detector(params = {}, options = {})
      request = build_request(:create_log_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Creates a log group with the specified name. You can create up to 1,000,000 log groups
    #       per Region per account.</p>
    #          <p>You must use the following guidelines when naming a log group:</p>
    #          <ul>
    #             <li>
    #                <p>Log group names must be unique within a Region for an Amazon Web Services
    #           account.</p>
    #             </li>
    #             <li>
    #                <p>Log group names can be between 1 and 512 characters long.</p>
    #             </li>
    #             <li>
    #                <p>Log group names consist of the following characters: a-z, A-Z, 0-9, '_'
    #           (underscore), '-' (hyphen), '/' (forward slash), '.' (period), and '#' (number
    #           sign)</p>
    #             </li>
    #             <li>
    #                <p>Log group names can't start with the string <code>aws/</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>When you create a log group, by default the log events in the log group do not expire.
    #       To set a retention policy so that events expire and are deleted after a specified time, use
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html">PutRetentionPolicy</a>.</p>
    #          <p>If you associate an KMS key with the log group, ingested data is
    #       encrypted using the KMS key. This association is stored as long as the data
    #       encrypted with the KMS key is still within CloudWatch Logs. This enables
    #         CloudWatch Logs to decrypt this data whenever it is requested.</p>
    #          <p>If you attempt to associate a KMS key with the log group but the KMS key does not exist or the KMS key is disabled, you receive an
    #         <code>InvalidParameterException</code> error. </p>
    #          <important>
    #             <p>CloudWatch Logs supports only symmetric KMS keys. Do not associate an
    #         asymmetric KMS key with your log group. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
    #           Symmetric and Asymmetric Keys</a>.</p>
    #          </important>
    # @param [Hash, Types::CreateLogGroupRequest] params
    # @option params [String] :log_group_name
    #   <p>A name for the log group.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use when encrypting log
    #         data. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">Amazon Resource
    #           Names</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to use for the tags.</p>
    #            <p>You can grant users access to certain log groups while preventing them from accessing
    #         other log groups. To do so, tag your groups and use IAM policies that refer to
    #         those tags. To assign tags when you create a log group, you must have either the
    #           <code>logs:TagResource</code> or <code>logs:TagLogGroup</code> permission. For more
    #         information about tagging, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>. For
    #         more information about using tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services
    #           resources using tags</a>.</p>
    # @option params [String] :log_group_class
    #   <p>Use this parameter to specify the log group class for this log group. There are three
    #         classes:</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>Standard</code> log class supports all CloudWatch Logs features.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>Infrequent Access</code> log class supports a subset of CloudWatch Logs
    #             features and incurs lower costs.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>Delivery</code> log class only for delivering Lambda
    #             logs to store in Amazon S3 or Amazon Data Firehose. Log events in log groups in
    #             the Delivery class are kept in CloudWatch Logs for only one day. This log class doesn't
    #             offer rich CloudWatch Logs capabilities such as CloudWatch Logs Insights
    #             queries.</p>
    #               </li>
    #            </ul>
    #            <p>If you omit this parameter, the default of <code>STANDARD</code> is used.</p>
    #            <important>
    #               <p>The value of <code>logGroupClass</code> can't be changed after a log group is
    #           created.</p>
    #            </important>
    #            <p>For details about the features supported by each class, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html">Log classes</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     log_group_class: "STANDARD" # One of: ["STANDARD", "INFREQUENT_ACCESS", "DELIVERY"]
    #   }
    #   options = {}
    #   response = client.create_log_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_log_group(params = {}, options = {})
      request = build_request(:create_log_group, params)
      request.send_request(options)
    end

    # <p>Creates a log stream for the specified log group. A log stream is a sequence of log
    #       events that originate from a single source, such as an application instance or a resource that
    #       is being monitored.</p>
    #          <p>There is no limit on the number of log streams that you can create for a log group.
    #       There is a limit of 50 TPS on <code>CreateLogStream</code> operations, after which
    #       transactions are throttled.</p>
    #          <p>You must use the following guidelines when naming a log stream:</p>
    #          <ul>
    #             <li>
    #                <p>Log stream names must be unique within the log group.</p>
    #             </li>
    #             <li>
    #                <p>Log stream names can be between 1 and 512 characters long.</p>
    #             </li>
    #             <li>
    #                <p>Don't use ':' (colon) or '*' (asterisk) characters.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateLogStreamRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #   }
    #   options = {}
    #   response = client.create_log_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_log_stream(params = {}, options = {})
      request = build_request(:create_log_stream, params)
      request.send_request(options)
    end

    # <p>Deletes a CloudWatch Logs account policy. This stops the account-wide policy from
    #       applying to log groups in the account. If you delete a data protection policy or subscription
    #       filter policy, any log-group level policies of those types remain in effect.</p>
    #          <p>To use this operation, you must be signed on with the correct permissions depending on the
    #       type of policy that you are deleting.</p>
    #          <ul>
    #             <li>
    #                <p>To delete a data protection policy, you must have the
    #             <code>logs:DeleteDataProtectionPolicy</code> and <code>logs:DeleteAccountPolicy</code>
    #           permissions.</p>
    #             </li>
    #             <li>
    #                <p>To delete a subscription filter policy, you must have the
    #             <code>logs:DeleteSubscriptionFilter</code> and <code>logs:DeleteAccountPolicy</code>
    #           permissions.</p>
    #             </li>
    #             <li>
    #                <p>To delete a transformer policy, you must have the <code>logs:DeleteTransformer</code>
    #           and <code>logs:DeleteAccountPolicy</code> permissions.</p>
    #             </li>
    #             <li>
    #                <p>To delete a field index policy, you must have the <code>logs:DeleteIndexPolicy</code>
    #           and <code>logs:DeleteAccountPolicy</code> permissions.</p>
    #             </li>
    #          </ul>
    #          <p>If you delete a field index policy, the indexing of the log events that happened before
    #       you deleted the policy will still be used for up to 30 days to improve CloudWatch Logs
    #       Insights queries.</p>
    # @param [Hash, Types::DeleteAccountPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy to delete.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_type: "DATA_PROTECTION_POLICY" # One of: ["DATA_PROTECTION_POLICY", "SUBSCRIPTION_FILTER_POLICY", "FIELD_INDEX_POLICY", "TRANSFORMER_POLICY", "METRIC_EXTRACTION_POLICY"], # required
    #   }
    #   options = {}
    #   response = client.delete_account_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_account_policy(params = {}, options = {})
      request = build_request(:delete_account_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the data protection policy from the specified log group. </p>
    #          <p>For more information about data protection policies, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html">PutDataProtectionPolicy</a>.</p>
    # @param [Hash, Types::DeleteDataProtectionPolicyRequest] params
    # @option params [String] :log_group_identifier
    #   <p>The name or ARN of the log group that you want to delete the data protection policy
    #         for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_data_protection_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_data_protection_policy(params = {}, options = {})
      request = build_request(:delete_data_protection_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a <i>delivery</i>. A delivery is a connection between a logical
    #         <i>delivery source</i> and a logical <i>delivery
    #       destination</i>. Deleting a delivery only deletes the connection between the delivery
    #       source and delivery destination. It does not delete the delivery destination or the delivery
    #       source.</p>
    # @param [Hash, Types::DeleteDeliveryRequest] params
    # @option params [String] :id
    #   <p>The unique ID of the delivery to delete. You can find the ID of a delivery with the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html">DescribeDeliveries</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeliveryId", # required
    #   }
    #   options = {}
    #   response = client.delete_delivery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_delivery(params = {}, options = {})
      request = build_request(:delete_delivery, params)
      request.send_request(options)
    end

    # <p>Deletes a <i>delivery destination</i>. A delivery is a connection between a
    #       logical <i>delivery source</i> and a logical <i>delivery
    #         destination</i>.</p>
    #          <p>You can't delete a delivery destination if any current deliveries are associated with it.
    #       To find whether any deliveries are associated with this delivery destination, use the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html">DescribeDeliveries</a> operation and check the <code>deliveryDestinationArn</code>
    #       field in the results.</p>
    # @param [Hash, Types::DeleteDeliveryDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the delivery destination that you want to delete. You can find a list of
    #         delivery destination names by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveryDestinations.html">DescribeDeliveryDestinations</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeliveryDestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_delivery_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_delivery_destination(params = {}, options = {})
      request = build_request(:delete_delivery_destination, params)
      request.send_request(options)
    end

    # <p>Deletes a delivery destination policy. For more information about these policies, see
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html">PutDeliveryDestinationPolicy</a>.</p>
    # @param [Hash, Types::DeleteDeliveryDestinationPolicyRequest] params
    # @option params [String] :delivery_destination_name
    #   <p>The name of the delivery destination that you want to delete the policy for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_destination_name: "DeliveryDestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_delivery_destination_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_delivery_destination_policy(params = {}, options = {})
      request = build_request(:delete_delivery_destination_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a <i>delivery source</i>. A delivery is a connection between a
    #       logical <i>delivery source</i> and a logical <i>delivery
    #         destination</i>.</p>
    #          <p>You can't delete a delivery source if any current deliveries are associated with it. To
    #       find whether any deliveries are associated with this delivery source, use the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html">DescribeDeliveries</a> operation and check the <code>deliverySourceName</code> field in
    #       the results.</p>
    # @param [Hash, Types::DeleteDeliverySourceRequest] params
    # @option params [String] :name
    #   <p>The name of the delivery source that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeliverySourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_delivery_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_delivery_source(params = {}, options = {})
      request = build_request(:delete_delivery_source, params)
      request.send_request(options)
    end

    # <p>Deletes the specified destination, and eventually disables all the subscription filters
    #       that publish to it. This operation does not delete the physical resource encapsulated by the
    #       destination.</p>
    # @param [Hash, Types::DeleteDestinationRequest] params
    # @option params [String] :destination_name
    #   <p>The name of the destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name: "DestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_destination(params = {}, options = {})
      request = build_request(:delete_destination, params)
      request.send_request(options)
    end

    # <p>Deletes a log-group level field index policy that was applied to a single log group. The
    #       indexing of the log events that happened before you delete the policy will still be used for
    #       as many as 30 days to improve CloudWatch Logs Insights queries.</p>
    #          <p>You can't use this operation to delete an account-level index policy. Instead, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteAccountPolicy.html">DeletAccountPolicy</a>.</p>
    #          <p>If you delete a log-group level field index policy and there is an account-level field
    #       index policy, in a few minutes the log group begins using that account-wide policy to index
    #       new incoming log events. </p>
    # @param [Hash, Types::DeleteIndexPolicyRequest] params
    # @option params [String] :log_group_identifier
    #   <p>The log group to delete the index policy for. You can specify either the name or the ARN
    #         of the log group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_index_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIndexPolicyResponse]
    def delete_index_policy(params = {}, options = {})
      request = build_request(:delete_index_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the integration between CloudWatch Logs and OpenSearch Service. If your
    #       integration has active vended logs dashboards, you must specify <code>true</code> for the
    #         <code>force</code> parameter, otherwise the operation will fail. If you delete the
    #       integration by setting <code>force</code> to <code>true</code>, all your vended logs
    #       dashboards powered by OpenSearch Service will be deleted and the data that was on them will no
    #       longer be accessible.</p>
    # @param [Hash, Types::DeleteIntegrationRequest] params
    # @option params [String] :integration_name
    #   <p>The name of the integration to delete. To find the name of your integration, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html">ListIntegrations</a>.</p>
    # @option params [Boolean] :force
    #   <p>Specify <code>true</code> to force the deletion of the integration even if vended logs
    #         dashboards currently exist.</p>
    #            <p>The default is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_name: "IntegrationName", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIntegrationResponse]
    def delete_integration(params = {}, options = {})
      request = build_request(:delete_integration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified CloudWatch Logs anomaly detector.</p>
    # @param [Hash, Types::DeleteLogAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector to delete. You can find the ARNs of log anomaly detectors
    #         in your account by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html">ListLogAnomalyDetectors</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #   }
    #   options = {}
    #   response = client.delete_log_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_log_anomaly_detector(params = {}, options = {})
      request = build_request(:delete_log_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Deletes the specified log group and permanently deletes all the archived log events
    #       associated with the log group.</p>
    # @param [Hash, Types::DeleteLogGroupRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_log_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_log_group(params = {}, options = {})
      request = build_request(:delete_log_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified log stream and permanently deletes all the archived log events
    #       associated with the log stream.</p>
    # @param [Hash, Types::DeleteLogStreamRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #   }
    #   options = {}
    #   response = client.delete_log_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_log_stream(params = {}, options = {})
      request = build_request(:delete_log_stream, params)
      request.send_request(options)
    end

    # <p>Deletes the specified metric filter.</p>
    # @param [Hash, Types::DeleteMetricFilterRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :filter_name
    #   <p>The name of the metric filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #   }
    #   options = {}
    #   response = client.delete_metric_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_metric_filter(params = {}, options = {})
      request = build_request(:delete_metric_filter, params)
      request.send_request(options)
    end

    # <p>Deletes a saved CloudWatch Logs Insights query definition. A query definition contains
    #       details about a saved CloudWatch Logs Insights query.</p>
    #          <p>Each <code>DeleteQueryDefinition</code> operation can delete one query definition.</p>
    #          <p>You must have the <code>logs:DeleteQueryDefinition</code> permission to be able to perform
    #       this operation.</p>
    # @param [Hash, Types::DeleteQueryDefinitionRequest] params
    # @option params [String] :query_definition_id
    #   <p>The ID of the query definition that you want to delete. You can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a> to retrieve the IDs of your saved query
    #         definitions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_definition_id: "QueryId", # required
    #   }
    #   options = {}
    #   response = client.delete_query_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     success: false
    #   }
    # @return [Types::DeleteQueryDefinitionResponse]
    def delete_query_definition(params = {}, options = {})
      request = build_request(:delete_query_definition, params)
      request.send_request(options)
    end

    # <p>Deletes a resource policy from this account. This revokes the access of the identities
    #       in that policy to put log events to this account.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy to be revoked. This parameter is required.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Logs resource for which the resource policy needs to be
    #         deleted</p>
    # @option params [String] :expected_revision_id
    #   <p>The expected revision ID of the resource policy. Required when deleting a resource-scoped
    #         policy to prevent concurrent modifications.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName",
    #     resource_arn: "Arn",
    #     expected_revision_id: "ExpectedRevisionId"
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

    # <p>Deletes the specified retention policy.</p>
    #          <p>Log events do not expire if they belong to log groups without a retention
    #       policy.</p>
    # @param [Hash, Types::DeleteRetentionPolicyRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_retention_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_retention_policy(params = {}, options = {})
      request = build_request(:delete_retention_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified subscription filter.</p>
    # @param [Hash, Types::DeleteSubscriptionFilterRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :filter_name
    #   <p>The name of the subscription filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #   }
    #   options = {}
    #   response = client.delete_subscription_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_subscription_filter(params = {}, options = {})
      request = build_request(:delete_subscription_filter, params)
      request.send_request(options)
    end

    # <p>Deletes the log transformer for the specified log group. As soon as you do this, the
    #       transformation of incoming log events according to that transformer stops. If this account has
    #       an account-level transformer that applies to this log group, the log group begins using that
    #       account-level transformer when this log-group level transformer is deleted.</p>
    #          <p>After you delete a transformer, be sure to edit any metric filters or subscription filters
    #       that relied on the transformed versions of the log events.</p>
    # @param [Hash, Types::DeleteTransformerRequest] params
    # @option params [String] :log_group_identifier
    #   <p>Specify either the name or ARN of the log group to delete the transformer for. If the log
    #         group is in a source account and you are using a monitoring account, you must use the log
    #         group ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_transformer(params = {}, options = {})
      request = build_request(:delete_transformer, params)
      request.send_request(options)
    end

    # <p>Returns a list of all CloudWatch Logs account policies in the account.</p>
    #          <p>To use this operation, you must be signed on with the correct permissions depending on the
    #       type of policy that you are retrieving information for.</p>
    #          <ul>
    #             <li>
    #                <p>To see data protection policies, you must have the
    #             <code>logs:GetDataProtectionPolicy</code> and <code>logs:DescribeAccountPolicies</code>
    #           permissions.</p>
    #             </li>
    #             <li>
    #                <p>To see subscription filter policies, you must have the
    #             <code>logs:DescribeSubscriptionFilters</code> and
    #             <code>logs:DescribeAccountPolicies</code> permissions.</p>
    #             </li>
    #             <li>
    #                <p>To see transformer policies, you must have the <code>logs:GetTransformer</code> and
    #             <code>logs:DescribeAccountPolicies</code> permissions.</p>
    #             </li>
    #             <li>
    #                <p>To see field index policies, you must have the <code>logs:DescribeIndexPolicies</code>
    #           and <code>logs:DescribeAccountPolicies</code> permissions.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeAccountPoliciesRequest] params
    # @option params [String] :policy_type
    #   <p>Use this parameter to limit the returned policies to only the policies that match the
    #         policy type that you specify.</p>
    # @option params [String] :policy_name
    #   <p>Use this parameter to limit the returned policies to only the policy with the name that
    #         you specify.</p>
    # @option params [Array<String>] :account_identifiers
    #   <p>If you are using an account that is set up as a monitoring account for CloudWatch
    #         unified cross-account observability, you can use this to specify the account ID of a source
    #         account. If you do, the operation returns the account policy for the specified account.
    #         Currently, you can specify only one account ID in this parameter.</p>
    #            <p>If you omit this parameter, only the policy in the current account is returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_type: "DATA_PROTECTION_POLICY" # One of: ["DATA_PROTECTION_POLICY", "SUBSCRIPTION_FILTER_POLICY", "FIELD_INDEX_POLICY", "TRANSFORMER_POLICY", "METRIC_EXTRACTION_POLICY"], # required
    #     policy_name: "PolicyName",
    #     account_identifiers: ["AccountId"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_account_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_policies: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_document: "AccountPolicyDocument",
    #         last_updated_time: 1,
    #         policy_type: "DATA_PROTECTION_POLICY" # One of: ["DATA_PROTECTION_POLICY", "SUBSCRIPTION_FILTER_POLICY", "FIELD_INDEX_POLICY", "TRANSFORMER_POLICY", "METRIC_EXTRACTION_POLICY"],
    #         scope: "ALL" # One of: ["ALL"],
    #         selection_criteria: "SelectionCriteria",
    #         account_id: "AccountId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAccountPoliciesResponse]
    def describe_account_policies(params = {}, options = {})
      request = build_request(:describe_account_policies, params)
      request.send_request(options)
    end

    # <p>Use this operation to return the valid and default values that are used when creating
    #       delivery sources, delivery destinations, and deliveries. For more information about
    #       deliveries, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html">CreateDelivery</a>.</p>
    # @param [Hash, Types::DescribeConfigurationTemplatesRequest] params
    # @option params [String] :service
    #   <p>Use this parameter to filter the response to include only the configuration templates that
    #         apply to the Amazon Web Services service that you specify here.</p>
    # @option params [Array<String>] :log_types
    #   <p>Use this parameter to filter the response to include only the configuration templates that
    #         apply to the log types that you specify here.</p>
    # @option params [Array<String>] :resource_types
    #   <p>Use this parameter to filter the response to include only the configuration templates that
    #         apply to the resource types that you specify here.</p>
    # @option params [Array<String>] :delivery_destination_types
    #   <p>Use this parameter to filter the response to include only the configuration templates that
    #         apply to the delivery destination types that you specify here.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [Integer] :limit
    #   <p>Use this parameter to limit the number of configuration templates that are returned in the
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service: "Service",
    #     log_types: ["LogType"],
    #     resource_types: ["ResourceType"],
    #     delivery_destination_types: ["S3" # One of: ["S3", "CWL", "FH", "XRAY"]],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_configuration_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_templates: [
    #       {
    #         service: "Service",
    #         log_type: "LogType",
    #         resource_type: "ResourceType",
    #         delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #         default_delivery_config_values: {
    #           record_fields: ["FieldHeader"],
    #           field_delimiter: "FieldDelimiter",
    #           s3_delivery_configuration: {
    #             suffix_path: "DeliverySuffixPath",
    #             enable_hive_compatible_path: false
    #           }
    #         },
    #         allowed_fields: [
    #           {
    #             name: "FieldHeader",
    #             mandatory: false
    #           }
    #         ],
    #         allowed_output_formats: ["json" # One of: ["json", "plain", "w3c", "raw", "parquet"]],
    #         allowed_action_for_allow_vended_logs_delivery_for_resource: "AllowedActionForAllowVendedLogsDeliveryForResource",
    #         allowed_field_delimiters: ["FieldDelimiter"],
    #         allowed_suffix_path_fields: ["FieldHeader"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeConfigurationTemplatesResponse]
    def describe_configuration_templates(params = {}, options = {})
      request = build_request(:describe_configuration_templates, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the deliveries that have been created in the account.</p>
    #          <p>A <i>delivery</i> is a connection between a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html">
    #                <i>delivery
    #           source</i>
    #             </a> and a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html">
    #                <i>delivery destination</i>
    #             </a>.</p>
    #          <p>A delivery source represents an Amazon Web Services resource that sends logs to an logs
    #       delivery destination. The destination can be CloudWatch Logs, Amazon S3, Firehose or X-Ray. Only some Amazon Web Services services support being
    #       configured as a delivery source. These services are listed in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html">Enable logging from
    #           Amazon Web Services services.</a>
    #          </p>
    # @param [Hash, Types::DescribeDeliveriesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [Integer] :limit
    #   <p>Optionally specify the maximum number of deliveries to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_deliveries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deliveries: [
    #       {
    #         id: "DeliveryId",
    #         arn: "Arn",
    #         delivery_source_name: "DeliverySourceName",
    #         delivery_destination_arn: "Arn",
    #         delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #         record_fields: ["FieldHeader"],
    #         field_delimiter: "FieldDelimiter",
    #         s3_delivery_configuration: {
    #           suffix_path: "DeliverySuffixPath",
    #           enable_hive_compatible_path: false
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDeliveriesResponse]
    def describe_deliveries(params = {}, options = {})
      request = build_request(:describe_deliveries, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the delivery destinations that have been created in the
    #       account.</p>
    # @param [Hash, Types::DescribeDeliveryDestinationsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [Integer] :limit
    #   <p>Optionally specify the maximum number of delivery destinations to return in the
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_delivery_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_destinations: [
    #       {
    #         name: "DeliveryDestinationName",
    #         arn: "Arn",
    #         delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #         output_format: "json" # One of: ["json", "plain", "w3c", "raw", "parquet"],
    #         delivery_destination_configuration: {
    #           destination_resource_arn: "Arn", # required
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDeliveryDestinationsResponse]
    def describe_delivery_destinations(params = {}, options = {})
      request = build_request(:describe_delivery_destinations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the delivery sources that have been created in the account.</p>
    # @param [Hash, Types::DescribeDeliverySourcesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [Integer] :limit
    #   <p>Optionally specify the maximum number of delivery sources to return in the
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_delivery_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_sources: [
    #       {
    #         name: "DeliverySourceName",
    #         arn: "Arn",
    #         resource_arns: ["Arn"],
    #         service: "Service",
    #         log_type: "LogType",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDeliverySourcesResponse]
    def describe_delivery_sources(params = {}, options = {})
      request = build_request(:describe_delivery_sources, params)
      request.send_request(options)
    end

    # <p>Lists all your destinations. The results are ASCII-sorted by destination
    #       name.</p>
    # @param [Hash, Types::DescribeDestinationsRequest] params
    # @option params [String] :destination_name_prefix
    #   <p>The prefix to match. If you don't specify a value, no prefix filter is
    #         applied.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default maximum
    #         value of 50 items is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name_prefix: "DestinationName",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destinations: [
    #       {
    #         destination_name: "DestinationName",
    #         target_arn: "TargetArn",
    #         role_arn: "RoleArn",
    #         access_policy: "AccessPolicy",
    #         arn: "Arn",
    #         creation_time: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDestinationsResponse]
    def describe_destinations(params = {}, options = {})
      request = build_request(:describe_destinations, params)
      request.send_request(options)
    end

    # <p>Lists the specified export tasks. You can list all your export tasks or filter the
    #       results based on task ID or task status.</p>
    # @param [Hash, Types::DescribeExportTasksRequest] params
    # @option params [String] :task_id
    #   <p>The ID of the export task. Specifying a task ID filters the results to one or zero
    #         export tasks.</p>
    # @option params [String] :status_code
    #   <p>The status code of the export task. Specifying a status code filters the results to
    #         zero or more export tasks.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up
    #         to 50 items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "ExportTaskId",
    #     status_code: "CANCELLED" # One of: ["CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_export_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_tasks: [
    #       {
    #         task_id: "ExportTaskId",
    #         task_name: "ExportTaskName",
    #         log_group_name: "LogGroupName",
    #         from: 1,
    #         to: 1,
    #         destination: "ExportDestinationBucket",
    #         destination_prefix: "ExportDestinationPrefix",
    #         status: {
    #           code: "CANCELLED" # One of: ["CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"],
    #           message: "ExportTaskStatusMessage"
    #         },
    #         execution_info: {
    #           creation_time: 1,
    #           completion_time: 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeExportTasksResponse]
    def describe_export_tasks(params = {}, options = {})
      request = build_request(:describe_export_tasks, params)
      request.send_request(options)
    end

    # <p>Returns a list of custom and default field indexes which are discovered in log data. For
    #       more information about field index policies, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html">PutIndexPolicy</a>.</p>
    # @param [Hash, Types::DescribeFieldIndexesRequest] params
    # @option params [Array<String>] :log_group_identifiers
    #   <p>An array containing the names or ARNs of the log groups that you want to retrieve field
    #         indexes for.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifiers: ["LogGroupIdentifier"], # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_field_indexes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_indexes: [
    #       {
    #         log_group_identifier: "LogGroupIdentifier",
    #         field_index_name: "FieldIndexName",
    #         last_scan_time: 1,
    #         first_event_time: 1,
    #         last_event_time: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeFieldIndexesResponse]
    def describe_field_indexes(params = {}, options = {})
      request = build_request(:describe_field_indexes, params)
      request.send_request(options)
    end

    # <p>Returns the field index policies of the specified log group. For more information about
    #       field index policies, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html">PutIndexPolicy</a>.</p>
    #          <p>If a specified log group has a log-group level index policy, that policy is returned by
    #       this operation.</p>
    #          <p>If a specified log group doesn't have a log-group level index policy, but an account-wide
    #       index policy applies to it, that account-wide policy is returned by this operation.</p>
    #          <p>To find information about only account-level policies, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html">DescribeAccountPolicies</a> instead.</p>
    # @param [Hash, Types::DescribeIndexPoliciesRequest] params
    # @option params [Array<String>] :log_group_identifiers
    #   <p>An array containing the name or ARN of the log group that you want to retrieve field index
    #         policies for.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifiers: ["LogGroupIdentifier"], # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_index_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_policies: [
    #       {
    #         log_group_identifier: "LogGroupIdentifier",
    #         last_update_time: 1,
    #         policy_document: "PolicyDocument",
    #         policy_name: "PolicyName",
    #         source: "ACCOUNT" # One of: ["ACCOUNT", "LOG_GROUP"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeIndexPoliciesResponse]
    def describe_index_policies(params = {}, options = {})
      request = build_request(:describe_index_policies, params)
      request.send_request(options)
    end

    # <p>Returns information about log groups. You can return all your log groups or filter the
    #       results by prefix. The results are ASCII-sorted by log group name.</p>
    #          <p>CloudWatch Logs doesn't support IAM policies that control access to the
    #         <code>DescribeLogGroups</code> action by using the
    #           <code>aws:ResourceTag/<i>key-name</i>
    #             </code> condition key. Other CloudWatch
    #       Logs actions do support the use of the
    #         <code>aws:ResourceTag/<i>key-name</i>
    #             </code> condition key to control access.
    #       For more information about using tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services
    #         resources using tags</a>.</p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation
    #       in a monitoring account and view data from the linked source accounts. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    # @param [Hash, Types::DescribeLogGroupsRequest] params
    # @option params [Array<String>] :account_identifiers
    #   <p>When <code>includeLinkedAccounts</code> is set to <code>true</code>, use this parameter to
    #         specify the list of accounts to search. You can specify as many as 20 account IDs in the
    #         array. </p>
    # @option params [String] :log_group_name_prefix
    #   <p>The prefix to match.</p>
    #            <note>
    #               <p>
    #                  <code>logGroupNamePrefix</code> and <code>logGroupNamePattern</code> are mutually exclusive.
    #           Only one of these parameters can be passed. </p>
    #            </note>
    # @option params [String] :log_group_name_pattern
    #   <p>If you specify a string for this parameter, the operation returns only log groups that
    #         have names that match the string based on a case-sensitive substring search. For example, if
    #         you specify <code>DataLogs</code>, log groups named <code>DataLogs</code>,
    #           <code>aws/DataLogs</code>, and <code>GroupDataLogs</code> would match, but
    #           <code>datalogs</code>, <code>Data/log/s</code> and <code>Groupdata</code> would not
    #         match.</p>
    #            <p>If you specify <code>logGroupNamePattern</code> in your request, then only
    #           <code>arn</code>, <code>creationTime</code>, and <code>logGroupName</code> are included in
    #         the response. </p>
    #            <note>
    #               <p>
    #                  <code>logGroupNamePattern</code> and <code>logGroupNamePrefix</code> are mutually exclusive.
    #           Only one of these parameters can be passed. </p>
    #            </note>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up
    #         to 50 items.</p>
    # @option params [Boolean] :include_linked_accounts
    #   <p>If you are using a monitoring account, set this to <code>true</code> to have the operation
    #         return log groups in the accounts listed in <code>accountIdentifiers</code>.</p>
    #            <p>If this parameter is set to <code>true</code> and <code>accountIdentifiers</code> contains
    #         a null value, the operation returns all log groups in the monitoring account and all log
    #         groups in all source accounts that are linked to the monitoring account. </p>
    #            <p>The default for this parameter is <code>false</code>.</p>
    # @option params [String] :log_group_class
    #   <p>Use this parameter to limit the results to only those log groups in the specified log
    #         group class. If you omit this parameter, log groups of all classes can be returned.</p>
    #            <p>Specifies the log group class for this log group. There are three classes:</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>Standard</code> log class supports all CloudWatch Logs features.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>Infrequent Access</code> log class supports a subset of CloudWatch Logs
    #             features and incurs lower costs.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>Delivery</code> log class only for delivering Lambda
    #             logs to store in Amazon S3 or Amazon Data Firehose. Log events in log groups in
    #             the Delivery class are kept in CloudWatch Logs for only one day. This log class doesn't
    #             offer rich CloudWatch Logs capabilities such as CloudWatch Logs Insights
    #             queries.</p>
    #               </li>
    #            </ul>
    #            <p>For details about the features supported by each class, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html">Log classes</a>
    #            </p>
    # @option params [Array<String>] :log_group_identifiers
    #   <p>Use this array to filter the list of log groups returned. If you specify this parameter,
    #         the only other filter that you can choose to specify is
    #         <code>includeLinkedAccounts</code>.</p>
    #            <p>If you are using this operation in a monitoring account, you can specify the ARNs of log
    #         groups in source accounts and in the monitoring account itself. If you are using this
    #         operation in an account that is not a cross-account monitoring account, you can specify only
    #         log group names in the same account as the operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_identifiers: ["AccountId"],
    #     log_group_name_prefix: "LogGroupName",
    #     log_group_name_pattern: "LogGroupNamePattern",
    #     next_token: "NextToken",
    #     limit: 1,
    #     include_linked_accounts: false,
    #     log_group_class: "STANDARD" # One of: ["STANDARD", "INFREQUENT_ACCESS", "DELIVERY"],
    #     log_group_identifiers: ["LogGroupIdentifier"]
    #   }
    #   options = {}
    #   response = client.describe_log_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_groups: [
    #       {
    #         log_group_name: "LogGroupName",
    #         creation_time: 1,
    #         retention_in_days: 1,
    #         metric_filter_count: 1,
    #         arn: "Arn",
    #         stored_bytes: 1,
    #         kms_key_id: "KmsKeyId",
    #         data_protection_status: "ACTIVATED" # One of: ["ACTIVATED", "DELETED", "ARCHIVED", "DISABLED"],
    #         inherited_properties: ["ACCOUNT_DATA_PROTECTION" # One of: ["ACCOUNT_DATA_PROTECTION"]],
    #         log_group_class: "STANDARD" # One of: ["STANDARD", "INFREQUENT_ACCESS", "DELIVERY"],
    #         log_group_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeLogGroupsResponse]
    def describe_log_groups(params = {}, options = {})
      request = build_request(:describe_log_groups, params)
      request.send_request(options)
    end

    # <p>Lists the log streams for the specified log group. You can list all the log streams or
    #       filter the results by prefix. You can also control how the results are ordered.</p>
    #          <p>You can specify the log group to search by using either <code>logGroupIdentifier</code> or
    #         <code>logGroupName</code>. You must include one of these two parameters, but you can't
    #       include both. </p>
    #          <p>This operation has a limit of 25 transactions per second, after which transactions are
    #       throttled.</p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation
    #       in a monitoring account and view data from the linked source accounts. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    # @param [Hash, Types::DescribeLogStreamsRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @option params [String] :log_group_identifier
    #   <p>Specify either the name or ARN of the log group to view. If the log group is in a source
    #         account and you are using a monitoring account, you must use the log group ARN.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @option params [String] :log_stream_name_prefix
    #   <p>The prefix to match.</p>
    #            <p>If <code>orderBy</code> is <code>LastEventTime</code>, you cannot specify this
    #         parameter.</p>
    # @option params [String] :order_by
    #   <p>If the value is <code>LogStreamName</code>, the results are ordered by log stream name.
    #         If the value is <code>LastEventTime</code>, the results are ordered by the event time. The
    #         default value is <code>LogStreamName</code>.</p>
    #            <p>If you order the results by event time, you cannot specify the
    #           <code>logStreamNamePrefix</code> parameter.</p>
    #            <p>
    #               <code>lastEventTimestamp</code> represents the time of the most recent log event in the
    #         log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after
    #           <code>Jan 1, 1970 00:00:00 UTC</code>. <code>lastEventTimestamp</code> updates on an
    #         eventual consistency basis. It typically updates in less than an hour from ingestion, but in
    #         rare situations might take longer.</p>
    # @option params [Boolean] :descending
    #   <p>If the value is true, results are returned in descending order. If the value is to
    #         false, results are returned in ascending order. The default value is false.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up
    #         to 50 items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_name_prefix: "LogStreamName",
    #     order_by: "LogStreamName" # One of: ["LogStreamName", "LastEventTime"],
    #     descending: false,
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_log_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_streams: [
    #       {
    #         log_stream_name: "LogStreamName",
    #         creation_time: 1,
    #         first_event_timestamp: 1,
    #         last_event_timestamp: 1,
    #         last_ingestion_time: 1,
    #         upload_sequence_token: "SequenceToken",
    #         arn: "Arn",
    #         stored_bytes: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeLogStreamsResponse]
    def describe_log_streams(params = {}, options = {})
      request = build_request(:describe_log_streams, params)
      request.send_request(options)
    end

    # <p>Lists the specified metric filters. You can list all of the metric filters or filter
    #       the results by log name, prefix, metric name, or metric namespace. The results are
    #       ASCII-sorted by filter name.</p>
    # @param [Hash, Types::DescribeMetricFiltersRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :filter_name_prefix
    #   <p>The prefix to match. CloudWatch Logs uses the value that you set here only if you also
    #         include the <code>logGroupName</code> parameter in your request.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up
    #         to 50 items.</p>
    # @option params [String] :metric_name
    #   <p>Filters results to include only those with the specified metric name. If you include
    #         this parameter in your request, you must also include the <code>metricNamespace</code>
    #         parameter.</p>
    # @option params [String] :metric_namespace
    #   <p>Filters results to include only those in the specified namespace. If you include this
    #         parameter in your request, you must also include the <code>metricName</code>
    #         parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     filter_name_prefix: "FilterName",
    #     next_token: "NextToken",
    #     limit: 1,
    #     metric_name: "MetricName",
    #     metric_namespace: "MetricNamespace"
    #   }
    #   options = {}
    #   response = client.describe_metric_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_filters: [
    #       {
    #         filter_name: "FilterName",
    #         filter_pattern: "FilterPattern",
    #         metric_transformations: [
    #           {
    #             metric_name: "MetricName", # required
    #             metric_namespace: "MetricNamespace", # required
    #             metric_value: "MetricValue", # required
    #             default_value: 1.0,
    #             dimensions: {
    #               "DimensionsKey" => "DimensionsValue"
    #             },
    #             unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #           }
    #         ],
    #         creation_time: 1,
    #         log_group_name: "LogGroupName",
    #         apply_on_transformed_logs: false,
    #         field_selection_criteria: "FieldSelectionCriteria",
    #         emit_system_field_dimensions: ["SystemField"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMetricFiltersResponse]
    def describe_metric_filters(params = {}, options = {})
      request = build_request(:describe_metric_filters, params)
      request.send_request(options)
    end

    # <p>Returns a list of CloudWatch Logs Insights queries that are scheduled, running, or have
    #       been run recently in this account. You can request all queries or limit it to queries of a
    #       specific log group or queries with a certain status.</p>
    # @param [Hash, Types::DescribeQueriesRequest] params
    # @option params [String] :log_group_name
    #   <p>Limits the returned queries to only those for the specified log group.</p>
    # @option params [String] :status
    #   <p>Limits the returned queries to only those that have the specified status. Valid values are
    #           <code>Cancelled</code>, <code>Complete</code>, <code>Failed</code>, <code>Running</code>,
    #         and <code>Scheduled</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned queries to the specified number.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [String] :query_language
    #   <p>Limits the returned queries to only the queries that use the specified query
    #         language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     status: "Scheduled" # One of: ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     query_language: "CWLI" # One of: ["CWLI", "SQL", "PPL"]
    #   }
    #   options = {}
    #   response = client.describe_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queries: [
    #       {
    #         query_language: "CWLI" # One of: ["CWLI", "SQL", "PPL"],
    #         query_id: "QueryId",
    #         query_string: "QueryString",
    #         status: "Scheduled" # One of: ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"],
    #         create_time: 1,
    #         log_group_name: "LogGroupName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeQueriesResponse]
    def describe_queries(params = {}, options = {})
      request = build_request(:describe_queries, params)
      request.send_request(options)
    end

    # <p>This operation returns a paginated list of your saved CloudWatch Logs Insights query
    #       definitions. You can retrieve query definitions from the current account or from a source
    #       account that is linked to the current account.</p>
    #          <p>You can use the <code>queryDefinitionNamePrefix</code> parameter to limit the results to
    #       only the query definitions that have names that start with a certain string.</p>
    # @param [Hash, Types::DescribeQueryDefinitionsRequest] params
    # @option params [String] :query_language
    #   <p>The query language used for this query. For more information about the query languages
    #         that CloudWatch Logs supports, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html">Supported query
    #           languages</a>.</p>
    # @option params [String] :query_definition_name_prefix
    #   <p>Use this parameter to filter your results to only the query definitions that have names
    #         that start with the prefix you specify.</p>
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned query definitions to the specified number.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_language: "CWLI" # One of: ["CWLI", "SQL", "PPL"],
    #     query_definition_name_prefix: "QueryDefinitionName",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_query_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_definitions: [
    #       {
    #         query_language: "CWLI" # One of: ["CWLI", "SQL", "PPL"],
    #         query_definition_id: "QueryId",
    #         name: "QueryDefinitionName",
    #         query_string: "QueryDefinitionString",
    #         last_modified: 1,
    #         log_group_names: ["LogGroupName"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeQueryDefinitionsResponse]
    def describe_query_definitions(params = {}, options = {})
      request = build_request(:describe_query_definitions, params)
      request.send_request(options)
    end

    # <p>Lists the resource policies in this account.</p>
    # @param [Hash, Types::DescribeResourcePoliciesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of resource policies to be displayed with one call of this
    #         API.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Logs resource for which to query the resource policy.</p>
    # @option params [String] :policy_scope
    #   <p>Specifies the scope of the resource policy. Valid values are <code>ACCOUNT</code> or
    #           <code>RESOURCE</code>. When not specified, defaults to <code>ACCOUNT</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     limit: 1,
    #     resource_arn: "Arn",
    #     policy_scope: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE"]
    #   }
    #   options = {}
    #   response = client.describe_resource_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policies: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_document: "PolicyDocument",
    #         last_updated_time: 1,
    #         policy_scope: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE"],
    #         resource_arn: "Arn",
    #         revision_id: "ExpectedRevisionId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeResourcePoliciesResponse]
    def describe_resource_policies(params = {}, options = {})
      request = build_request(:describe_resource_policies, params)
      request.send_request(options)
    end

    # <p>Lists the subscription filters for the specified log group. You can list all the
    #       subscription filters or filter the results by prefix. The results are ASCII-sorted by filter
    #       name.</p>
    # @param [Hash, Types::DescribeSubscriptionFiltersRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :filter_name_prefix
    #   <p>The prefix to match. If you don't specify a value, no prefix filter is
    #         applied.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up
    #         to 50 items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     filter_name_prefix: "FilterName",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_subscription_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_filters: [
    #       {
    #         filter_name: "FilterName",
    #         log_group_name: "LogGroupName",
    #         filter_pattern: "FilterPattern",
    #         destination_arn: "DestinationArn",
    #         role_arn: "RoleArn",
    #         distribution: "Random" # One of: ["Random", "ByLogStream"],
    #         apply_on_transformed_logs: false,
    #         creation_time: 1,
    #         field_selection_criteria: "FieldSelectionCriteria",
    #         emit_system_fields: ["SystemField"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSubscriptionFiltersResponse]
    def describe_subscription_filters(params = {}, options = {})
      request = build_request(:describe_subscription_filters, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified KMS key from the specified log group or
    #       from all CloudWatch Logs Insights query results in the account.</p>
    #          <p>When you use <code>DisassociateKmsKey</code>, you specify either the
    #         <code>logGroupName</code> parameter or the <code>resourceIdentifier</code> parameter. You
    #       can't specify both of those parameters in the same operation.</p>
    #          <ul>
    #             <li>
    #                <p>Specify the <code>logGroupName</code> parameter to stop using the KMS key to encrypt future log events ingested and stored in the log group.
    #           Instead, they will be encrypted with the default CloudWatch Logs method. The log events
    #           that were ingested while the key was associated with the log group are still encrypted
    #           with that key. Therefore, CloudWatch Logs will need permissions for the key whenever
    #           that data is accessed.</p>
    #             </li>
    #             <li>
    #                <p>Specify the <code>resourceIdentifier</code> parameter with the
    #             <code>query-result</code> resource to stop using the KMS key to
    #           encrypt the results of all future <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html">StartQuery</a>
    #           operations in the account. They will instead be encrypted with the default CloudWatch Logs method. The results from queries that ran while the key was associated with
    #           the account are still encrypted with that key. Therefore, CloudWatch Logs will need
    #           permissions for the key whenever that data is accessed.</p>
    #             </li>
    #          </ul>
    #          <p>It can take up to 5 minutes for this operation to take effect.</p>
    # @param [Hash, Types::DisassociateKmsKeyRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #            <p>In your <code>DisassociateKmsKey</code> operation, you must specify either the
    #           <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you
    #         can't specify both.</p>
    # @option params [String] :resource_identifier
    #   <p>Specifies the target for this operation. You must specify one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify the ARN of a log group to stop having CloudWatch Logs use the KMS key to encrypt log events that are ingested and stored by that log
    #             group. After you run this operation, CloudWatch Logs encrypts ingested log events with
    #             the default CloudWatch Logs method. The log group ARN must be in the following format.
    #             Replace <i>REGION</i> and <i>ACCOUNT_ID</i> with your Region
    #             and account ID.</p>
    #                  <p>
    #                     <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:log-group:<i>LOG_GROUP_NAME</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specify the following ARN to stop using this key to encrypt the results of future
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html">StartQuery</a>
    #             operations in this account. Replace <i>REGION</i> and
    #               <i>ACCOUNT_ID</i> with your Region and account ID.</p>
    #                  <p>
    #                     <code>arn:aws:logs:<i>REGION</i>:<i>ACCOUNT_ID</i>:query-result:*</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>In your <code>DisssociateKmsKey</code> operation, you must specify either the
    #           <code>resourceIdentifier</code> parameter or the <code>logGroup</code> parameter, but you
    #         can't specify both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     resource_identifier: "ResourceIdentifier"
    #   }
    #   options = {}
    #   response = client.disassociate_kms_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_kms_key(params = {}, options = {})
      request = build_request(:disassociate_kms_key, params)
      request.send_request(options)
    end

    # <p>Lists log events from the specified log group. You can list all the log events or
    #       filter the results using one or more of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A filter pattern</p>
    #             </li>
    #             <li>
    #                <p>A time range</p>
    #             </li>
    #             <li>
    #                <p>The log stream name, or a log stream name prefix that matches multiple log
    #           streams</p>
    #             </li>
    #          </ul>
    #          <p>You must have the <code>logs:FilterLogEvents</code> permission to perform this
    #       operation.</p>
    #          <p>You can specify the log group to search by using either <code>logGroupIdentifier</code> or
    #         <code>logGroupName</code>. You must include one of these two parameters, but you can't
    #       include both. </p>
    #          <p>
    #             <code>FilterLogEvents</code> is a paginated operation. Each page returned can contain up
    #       to 1 MB of log events or up to 10,000 log events. A returned page might only be partially
    #       full, or even empty. For example, if the result of a query would return 15,000 log events, the
    #       first page isn't guaranteed to have 10,000 log events even if they all fit into 1 MB.</p>
    #          <p>Partially full or empty pages don't necessarily mean that pagination is finished. If the
    #       results include a <code>nextToken</code>, there might be more log events available. You can
    #       return these additional log events by providing the nextToken in a subsequent
    #         <code>FilterLogEvents</code> operation. If the results don't include a
    #         <code>nextToken</code>, then pagination is finished. </p>
    #          <p>Specifying the <code>limit</code> parameter only guarantees that a single page doesn't
    #       return more log events than the specified limit, but it might return fewer events than the
    #       limit. This is the expected API behavior.</p>
    #          <p>The returned log events are sorted by event timestamp, the timestamp when the event was
    #       ingested by CloudWatch Logs, and the ID of the <code>PutLogEvents</code> request.</p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation
    #       in a monitoring account and view data from the linked source accounts. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    #          <note>
    #             <p>If you are using <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html">log
    #           transformation</a>, the <code>FilterLogEvents</code> operation returns only the
    #         original versions of log events, before they were transformed. To view the transformed
    #         versions, you must use a <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html">CloudWatch Logs
    #         query.</a>
    #             </p>
    #          </note>
    # @param [Hash, Types::FilterLogEventsRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group to search.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @option params [String] :log_group_identifier
    #   <p>Specify either the name or ARN of the log group to view log events from. If the log group
    #         is in a source account and you are using a monitoring account, you must use the log group
    #         ARN.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @option params [Array<String>] :log_stream_names
    #   <p>Filters the results to only logs from the log streams in this list.</p>
    #            <p>If you specify a value for both <code>logStreamNames</code> and
    #           <code>logStreamNamePrefix</code>, the action returns an
    #           <code>InvalidParameterException</code> error.</p>
    # @option params [String] :log_stream_name_prefix
    #   <p>Filters the results to include only events from log streams that have names starting with
    #         this prefix.</p>
    #            <p>If you specify a value for both <code>logStreamNamePrefix</code> and
    #           <code>logStreamNames</code>, the action returns an <code>InvalidParameterException</code>
    #         error.</p>
    # @option params [Integer] :start_time
    #   <p>The start of the time range, expressed as the number of milliseconds after <code>Jan 1,
    #           1970 00:00:00 UTC</code>. Events with a timestamp before this time are not
    #         returned.</p>
    # @option params [Integer] :end_time
    #   <p>The end of the time range, expressed as the number of milliseconds after <code>Jan 1,
    #           1970 00:00:00 UTC</code>. Events with a timestamp later than this time are not
    #         returned.</p>
    # @option params [String] :filter_pattern
    #   <p>The filter pattern to use. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html">Filter and Pattern
    #           Syntax</a>.</p>
    #            <p>If not provided, all the events are matched.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of events to return. (You received this token from a
    #         previous call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of events to return. The default is 10,000 events.</p>
    # @option params [Boolean] :interleaved
    #   <p>If the value is true, the operation attempts to provide responses that contain events
    #         from multiple log streams within the log group, interleaved in a single response. If the value
    #         is false, all the matched log events in the first log stream are searched first, then those in
    #         the next log stream, and so on.</p>
    #            <p>
    #               <b>Important</b> As of June 17, 2019, this parameter is
    #         ignored and the value is assumed to be true. The response from this operation always
    #         interleaves events from multiple log streams within a log group.</p>
    # @option params [Boolean] :unmask
    #   <p>Specify <code>true</code> to display the log event fields with all sensitive data unmasked
    #         and visible. The default is <code>false</code>.</p>
    #            <p>To use this operation with this parameter, you must be signed into an account with the
    #           <code>logs:Unmask</code> permission.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_names: ["LogStreamName"],
    #     log_stream_name_prefix: "LogStreamName",
    #     start_time: 1,
    #     end_time: 1,
    #     filter_pattern: "FilterPattern",
    #     next_token: "NextToken",
    #     limit: 1,
    #     interleaved: false,
    #     unmask: false
    #   }
    #   options = {}
    #   response = client.filter_log_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         log_stream_name: "LogStreamName",
    #         timestamp: 1,
    #         message: "EventMessage",
    #         ingestion_time: 1,
    #         event_id: "EventId"
    #       }
    #     ],
    #     searched_log_streams: [
    #       {
    #         log_stream_name: "LogStreamName",
    #         searched_completely: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::FilterLogEventsResponse]
    def filter_log_events(params = {}, options = {})
      request = build_request(:filter_log_events, params)
      request.send_request(options)
    end

    # <p>Returns information about a log group data protection policy.</p>
    # @param [Hash, Types::GetDataProtectionPolicyRequest] params
    # @option params [String] :log_group_identifier
    #   <p>The name or ARN of the log group that contains the data protection policy that you want to
    #         see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_data_protection_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_group_identifier: "LogGroupIdentifier",
    #     policy_document: "DataProtectionPolicyDocument",
    #     last_updated_time: 1
    #   }
    # @return [Types::GetDataProtectionPolicyResponse]
    def get_data_protection_policy(params = {}, options = {})
      request = build_request(:get_data_protection_policy, params)
      request.send_request(options)
    end

    # <p>Returns complete information about one logical <i>delivery</i>. A delivery
    #       is a connection between a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html">
    #                <i>delivery
    #           source</i>
    #             </a> and a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html">
    #                <i>delivery destination</i>
    #             </a>.</p>
    #          <p>A delivery source represents an Amazon Web Services resource that sends logs to an logs
    #       delivery destination. The destination can be CloudWatch Logs, Amazon S3, or Firehose. Only some Amazon Web Services services support being configured as a delivery
    #       source. These services are listed in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html">Enable logging from
    #           Amazon Web Services services.</a>
    #          </p>
    #          <p>You need to specify the delivery <code>id</code> in this operation. You can find the IDs
    #       of the deliveries in your account with the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeDeliveries.html">DescribeDeliveries</a> operation.</p>
    # @param [Hash, Types::GetDeliveryRequest] params
    # @option params [String] :id
    #   <p>The ID of the delivery that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeliveryId", # required
    #   }
    #   options = {}
    #   response = client.get_delivery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery: {
    #       id: "DeliveryId",
    #       arn: "Arn",
    #       delivery_source_name: "DeliverySourceName",
    #       delivery_destination_arn: "Arn",
    #       delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #       record_fields: ["FieldHeader"],
    #       field_delimiter: "FieldDelimiter",
    #       s3_delivery_configuration: {
    #         suffix_path: "DeliverySuffixPath",
    #         enable_hive_compatible_path: false
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetDeliveryResponse]
    def get_delivery(params = {}, options = {})
      request = build_request(:get_delivery, params)
      request.send_request(options)
    end

    # <p>Retrieves complete information about one delivery destination.</p>
    # @param [Hash, Types::GetDeliveryDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the delivery destination that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeliveryDestinationName", # required
    #   }
    #   options = {}
    #   response = client.get_delivery_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_destination: {
    #       name: "DeliveryDestinationName",
    #       arn: "Arn",
    #       delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #       output_format: "json" # One of: ["json", "plain", "w3c", "raw", "parquet"],
    #       delivery_destination_configuration: {
    #         destination_resource_arn: "Arn", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetDeliveryDestinationResponse]
    def get_delivery_destination(params = {}, options = {})
      request = build_request(:get_delivery_destination, params)
      request.send_request(options)
    end

    # <p>Retrieves the delivery destination policy assigned to the delivery destination that you
    #       specify. For more information about delivery destinations and their policies, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html">PutDeliveryDestinationPolicy</a>.</p>
    # @param [Hash, Types::GetDeliveryDestinationPolicyRequest] params
    # @option params [String] :delivery_destination_name
    #   <p>The name of the delivery destination that you want to retrieve the policy of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_destination_name: "DeliveryDestinationName", # required
    #   }
    #   options = {}
    #   response = client.get_delivery_destination_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       delivery_destination_policy: "DeliveryDestinationPolicy"
    #     }
    #   }
    # @return [Types::GetDeliveryDestinationPolicyResponse]
    def get_delivery_destination_policy(params = {}, options = {})
      request = build_request(:get_delivery_destination_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves complete information about one delivery source.</p>
    # @param [Hash, Types::GetDeliverySourceRequest] params
    # @option params [String] :name
    #   <p>The name of the delivery source that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeliverySourceName", # required
    #   }
    #   options = {}
    #   response = client.get_delivery_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_source: {
    #       name: "DeliverySourceName",
    #       arn: "Arn",
    #       resource_arns: ["Arn"],
    #       service: "Service",
    #       log_type: "LogType",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetDeliverySourceResponse]
    def get_delivery_source(params = {}, options = {})
      request = build_request(:get_delivery_source, params)
      request.send_request(options)
    end

    # <p>Returns information about one integration between CloudWatch Logs and OpenSearch Service. </p>
    # @param [Hash, Types::GetIntegrationRequest] params
    # @option params [String] :integration_name
    #   <p>The name of the integration that you want to find information about. To find the name of
    #         your integration, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListIntegrations.html">ListIntegrations</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_name: "IntegrationName", # required
    #   }
    #   options = {}
    #   response = client.get_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_name: "IntegrationName",
    #     integration_type: "OPENSEARCH" # One of: ["OPENSEARCH"],
    #     integration_status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "FAILED"],
    #     integration_details: {
    #       # One of:
    #       open_search_integration_details: {
    #         data_source: {
    #           data_source_name: "OpenSearchDataSourceName",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         },
    #         application: {
    #           application_endpoint: "OpenSearchApplicationEndpoint",
    #           application_arn: "Arn",
    #           application_id: "OpenSearchApplicationId",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         },
    #         collection: {
    #           collection_endpoint: "OpenSearchCollectionEndpoint",
    #           collection_arn: "Arn",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         },
    #         workspace: {
    #           workspace_id: "OpenSearchWorkspaceId",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         },
    #         encryption_policy: {
    #           policy_name: "OpenSearchPolicyName",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         },
    #         network_policy: {
    #           policy_name: "OpenSearchPolicyName",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         },
    #         access_policy: {
    #           policy_name: "OpenSearchPolicyName",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         },
    #         lifecycle_policy: {
    #           policy_name: "OpenSearchPolicyName",
    #           status: {
    #             status: "ACTIVE" # One of: ["ACTIVE", "NOT_FOUND", "ERROR"],
    #             status_message: "IntegrationStatusMessage"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetIntegrationResponse]
    def get_integration(params = {}, options = {})
      request = build_request(:get_integration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the log anomaly detector that you specify. The KMS key ARN detected is valid.</p>
    # @param [Hash, Types::GetLogAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector to retrieve information about. You can find the ARNs of
    #         log anomaly detectors in your account by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListLogAnomalyDetectors.html">ListLogAnomalyDetectors</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #   }
    #   options = {}
    #   response = client.get_log_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_name: "DetectorName",
    #     log_group_arn_list: ["LogGroupArn"],
    #     evaluation_frequency: "ONE_MIN" # One of: ["ONE_MIN", "FIVE_MIN", "TEN_MIN", "FIFTEEN_MIN", "THIRTY_MIN", "ONE_HOUR"],
    #     filter_pattern: "FilterPattern",
    #     anomaly_detector_status: "INITIALIZING" # One of: ["INITIALIZING", "TRAINING", "ANALYZING", "FAILED", "DELETED", "PAUSED"],
    #     kms_key_id: "KmsKeyId",
    #     creation_time_stamp: 1,
    #     last_modified_time_stamp: 1,
    #     anomaly_visibility_time: 1
    #   }
    # @return [Types::GetLogAnomalyDetectorResponse]
    def get_log_anomaly_detector(params = {}, options = {})
      request = build_request(:get_log_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Lists log events from the specified log stream. You can list all of the log events or
    #       filter using a time range.</p>
    #          <p>
    #             <code>GetLogEvents</code> is a paginated operation. Each page returned can contain up to 1
    #       MB of log events or up to 10,000 log events. A returned page might only be partially full, or
    #       even empty. For example, if the result of a query would return 15,000 log events, the first
    #       page isn't guaranteed to have 10,000 log events even if they all fit into 1 MB.</p>
    #          <p>Partially full or empty pages don't necessarily mean that pagination is finished. As long
    #       as the <code>nextBackwardToken</code> or <code>nextForwardToken</code> returned is NOT equal
    #       to the <code>nextToken</code> that you passed into the API call, there might be more log
    #       events available. The token that you use depends on the direction you want to move in along
    #       the log stream. The returned tokens are never null.</p>
    #          <note>
    #             <p>If you set <code>startFromHead</code> to <code>true</code> and you don’t include
    #           <code>endTime</code> in your request, you can end up in a situation where the pagination
    #         doesn't terminate. This can happen when the new log events are being added to the target log
    #         streams faster than they are being read. This situation is a good use case for the CloudWatch Logs
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html">Live Tail</a> feature.</p>
    #          </note>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation
    #       in a monitoring account and view data from the linked source accounts. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    #          <p>You can specify the log group to search by using either <code>logGroupIdentifier</code> or
    #         <code>logGroupName</code>. You must include one of these two parameters, but you can't
    #       include both. </p>
    #          <note>
    #             <p>If you are using <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html">log
    #           transformation</a>, the <code>GetLogEvents</code> operation returns only the original
    #         versions of log events, before they were transformed. To view the transformed versions, you
    #         must use a <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html">CloudWatch Logs
    #         query.</a>
    #             </p>
    #          </note>
    # @param [Hash, Types::GetLogEventsRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @option params [String] :log_group_identifier
    #   <p>Specify either the name or ARN of the log group to view events from. If the log group is
    #         in a source account and you are using a monitoring account, you must use the log group
    #         ARN.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    # @option params [Integer] :start_time
    #   <p>The start of the time range, expressed as the number of milliseconds after <code>Jan 1,
    #           1970 00:00:00 UTC</code>. Events with a timestamp equal to this time or later than this time
    #         are included. Events with a timestamp earlier than this time are not included.</p>
    # @option params [Integer] :end_time
    #   <p>The end of the time range, expressed as the number of milliseconds after <code>Jan 1,
    #           1970 00:00:00 UTC</code>. Events with a timestamp equal to or later than this time are not
    #         included.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #         call.)</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of log events returned. If you don't specify a limit, the default is
    #         as many log events as can fit in a response size of 1 MB (up to 10,000 log events).</p>
    # @option params [Boolean] :start_from_head
    #   <p>If the value is true, the earliest log events are returned first. If the value is
    #         false, the latest log events are returned first. The default value is false.</p>
    #            <p>If you are using a previous <code>nextForwardToken</code> value as the
    #           <code>nextToken</code> in this operation, you must specify <code>true</code> for
    #           <code>startFromHead</code>.</p>
    # @option params [Boolean] :unmask
    #   <p>Specify <code>true</code> to display the log event fields with all sensitive data unmasked
    #         and visible. The default is <code>false</code>.</p>
    #            <p>To use this operation with this parameter, you must be signed into an account with the
    #           <code>logs:Unmask</code> permission.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     log_group_identifier: "LogGroupIdentifier",
    #     log_stream_name: "LogStreamName", # required
    #     start_time: 1,
    #     end_time: 1,
    #     next_token: "NextToken",
    #     limit: 1,
    #     start_from_head: false,
    #     unmask: false
    #   }
    #   options = {}
    #   response = client.get_log_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         timestamp: 1,
    #         message: "EventMessage",
    #         ingestion_time: 1
    #       }
    #     ],
    #     next_forward_token: "NextToken",
    #     next_backward_token: "NextToken"
    #   }
    # @return [Types::GetLogEventsResponse]
    def get_log_events(params = {}, options = {})
      request = build_request(:get_log_events, params)
      request.send_request(options)
    end

    # <p>Returns a list of the fields that are included in log events in the specified log group.
    #       Includes the percentage of log events that contain each field. The search is limited to a time
    #       period that you specify.</p>
    #          <p>You can specify the log group to search by using either <code>logGroupIdentifier</code> or
    #         <code>logGroupName</code>. You must specify one of these parameters, but you can't specify
    #       both. </p>
    #          <p>In the results, fields that start with <code>@</code> are fields generated by CloudWatch
    #       Logs. For example, <code>@timestamp</code> is the timestamp of each log event. For more
    #       information about the fields that are generated by CloudWatch logs, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html">Supported
    #         Logs and Discovered Fields</a>.</p>
    #          <p>The response results are sorted by the frequency percentage, starting with the highest
    #       percentage.</p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation
    #       in a monitoring account and view data from the linked source accounts. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    # @param [Hash, Types::GetLogGroupFieldsRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group to search.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @option params [Integer] :time
    #   <p>The time to set as the center of the query. If you specify <code>time</code>, the 8
    #         minutes before and 8 minutes after this time are searched. If you omit <code>time</code>, the
    #         most recent 15 minutes up to the current time are searched.</p>
    #            <p>The <code>time</code> value is specified as epoch time, which is the number of seconds
    #         since <code>January 1, 1970, 00:00:00 UTC</code>.</p>
    # @option params [String] :log_group_identifier
    #   <p>Specify either the name or ARN of the log group to view. If the log group is in a source
    #         account and you are using a monitoring account, you must specify the ARN.</p>
    #            <note>
    #               <p> You must include either <code>logGroupIdentifier</code> or <code>logGroupName</code>,
    #           but not both. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName",
    #     time: 1,
    #     log_group_identifier: "LogGroupIdentifier"
    #   }
    #   options = {}
    #   response = client.get_log_group_fields(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_group_fields: [
    #       {
    #         name: "Field",
    #         percent: 1
    #       }
    #     ]
    #   }
    # @return [Types::GetLogGroupFieldsResponse]
    def get_log_group_fields(params = {}, options = {})
      request = build_request(:get_log_group_fields, params)
      request.send_request(options)
    end

    # <p>Retrieves a large logging object (LLO) and streams it back. This API is used to fetch the
    #       content of large portions of log events that have been ingested through the
    #       PutOpenTelemetryLogs API. When log events contain fields that would cause the total event size
    #       to exceed 1MB, CloudWatch Logs automatically processes up to 10 fields, starting with the
    #       largest fields. Each field is truncated as needed to keep the total event size as close to 1MB
    #       as possible. The excess portions are stored as Large Log Objects (LLOs) and these fields are
    #       processed separately and LLO reference system fields (in the format
    #         <code>@ptr.$[path.to.field]</code>) are added. The path in the reference field reflects the
    #       original JSON structure where the large field was located. For example, this could be
    #         <code>@ptr.$['input']['message']</code>, <code>@ptr.$['AAA']['BBB']['CCC']['DDD']</code>,
    #         <code>@ptr.$['AAA']</code>, or any other path matching your log structure.</p>
    # @param [Hash, Types::GetLogObjectRequest] params
    # @option params [Boolean] :unmask
    #   <p>A boolean flag that indicates whether to unmask sensitive log data. When set to true, any
    #         masked or redacted data in the log object will be displayed in its original form. Default is
    #         false.</p>
    # @option params [String] :log_object_pointer
    #   <p>A pointer to the specific log object to retrieve. This is a required parameter that
    #         uniquely identifies the log object within CloudWatch Logs. The pointer is typically obtained
    #         from a previous query or filter operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     unmask: false,
    #     log_object_pointer: "LogObjectPointer", # required
    #   }
    #   options = {}
    #   response = client.get_log_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_stream: {
    #       # One of:
    #       fields: {
    #         data: "data"
    #       },
    #       internal_streaming_exception: {
    #         message: "Message"
    #       }
    #     }
    #   }
    # @return [Types::GetLogObjectResponse]
    def get_log_object(params = {}, options = {})
      request = build_request(:get_log_object, params)
      request.send_request(options)
    end

    # <p>Retrieves all of the fields and values of a single log event. All fields are retrieved,
    #       even if the original query that produced the <code>logRecordPointer</code> retrieved only a
    #       subset of fields. Fields are returned as field name/field value pairs.</p>
    #          <p>The full unparsed log event is returned within <code>@message</code>.</p>
    # @param [Hash, Types::GetLogRecordRequest] params
    # @option params [String] :log_record_pointer
    #   <p>The pointer corresponding to the log event record you want to retrieve. You get this from
    #         the response of a <code>GetQueryResults</code> operation. In that response, the value of the
    #           <code>@ptr</code> field for a log event is the value to use as <code>logRecordPointer</code>
    #         to retrieve that complete log event record.</p>
    # @option params [Boolean] :unmask
    #   <p>Specify <code>true</code> to display the log event fields with all sensitive data unmasked
    #         and visible. The default is <code>false</code>.</p>
    #            <p>To use this operation with this parameter, you must be signed into an account with the
    #           <code>logs:Unmask</code> permission.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_record_pointer: "LogRecordPointer", # required
    #     unmask: false
    #   }
    #   options = {}
    #   response = client.get_log_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_record: {
    #       "Field" => "Value"
    #     }
    #   }
    # @return [Types::GetLogRecordResponse]
    def get_log_record(params = {}, options = {})
      request = build_request(:get_log_record, params)
      request.send_request(options)
    end

    # <p>Returns the results from the specified query.</p>
    #          <p>Only the fields requested in the query are returned, along with a <code>@ptr</code> field,
    #       which is the identifier for the log record. You can use the value of <code>@ptr</code> in a
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html">GetLogRecord</a>
    #       operation to get the full log record.</p>
    #          <p>
    #             <code>GetQueryResults</code> does not start running a query. To run a query, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html">StartQuery</a>. For more information about how long results of previous queries are
    #       available, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/cloudwatch_limits_cwl.html">CloudWatch Logs
    #         quotas</a>.</p>
    #          <p>If the value of the <code>Status</code> field in the output is <code>Running</code>, this
    #       operation returns only partial results. If you see a value of <code>Scheduled</code> or
    #         <code>Running</code> for the status, you can retry the operation later to see the final
    #       results. </p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation
    #       in a monitoring account to start queries in linked source accounts. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    # @param [Hash, Types::GetQueryResultsRequest] params
    # @option params [String] :query_id
    #   <p>The ID number of the query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "QueryId", # required
    #   }
    #   options = {}
    #   response = client.get_query_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_language: "CWLI" # One of: ["CWLI", "SQL", "PPL"],
    #     results: [
    #       [
    #         {
    #           field: "Field",
    #           value: "Value"
    #         }
    #       ]
    #     ],
    #     statistics: {
    #       records_matched: 1.0,
    #       records_scanned: 1.0,
    #       estimated_records_skipped: 1.0,
    #       bytes_scanned: 1.0,
    #       estimated_bytes_skipped: 1.0,
    #       log_groups_scanned: 1.0
    #     },
    #     status: "Scheduled" # One of: ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"],
    #     encryption_key: "EncryptionKey"
    #   }
    # @return [Types::GetQueryResultsResponse]
    def get_query_results(params = {}, options = {})
      request = build_request(:get_query_results, params)
      request.send_request(options)
    end

    # <p>Returns the information about the log transformer associated with this log group.</p>
    #          <p>This operation returns data only for transformers created at the log group level. To get
    #       information for an account-level transformer, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeAccountPolicies.html">DescribeAccountPolicies</a>.</p>
    # @param [Hash, Types::GetTransformerRequest] params
    # @option params [String] :log_group_identifier
    #   <p>Specify either the name or ARN of the log group to return transformer information for. If
    #         the log group is in a source account and you are using a monitoring account, you must use the
    #         log group ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_group_identifier: "LogGroupIdentifier",
    #     creation_time: 1,
    #     last_modified_time: 1,
    #     transformer_config: [
    #       {
    #         add_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               value: "AddKeyValue", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         copy_value: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         csv: {
    #           quote_character: "QuoteCharacter",
    #           delimiter: "Delimiter",
    #           columns: ["Column"],
    #           source: "Source"
    #         },
    #         date_time_converter: {
    #           source: "Source", # required
    #           target: "Target", # required
    #           target_format: "TargetFormat",
    #           match_patterns: ["MatchPattern"], # required
    #           source_timezone: "SourceTimezone",
    #           target_timezone: "TargetTimezone",
    #           locale: "Locale"
    #         },
    #         delete_keys: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         grok: {
    #           source: "Source",
    #           match: "GrokMatch", # required
    #         },
    #         list_to_map: {
    #           source: "Source", # required
    #           key: "Key", # required
    #           value_key: "ValueKey",
    #           target: "Target",
    #           flatten: false,
    #           flattened_element: "first" # One of: ["first", "last"]
    #         },
    #         lower_case_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         move_keys: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         parse_cloudfront: {
    #           source: "Source"
    #         },
    #         parse_json: {
    #           source: "Source",
    #           destination: "DestinationField"
    #         },
    #         parse_key_value: {
    #           source: "Source",
    #           destination: "DestinationField",
    #           field_delimiter: "ParserFieldDelimiter",
    #           key_value_delimiter: "KeyValueDelimiter",
    #           key_prefix: "KeyPrefix",
    #           non_match_value: "NonMatchValue",
    #           overwrite_if_exists: false
    #         },
    #         parse_route53: {
    #           source: "Source"
    #         },
    #         parse_to_ocsf: {
    #           source: "Source",
    #           event_source: "CloudTrail" # One of: ["CloudTrail", "Route53Resolver", "VPCFlow", "EKSAudit", "AWSWAF"], # required
    #           ocsf_version: "V1.1" # One of: ["V1.1"], # required
    #         },
    #         parse_postgres: {
    #           source: "Source"
    #         },
    #         parse_vpc: {
    #           source: "Source"
    #         },
    #         parse_waf: {
    #           source: "Source"
    #         },
    #         rename_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               rename_to: "RenameTo", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         split_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               delimiter: "SplitStringDelimiter", # required
    #             }
    #           ]
    #         },
    #         substitute_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               from: "FromKey", # required
    #               to: "ToKey", # required
    #             }
    #           ]
    #         },
    #         trim_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         type_converter: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               type: "boolean" # One of: ["boolean", "integer", "double", "string"], # required
    #             }
    #           ]
    #         },
    #         upper_case_string: {
    #           with_keys: ["WithKey"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetTransformerResponse]
    def get_transformer(params = {}, options = {})
      request = build_request(:get_transformer, params)
      request.send_request(options)
    end

    # <p>Returns a list of anomalies that log anomaly detectors have found. For details about the
    #       structure format of each anomaly object that is returned, see the example in this
    #       section.</p>
    # @param [Hash, Types::ListAnomaliesRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>Use this to optionally limit the results to only the anomalies found by a certain anomaly
    #         detector.</p>
    # @option params [String] :suppression_state
    #   <p>You can specify this parameter if you want to the operation to return only anomalies that
    #         are currently either suppressed or unsuppressed.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return. If you don't specify a value, the default
    #         maximum value of 50 items is used.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "AnomalyDetectorArn",
    #     suppression_state: "SUPPRESSED" # One of: ["SUPPRESSED", "UNSUPPRESSED"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_anomalies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomalies: [
    #       {
    #         anomaly_id: "AnomalyId", # required
    #         pattern_id: "PatternId", # required
    #         anomaly_detector_arn: "AnomalyDetectorArn", # required
    #         pattern_string: "PatternString", # required
    #         pattern_regex: "PatternRegex",
    #         priority: "Priority",
    #         first_seen: 1, # required
    #         last_seen: 1, # required
    #         description: "Description", # required
    #         active: false, # required
    #         state: "Active" # One of: ["Active", "Suppressed", "Baseline"], # required
    #         histogram: { # required
    #           "Time" => 1
    #         },
    #         log_samples: [ # required
    #           {
    #             timestamp: 1,
    #             message: "EventMessage"
    #           }
    #         ],
    #         pattern_tokens: [ # required
    #           {
    #             dynamic_token_position: 1,
    #             is_dynamic: false,
    #             token_string: "TokenString",
    #             enumerations: {
    #               "TokenString" => 1
    #             },
    #             inferred_token_name: "InferredTokenName"
    #           }
    #         ],
    #         log_group_arn_list: ["LogGroupArn"], # required
    #         suppressed: false,
    #         suppressed_date: 1,
    #         suppressed_until: 1,
    #         is_pattern_level_suppression: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnomaliesResponse]
    def list_anomalies(params = {}, options = {})
      request = build_request(:list_anomalies, params)
      request.send_request(options)
    end

    # <p>Returns a list of integrations between CloudWatch Logs and other services in this
    #       account. Currently, only one integration can be created in an account, and this integration
    #       must be with OpenSearch Service.</p>
    # @param [Hash, Types::ListIntegrationsRequest] params
    # @option params [String] :integration_name_prefix
    #   <p>To limit the results to integrations that start with a certain name prefix, specify that
    #         name prefix here.</p>
    # @option params [String] :integration_type
    #   <p>To limit the results to integrations of a certain type, specify that type here.</p>
    # @option params [String] :integration_status
    #   <p>To limit the results to integrations with a certain status, specify that status
    #         here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_name_prefix: "IntegrationNamePrefix",
    #     integration_type: "OPENSEARCH" # One of: ["OPENSEARCH"],
    #     integration_status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_summaries: [
    #       {
    #         integration_name: "IntegrationName",
    #         integration_type: "OPENSEARCH" # One of: ["OPENSEARCH"],
    #         integration_status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListIntegrationsResponse]
    def list_integrations(params = {}, options = {})
      request = build_request(:list_integrations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the log anomaly detectors in the account.</p>
    # @param [Hash, Types::ListLogAnomalyDetectorsRequest] params
    # @option params [String] :filter_log_group_arn
    #   <p>Use this to optionally filter the results to only include anomaly detectors that are
    #         associated with the specified log group.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return. If you don't specify a value, the default
    #         maximum value of 50 items is used.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_log_group_arn: "LogGroupArn",
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_log_anomaly_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detectors: [
    #       {
    #         anomaly_detector_arn: "AnomalyDetectorArn",
    #         detector_name: "DetectorName",
    #         log_group_arn_list: ["LogGroupArn"],
    #         evaluation_frequency: "ONE_MIN" # One of: ["ONE_MIN", "FIVE_MIN", "TEN_MIN", "FIFTEEN_MIN", "THIRTY_MIN", "ONE_HOUR"],
    #         filter_pattern: "FilterPattern",
    #         anomaly_detector_status: "INITIALIZING" # One of: ["INITIALIZING", "TRAINING", "ANALYZING", "FAILED", "DELETED", "PAUSED"],
    #         kms_key_id: "KmsKeyId",
    #         creation_time_stamp: 1,
    #         last_modified_time_stamp: 1,
    #         anomaly_visibility_time: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLogAnomalyDetectorsResponse]
    def list_log_anomaly_detectors(params = {}, options = {})
      request = build_request(:list_log_anomaly_detectors, params)
      request.send_request(options)
    end

    # <p>Returns a list of log groups in the Region in your account. If you are performing this
    #       action in a monitoring account, you can choose to also return log groups from source accounts
    #       that are linked to the monitoring account. For more information about using cross-account
    #       observability to set up monitoring accounts and source accounts, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">
    #         CloudWatch cross-account observability</a>.</p>
    #          <p>You can optionally filter the list by log group class and by using regular expressions in
    #       your request to match strings in the log group names.</p>
    #          <p>This operation is paginated. By default, your first use of this operation returns 50
    #       results, and includes a token to use in a subsequent operation to return more results.</p>
    # @param [Hash, Types::ListLogGroupsRequest] params
    # @option params [String] :log_group_name_pattern
    #   <p>Use this parameter to limit the returned log groups to only those with names that match
    #         the pattern that you specify. This parameter is a regular expression that can match prefixes
    #         and substrings, and supports wildcard matching and matching multiple patterns, as in the
    #         following examples. </p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>^</code> to match log group names by prefix.</p>
    #               </li>
    #               <li>
    #                  <p>For a substring match, specify the string to match. All matches are case
    #             sensitive</p>
    #               </li>
    #               <li>
    #                  <p>To match multiple patterns, separate them with a <code>|</code> as in the example
    #               <code>^/aws/lambda|discovery</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can specify as many as five different regular expression patterns in this field, each
    #         of which must be between 3 and 24 characters. You can include the <code>^</code> symbol as
    #         many as five times, and include the <code>|</code> symbol as many as four times.</p>
    # @option params [String] :log_group_class
    #   <p>Use this parameter to limit the results to only those log groups in the specified log
    #         group class. If you omit this parameter, log groups of all classes can be returned.</p>
    # @option params [Boolean] :include_linked_accounts
    #   <p>If you are using a monitoring account, set this to <code>true</code> to have the operation
    #         return log groups in the accounts listed in <code>accountIdentifiers</code>.</p>
    #            <p>If this parameter is set to <code>true</code> and <code>accountIdentifiers</code> contains
    #         a null value, the operation returns all log groups in the monitoring account and all log
    #         groups in all source accounts that are linked to the monitoring account. </p>
    #            <p>The default for this parameter is <code>false</code>.</p>
    # @option params [Array<String>] :account_identifiers
    #   <p>When <code>includeLinkedAccounts</code> is set to <code>true</code>, use this parameter to
    #         specify the list of accounts to search. You can specify as many as 20 account IDs in the
    #         array.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of log groups to return. If you omit this parameter, the default is
    #         up to 50 log groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name_pattern: "LogGroupNameRegexPattern",
    #     log_group_class: "STANDARD" # One of: ["STANDARD", "INFREQUENT_ACCESS", "DELIVERY"],
    #     include_linked_accounts: false,
    #     account_identifiers: ["AccountId"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_log_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_groups: [
    #       {
    #         log_group_name: "LogGroupName",
    #         log_group_arn: "Arn",
    #         log_group_class: "STANDARD" # One of: ["STANDARD", "INFREQUENT_ACCESS", "DELIVERY"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLogGroupsResponse]
    def list_log_groups(params = {}, options = {})
      request = build_request(:list_log_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of the log groups that were analyzed during a single CloudWatch Logs
    #       Insights query. This can be useful for queries that use log group name prefixes or the
    #         <code>filterIndex</code> command, because the log groups are dynamically selected in these
    #       cases.</p>
    #          <p>For more information about field indexes, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html">Create field indexes
    #         to improve query performance and reduce costs</a>.</p>
    # @param [Hash, Types::ListLogGroupsForQueryRequest] params
    # @option params [String] :query_id
    #   <p>The ID of the query to use. This query ID is from the response to your <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html">StartQuery</a> operation.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24
    #         hours.</p>
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned log groups to the specified number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "QueryId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_log_groups_for_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_group_identifiers: ["LogGroupIdentifier"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLogGroupsForQueryResponse]
    def list_log_groups_for_query(params = {}, options = {})
      request = build_request(:list_log_groups_for_query, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with a CloudWatch Logs resource. Currently, log groups and
    #       destinations support tagging.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you want to view tags for.</p>
    #            <p>The ARN format of a log group is
    #             <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:log-group:<i>log-group-name</i>
    #               </code>
    #            </p>
    #            <p>The ARN format of a destination is
    #             <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:destination:<i>destination-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs
    #           resources and operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <important>
    #             <p>The ListTagsLogGroup operation is on the path to deprecation. We recommend that you use
    #           <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html">ListTagsForResource</a> instead.</p>
    #          </important>
    #          <p>Lists the tags for the specified log group.</p>
    # @param [Hash, Types::ListTagsLogGroupRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_log_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @deprecated
    #   Please use the generic tagging API ListTagsForResource
    # @return [Types::ListTagsLogGroupResponse]
    def list_tags_log_group(params = {}, options = {})
      request = build_request(:list_tags_log_group, params)
      request.send_request(options)
    end

    # <p>Creates an account-level data protection policy, subscription filter policy, field index
    #       policy, transformer policy, or metric extraction policy that applies to all log groups or a
    #       subset of log groups in the account.</p>
    #          <p>To use this operation, you must be signed on with the correct permissions depending on the
    #       type of policy that you are creating.</p>
    #          <ul>
    #             <li>
    #                <p>To create a data protection policy, you must have the
    #             <code>logs:PutDataProtectionPolicy</code> and <code>logs:PutAccountPolicy</code>
    #           permissions.</p>
    #             </li>
    #             <li>
    #                <p>To create a subscription filter policy, you must have the
    #             <code>logs:PutSubscriptionFilter</code> and <code>logs:PutAccountPolicy</code>
    #           permissions.</p>
    #             </li>
    #             <li>
    #                <p>To create a transformer policy, you must have the <code>logs:PutTransformer</code> and
    #             <code>logs:PutAccountPolicy</code> permissions.</p>
    #             </li>
    #             <li>
    #                <p>To create a field index policy, you must have the <code>logs:PutIndexPolicy</code> and
    #             <code>logs:PutAccountPolicy</code> permissions.</p>
    #             </li>
    #             <li>
    #                <p>To create a metric extraction policy, you must have the
    #             <code>logs:PutMetricExtractionPolicy</code> and <code>logs:PutAccountPolicy</code>
    #           permissions.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Data protection policy</b>
    #          </p>
    #          <p>A data protection policy can help safeguard sensitive data that's ingested by your log
    #       groups by auditing and masking the sensitive log data. Each account can have only one
    #       account-level data protection policy.</p>
    #          <important>
    #             <p>Sensitive data is detected and masked when it is ingested into a log group. When you set
    #         a data protection policy, log events ingested into the log groups before that time are not
    #         masked.</p>
    #          </important>
    #          <p>If you use <code>PutAccountPolicy</code> to create a data protection policy for your whole
    #       account, it applies to both existing log groups and all log groups that are created later in
    #       this account. The account-level policy is applied to existing log groups with eventual
    #       consistency. It might take up to 5 minutes before sensitive data in existing log groups begins
    #       to be masked.</p>
    #          <p>By default, when a user views a log event that includes masked data, the sensitive data is
    #       replaced by asterisks. A user who has the <code>logs:Unmask</code> permission can use a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html">GetLogEvents</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html">FilterLogEvents</a> operation with the <code>unmask</code> parameter set to
    #         <code>true</code> to view the unmasked log events. Users with the <code>logs:Unmask</code>
    #       can also view unmasked data in the CloudWatch Logs console by running a CloudWatch Logs
    #       Insights query with the <code>unmask</code> query command.</p>
    #          <p>For more information, including a list of types of data that can be audited and masked,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html">Protect sensitive log data
    #         with masking</a>.</p>
    #          <p>To use the <code>PutAccountPolicy</code> operation for a data protection policy, you must
    #       be signed on with the <code>logs:PutDataProtectionPolicy</code> and
    #         <code>logs:PutAccountPolicy</code> permissions.</p>
    #          <p>The <code>PutAccountPolicy</code> operation applies to all log groups in the account. You
    #       can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html">PutDataProtectionPolicy</a> to create a data protection policy that applies to just one
    #       log group. If a log group has its own data protection policy and the account also has an
    #       account-level data protection policy, then the two policies are cumulative. Any sensitive term
    #       specified in either policy is masked.</p>
    #          <p>
    #             <b>Subscription filter policy</b>
    #          </p>
    #          <p>A subscription filter policy sets up a real-time feed of log events from CloudWatch Logs to other Amazon Web Services services. Account-level subscription filter policies apply to
    #       both existing log groups and log groups that are created later in this account. Supported
    #       destinations are Kinesis Data Streams, Firehose, and Lambda. When log
    #       events are sent to the receiving service, they are Base64 encoded and compressed with the GZIP
    #       format.</p>
    #          <p>The following destinations are supported for subscription filters:</p>
    #          <ul>
    #             <li>
    #                <p>An Kinesis Data Streams data stream in the same account as the subscription policy, for
    #           same-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>An Firehose data stream in the same account as the subscription policy, for
    #           same-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>A Lambda function in the same account as the subscription policy, for
    #           same-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>A logical destination in a different account created with <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html">PutDestination</a>, for cross-account delivery. Kinesis Data Streams and Firehose are supported as logical destinations.</p>
    #             </li>
    #          </ul>
    #          <p>Each account can have one account-level subscription filter policy per Region. If you are
    #       updating an existing filter, you must specify the correct name in <code>PolicyName</code>. To
    #       perform a <code>PutAccountPolicy</code> subscription filter operation for any destination
    #       except a Lambda function, you must also have the <code>iam:PassRole</code>
    #       permission.</p>
    #          <p>
    #             <b>Transformer policy</b>
    #          </p>
    #          <p>Creates or updates a <i>log transformer policy</i> for your account. You use
    #       log transformers to transform log events into a different format, making them easier for you
    #       to process and analyze. You can also transform logs from different sources into standardized
    #       formats that contain relevant, source-specific information. After you have created a
    #       transformer, CloudWatch Logs performs this transformation at the time of log ingestion. You
    #       can then refer to the transformed versions of the logs during operations such as querying with
    #         CloudWatch Logs Insights or creating metric filters or subscription filters.</p>
    #          <p>You can also use a transformer to copy metadata from metadata keys into the log events
    #       themselves. This metadata can include log group name, log stream name, account ID and
    #       Region.</p>
    #          <p>A transformer for a log group is a series of processors, where each processor applies one
    #       type of transformation to the log events ingested into this log group. For more information
    #       about the available processors to use in a transformer, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors"> Processors that you can use</a>.</p>
    #          <p>Having log events in standardized format enables visibility across your applications for
    #       your log analysis, reporting, and alarming needs. CloudWatch Logs provides transformation
    #       for common log types with out-of-the-box transformation templates for major Amazon Web Services
    #       log sources such as VPC flow logs, Lambda, and Amazon RDS. You can use
    #       pre-built transformation templates or create custom transformation policies.</p>
    #          <p>You can create transformers only for the log groups in the Standard log class.</p>
    #          <p>You can have one account-level transformer policy that applies to all log groups in the
    #       account. Or you can create as many as 20 account-level transformer policies that are each
    #       scoped to a subset of log groups with the <code>selectionCriteria</code> parameter. If you
    #       have multiple account-level transformer policies with selection criteria, no two of them can
    #       use the same or overlapping log group name prefixes. For example, if you have one policy
    #       filtered to log groups that start with <code>my-log</code>, you can't have another field index
    #       policy filtered to <code>my-logpprod</code> or <code>my-logging</code>.</p>
    #          <p>CloudWatch Logs provides default field indexes for all log groups in the Standard log
    #       class. Default field indexes are automatically available for the following fields: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>@aws.region</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>@aws.account</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>@source.log</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>traceId</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Default field indexes are in addition to any custom field indexes you define within your
    #       policy. Default field indexes are not counted towards your field index quota. </p>
    #          <p>You can also set up a transformer at the log-group level. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html">PutTransformer</a>. If there is both a log-group level transformer created with
    #         <code>PutTransformer</code> and an account-level transformer that could apply to the same
    #       log group, the log group uses only the log-group level transformer. It ignores the
    #       account-level transformer.</p>
    #          <p>
    #             <b>Field index policy</b>
    #          </p>
    #          <p>You can use field index policies to create indexes on fields found in log events in the
    #       log group. Creating field indexes can help lower the scan volume for CloudWatch Logs
    #       Insights queries that reference those fields, because these queries attempt to skip the
    #       processing of log events that are known to not match the indexed field. Good fields to index
    #       are fields that you often need to query for and fields or values that match only a small
    #       fraction of the total log events. Common examples of indexes include request ID, session ID,
    #       user IDs, or instance IDs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html">Create field indexes
    #         to improve query performance and reduce costs</a>
    #          </p>
    #          <p>To find the fields that are in your log group events, use the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html">GetLogGroupFields</a> operation.</p>
    #          <p>For example, suppose you have created a field index for <code>requestId</code>. Then, any
    #         CloudWatch Logs Insights query on that log group that includes <code>requestId =
    #           <i>value</i>
    #             </code> or <code>requestId in [<i>value</i>,
    #           <i>value</i>, ...]</code> will attempt to process only the log events where
    #       the indexed field matches the specified value.</p>
    #          <p>Matches of log events to the names of indexed fields are case-sensitive. For example, an
    #       indexed field of <code>RequestId</code> won't match a log event containing
    #         <code>requestId</code>.</p>
    #          <p>You can have one account-level field index policy that applies to all log groups in the
    #       account. Or you can create as many as 20 account-level field index policies that are each
    #       scoped to a subset of log groups with the <code>selectionCriteria</code> parameter. If you
    #       have multiple account-level index policies with selection criteria, no two of them can use the
    #       same or overlapping log group name prefixes. For example, if you have one policy filtered to
    #       log groups that start with <code>my-log</code>, you can't have another field index policy
    #       filtered to <code>my-logpprod</code> or <code>my-logging</code>.</p>
    #          <p>If you create an account-level field index policy in a monitoring account in cross-account
    #       observability, the policy is applied only to the monitoring account and not to any source
    #       accounts.</p>
    #          <p>If you want to create a field index policy for a single log group, you can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutIndexPolicy.html">PutIndexPolicy</a> instead of <code>PutAccountPolicy</code>. If you do so, that log
    #       group will use only that log-group level policy, and will ignore the account-level policy that
    #       you create with <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html">PutAccountPolicy</a>.</p>
    #          <p>
    #             <b>Metric extraction policy</b>
    #          </p>
    #          <p>A metric extraction policy controls whether CloudWatch Metrics can be created through the
    #       Embedded Metrics Format (EMF) for log groups in your account. By default, EMF metric creation
    #       is enabled for all log groups. You can use metric extraction policies to disable EMF metric
    #       creation for your entire account or specific log groups.</p>
    #          <p>When a policy disables EMF metric creation for a log group, log events in the EMF format
    #       are still ingested, but no CloudWatch Metrics are created from them.</p>
    #          <important>
    #             <p>Creating a policy disables metrics for AWS features that use EMF to create metrics, such
    #         as CloudWatch Container Insights and CloudWatch Application Signals. To prevent turning off
    #         those features by accident, we recommend that you exclude the underlying log-groups through
    #         a selection-criteria such as <code>LogGroupNamePrefix NOT IN ["/aws/containerinsights",
    #           "/aws/ecs/containerinsights", "/aws/application-signals/data"]</code>.</p>
    #          </important>
    #          <p>Each account can have either one account-level metric extraction policy that applies to
    #       all log groups, or up to 5 policies that are each scoped to a subset of log groups with the
    #         <code>selectionCriteria</code> parameter. The selection criteria supports filtering by
    #         <code>LogGroupName</code> and <code>LogGroupNamePrefix</code> using the operators
    #         <code>IN</code> and <code>NOT IN</code>. You can specify up to 50 values in each
    #         <code>IN</code> or <code>NOT IN</code> list.</p>
    #          <p>The selection criteria can be specified in these formats:</p>
    #          <p>
    #             <code>LogGroupName IN ["log-group-1", "log-group-2"]</code>
    #          </p>
    #          <p>
    #             <code>LogGroupNamePrefix NOT IN ["/aws/prefix1", "/aws/prefix2"]</code>
    #          </p>
    #          <p>If you have multiple account-level metric extraction policies with selection criteria, no
    #       two of them can have overlapping criteria. For example, if you have one policy with selection
    #       criteria <code>LogGroupNamePrefix IN ["my-log"]</code>, you can't have another metric
    #       extraction policy with selection criteria <code>LogGroupNamePrefix IN ["/my-log-prod"]</code>
    #       or <code>LogGroupNamePrefix IN ["/my-logging"]</code>, as the set of log groups matching these
    #       prefixes would be a subset of the log groups matching the first policy's prefix, creating an
    #       overlap.</p>
    #          <p>When using <code>NOT IN</code>, only one policy with this operator is allowed per
    #       account.</p>
    #          <p>When combining policies with <code>IN</code> and <code>NOT IN</code> operators, the
    #       overlap check ensures that policies don't have conflicting effects. Two policies with
    #         <code>IN</code> and <code>NOT IN</code> operators do not overlap if and only if every value
    #       in the <code>IN </code>policy is completely contained within some value in the <code>NOT
    #         IN</code> policy. For example:</p>
    #          <ul>
    #             <li>
    #                <p>If you have a <code>NOT IN</code> policy for prefix <code>"/aws/lambda"</code>, you
    #           can create an <code>IN</code> policy for the exact log group name
    #             <code>"/aws/lambda/function1"</code> because the set of log groups matching
    #             <code>"/aws/lambda/function1"</code> is a subset of the log groups matching
    #             <code>"/aws/lambda"</code>.</p>
    #             </li>
    #             <li>
    #                <p>If you have a <code>NOT IN</code> policy for prefix <code>"/aws/lambda"</code>, you
    #           cannot create an <code>IN</code> policy for prefix <code>"/aws"</code> because the set of
    #           log groups matching <code>"/aws"</code> is not a subset of the log groups matching
    #             <code>"/aws/lambda"</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutAccountPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>A name for the policy. This must be unique within the account.</p>
    # @option params [String] :policy_document
    #   <p>Specify the policy, in JSON.</p>
    #            <p>
    #               <b>Data protection policy</b>
    #            </p>
    #            <p>A data protection policy must include two JSON blocks:</p>
    #            <ul>
    #               <li>
    #                  <p>The first block must include both a <code>DataIdentifer</code> array and an
    #               <code>Operation</code> property with an <code>Audit</code> action. The
    #               <code>DataIdentifer</code> array lists the types of sensitive data that you want to
    #             mask. For more information about the available options, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html">Types of data that
    #               you can mask</a>.</p>
    #                  <p>The <code>Operation</code> property with an <code>Audit</code> action is required to
    #             find the sensitive data terms. This <code>Audit</code> action must contain a
    #               <code>FindingsDestination</code> object. You can optionally use that
    #               <code>FindingsDestination</code> object to list one or more destinations to send audit
    #             findings to. If you specify destinations such as log groups, Firehose streams,
    #             and S3 buckets, they must already exist.</p>
    #               </li>
    #               <li>
    #                  <p>The second block must include both a <code>DataIdentifer</code> array and an
    #               <code>Operation</code> property with an <code>Deidentify</code> action. The
    #               <code>DataIdentifer</code> array must exactly match the <code>DataIdentifer</code> array
    #             in the first block of the policy.</p>
    #                  <p>The <code>Operation</code> property with the <code>Deidentify</code> action is what
    #             actually masks the data, and it must contain the <code> "MaskConfig": {}</code> object.
    #             The <code> "MaskConfig": {}</code> object must be empty.</p>
    #               </li>
    #            </ul>
    #            <p>For an example data protection policy, see the <b>Examples</b>
    #         section on this page.</p>
    #            <important>
    #               <p>The contents of the two <code>DataIdentifer</code> arrays must match exactly.</p>
    #            </important>
    #            <p>In addition to the two JSON blocks, the <code>policyDocument</code> can also include
    #           <code>Name</code>, <code>Description</code>, and <code>Version</code> fields. The
    #           <code>Name</code> is different than the operation's <code>policyName</code> parameter, and
    #         is used as a dimension when CloudWatch Logs reports audit findings metrics to CloudWatch.</p>
    #            <p>The JSON specified in <code>policyDocument</code> can be up to 30,720 characters
    #         long.</p>
    #            <p>
    #               <b>Subscription filter policy</b>
    #            </p>
    #            <p>A subscription filter policy can include the following attributes in a JSON block:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>DestinationArn</b> The ARN of the destination to deliver
    #             log events to. Supported destinations are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>An Kinesis Data Streams data stream in the same account as the subscription policy,
    #                 for same-account delivery.</p>
    #                     </li>
    #                     <li>
    #                        <p>An Firehose data stream in the same account as the subscription policy,
    #                 for same-account delivery.</p>
    #                     </li>
    #                     <li>
    #                        <p>A Lambda function in the same account as the subscription policy, for
    #                 same-account delivery.</p>
    #                     </li>
    #                     <li>
    #                        <p>A logical destination in a different account created with <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html">PutDestination</a>, for cross-account delivery. Kinesis Data Streams and Firehose are supported as logical destinations.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RoleArn</b> The ARN of an IAM role that grants CloudWatch
    #             Logs permissions to deliver ingested log events to the destination stream. You don't need
    #             to provide the ARN when you are working with a logical destination for cross-account
    #             delivery.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FilterPattern</b> A filter pattern for subscribing to
    #             a filtered stream of log events.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Distribution</b> The method used to distribute log data
    #             to the destination. By default, log data is grouped by log stream, but the grouping can be
    #             set to <code>Random</code> for a more even distribution. This property is only applicable
    #             when the destination is an Kinesis Data Streams data stream.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Transformer policy</b>
    #            </p>
    #            <p>A transformer policy must include one JSON block with the array of processors and their
    #         configurations. For more information about available processors, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors"> Processors that you can use</a>. </p>
    #            <p>
    #               <b>Field index policy</b>
    #            </p>
    #            <p>A field index filter policy can include the following attribute in a JSON block:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Fields</b> The array of field indexes to create.</p>
    #               </li>
    #            </ul>
    #            <p>It must contain at least one field index.</p>
    #            <p>The following is an example of an index policy document that creates two indexes,
    #           <code>RequestId</code> and <code>TransactionId</code>.</p>
    #            <p>
    #               <code>"policyDocument": "{ \"Fields\": [ \"RequestId\", \"TransactionId\" ]
    #         }"</code>
    #            </p>
    # @option params [String] :policy_type
    #   <p>The type of policy that you're creating or updating.</p>
    # @option params [String] :scope
    #   <p>Currently the only valid value for this parameter is <code>ALL</code>, which specifies
    #         that the data protection policy applies to all log groups in the account. If you omit this
    #         parameter, the default of <code>ALL</code> is used.</p>
    # @option params [String] :selection_criteria
    #   <p>Use this parameter to apply the new policy to a subset of log groups in the
    #         account.</p>
    #            <p>Specifying <code>selectionCriteria</code> is valid only when you specify
    #           <code>SUBSCRIPTION_FILTER_POLICY</code>, <code>FIELD_INDEX_POLICY</code> or
    #           <code>TRANSFORMER_POLICY</code>for <code>policyType</code>.</p>
    #            <p>If <code>policyType</code> is <code>SUBSCRIPTION_FILTER_POLICY</code>, the only supported
    #           <code>selectionCriteria</code> filter is <code>LogGroupName NOT IN []</code>
    #            </p>
    #            <p>If <code>policyType</code> is <code>FIELD_INDEX_POLICY</code> or
    #           <code>TRANSFORMER_POLICY</code>, the only supported <code>selectionCriteria</code> filter is
    #           <code>LogGroupNamePrefix</code>
    #            </p>
    #            <p>The <code>selectionCriteria</code> string can be up to 25KB in length. The length is
    #         determined by using its UTF-8 bytes.</p>
    #            <p>Using the <code>selectionCriteria</code> parameter with
    #           <code>SUBSCRIPTION_FILTER_POLICY</code> is useful to help prevent infinite loops. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions-recursion-prevention.html">Log recursion
    #           prevention</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_document: "AccountPolicyDocument", # required
    #     policy_type: "DATA_PROTECTION_POLICY" # One of: ["DATA_PROTECTION_POLICY", "SUBSCRIPTION_FILTER_POLICY", "FIELD_INDEX_POLICY", "TRANSFORMER_POLICY", "METRIC_EXTRACTION_POLICY"], # required
    #     scope: "ALL" # One of: ["ALL"],
    #     selection_criteria: "SelectionCriteria"
    #   }
    #   options = {}
    #   response = client.put_account_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_policy: {
    #       policy_name: "PolicyName",
    #       policy_document: "AccountPolicyDocument",
    #       last_updated_time: 1,
    #       policy_type: "DATA_PROTECTION_POLICY" # One of: ["DATA_PROTECTION_POLICY", "SUBSCRIPTION_FILTER_POLICY", "FIELD_INDEX_POLICY", "TRANSFORMER_POLICY", "METRIC_EXTRACTION_POLICY"],
    #       scope: "ALL" # One of: ["ALL"],
    #       selection_criteria: "SelectionCriteria",
    #       account_id: "AccountId"
    #     }
    #   }
    # @return [Types::PutAccountPolicyResponse]
    def put_account_policy(params = {}, options = {})
      request = build_request(:put_account_policy, params)
      request.send_request(options)
    end

    # <p>Creates a data protection policy for the specified log group. A data protection policy can
    #       help safeguard sensitive data that's ingested by the log group by auditing and masking the
    #       sensitive log data.</p>
    #          <important>
    #             <p>Sensitive data is detected and masked when it is ingested into the log group. When you
    #         set a data protection policy, log events ingested into the log group before that time are
    #         not masked.</p>
    #          </important>
    #          <p>By default, when a user views a log event that includes masked data, the sensitive data is
    #       replaced by asterisks. A user who has the <code>logs:Unmask</code> permission can use a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogEvents.html">GetLogEvents</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_FilterLogEvents.html">FilterLogEvents</a> operation with the <code>unmask</code> parameter set to
    #         <code>true</code> to view the unmasked log events. Users with the <code>logs:Unmask</code>
    #       can also view unmasked data in the CloudWatch Logs console by running a CloudWatch Logs
    #       Insights query with the <code>unmask</code> query command.</p>
    #          <p>For more information, including a list of types of data that can be audited and masked,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html">Protect sensitive log data
    #         with masking</a>.</p>
    #          <p>The <code>PutDataProtectionPolicy</code> operation applies to only the specified log
    #       group. You can also use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html">PutAccountPolicy</a> to create an account-level data protection policy that applies to
    #       all log groups in the account, including both existing log groups and log groups that are
    #       created level. If a log group has its own data protection policy and the account also has an
    #       account-level data protection policy, then the two policies are cumulative. Any sensitive term
    #       specified in either policy is masked.</p>
    # @param [Hash, Types::PutDataProtectionPolicyRequest] params
    # @option params [String] :log_group_identifier
    #   <p>Specify either the log group name or log group ARN.</p>
    # @option params [String] :policy_document
    #   <p>Specify the data protection policy, in JSON.</p>
    #            <p>This policy must include two JSON blocks:</p>
    #            <ul>
    #               <li>
    #                  <p>The first block must include both a <code>DataIdentifer</code> array and an
    #               <code>Operation</code> property with an <code>Audit</code> action. The
    #               <code>DataIdentifer</code> array lists the types of sensitive data that you want to
    #             mask. For more information about the available options, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-types.html">Types of data that
    #               you can mask</a>.</p>
    #                  <p>The <code>Operation</code> property with an <code>Audit</code> action is required to
    #             find the sensitive data terms. This <code>Audit</code> action must contain a
    #               <code>FindingsDestination</code> object. You can optionally use that
    #               <code>FindingsDestination</code> object to list one or more destinations to send audit
    #             findings to. If you specify destinations such as log groups, Firehose streams,
    #             and S3 buckets, they must already exist.</p>
    #               </li>
    #               <li>
    #                  <p>The second block must include both a <code>DataIdentifer</code> array and an
    #               <code>Operation</code> property with an <code>Deidentify</code> action. The
    #               <code>DataIdentifer</code> array must exactly match the <code>DataIdentifer</code> array
    #             in the first block of the policy.</p>
    #                  <p>The <code>Operation</code> property with the <code>Deidentify</code> action is what
    #             actually masks the data, and it must contain the <code> "MaskConfig": {}</code> object.
    #             The <code> "MaskConfig": {}</code> object must be empty.</p>
    #               </li>
    #            </ul>
    #            <p>For an example data protection policy, see the <b>Examples</b>
    #         section on this page.</p>
    #            <important>
    #               <p>The contents of the two <code>DataIdentifer</code> arrays must match exactly.</p>
    #            </important>
    #            <p>In addition to the two JSON blocks, the <code>policyDocument</code> can also include
    #           <code>Name</code>, <code>Description</code>, and <code>Version</code> fields. The
    #           <code>Name</code> is used as a dimension when CloudWatch Logs reports audit findings
    #         metrics to CloudWatch.</p>
    #            <p>The JSON specified in <code>policyDocument</code> can be up to 30,720 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #     policy_document: "DataProtectionPolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_data_protection_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_group_identifier: "LogGroupIdentifier",
    #     policy_document: "DataProtectionPolicyDocument",
    #     last_updated_time: 1
    #   }
    # @return [Types::PutDataProtectionPolicyResponse]
    def put_data_protection_policy(params = {}, options = {})
      request = build_request(:put_data_protection_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates a logical <i>delivery destination</i>. A delivery
    #       destination is an Amazon Web Services resource that represents an Amazon Web Services service
    #       that logs can be sent to. CloudWatch Logs, Amazon S3, and Firehose are
    #       supported as logs delivery destinations and X-Ray as the trace delivery
    #       destination.</p>
    #          <p>To configure logs delivery between a supported Amazon Web Services service and a
    #       destination, you must do the following:</p>
    #          <ul>
    #             <li>
    #                <p>Create a delivery source, which is a logical object that represents the resource that
    #           is actually sending the logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html">PutDeliverySource</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>PutDeliveryDestination</code> to create a <i>delivery
    #             destination</i> in the same account of the actual delivery destination. The
    #           delivery destination that you create is a logical object that represents the actual
    #           delivery destination. </p>
    #             </li>
    #             <li>
    #                <p>If you are delivering logs cross-account, you must use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html">PutDeliveryDestinationPolicy</a> in the destination account to assign an IAM policy to the destination. This policy allows delivery to that destination.
    #         </p>
    #             </li>
    #             <li>
    #                <p>Use <code>CreateDelivery</code> to create a <i>delivery</i> by pairing
    #           exactly one delivery source and one delivery destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html">CreateDelivery</a>. </p>
    #             </li>
    #          </ul>
    #          <p>You can configure a single delivery source to send logs to multiple destinations by
    #       creating multiple deliveries. You can also create multiple deliveries to configure multiple
    #       delivery sources to send logs to the same delivery destination.</p>
    #          <p>Only some Amazon Web Services services support being configured as a delivery source. These
    #       services are listed as <b>Supported [V2 Permissions]</b> in the
    #       table at <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html">Enabling logging from
    #           Amazon Web Services services.</a>
    #          </p>
    #          <p>If you use this operation to update an existing delivery destination, all the current
    #       delivery destination parameters are overwritten with the new parameter values that you
    #       specify.</p>
    # @param [Hash, Types::PutDeliveryDestinationRequest] params
    # @option params [String] :name
    #   <p>A name for this delivery destination. This name must be unique for all delivery
    #         destinations in your account.</p>
    # @option params [String] :output_format
    #   <p>The format for the logs that this delivery destination will receive.</p>
    # @option params [Types::DeliveryDestinationConfiguration] :delivery_destination_configuration
    #   <p>A structure that contains the ARN of the Amazon Web Services resource that will receive the
    #         logs.</p>
    #            <note>
    #               <p>
    #                  <code>deliveryDestinationConfiguration</code> is required for CloudWatch Logs,
    #             Amazon S3, Firehose log delivery destinations and not required for
    #             X-Ray trace delivery destinations. <code>deliveryDestinationType</code> is
    #           needed for X-Ray trace delivery destinations but not required for other logs
    #           delivery destinations.</p>
    #            </note>
    # @option params [String] :delivery_destination_type
    #   <p>The type of delivery destination. This parameter specifies the target service where log
    #         data will be delivered. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>S3</code> - Amazon S3 for long-term storage and analytics</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CWL</code> - CloudWatch Logs for centralized log management</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FH</code> - Amazon Kinesis Data Firehose for real-time data streaming</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XRAY</code> - Amazon Web Services
    #             X-Ray for distributed tracing and application monitoring</p>
    #               </li>
    #            </ul>
    #            <p>The delivery destination type determines the format and configuration options available
    #         for log delivery.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional list of key-value pairs to associate with the resource.</p>
    #            <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeliveryDestinationName", # required
    #     output_format: "json" # One of: ["json", "plain", "w3c", "raw", "parquet"],
    #     delivery_destination_configuration: {
    #       destination_resource_arn: "Arn", # required
    #     },
    #     delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.put_delivery_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_destination: {
    #       name: "DeliveryDestinationName",
    #       arn: "Arn",
    #       delivery_destination_type: "S3" # One of: ["S3", "CWL", "FH", "XRAY"],
    #       output_format: "json" # One of: ["json", "plain", "w3c", "raw", "parquet"],
    #       delivery_destination_configuration: {
    #         destination_resource_arn: "Arn", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::PutDeliveryDestinationResponse]
    def put_delivery_destination(params = {}, options = {})
      request = build_request(:put_delivery_destination, params)
      request.send_request(options)
    end

    # <p>Creates and assigns an IAM policy that grants permissions to CloudWatch Logs to deliver logs cross-account to a specified destination in this account. To
    #       configure the delivery of logs from an Amazon Web Services service in another account to a logs
    #       delivery destination in the current account, you must do the following:</p>
    #          <ul>
    #             <li>
    #                <p>Create a delivery source, which is a logical object that represents the resource that
    #           is actually sending the logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliverySource.html">PutDeliverySource</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create a <i>delivery destination</i>, which is a logical object that
    #           represents the actual delivery destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html">PutDeliveryDestination</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use this operation in the destination account to assign an IAM policy
    #           to the destination. This policy allows delivery to that destination. </p>
    #             </li>
    #             <li>
    #                <p>Create a <i>delivery</i> by pairing exactly one delivery source and one
    #           delivery destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html">CreateDelivery</a>.</p>
    #             </li>
    #          </ul>
    #          <p>Only some Amazon Web Services services support being configured as a delivery source. These
    #       services are listed as <b>Supported [V2 Permissions]</b> in the
    #       table at <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html">Enabling logging from
    #           Amazon Web Services services.</a>
    #          </p>
    #          <p>The contents of the policy must include two statements. One statement enables general logs
    #       delivery, and the other allows delivery to the chosen destination. See the examples for the
    #       needed policies.</p>
    # @param [Hash, Types::PutDeliveryDestinationPolicyRequest] params
    # @option params [String] :delivery_destination_name
    #   <p>The name of the delivery destination to assign this policy to.</p>
    # @option params [String] :delivery_destination_policy
    #   <p>The contents of the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_destination_name: "DeliveryDestinationName", # required
    #     delivery_destination_policy: "DeliveryDestinationPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_delivery_destination_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       delivery_destination_policy: "DeliveryDestinationPolicy"
    #     }
    #   }
    # @return [Types::PutDeliveryDestinationPolicyResponse]
    def put_delivery_destination_policy(params = {}, options = {})
      request = build_request(:put_delivery_destination_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates a logical <i>delivery source</i>. A delivery source
    #       represents an Amazon Web Services resource that sends logs to an logs delivery destination. The
    #       destination can be CloudWatch Logs, Amazon S3, Firehose or X-Ray for sending traces.</p>
    #          <p>To configure logs delivery between a delivery destination and an Amazon Web Services
    #       service that is supported as a delivery source, you must do the following:</p>
    #          <ul>
    #             <li>
    #                <p>Use <code>PutDeliverySource</code> to create a delivery source, which is a logical
    #           object that represents the resource that is actually sending the logs. </p>
    #             </li>
    #             <li>
    #                <p>Use <code>PutDeliveryDestination</code> to create a <i>delivery
    #             destination</i>, which is a logical object that represents the actual delivery
    #           destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestination.html">PutDeliveryDestination</a>.</p>
    #             </li>
    #             <li>
    #                <p>If you are delivering logs cross-account, you must use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDeliveryDestinationPolicy.html">PutDeliveryDestinationPolicy</a> in the destination account to assign an IAM policy to the destination. This policy allows delivery to that destination.
    #         </p>
    #             </li>
    #             <li>
    #                <p>Use <code>CreateDelivery</code> to create a <i>delivery</i> by pairing
    #           exactly one delivery source and one delivery destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html">CreateDelivery</a>. </p>
    #             </li>
    #          </ul>
    #          <p>You can configure a single delivery source to send logs to multiple destinations by
    #       creating multiple deliveries. You can also create multiple deliveries to configure multiple
    #       delivery sources to send logs to the same delivery destination.</p>
    #          <p>Only some Amazon Web Services services support being configured as a delivery source. These
    #       services are listed as <b>Supported [V2 Permissions]</b> in the
    #       table at <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html">Enabling logging from
    #           Amazon Web Services services.</a>
    #          </p>
    #          <p>If you use this operation to update an existing delivery source, all the current delivery
    #       source parameters are overwritten with the new parameter values that you specify.</p>
    # @param [Hash, Types::PutDeliverySourceRequest] params
    # @option params [String] :name
    #   <p>A name for this delivery source. This name must be unique for all delivery sources in your
    #         account.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the Amazon Web Services resource that is generating and sending logs. For
    #         example,
    #           <code>arn:aws:workmail:us-east-1:123456789012:organization/m-1234EXAMPLEabcd1234abcd1234abcd1234</code>
    #            </p>
    # @option params [String] :log_type
    #   <p>Defines the type of log that the source is sending.</p>
    #            <ul>
    #               <li>
    #                  <p>For Amazon Bedrock, the valid value is <code>APPLICATION_LOGS</code> and
    #               <code>TRACES</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For CloudFront, the valid value is <code>ACCESS_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon CodeWhisperer, the valid value is <code>EVENT_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Elemental MediaPackage, the valid values are <code>EGRESS_ACCESS_LOGS</code> and
    #               <code>INGRESS_ACCESS_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Elemental MediaTailor, the valid values are <code>AD_DECISION_SERVER_LOGS</code>,
    #               <code>MANIFEST_SERVICE_LOGS</code>, and <code>TRANSCODE_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Entity Resolution, the valid value is <code>WORKFLOW_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For IAM Identity Center, the valid value is
    #             <code>ERROR_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For PCS, the valid values are <code>PCS_SCHEDULER_LOGS</code> and
    #               <code>PCS_JOBCOMP_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon Q, the valid value is <code>EVENT_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon SES mail manager, the valid values are <code>APPLICATION_LOG</code>
    #             and <code>TRAFFIC_POLICY_DEBUG_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon WorkMail, the valid values are <code>ACCESS_CONTROL_LOGS</code>,
    #               <code>AUTHENTICATION_LOGS</code>, <code>WORKMAIL_AVAILABILITY_PROVIDER_LOGS</code>,
    #               <code>WORKMAIL_MAILBOX_ACCESS_LOGS</code>, and
    #               <code>WORKMAIL_PERSONAL_ACCESS_TOKEN_LOGS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon VPC Route Server, the valid value is
    #             <code>EVENT_LOGS</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional list of key-value pairs to associate with the resource.</p>
    #            <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DeliverySourceName", # required
    #     resource_arn: "Arn", # required
    #     log_type: "LogType", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.put_delivery_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_source: {
    #       name: "DeliverySourceName",
    #       arn: "Arn",
    #       resource_arns: ["Arn"],
    #       service: "Service",
    #       log_type: "LogType",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::PutDeliverySourceResponse]
    def put_delivery_source(params = {}, options = {})
      request = build_request(:put_delivery_source, params)
      request.send_request(options)
    end

    # <p>Creates or updates a destination. This operation is used only to create destinations
    #       for cross-account subscriptions.</p>
    #          <p>A destination encapsulates a physical resource (such as an Amazon Kinesis stream). With
    #       a destination, you can subscribe to a real-time stream of log events for a different account,
    #       ingested using <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html">PutLogEvents</a>.</p>
    #          <p>Through an access policy, a destination controls what is written to it. By default,
    #         <code>PutDestination</code> does not set any access policy with the destination, which means
    #       a cross-account user cannot call <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html">PutSubscriptionFilter</a> against this destination. To enable this, the destination
    #       owner must call <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html">PutDestinationPolicy</a> after <code>PutDestination</code>.</p>
    #          <p>To perform a <code>PutDestination</code> operation, you must also have the
    #         <code>iam:PassRole</code> permission.</p>
    # @param [Hash, Types::PutDestinationRequest] params
    # @option params [String] :destination_name
    #   <p>A name for the destination.</p>
    # @option params [String] :target_arn
    #   <p>The ARN of an Amazon Kinesis stream to which to deliver matching log events.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon
    #         Kinesis <code>PutRecord</code> operation on the destination stream.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional list of key-value pairs to associate with the resource.</p>
    #            <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name: "DestinationName", # required
    #     target_arn: "TargetArn", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.put_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination: {
    #       destination_name: "DestinationName",
    #       target_arn: "TargetArn",
    #       role_arn: "RoleArn",
    #       access_policy: "AccessPolicy",
    #       arn: "Arn",
    #       creation_time: 1
    #     }
    #   }
    # @return [Types::PutDestinationResponse]
    def put_destination(params = {}, options = {})
      request = build_request(:put_destination, params)
      request.send_request(options)
    end

    # <p>Creates or updates an access policy associated with an existing destination. An access
    #       policy is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html">IAM
    #         policy document</a> that is used to authorize claims to register a subscription filter
    #       against a given destination.</p>
    # @param [Hash, Types::PutDestinationPolicyRequest] params
    # @option params [String] :destination_name
    #   <p>A name for an existing destination.</p>
    # @option params [String] :access_policy
    #   <p>An IAM policy document that authorizes cross-account users to deliver their log events
    #         to the associated destination. This can be up to 5120 bytes.</p>
    # @option params [Boolean] :force_update
    #   <p>Specify true if you are updating an existing destination policy to grant permission to an
    #         organization ID instead of granting permission to individual Amazon Web Services accounts.
    #         Before you update a destination policy this way, you must first update the subscription
    #         filters in the accounts that send logs to this destination. If you do not, the subscription
    #         filters might stop working. By specifying <code>true</code> for <code>forceUpdate</code>, you
    #         are affirming that you have already updated the subscription filters. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html"> Updating an
    #           existing cross-account subscription</a>
    #            </p>
    #            <p>If you omit this parameter, the default of <code>false</code> is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name: "DestinationName", # required
    #     access_policy: "AccessPolicy", # required
    #     force_update: false
    #   }
    #   options = {}
    #   response = client.put_destination_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_destination_policy(params = {}, options = {})
      request = build_request(:put_destination_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates a <i>field index policy</i> for the specified log group.
    #       Only log groups in the Standard log class support field index policies. For more information
    #       about log classes, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html">Log
    #       classes</a>.</p>
    #          <p>You can use field index policies to create <i>field indexes</i> on fields
    #       found in log events in the log group. Creating field indexes speeds up and lowers the costs
    #       for CloudWatch Logs Insights queries that reference those field indexes, because these
    #       queries attempt to skip the processing of log events that are known to not match the indexed
    #       field. Good fields to index are fields that you often need to query for and fields or values
    #       that match only a small fraction of the total log events. Common examples of indexes include
    #       request ID, session ID, userID, and instance IDs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing.html">Create field indexes to improve query performance and reduce costs</a>.</p>
    #          <p>To find the fields that are in your log group events, use the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogGroupFields.html">GetLogGroupFields</a> operation.</p>
    #          <p>For example, suppose you have created a field index for <code>requestId</code>. Then, any
    #         CloudWatch Logs Insights query on that log group that includes <code>requestId =
    #           <i>value</i>
    #             </code> or <code>requestId IN [<i>value</i>,
    #           <i>value</i>, ...]</code> will process fewer log events to reduce costs, and
    #       have improved performance.</p>
    #          <p>CloudWatch Logs provides default field indexes for all log groups in the Standard log
    #       class. Default field indexes are automatically available for the following fields: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>@aws.region</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>@aws.account</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>@source.log</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>traceId</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Default field indexes are in addition to any custom field indexes you define within your
    #       policy. Default field indexes are not counted towards your field index quota. </p>
    #          <p>Each index policy has the following quotas and restrictions:</p>
    #          <ul>
    #             <li>
    #                <p>As many as 20 fields can be included in the policy.</p>
    #             </li>
    #             <li>
    #                <p>Each field name can include as many as 100 characters.</p>
    #             </li>
    #          </ul>
    #          <p>Matches of log events to the names of indexed fields are case-sensitive. For example, a
    #       field index of <code>RequestId</code> won't match a log event containing
    #         <code>requestId</code>.</p>
    #          <p>Log group-level field index policies created with <code>PutIndexPolicy</code> override
    #       account-level field index policies created with <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html">PutAccountPolicy</a>. If you use <code>PutIndexPolicy</code> to create a field index
    #       policy for a log group, that log group uses only that policy. The log group ignores any
    #       account-wide field index policy that you might have created.</p>
    # @param [Hash, Types::PutIndexPolicyRequest] params
    # @option params [String] :log_group_identifier
    #   <p>Specify either the log group name or log group ARN to apply this field index policy to. If
    #         you specify an ARN, use the format
    #           arn:aws:logs:<i>region</i>:<i>account-id</i>:log-group:<i>log_group_name</i>
    #         Don't include an * at the end.</p>
    # @option params [String] :policy_document
    #   <p>The index policy document, in JSON format. The following is an example of an index policy
    #         document that creates two indexes, <code>RequestId</code> and
    #         <code>TransactionId</code>.</p>
    #            <p>
    #               <code>"policyDocument": "{ "Fields": [ "RequestId", "TransactionId" ] }"</code>
    #            </p>
    #            <p>The policy document must include at least one field index. For more information about the
    #         fields that can be included and other restrictions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-Field-Indexing-Syntax.html">Field index
    #           syntax and quotas</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #     policy_document: "PolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_index_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_policy: {
    #       log_group_identifier: "LogGroupIdentifier",
    #       last_update_time: 1,
    #       policy_document: "PolicyDocument",
    #       policy_name: "PolicyName",
    #       source: "ACCOUNT" # One of: ["ACCOUNT", "LOG_GROUP"]
    #     }
    #   }
    # @return [Types::PutIndexPolicyResponse]
    def put_index_policy(params = {}, options = {})
      request = build_request(:put_index_policy, params)
      request.send_request(options)
    end

    # <p>Creates an integration between CloudWatch Logs and another service in this account.
    #       Currently, only integrations with OpenSearch Service are supported, and currently you can have
    #       only one integration in your account.</p>
    #          <p>Integrating with OpenSearch Service makes it possible for you to create curated vended
    #       logs dashboards, powered by OpenSearch Service analytics. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs-OpenSearch-Dashboards.html">Vended log
    #         dashboards powered by Amazon OpenSearch Service</a>.</p>
    #          <p>You can use this operation only to create a new integration. You can't modify an existing
    #       integration.</p>
    # @param [Hash, Types::PutIntegrationRequest] params
    # @option params [String] :integration_name
    #   <p>A name for the integration.</p>
    # @option params [Types::ResourceConfig] :resource_config
    #   <p>A structure that contains configuration information for the integration that you are
    #         creating.</p>
    # @option params [String] :integration_type
    #   <p>The type of integration. Currently, the only supported type is
    #         <code>OPENSEARCH</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_name: "IntegrationName", # required
    #     resource_config: { # required
    #       # One of:
    #       open_search_resource_config: {
    #         kms_key_arn: "Arn",
    #         data_source_role_arn: "Arn", # required
    #         dashboard_viewer_principals: ["Arn"], # required
    #         application_arn: "Arn",
    #         retention_days: 1, # required
    #       }
    #     },
    #     integration_type: "OPENSEARCH" # One of: ["OPENSEARCH"], # required
    #   }
    #   options = {}
    #   response = client.put_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_name: "IntegrationName",
    #     integration_status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "FAILED"]
    #   }
    # @return [Types::PutIntegrationResponse]
    def put_integration(params = {}, options = {})
      request = build_request(:put_integration, params)
      request.send_request(options)
    end

    # <p>Uploads a batch of log events to the specified log stream.</p>
    #          <important>
    #             <p>The sequence token is now ignored in <code>PutLogEvents</code> actions.
    #           <code>PutLogEvents</code> actions are always accepted and never return
    #           <code>InvalidSequenceTokenException</code> or <code>DataAlreadyAcceptedException</code>
    #         even if the sequence token is not valid. You can use parallel <code>PutLogEvents</code>
    #         actions on the same log stream. </p>
    #          </important>
    #          <p>The batch of events must satisfy the following constraints:</p>
    #          <ul>
    #             <li>
    #                <p>The maximum batch size is 1,048,576 bytes. This size is calculated as the sum of
    #           all event messages in UTF-8, plus 26 bytes for each log event.</p>
    #             </li>
    #             <li>
    #                <p>Events more than 2 hours in the future are rejected while processing remaining
    #           valid events.</p>
    #             </li>
    #             <li>
    #                <p>Events older than 14 days or preceding the log group's retention period are
    #           rejected while processing remaining valid events.</p>
    #             </li>
    #             <li>
    #                <p>The log events in the batch must be in chronological order by their timestamp. The
    #           timestamp is the time that the event occurred, expressed as the number of milliseconds
    #           after <code>Jan 1, 1970 00:00:00 UTC</code>. (In Amazon Web Services Tools for PowerShell
    #           and the Amazon Web Services SDK for .NET, the timestamp is specified in .NET format:
    #             <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2017-09-15T13:45:30</code>.)
    #         </p>
    #             </li>
    #             <li>
    #                <p> A batch of log events in a single request must be in a chronological order.
    #           Otherwise, the operation fails.</p>
    #             </li>
    #             <li>
    #                <p>Each log event can be no larger than 1 MB.</p>
    #             </li>
    #             <li>
    #                <p>The maximum number of log events in a batch is 10,000.</p>
    #             </li>
    #             <li>
    #                <p>For valid events (within 14 days in the past to 2 hours in future), the time span
    #           in a single batch cannot exceed 24 hours. Otherwise, the operation fails.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>The quota of five requests per second per log stream has been removed. Instead,
    #           <code>PutLogEvents</code> actions are throttled based on a per-second per-account quota.
    #         You can request an increase to the per-second throttling quota by using the Service Quotas service.</p>
    #          </important>
    #          <p>If a call to <code>PutLogEvents</code> returns "UnrecognizedClientException" the most
    #       likely cause is a non-valid Amazon Web Services access key ID or secret key. </p>
    # @param [Hash, Types::PutLogEventsRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    # @option params [Array<Types::InputLogEvent>] :log_events
    #   <p>The log events.</p>
    # @option params [String] :sequence_token
    #   <p>The sequence token obtained from the response of the previous <code>PutLogEvents</code>
    #         call.</p>
    #            <important>
    #               <p>The <code>sequenceToken</code> parameter is now ignored in <code>PutLogEvents</code>
    #           actions. <code>PutLogEvents</code> actions are now accepted and never return
    #             <code>InvalidSequenceTokenException</code> or <code>DataAlreadyAcceptedException</code>
    #           even if the sequence token is not valid.</p>
    #            </important>
    # @option params [Types::Entity] :entity
    #   <p>The entity associated with the log events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     log_stream_name: "LogStreamName", # required
    #     log_events: [ # required
    #       {
    #         timestamp: 1, # required
    #         message: "EventMessage", # required
    #       }
    #     ],
    #     sequence_token: "SequenceToken",
    #     entity: {
    #       key_attributes: {
    #         "EntityKeyAttributesKey" => "EntityKeyAttributesValue"
    #       },
    #       attributes: {
    #         "EntityAttributesKey" => "EntityAttributesValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_log_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_sequence_token: "SequenceToken",
    #     rejected_log_events_info: {
    #       too_new_log_event_start_index: 1,
    #       too_old_log_event_end_index: 1,
    #       expired_log_event_end_index: 1
    #     },
    #     rejected_entity_info: {
    #       error_type: "InvalidEntity" # One of: ["InvalidEntity", "InvalidTypeValue", "InvalidKeyAttributes", "InvalidAttributes", "EntitySizeTooLarge", "UnsupportedLogGroupType", "MissingRequiredFields"], # required
    #     }
    #   }
    # @return [Types::PutLogEventsResponse]
    def put_log_events(params = {}, options = {})
      request = build_request(:put_log_events, params)
      request.send_request(options)
    end

    # <p>Creates or updates a metric filter and associates it with the specified log group. With
    #       metric filters, you can configure rules to extract metric data from log events ingested
    #       through <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html">PutLogEvents</a>.</p>
    #          <p>The maximum number of metric filters that can be associated with a log group is
    #       100.</p>
    #          <p>Using regular expressions in filter patterns is supported. For these filters, there is a
    #       quota of two regular expression patterns within a single filter pattern. There is also a quota
    #       of five regular expression patterns per log group. For more information about using regular
    #       expressions in filter patterns, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html"> Filter pattern syntax for
    #         metric filters, subscription filters, filter log events, and Live Tail</a>.</p>
    #          <p>When you create a metric filter, you can also optionally assign a unit and dimensions to
    #       the metric that is created.</p>
    #          <important>
    #             <p>Metrics extracted from log events are charged as custom metrics. To prevent unexpected
    #         high charges, do not specify high-cardinality fields such as <code>IPAddress</code> or
    #           <code>requestID</code> as dimensions. Each different value found for a dimension is
    #         treated as a separate metric and accrues charges as a separate custom metric. </p>
    #             <p>CloudWatch Logs might disable a metric filter if it generates 1,000 different
    #         name/value pairs for your specified dimensions within one hour.</p>
    #             <p>You can also set up a billing alarm to alert you if your charges are higher than
    #         expected. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html">
    #           Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges</a>.
    #       </p>
    #          </important>
    # @param [Hash, Types::PutMetricFilterRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :filter_name
    #   <p>A name for the metric filter.</p>
    # @option params [String] :filter_pattern
    #   <p>A filter pattern for extracting metric data out of ingested log events.</p>
    # @option params [Array<Types::MetricTransformation>] :metric_transformations
    #   <p>A collection of information that defines how metric data gets emitted.</p>
    # @option params [Boolean] :apply_on_transformed_logs
    #   <p>This parameter is valid only for log groups that have an active log transformer. For more
    #         information about log transformers, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html">PutTransformer</a>.</p>
    #            <p>If the log group uses either a log-group level or account-level transformer, and you
    #         specify <code>true</code>, the metric filter will be applied on the transformed version of the
    #         log events instead of the original ingested log events.</p>
    # @option params [String] :field_selection_criteria
    #   <p>A filter expression that specifies which log events should be processed by this metric filter based on system fields such as source account and source region. Uses selection criteria syntax with operators like <code>=</code>, <code>!=</code>, <code>AND</code>, <code>OR</code>, <code>IN</code>, <code>NOT IN</code>. Example: <code>@aws.region = "us-east-1"</code> or <code>@aws.account IN ["123456789012", "987654321098"]</code>. Maximum length: 2000 characters.</p>
    # @option params [Array<String>] :emit_system_field_dimensions
    #   <p>A list of system fields to emit as additional dimensions in the generated metrics. Valid values are <code>@aws.account</code> and <code>@aws.region</code>. These dimensions help identify the source of centralized log data and count toward the total dimension limit for metric filters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #     filter_pattern: "FilterPattern", # required
    #     metric_transformations: [ # required
    #       {
    #         metric_name: "MetricName", # required
    #         metric_namespace: "MetricNamespace", # required
    #         metric_value: "MetricValue", # required
    #         default_value: 1.0,
    #         dimensions: {
    #           "DimensionsKey" => "DimensionsValue"
    #         },
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ],
    #     apply_on_transformed_logs: false,
    #     field_selection_criteria: "FieldSelectionCriteria",
    #     emit_system_field_dimensions: ["SystemField"]
    #   }
    #   options = {}
    #   response = client.put_metric_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_metric_filter(params = {}, options = {})
      request = build_request(:put_metric_filter, params)
      request.send_request(options)
    end

    # <p>Creates or updates a query definition for CloudWatch Logs Insights. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html">Analyzing Log Data with CloudWatch Logs Insights</a>.</p>
    #          <p>To update a query definition, specify its <code>queryDefinitionId</code> in your request.
    #       The values of <code>name</code>, <code>queryString</code>, and <code>logGroupNames</code> are
    #       changed to the values that you specify in your update operation. No current values are
    #       retained from the current query definition. For example, imagine updating a current query
    #       definition that includes log groups. If you don't specify the <code>logGroupNames</code>
    #       parameter in your update operation, the query definition changes to contain no log
    #       groups.</p>
    #          <p>You must have the <code>logs:PutQueryDefinition</code> permission to be able to perform
    #       this operation.</p>
    # @param [Hash, Types::PutQueryDefinitionRequest] params
    # @option params [String] :query_language
    #   <p>Specify the query language to use for this query. The options are Logs Insights QL,
    #         OpenSearch PPL, and OpenSearch SQL. For more information about the query languages that
    #           CloudWatch Logs supports, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html">Supported query
    #           languages</a>.</p>
    # @option params [String] :name
    #   <p>A name for the query definition. If you are saving numerous query definitions, we
    #         recommend that you name them. This way, you can find the ones you want by using the first part
    #         of the name as a filter in the <code>queryDefinitionNamePrefix</code> parameter of <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a>.</p>
    # @option params [String] :query_definition_id
    #   <p>If you are updating a query definition, use this parameter to specify the ID of the query
    #         definition that you want to update. You can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a> to retrieve the IDs of your saved query
    #         definitions.</p>
    #            <p>If you are creating a query definition, do not specify this parameter. CloudWatch
    #         generates a unique ID for the new query definition and include it in the response to this
    #         operation.</p>
    # @option params [Array<String>] :log_group_names
    #   <p>Use this parameter to include specific log groups as part of your query definition. If
    #         your query uses the OpenSearch Service query language, you specify the log group names inside
    #         the <code>querystring</code> instead of here.</p>
    #            <p>If you are updating an existing query definition for the Logs Insights QL or OpenSearch Service PPL and you omit this parameter, then the updated definition will contain no log
    #         groups.</p>
    # @option params [String] :query_string
    #   <p>The query string to use for this definition. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs
    #           Insights Query Syntax</a>.</p>
    # @option params [String] :client_token
    #   <p>Used as an idempotency token, to avoid returning an exception if the service receives the
    #         same request twice because of a network error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_language: "CWLI" # One of: ["CWLI", "SQL", "PPL"],
    #     name: "QueryDefinitionName", # required
    #     query_definition_id: "QueryId",
    #     log_group_names: ["LogGroupName"],
    #     query_string: "QueryDefinitionString", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.put_query_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_definition_id: "QueryId"
    #   }
    # @return [Types::PutQueryDefinitionResponse]
    def put_query_definition(params = {}, options = {})
      request = build_request(:put_query_definition, params)
      request.send_request(options)
    end

    # <p>Creates or updates a resource policy allowing other Amazon Web Services services to put
    #       log events to this account, such as Amazon Route 53. An account can have up to 10 resource
    #       policies per Amazon Web Services Region.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :policy_name
    #   <p>Name of the new policy. This parameter is required.</p>
    # @option params [String] :policy_document
    #   <p>Details of the new policy, including the identity of the principal that is enabled to
    #         put logs to this account. This is formatted as a JSON string. This parameter is
    #         required.</p>
    #            <p>The following example creates a resource policy enabling the Route 53 service to put
    #         DNS query logs in to the specified log group. Replace <code>"logArn"</code> with the ARN of
    #         your CloudWatch Logs resource, such as a log group or log stream.</p>
    #            <p>CloudWatch Logs also supports <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn">aws:SourceArn</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount">aws:SourceAccount</a> condition context keys.</p>
    #            <p>In the example resource policy, you would replace the value of <code>SourceArn</code> with
    #         the resource making the call from Route 53 to CloudWatch Logs. You would also
    #         replace the value of <code>SourceAccount</code> with the Amazon Web Services account ID making
    #         that call.</p>
    #            <p></p>
    #            <p>
    #               <code>{ "Version": "2012-10-17", "Statement": [ { "Sid": "Route53LogsToCloudWatchLogs",
    #           "Effect": "Allow", "Principal": { "Service": [ "route53.amazonaws.com" ] }, "Action":
    #           "logs:PutLogEvents", "Resource": "logArn", "Condition": { "ArnLike": { "aws:SourceArn":
    #           "myRoute53ResourceArn" }, "StringEquals": { "aws:SourceAccount": "myAwsAccountId" } } } ]
    #           }</code>
    #            </p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Logs resource to which the resource policy needs to be added
    #         or attached. Currently only supports LogGroup ARN.</p>
    # @option params [String] :expected_revision_id
    #   <p>The expected revision ID of the resource policy. Required when <code>resourceArn</code> is
    #         provided to prevent concurrent modifications. Use <code>null</code> when creating a resource
    #         policy for the first time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName",
    #     policy_document: "PolicyDocument",
    #     resource_arn: "Arn",
    #     expected_revision_id: "ExpectedRevisionId"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       policy_name: "PolicyName",
    #       policy_document: "PolicyDocument",
    #       last_updated_time: 1,
    #       policy_scope: "ACCOUNT" # One of: ["ACCOUNT", "RESOURCE"],
    #       resource_arn: "Arn",
    #       revision_id: "ExpectedRevisionId"
    #     },
    #     revision_id: "ExpectedRevisionId"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Sets the retention of the specified log group. With a retention policy, you can
    #       configure the number of days for which to retain log events in the specified log
    #       group.</p>
    #          <note>
    #             <p>CloudWatch Logs doesn't immediately delete log events when they reach their retention
    #         setting. It typically takes up to 72 hours after that before log events are deleted, but in
    #         rare situations might take longer.</p>
    #             <p>To illustrate, imagine that you change a log group to have a longer retention setting
    #         when it contains log events that are past the expiration date, but haven't been deleted.
    #         Those log events will take up to 72 hours to be deleted after the new retention date is
    #         reached. To make sure that log data is deleted permanently, keep a log group at its lower
    #         retention setting until 72 hours after the previous retention period ends. Alternatively,
    #         wait to change the retention setting until you confirm that the earlier log events are
    #         deleted. </p>
    #             <p>When log events reach their retention setting they are marked for deletion. After they
    #         are marked for deletion, they do not add to your archival storage costs anymore, even if
    #         they are not actually deleted until later. These log events marked for deletion are also not
    #         included when you use an API to retrieve the <code>storedBytes</code> value to see how many
    #         bytes a log group is storing.</p>
    #          </note>
    # @param [Hash, Types::PutRetentionPolicyRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [Integer] :retention_in_days
    #   <p>The number of days to retain the log events in the specified log group. Possible values
    #         are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557,
    #         2922, 3288, and 3653.</p>
    #            <p>To set a log group so that its log events do not expire, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html">DeleteRetentionPolicy</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     retention_in_days: 1, # required
    #   }
    #   options = {}
    #   response = client.put_retention_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_retention_policy(params = {}, options = {})
      request = build_request(:put_retention_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates a subscription filter and associates it with the specified log
    #       group. With subscription filters, you can subscribe to a real-time stream of log events
    #       ingested through <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html">PutLogEvents</a>
    #       and have them delivered to a specific destination. When log events are sent to the receiving
    #       service, they are Base64 encoded and compressed with the GZIP format.</p>
    #          <p>The following destinations are supported for subscription filters:</p>
    #          <ul>
    #             <li>
    #                <p>An Amazon Kinesis data stream belonging to the same account as the subscription
    #           filter, for same-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>A logical destination created with <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestination.html">PutDestination</a> that belongs to a different account, for cross-account delivery.
    #           We currently support Kinesis Data Streams and Firehose as logical
    #           destinations.</p>
    #             </li>
    #             <li>
    #                <p>An Amazon Kinesis Data Firehose delivery stream that belongs to the same account as
    #           the subscription filter, for same-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>An Lambda function that belongs to the same account as the
    #           subscription filter, for same-account delivery.</p>
    #             </li>
    #          </ul>
    #          <p>Each log group can have up to two subscription filters associated with it. If you are
    #       updating an existing filter, you must specify the correct name in <code>filterName</code>. </p>
    #          <p>Using regular expressions in filter patterns is supported. For these filters, there is a
    #       quotas of quota of two regular expression patterns within a single filter pattern. There is
    #       also a quota of five regular expression patterns per log group. For more information about
    #       using regular expressions in filter patterns, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html"> Filter pattern syntax for
    #         metric filters, subscription filters, filter log events, and Live Tail</a>.</p>
    #          <p>To perform a <code>PutSubscriptionFilter</code> operation for any destination except a
    #         Lambda function, you must also have the <code>iam:PassRole</code>
    #       permission.</p>
    # @param [Hash, Types::PutSubscriptionFilterRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [String] :filter_name
    #   <p>A name for the subscription filter. If you are updating an existing filter, you must
    #         specify the correct name in <code>filterName</code>. To find the name of the filter currently
    #         associated with a log group, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html">DescribeSubscriptionFilters</a>.</p>
    # @option params [String] :filter_pattern
    #   <p>A filter pattern for subscribing to a filtered stream of log events.</p>
    # @option params [String] :destination_arn
    #   <p>The ARN of the destination to deliver matching log events to. Currently, the supported
    #         destinations are:</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Kinesis stream belonging to the same account as the subscription filter,
    #             for same-account delivery.</p>
    #               </li>
    #               <li>
    #                  <p>A logical destination (specified using an ARN) belonging to a different account,
    #             for cross-account delivery.</p>
    #                  <p>If you're setting up a cross-account subscription, the destination must have an IAM
    #             policy associated with it. The IAM policy must allow the sender to send logs to the
    #             destination. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html">PutDestinationPolicy</a>.</p>
    #               </li>
    #               <li>
    #                  <p>A Kinesis Data Firehose delivery stream belonging to the same account as the
    #             subscription filter, for same-account delivery.</p>
    #               </li>
    #               <li>
    #                  <p>A Lambda function belonging to the same account as the subscription
    #             filter, for same-account delivery.</p>
    #               </li>
    #            </ul>
    # @option params [String] :role_arn
    #   <p>The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log
    #         events to the destination stream. You don't need to provide the ARN when you are working with
    #         a logical destination for cross-account delivery.</p>
    # @option params [String] :distribution
    #   <p>The method used to distribute log data to the destination. By default, log data is
    #         grouped by log stream, but the grouping can be set to random for a more even distribution.
    #         This property is only applicable when the destination is an Amazon Kinesis data stream.
    #       </p>
    # @option params [Boolean] :apply_on_transformed_logs
    #   <p>This parameter is valid only for log groups that have an active log transformer. For more
    #         information about log transformers, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html">PutTransformer</a>.</p>
    #            <p>If the log group uses either a log-group level or account-level transformer, and you
    #         specify <code>true</code>, the subscription filter will be applied on the transformed version
    #         of the log events instead of the original ingested log events.</p>
    # @option params [String] :field_selection_criteria
    #   <p>A filter expression that specifies which log events should be processed by this subscription filter based on system fields such as source account and source region. Uses selection criteria syntax with operators like <code>=</code>, <code>!=</code>, <code>AND</code>, <code>OR</code>, <code>IN</code>, <code>NOT IN</code>. Example: <code>@aws.region NOT IN ["cn-north-1"]</code> or <code>@aws.account = "123456789012" AND @aws.region = "us-east-1"</code>. Maximum length: 2000 characters.</p>
    # @option params [Array<String>] :emit_system_fields
    #   <p>A list of system fields to include in the log events sent to the subscription destination. Valid values are <code>@aws.account</code> and <code>@aws.region</code>. These fields provide source information for centralized log data in the forwarded payload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     filter_name: "FilterName", # required
    #     filter_pattern: "FilterPattern", # required
    #     destination_arn: "DestinationArn", # required
    #     role_arn: "RoleArn",
    #     distribution: "Random" # One of: ["Random", "ByLogStream"],
    #     apply_on_transformed_logs: false,
    #     field_selection_criteria: "FieldSelectionCriteria",
    #     emit_system_fields: ["SystemField"]
    #   }
    #   options = {}
    #   response = client.put_subscription_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_subscription_filter(params = {}, options = {})
      request = build_request(:put_subscription_filter, params)
      request.send_request(options)
    end

    # <p>Creates or updates a <i>log transformer</i> for a single log group. You use
    #       log transformers to transform log events into a different format, making them easier for you
    #       to process and analyze. You can also transform logs from different sources into standardized
    #       formats that contains relevant, source-specific information.</p>
    #          <p>After you have created a transformer, CloudWatch Logs performs the transformations at
    #       the time of log ingestion. You can then refer to the transformed versions of the logs during
    #       operations such as querying with CloudWatch Logs Insights or creating metric filters or
    #       subscription filers.</p>
    #          <p>You can also use a transformer to copy metadata from metadata keys into the log events
    #       themselves. This metadata can include log group name, log stream name, account ID and
    #       Region.</p>
    #          <p>A transformer for a log group is a series of processors, where each processor applies one
    #       type of transformation to the log events ingested into this log group. The processors work one
    #       after another, in the order that you list them, like a pipeline. For more information about
    #       the available processors to use in a transformer, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-Processors"> Processors that you can use</a>.</p>
    #          <p>Having log events in standardized format enables visibility across your applications for
    #       your log analysis, reporting, and alarming needs. CloudWatch Logs provides transformation
    #       for common log types with out-of-the-box transformation templates for major Amazon Web Services
    #       log sources such as VPC flow logs, Lambda, and Amazon RDS. You can use
    #       pre-built transformation templates or create custom transformation policies.</p>
    #          <p>You can create transformers only for the log groups in the Standard log class.</p>
    #          <p>You can also set up a transformer at the account level. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutAccountPolicy.html">PutAccountPolicy</a>. If there is both a log-group level transformer created with
    #         <code>PutTransformer</code> and an account-level transformer that could apply to the same
    #       log group, the log group uses only the log-group level transformer. It ignores the
    #       account-level transformer.</p>
    # @param [Hash, Types::PutTransformerRequest] params
    # @option params [String] :log_group_identifier
    #   <p>Specify either the name or ARN of the log group to create the transformer for. </p>
    # @option params [Array<Types::Processor>] :transformer_config
    #   <p>This structure contains the configuration of this log transformer. A log transformer is an
    #         array of processors, where each processor applies one type of transformation to the log events
    #         that are ingested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifier: "LogGroupIdentifier", # required
    #     transformer_config: [ # required
    #       {
    #         add_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               value: "AddKeyValue", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         copy_value: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         csv: {
    #           quote_character: "QuoteCharacter",
    #           delimiter: "Delimiter",
    #           columns: ["Column"],
    #           source: "Source"
    #         },
    #         date_time_converter: {
    #           source: "Source", # required
    #           target: "Target", # required
    #           target_format: "TargetFormat",
    #           match_patterns: ["MatchPattern"], # required
    #           source_timezone: "SourceTimezone",
    #           target_timezone: "TargetTimezone",
    #           locale: "Locale"
    #         },
    #         delete_keys: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         grok: {
    #           source: "Source",
    #           match: "GrokMatch", # required
    #         },
    #         list_to_map: {
    #           source: "Source", # required
    #           key: "Key", # required
    #           value_key: "ValueKey",
    #           target: "Target",
    #           flatten: false,
    #           flattened_element: "first" # One of: ["first", "last"]
    #         },
    #         lower_case_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         move_keys: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         parse_cloudfront: {
    #           source: "Source"
    #         },
    #         parse_json: {
    #           source: "Source",
    #           destination: "DestinationField"
    #         },
    #         parse_key_value: {
    #           source: "Source",
    #           destination: "DestinationField",
    #           field_delimiter: "ParserFieldDelimiter",
    #           key_value_delimiter: "KeyValueDelimiter",
    #           key_prefix: "KeyPrefix",
    #           non_match_value: "NonMatchValue",
    #           overwrite_if_exists: false
    #         },
    #         parse_route53: {
    #           source: "Source"
    #         },
    #         parse_to_ocsf: {
    #           source: "Source",
    #           event_source: "CloudTrail" # One of: ["CloudTrail", "Route53Resolver", "VPCFlow", "EKSAudit", "AWSWAF"], # required
    #           ocsf_version: "V1.1" # One of: ["V1.1"], # required
    #         },
    #         parse_postgres: {
    #           source: "Source"
    #         },
    #         parse_vpc: {
    #           source: "Source"
    #         },
    #         parse_waf: {
    #           source: "Source"
    #         },
    #         rename_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               rename_to: "RenameTo", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         split_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               delimiter: "SplitStringDelimiter", # required
    #             }
    #           ]
    #         },
    #         substitute_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               from: "FromKey", # required
    #               to: "ToKey", # required
    #             }
    #           ]
    #         },
    #         trim_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         type_converter: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               type: "boolean" # One of: ["boolean", "integer", "double", "string"], # required
    #             }
    #           ]
    #         },
    #         upper_case_string: {
    #           with_keys: ["WithKey"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_transformer(params = {}, options = {})
      request = build_request(:put_transformer, params)
      request.send_request(options)
    end

    # <p>Starts a Live Tail streaming session for one or more log groups. A Live Tail session
    #       returns a stream of log events that have been recently ingested in the log groups. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogs_LiveTail.html">Use Live Tail to view logs
    #         in near real time</a>. </p>
    #          <p>The response to this operation is a response stream, over which the server sends live log
    #       events and the client receives them.</p>
    #          <p>The following objects are sent over the stream:</p>
    #          <ul>
    #             <li>
    #                <p>A single <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionStart.html">LiveTailSessionStart</a> object is sent at the start of the session.</p>
    #             </li>
    #             <li>
    #                <p>Every second, a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_LiveTailSessionUpdate.html">LiveTailSessionUpdate</a> object is sent. Each of these objects contains an array
    #           of the actual log events.</p>
    #                <p>If no new log events were ingested in the past second, the
    #             <code>LiveTailSessionUpdate</code> object will contain an empty array.</p>
    #                <p>The array of log events contained in a <code>LiveTailSessionUpdate</code> can include
    #           as many as 500 log events. If the number of log events matching the request exceeds 500
    #           per second, the log events are sampled down to 500 log events to be included in each
    #             <code>LiveTailSessionUpdate</code> object.</p>
    #                <p>If your client consumes the log events slower than the server produces them, CloudWatch Logs buffers up to 10 <code>LiveTailSessionUpdate</code> events or 5000 log
    #           events, after which it starts dropping the oldest events.</p>
    #             </li>
    #             <li>
    #                <p>A <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionStreamingException">SessionStreamingException</a> object is returned if an unknown error occurs on the
    #           server side.</p>
    #             </li>
    #             <li>
    #                <p>A <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartLiveTailResponseStream.html#CWL-Type-StartLiveTailResponseStream-SessionTimeoutException">SessionTimeoutException</a> object is returned when the session times out, after it
    #           has been kept open for three hours.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>StartLiveTail</code> API routes requests to
    #             <code>streaming-logs.<i>Region</i>.amazonaws.com</code> using SDK host
    #         prefix injection. VPC endpoint support is not available for this API.</p>
    #          </note>
    #          <important>
    #             <p>You can end a session before it times out by closing the session stream or by closing
    #         the client that is receiving the stream. The session also ends if the established connection
    #         between the client and the server breaks.</p>
    #          </important>
    #          <p>For examples of using an SDK to start a Live Tail session, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/example_cloudwatch-logs_StartLiveTail_section.html"> Start
    #         a Live Tail session using an Amazon Web Services SDK</a>.</p>
    # @param [Hash, Types::StartLiveTailRequest] params
    # @option params [Array<String>] :log_group_identifiers
    #   <p>An array where each item in the array is a log group to include in the Live Tail
    #         session.</p>
    #            <p>Specify each log group by its ARN. </p>
    #            <p>If you specify an ARN, the ARN can't end with an asterisk (*).</p>
    #            <note>
    #               <p> You can include up to 10 log groups.</p>
    #            </note>
    # @option params [Array<String>] :log_stream_names
    #   <p>If you specify this parameter, then only log events in the log streams that you specify
    #         here are included in the Live Tail session.</p>
    #            <p>If you specify this field, you can't also specify the <code>logStreamNamePrefixes</code>
    #         field.</p>
    #            <note>
    #               <p>You can specify this parameter only if you specify only one log group in
    #             <code>logGroupIdentifiers</code>.</p>
    #            </note>
    # @option params [Array<String>] :log_stream_name_prefixes
    #   <p>If you specify this parameter, then only log events in the log streams that have names
    #         that start with the prefixes that you specify here are included in the Live Tail
    #         session.</p>
    #            <p>If you specify this field, you can't also specify the <code>logStreamNames</code>
    #         field.</p>
    #            <note>
    #               <p>You can specify this parameter only if you specify only one log group in
    #             <code>logGroupIdentifiers</code>.</p>
    #            </note>
    # @option params [String] :log_event_filter_pattern
    #   <p>An optional pattern to use to filter the results to include only log events that match the
    #         pattern. For example, a filter pattern of <code>error 404</code> causes only log events that
    #         include both <code>error</code> and <code>404</code> to be included in the Live Tail
    #         stream.</p>
    #            <p>Regular expression filter patterns are supported.</p>
    #            <p>For more information about filter pattern syntax, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html">Filter and Pattern
    #           Syntax</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_identifiers: ["LogGroupIdentifier"], # required
    #     log_stream_names: ["LogStreamName"],
    #     log_stream_name_prefixes: ["LogStreamName"],
    #     log_event_filter_pattern: "FilterPattern"
    #   }
    #   options = {}
    #   response = client.start_live_tail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_stream: {
    #       # One of:
    #       session_start: {
    #         request_id: "RequestId",
    #         session_id: "SessionId",
    #         log_group_identifiers: ["LogGroupIdentifier"],
    #         log_stream_names: ["LogStreamName"],
    #         log_stream_name_prefixes: ["LogStreamName"],
    #         log_event_filter_pattern: "FilterPattern"
    #       },
    #       session_update: {
    #         session_metadata: {
    #           sampled: false
    #         },
    #         session_results: [
    #           {
    #             log_stream_name: "LogStreamName",
    #             log_group_identifier: "LogGroupIdentifier",
    #             message: "EventMessage",
    #             timestamp: 1,
    #             ingestion_time: 1
    #           }
    #         ]
    #       },
    #       session_timeout_exception: {
    #         message: "Message"
    #       },
    #       session_streaming_exception: {
    #         message: "Message"
    #       }
    #     }
    #   }
    # @return [Types::StartLiveTailResponse]
    def start_live_tail(params = {}, options = {})
      request = build_request(:start_live_tail, params)
      request.send_request(options)
    end

    # <p>Starts a query of one or more log groups using CloudWatch Logs Insights. You specify
    #       the log groups and time range to query and the query string to use.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query
    #         Syntax</a>.</p>
    #          <p>After you run a query using <code>StartQuery</code>, the query results are stored by
    #         CloudWatch Logs. You can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetQueryResults.html">GetQueryResults</a> to retrieve the results of a query, using the <code>queryId</code>
    #       that <code>StartQuery</code> returns. </p>
    #          <note>
    #             <p>To specify the log groups to query, a <code>StartQuery</code> operation must include one
    #         of the following:</p>
    #             <ul>
    #                <li>
    #                   <p>Either exactly one of the following parameters: <code>logGroupName</code>,
    #               <code>logGroupNames</code>, or <code>logGroupIdentifiers</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>Or the <code>queryString</code> must include a <code>SOURCE</code> command to select
    #             log groups for the query. The <code>SOURCE</code> command can select log groups based on
    #             log group name prefix, account ID, and log class.
    #             </p>
    #                   <p>For more information about the <code>SOURCE</code> command, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax-Source.html">SOURCE</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>If you have associated a KMS key with the query results in this
    #       account, then <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html">StartQuery</a> uses
    #       that key to encrypt the results when it stores them. If no key is associated with query
    #       results, the query results are encrypted with the default CloudWatch Logs encryption
    #       method.</p>
    #          <p>Queries time out after 60 minutes of runtime. If your queries are timing out, reduce the
    #       time range being searched or partition your query into a number of queries.</p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation
    #       in a monitoring account to start a query in a linked source account. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>. For a cross-account <code>StartQuery</code>
    #       operation, the query definition must be defined in the monitoring account.</p>
    #          <p>You can have up to 30 concurrent CloudWatch Logs insights queries, including queries
    #       that have been added to dashboards. </p>
    # @param [Hash, Types::StartQueryRequest] params
    # @option params [String] :query_language
    #   <p>Specify the query language to use for this query. The options are Logs Insights QL,
    #         OpenSearch PPL, and OpenSearch SQL. For more information about the query languages that
    #           CloudWatch Logs supports, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html">Supported query
    #           languages</a>.</p>
    # @option params [String] :log_group_name
    #   <p>The log group on which to perform the query.</p>
    #            <note>
    #               <p>A <code>StartQuery</code> operation must include exactly one of the following
    #           parameters: <code>logGroupName</code>, <code>logGroupNames</code>, or
    #             <code>logGroupIdentifiers</code>. The exception is queries using the OpenSearch Service
    #           SQL query language, where you specify the log group names inside the
    #             <code>querystring</code> instead of here.</p>
    #            </note>
    # @option params [Array<String>] :log_group_names
    #   <p>The list of log groups to be queried. You can include up to 50 log groups.</p>
    #            <note>
    #               <p>A <code>StartQuery</code> operation must include exactly one of the following
    #           parameters: <code>logGroupName</code>, <code>logGroupNames</code>, or
    #             <code>logGroupIdentifiers</code>. The exception is queries using the OpenSearch Service
    #           SQL query language, where you specify the log group names inside the
    #             <code>querystring</code> instead of here.</p>
    #            </note>
    # @option params [Array<String>] :log_group_identifiers
    #   <p>The list of log groups to query. You can include up to 50 log groups.</p>
    #            <p>You can specify them by the log group name or ARN. If a log group that you're querying is
    #         in a source account and you're using a monitoring account, you must specify the ARN of the log
    #         group here. The query definition must also be defined in the monitoring account.</p>
    #            <p>If you specify an ARN, use the format
    #           arn:aws:logs:<i>region</i>:<i>account-id</i>:log-group:<i>log_group_name</i>
    #         Don't include an * at the end.</p>
    #            <p>A <code>StartQuery</code> operation must include exactly one of the following parameters:
    #           <code>logGroupName</code>, <code>logGroupNames</code>, or <code>logGroupIdentifiers</code>.
    #         The exception is queries using the OpenSearch Service SQL query language, where you specify
    #         the log group names inside the <code>querystring</code> instead of here. </p>
    # @option params [Integer] :start_time
    #   <p>The beginning of the time range to query. The range is inclusive, so the specified start
    #         time is included in the query. Specified as epoch time, the number of seconds since
    #           <code>January 1, 1970, 00:00:00 UTC</code>.</p>
    # @option params [Integer] :end_time
    #   <p>The end of the time range to query. The range is inclusive, so the specified end time is
    #         included in the query. Specified as epoch time, the number of seconds since <code>January 1,
    #           1970, 00:00:00 UTC</code>.</p>
    # @option params [String] :query_string
    #   <p>The query string to use. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query
    #           Syntax</a>.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of log events to return in the query. If the query string uses the
    #           <code>fields</code> command, only the specified fields and their values are returned. The
    #         default is 10,000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_language: "CWLI" # One of: ["CWLI", "SQL", "PPL"],
    #     log_group_name: "LogGroupName",
    #     log_group_names: ["LogGroupName"],
    #     log_group_identifiers: ["LogGroupIdentifier"],
    #     start_time: 1, # required
    #     end_time: 1, # required
    #     query_string: "QueryString", # required
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.start_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "QueryId"
    #   }
    # @return [Types::StartQueryResponse]
    def start_query(params = {}, options = {})
      request = build_request(:start_query, params)
      request.send_request(options)
    end

    # <p>Stops a CloudWatch Logs Insights query that is in progress. If the query has already
    #       ended, the operation returns an error indicating that the specified query is not
    #       running.</p>
    # @param [Hash, Types::StopQueryRequest] params
    # @option params [String] :query_id
    #   <p>The ID number of the query to stop. To find this ID number, use
    #           <code>DescribeQueries</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "QueryId", # required
    #   }
    #   options = {}
    #   response = client.stop_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     success: false
    #   }
    # @return [Types::StopQueryResponse]
    def stop_query(params = {}, options = {})
      request = build_request(:stop_query, params)
      request.send_request(options)
    end

    # <important>
    #             <p>The TagLogGroup operation is on the path to deprecation. We recommend that you use
    #           <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html">TagResource</a>
    #         instead.</p>
    #          </important>
    #          <p>Adds or updates the specified tags for the specified log group.</p>
    #          <p>To list the tags for a log group, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html">ListTagsForResource</a>. To remove tags, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging">Tag Log Groups in Amazon CloudWatch Logs</a> in the <i>Amazon CloudWatch Logs
    #         User Guide</i>.</p>
    #          <p>CloudWatch Logs doesn't support IAM policies that prevent users from assigning specified
    #       tags to log groups using the <code>aws:Resource/<i>key-name</i>
    #             </code> or
    #         <code>aws:TagKeys</code> condition keys. For more information about using tags to control
    #       access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    # @param [Hash, Types::TagLogGroupRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to use for the tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_log_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   Please use the generic tagging API TagResource
    # @return [Smithy::Schema::EmptyStructure]
    def tag_log_group(params = {}, options = {})
      request = build_request(:tag_log_group, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch Logs resource.
    #       Currently, the only CloudWatch Logs resources that can be tagged are log groups and
    #       destinations. </p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to scope
    #       user permissions by granting a user permission to access or change only resources with certain
    #       tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as
    #       strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags. If
    #       you specify a new tag key for the alarm, this tag is appended to the list of tags associated
    #       with the alarm. If you specify a tag key that is already associated with the alarm, the new
    #       tag value that you specify replaces the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a CloudWatch Logs resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p>
    #            <p>The ARN format of a log group is
    #             <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:log-group:<i>log-group-name</i>
    #               </code>
    #            </p>
    #            <p>The ARN format of a destination is
    #             <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:destination:<i>destination-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs
    #           resources and operations</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Tests the filter pattern of a metric filter against a sample of log event messages. You
    #       can use this operation to validate the correctness of a metric filter pattern.</p>
    # @param [Hash, Types::TestMetricFilterRequest] params
    # @option params [String] :filter_pattern
    #   <p>A symbolic description of how CloudWatch Logs should interpret the data in each log
    #         event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
    #         use the filter pattern to specify what to look for in the log event message.</p>
    # @option params [Array<String>] :log_event_messages
    #   <p>The log event messages to test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_pattern: "FilterPattern", # required
    #     log_event_messages: ["EventMessage"], # required
    #   }
    #   options = {}
    #   response = client.test_metric_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     matches: [
    #       {
    #         event_number: 1,
    #         event_message: "EventMessage",
    #         extracted_values: {
    #           "Token" => "Value"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::TestMetricFilterResponse]
    def test_metric_filter(params = {}, options = {})
      request = build_request(:test_metric_filter, params)
      request.send_request(options)
    end

    # <p>Use this operation to test a log transformer. You enter the transformer configuration and
    #       a set of log events to test with. The operation responds with an array that includes the
    #       original log events and the transformed versions.</p>
    # @param [Hash, Types::TestTransformerRequest] params
    # @option params [Array<Types::Processor>] :transformer_config
    #   <p>This structure contains the configuration of this log transformer that you want to test. A
    #         log transformer is an array of processors, where each processor applies one type of
    #         transformation to the log events that are ingested.</p>
    # @option params [Array<String>] :log_event_messages
    #   <p>An array of the raw log events that you want to use to test this transformer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transformer_config: [ # required
    #       {
    #         add_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               value: "AddKeyValue", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         copy_value: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         csv: {
    #           quote_character: "QuoteCharacter",
    #           delimiter: "Delimiter",
    #           columns: ["Column"],
    #           source: "Source"
    #         },
    #         date_time_converter: {
    #           source: "Source", # required
    #           target: "Target", # required
    #           target_format: "TargetFormat",
    #           match_patterns: ["MatchPattern"], # required
    #           source_timezone: "SourceTimezone",
    #           target_timezone: "TargetTimezone",
    #           locale: "Locale"
    #         },
    #         delete_keys: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         grok: {
    #           source: "Source",
    #           match: "GrokMatch", # required
    #         },
    #         list_to_map: {
    #           source: "Source", # required
    #           key: "Key", # required
    #           value_key: "ValueKey",
    #           target: "Target",
    #           flatten: false,
    #           flattened_element: "first" # One of: ["first", "last"]
    #         },
    #         lower_case_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         move_keys: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               target: "Target", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         parse_cloudfront: {
    #           source: "Source"
    #         },
    #         parse_json: {
    #           source: "Source",
    #           destination: "DestinationField"
    #         },
    #         parse_key_value: {
    #           source: "Source",
    #           destination: "DestinationField",
    #           field_delimiter: "ParserFieldDelimiter",
    #           key_value_delimiter: "KeyValueDelimiter",
    #           key_prefix: "KeyPrefix",
    #           non_match_value: "NonMatchValue",
    #           overwrite_if_exists: false
    #         },
    #         parse_route53: {
    #           source: "Source"
    #         },
    #         parse_to_ocsf: {
    #           source: "Source",
    #           event_source: "CloudTrail" # One of: ["CloudTrail", "Route53Resolver", "VPCFlow", "EKSAudit", "AWSWAF"], # required
    #           ocsf_version: "V1.1" # One of: ["V1.1"], # required
    #         },
    #         parse_postgres: {
    #           source: "Source"
    #         },
    #         parse_vpc: {
    #           source: "Source"
    #         },
    #         parse_waf: {
    #           source: "Source"
    #         },
    #         rename_keys: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               rename_to: "RenameTo", # required
    #               overwrite_if_exists: false
    #             }
    #           ]
    #         },
    #         split_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               delimiter: "SplitStringDelimiter", # required
    #             }
    #           ]
    #         },
    #         substitute_string: {
    #           entries: [ # required
    #             {
    #               source: "Source", # required
    #               from: "FromKey", # required
    #               to: "ToKey", # required
    #             }
    #           ]
    #         },
    #         trim_string: {
    #           with_keys: ["WithKey"], # required
    #         },
    #         type_converter: {
    #           entries: [ # required
    #             {
    #               key: "Key", # required
    #               type: "boolean" # One of: ["boolean", "integer", "double", "string"], # required
    #             }
    #           ]
    #         },
    #         upper_case_string: {
    #           with_keys: ["WithKey"], # required
    #         }
    #       }
    #     ],
    #     log_event_messages: ["EventMessage"], # required
    #   }
    #   options = {}
    #   response = client.test_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transformed_logs: [
    #       {
    #         event_number: 1,
    #         event_message: "EventMessage",
    #         transformed_event_message: "TransformedEventMessage"
    #       }
    #     ]
    #   }
    # @return [Types::TestTransformerResponse]
    def test_transformer(params = {}, options = {})
      request = build_request(:test_transformer, params)
      request.send_request(options)
    end

    # <important>
    #             <p>The UntagLogGroup operation is on the path to deprecation. We recommend that you use
    #           <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagResource.html">UntagResource</a> instead.</p>
    #          </important>
    #          <p>Removes the specified tags from the specified log group.</p>
    #          <p>To list the tags for a log group, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsForResource.html">ListTagsForResource</a>. To add tags, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagResource.html">TagResource</a>.</p>
    #          <p>When using IAM policies to control tag management for CloudWatch Logs log groups, the
    #       condition keys <code>aws:Resource/key-name</code> and <code>aws:TagKeys</code> cannot be used
    #       to restrict which tags users can assign. </p>
    # @param [Hash, Types::UntagLogGroupRequest] params
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    # @option params [Array<String>] :tags
    #   <p>The tag keys. The corresponding tags are removed from the log group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_group_name: "LogGroupName", # required
    #     tags: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_log_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   Please use the generic tagging API UntagResource
    # @return [Smithy::Schema::EmptyStructure]
    def untag_log_group(params = {}, options = {})
      request = build_request(:untag_log_group, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Logs resource that you're removing tags from.</p>
    #            <p>The ARN format of a log group is
    #             <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:log-group:<i>log-group-name</i>
    #               </code>
    #            </p>
    #            <p>The ARN format of a destination is
    #             <code>arn:aws:logs:<i>Region</i>:<i>account-id</i>:destination:<i>destination-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs
    #           resources and operations</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Use this operation to <i>suppress</i> anomaly detection for a specified
    #       anomaly or pattern. If you suppress an anomaly, CloudWatch Logs won't report new
    #       occurrences of that anomaly and won't update that anomaly with new data. If you suppress a
    #       pattern, CloudWatch Logs won't report any anomalies related to that pattern.</p>
    #          <p>You must specify either <code>anomalyId</code> or <code>patternId</code>, but you can't
    #       specify both parameters in the same operation.</p>
    #          <p>If you have previously used this operation to suppress detection of a pattern or anomaly,
    #       you can use it again to cause CloudWatch Logs to end the suppression. To do this, use this
    #       operation and specify the anomaly or pattern to stop suppressing, and omit the
    #         <code>suppressionType</code> and <code>suppressionPeriod</code> parameters.</p>
    # @param [Hash, Types::UpdateAnomalyRequest] params
    # @option params [String] :anomaly_id
    #   <p>If you are suppressing or unsuppressing an anomaly, specify its unique ID here. You can
    #         find anomaly IDs by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html">ListAnomalies</a>
    #         operation.</p>
    # @option params [String] :pattern_id
    #   <p>If you are suppressing or unsuppressing an pattern, specify its unique ID here. You can
    #         find pattern IDs by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListAnomalies.html">ListAnomalies</a>
    #         operation.</p>
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector that this operation is to act on.</p>
    # @option params [String] :suppression_type
    #   <p>Use this to specify whether the suppression to be temporary or infinite. If you specify
    #           <code>LIMITED</code>, you must also specify a <code>suppressionPeriod</code>. If you specify
    #           <code>INFINITE</code>, any value for <code>suppressionPeriod</code> is ignored. </p>
    # @option params [Types::SuppressionPeriod] :suppression_period
    #   <p>If you are temporarily suppressing an anomaly or pattern, use this structure to specify
    #         how long the suppression is to last.</p>
    # @option params [Boolean] :baseline
    #   <p>Set this to <code>true</code> to prevent CloudWatch Logs from displaying this behavior
    #         as an anomaly in the future. The behavior is then treated as baseline behavior. However, if
    #         similar but more severe occurrences of this behavior occur in the future, those will still be
    #         reported as anomalies. </p>
    #            <p>The default is <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_id: "AnomalyId",
    #     pattern_id: "PatternId",
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #     suppression_type: "LIMITED" # One of: ["LIMITED", "INFINITE"],
    #     suppression_period: {
    #       value: 1,
    #       suppression_unit: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS"]
    #     },
    #     baseline: false
    #   }
    #   options = {}
    #   response = client.update_anomaly(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_anomaly(params = {}, options = {})
      request = build_request(:update_anomaly, params)
      request.send_request(options)
    end

    # <p>Use this operation to update the configuration of a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Delivery.html">delivery</a> to change
    #       either the S3 path pattern or the format of the delivered logs. You can't use this operation
    #       to change the source or destination of the delivery.</p>
    # @param [Hash, Types::UpdateDeliveryConfigurationRequest] params
    # @option params [String] :id
    #   <p>The ID of the delivery to be updated by this request.</p>
    # @option params [Array<String>] :record_fields
    #   <p>The list of record fields to be delivered to the destination, in order. If the delivery's
    #         log source has mandatory fields, they must be included in this list.</p>
    # @option params [String] :field_delimiter
    #   <p>The field delimiter to use between record fields when the final output format of a
    #         delivery is in <code>Plain</code>, <code>W3C</code>, or <code>Raw</code> format.</p>
    # @option params [Types::S3DeliveryConfiguration] :s3_delivery_configuration
    #   <p>This structure contains parameters that are valid only when the delivery's delivery
    #         destination is an S3 bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeliveryId", # required
    #     record_fields: ["FieldHeader"],
    #     field_delimiter: "FieldDelimiter",
    #     s3_delivery_configuration: {
    #       suffix_path: "DeliverySuffixPath",
    #       enable_hive_compatible_path: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_delivery_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDeliveryConfigurationResponse]
    def update_delivery_configuration(params = {}, options = {})
      request = build_request(:update_delivery_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing log anomaly detector.</p>
    # @param [Hash, Types::UpdateLogAnomalyDetectorRequest] params
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector that you want to update.</p>
    # @option params [String] :evaluation_frequency
    #   <p>Specifies how often the anomaly detector runs and look for anomalies. Set this value
    #         according to the frequency that the log group receives new logs. For example, if the log group
    #         receives new log events every 10 minutes, then setting <code>evaluationFrequency</code> to
    #           <code>FIFTEEN_MIN</code> might be appropriate.</p>
    # @option params [String] :filter_pattern
    #   <p>A symbolic description of how CloudWatch Logs should interpret the data in each log
    #         event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
    #         use the filter pattern to specify what to look for in the log event message.</p>
    # @option params [Integer] :anomaly_visibility_time
    #   <p>The number of days to use as the life cycle of anomalies. After this time, anomalies are
    #         automatically baselined and the anomaly detector model will treat new occurrences of similar
    #         event as normal. Therefore, if you do not correct the cause of an anomaly during this time, it
    #         will be considered normal going forward and will not be detected.</p>
    # @option params [Boolean] :enabled
    #   <p>Use this parameter to pause or restart the anomaly detector. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_detector_arn: "AnomalyDetectorArn", # required
    #     evaluation_frequency: "ONE_MIN" # One of: ["ONE_MIN", "FIVE_MIN", "TEN_MIN", "FIFTEEN_MIN", "THIRTY_MIN", "ONE_HOUR"],
    #     filter_pattern: "FilterPattern",
    #     anomaly_visibility_time: 1,
    #     enabled: false, # required
    #   }
    #   options = {}
    #   response = client.update_log_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_log_anomaly_detector(params = {}, options = {})
      request = build_request(:update_log_anomaly_detector, params)
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
      context[:gem_name] = 'aws-sdk-cloudwatchlogs'
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

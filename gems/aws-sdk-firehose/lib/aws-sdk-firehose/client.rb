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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:firehose)

module Aws::Firehose
  # An API client for Aws::Firehose.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Firehose20150804
    @identifier = :firehose

    add_plugin(::Aws::Firehose::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Firehose::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
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

    # <p>Creates a Firehose stream.</p>
    #          <p>By default, you can create up to 5,000 Firehose streams per Amazon Web Services
    #          Region.</p>
    #          <p>This is an asynchronous operation that immediately returns. The initial status of the
    #          Firehose stream is <code>CREATING</code>. After the Firehose stream is created, its status
    #          is <code>ACTIVE</code> and it now accepts data. If the Firehose stream creation fails, the
    #          status transitions to <code>CREATING_FAILED</code>. Attempts to send data to a delivery
    #          stream that is not in the <code>ACTIVE</code> state cause an exception. To check the state
    #          of a Firehose stream, use <a>DescribeDeliveryStream</a>.</p>
    #          <p>If the status of a Firehose stream is <code>CREATING_FAILED</code>, this status
    #          doesn't change, and you can't invoke <code>CreateDeliveryStream</code> again on it.
    #          However, you can invoke the <a>DeleteDeliveryStream</a> operation to delete
    #          it.</p>
    #          <p>A Firehose stream can be configured to receive records directly
    #          from providers using <a>PutRecord</a> or <a>PutRecordBatch</a>, or it
    #          can be configured to use an existing Kinesis stream as its source. To specify a Kinesis
    #          data stream as input, set the <code>DeliveryStreamType</code> parameter to
    #             <code>KinesisStreamAsSource</code>, and provide the Kinesis stream Amazon Resource Name
    #          (ARN) and role ARN in the <code>KinesisStreamSourceConfiguration</code>
    #          parameter.</p>
    #          <p>To create a Firehose stream with server-side encryption (SSE) enabled, include <a>DeliveryStreamEncryptionConfigurationInput</a> in your request. This is
    #          optional. You can also invoke <a>StartDeliveryStreamEncryption</a> to turn on
    #          SSE for an existing Firehose stream that doesn't have SSE enabled.</p>
    #          <p>A Firehose stream is configured with a single destination, such as Amazon Simple
    #          Storage Service (Amazon S3), Amazon Redshift, Amazon OpenSearch Service, Amazon OpenSearch
    #          Serverless, Splunk, and any custom HTTP endpoint or HTTP endpoints owned by or supported by
    #          third-party service providers, including Datadog, Dynatrace, LogicMonitor, MongoDB, New
    #          Relic, and Sumo Logic. You must specify only one of the following destination configuration
    #          parameters: <code>ExtendedS3DestinationConfiguration</code>,
    #             <code>S3DestinationConfiguration</code>,
    #             <code>ElasticsearchDestinationConfiguration</code>,
    #             <code>RedshiftDestinationConfiguration</code>, or
    #             <code>SplunkDestinationConfiguration</code>.</p>
    #          <p>When you specify <code>S3DestinationConfiguration</code>, you can also provide the
    #          following optional values: BufferingHints, <code>EncryptionConfiguration</code>, and
    #             <code>CompressionFormat</code>. By default, if no <code>BufferingHints</code> value is
    #          provided, Firehose buffers data up to 5 MB or for 5 minutes, whichever
    #          condition is satisfied first. <code>BufferingHints</code> is a hint, so there are some
    #          cases where the service cannot adhere to these conditions strictly. For example, record
    #          boundaries might be such that the size is a little over or under the configured buffering
    #          size. By default, no encryption is performed. We strongly recommend that you enable
    #          encryption to ensure secure data storage in Amazon S3.</p>
    #          <p>A few notes about Amazon Redshift as a destination:</p>
    #          <ul>
    #             <li>
    #                <p>An Amazon Redshift destination requires an S3 bucket as intermediate location.
    #                Firehose first delivers data to Amazon S3 and then uses
    #                   <code>COPY</code> syntax to load data into an Amazon Redshift table. This is
    #                specified in the <code>RedshiftDestinationConfiguration.S3Configuration</code>
    #                parameter.</p>
    #             </li>
    #             <li>
    #                <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be
    #                specified in <code>RedshiftDestinationConfiguration.S3Configuration</code> because
    #                the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't
    #                support these compression formats.</p>
    #             </li>
    #             <li>
    #                <p>We strongly recommend that you use the user name and password you provide
    #                exclusively with Firehose, and that the permissions for the account are
    #                restricted for Amazon Redshift <code>INSERT</code> permissions.</p>
    #             </li>
    #          </ul>
    #          <p>Firehose assumes the IAM role that is configured as part of the
    #          destination. The role should allow the Firehose principal to assume the role,
    #          and the role should have permissions that allow the service to deliver the data. For more
    #          information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Firehose Access to an Amazon S3 Destination</a> in the <i>Amazon Firehose Developer Guide</i>.</p>
    # @param [Hash, Types::CreateDeliveryStreamInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream. This name must be unique per Amazon Web Services
    #            account in the same Amazon Web Services Region. If the Firehose streams are in different
    #            accounts or different Regions, you can have multiple Firehose streams with the same
    #            name.</p>
    # @option params [String] :delivery_stream_type
    #   <p>The Firehose stream type. This parameter can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the Firehose stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The Firehose stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    # @option params [Types::DirectPutSourceConfiguration] :direct_put_source_configuration
    #   <p>The structure that configures parameters such as <code>ThroughputHintInMBs</code> for a
    #            stream configured with Direct PUT as a source. </p>
    # @option params [Types::KinesisStreamSourceConfiguration] :kinesis_stream_source_configuration
    #   <p>When a Kinesis data stream is used as the source for the Firehose stream, a <a>KinesisStreamSourceConfiguration</a> containing the Kinesis data stream Amazon
    #            Resource Name (ARN) and the role ARN for the source stream.</p>
    # @option params [Types::DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    # @option params [Types::S3DestinationConfiguration] :s3_destination_configuration
    #   <p>[Deprecated]
    #            The destination in Amazon S3. You can specify only one destination.</p>
    # @option params [Types::ExtendedS3DestinationConfiguration] :extended_s3_destination_configuration
    #   <p>The destination in Amazon S3. You can specify only one destination.</p>
    # @option params [Types::RedshiftDestinationConfiguration] :redshift_destination_configuration
    #   <p>The destination in Amazon Redshift. You can specify only one destination.</p>
    # @option params [Types::ElasticsearchDestinationConfiguration] :elasticsearch_destination_configuration
    #   <p>The destination in Amazon OpenSearch Service. You can specify only one destination.</p>
    # @option params [Types::AmazonopensearchserviceDestinationConfiguration] :amazonopensearchservice_destination_configuration
    #   <p>The destination in Amazon OpenSearch Service. You can specify only one
    #            destination.</p>
    # @option params [Types::SplunkDestinationConfiguration] :splunk_destination_configuration
    #   <p>The destination in Splunk. You can specify only one destination.</p>
    # @option params [Types::HttpEndpointDestinationConfiguration] :http_endpoint_destination_configuration
    #   <p>Enables configuring Kinesis Firehose to deliver data to any HTTP endpoint destination.
    #            You can specify only one destination.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A set of tags to assign to the Firehose stream. A tag is a key-value pair that you can
    #            define and assign to Amazon Web Services resources. Tags are metadata. For example, you can
    #            add friendly names and descriptions or other types of information that can help you
    #            distinguish the Firehose stream. For more information about tags, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #               Cost Allocation Tags</a> in the Amazon Web Services Billing and Cost Management User
    #            Guide.</p>
    #            <p>You can specify up to 50 tags when creating a Firehose stream.</p>
    #            <p>If you specify tags in the <code>CreateDeliveryStream</code> action, Amazon Data
    #            Firehose performs an additional authorization on the
    #               <code>firehose:TagDeliveryStream</code> action to verify if users have permissions to
    #            create tags. If you do not provide this permission, requests to create new Firehose streams
    #            with IAM resource tags will fail with an <code>AccessDeniedException</code> such as
    #            following.</p>
    #            <p>
    #               <b>AccessDeniedException</b>
    #            </p>
    #            <p>User: arn:aws:sts::x:assumed-role/x/x is not authorized to perform: firehose:TagDeliveryStream on resource: arn:aws:firehose:us-east-1:x:deliverystream/x with an explicit deny in an identity-based policy.</p>
    #            <p>For an example IAM policy, see <a href="https://docs.aws.amazon.com/firehose/latest/APIReference/API_CreateDeliveryStream.html#API_CreateDeliveryStream_Examples">Tag example.</a>
    #            </p>
    # @option params [Types::AmazonOpenSearchServerlessDestinationConfiguration] :amazon_open_search_serverless_destination_configuration
    #   <p>The destination in the Serverless offering for Amazon OpenSearch Service. You can
    #            specify only one destination.</p>
    # @option params [Types::MSKSourceConfiguration] :msk_source_configuration
    #   <p>The configuration for the Amazon MSK cluster to be used as the source for a delivery
    #            stream.</p>
    # @option params [Types::SnowflakeDestinationConfiguration] :snowflake_destination_configuration
    #   <p>Configure Snowflake destination</p>
    # @option params [Types::IcebergDestinationConfiguration] :iceberg_destination_configuration
    #   <p>
    #            Configure Apache Iceberg Tables destination.
    #         </p>
    # @option params [Types::DatabaseSourceConfiguration] :database_source_configuration
    #   <p>
    #               The top level object for configuring streams with database as a source. 
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     delivery_stream_type: "DirectPut" # One of: ["DirectPut", "KinesisStreamAsSource", "MSKAsSource", "DatabaseAsSource"],
    #     direct_put_source_configuration: {
    #       throughput_hint_in_m_bs: 1, # required
    #     },
    #     kinesis_stream_source_configuration: {
    #       kinesis_stream_arn: "KinesisStreamARN", # required
    #       role_arn: "RoleARN", # required
    #     },
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: "AWSKMSKeyARN",
    #       key_type: "AWS_OWNED_CMK" # One of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"], # required
    #     },
    #     s3_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       }
    #     },
    #     extended_s3_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #       s3_backup_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: "NonEmptyStringWithoutWhitespace",
    #           catalog_id: "NonEmptyStringWithoutWhitespace",
    #           database_name: "NonEmptyStringWithoutWhitespace",
    #           table_name: "NonEmptyStringWithoutWhitespace",
    #           region: "NonEmptyStringWithoutWhitespace",
    #           version_id: "NonEmptyStringWithoutWhitespace"
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 "NonEmptyStringWithoutWhitespace" => "NonEmptyString"
    #               }
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: ["NonEmptyString"]
    #             }
    #           }
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "SNAPPY"],
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: "V1" # One of: ["V1", "V2"]
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: "NONE" # One of: ["NONE", "ZLIB", "SNAPPY"],
    #               bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: "V0_11" # One of: ["V0_11", "V0_12"]
    #             }
    #           }
    #         },
    #         enabled: false
    #       },
    #       dynamic_partitioning_configuration: {
    #         retry_options: {
    #           duration_in_seconds: 1
    #         },
    #         enabled: false
    #       },
    #       file_extension: "FileExtension",
    #       custom_time_zone: "CustomTimeZone"
    #     },
    #     redshift_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       cluster_jdbcurl: "ClusterJDBCURL", # required
    #       copy_command: { # required
    #         data_table_name: "DataTableName", # required
    #         data_table_columns: "DataTableColumns",
    #         copy_options: "CopyOptions"
    #       },
    #       username: "Username",
    #       password: "Password",
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #       s3_backup_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       }
    #     },
    #     elasticsearch_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       domain_arn: "ElasticsearchDomainARN",
    #       cluster_endpoint: "ElasticsearchClusterEndpoint",
    #       index_name: "ElasticsearchIndexName", # required
    #       type_name: "ElasticsearchTypeName",
    #       index_rotation_period: "NoRotation" # One of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"],
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedDocumentsOnly" # One of: ["FailedDocumentsOnly", "AllDocuments"],
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT" # One of: ["FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"], # required
    #       }
    #     },
    #     amazonopensearchservice_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       domain_arn: "AmazonopensearchserviceDomainARN",
    #       cluster_endpoint: "AmazonopensearchserviceClusterEndpoint",
    #       index_name: "AmazonopensearchserviceIndexName", # required
    #       type_name: "AmazonopensearchserviceTypeName",
    #       index_rotation_period: "NoRotation" # One of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"],
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedDocumentsOnly" # One of: ["FailedDocumentsOnly", "AllDocuments"],
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT" # One of: ["FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"], # required
    #       }
    #     },
    #     splunk_destination_configuration: {
    #       hec_endpoint: "HECEndpoint", # required
    #       hec_endpoint_type: "Raw" # One of: ["Raw", "Event"], # required
    #       hec_token: "HECToken",
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedEventsOnly" # One of: ["FailedEventsOnly", "AllEvents"],
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       }
    #     },
    #     http_endpoint_destination_configuration: {
    #       endpoint_configuration: { # required
    #         url: "HttpEndpointUrl", # required
    #         name: "HttpEndpointName",
    #         access_key: "HttpEndpointAccessKey"
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       request_configuration: {
    #         content_encoding: "NONE" # One of: ["NONE", "GZIP"],
    #         common_attributes: [
    #           {
    #             attribute_name: "HttpEndpointAttributeName", # required
    #             attribute_value: "HttpEndpointAttributeValue", # required
    #           }
    #         ]
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     amazon_open_search_serverless_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       collection_endpoint: "AmazonOpenSearchServerlessCollectionEndpoint",
    #       index_name: "AmazonOpenSearchServerlessIndexName", # required
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedDocumentsOnly" # One of: ["FailedDocumentsOnly", "AllDocuments"],
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #       }
    #     },
    #     msk_source_configuration: {
    #       msk_cluster_arn: "MSKClusterARN", # required
    #       topic_name: "TopicName", # required
    #       authentication_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         connectivity: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"], # required
    #       },
    #       read_from_timestamp: Time.now
    #     },
    #     snowflake_destination_configuration: {
    #       account_url: "SnowflakeAccountUrl", # required
    #       private_key: "SnowflakePrivateKey",
    #       key_passphrase: "SnowflakeKeyPassphrase",
    #       user: "SnowflakeUser",
    #       database: "SnowflakeDatabase", # required
    #       schema: "SnowflakeSchema", # required
    #       table: "SnowflakeTable", # required
    #       snowflake_role_configuration: {
    #         enabled: false,
    #         snowflake_role: "SnowflakeRole"
    #       },
    #       data_loading_option: "JSON_MAPPING" # One of: ["JSON_MAPPING", "VARIANT_CONTENT_MAPPING", "VARIANT_CONTENT_AND_METADATA_MAPPING"],
    #       meta_data_column_name: "SnowflakeMetaDataColumnName",
    #       content_column_name: "SnowflakeContentColumnName",
    #       snowflake_vpc_configuration: {
    #         private_link_vpce_id: "SnowflakePrivateLinkVpceId", # required
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       role_arn: "RoleARN", # required
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       }
    #     },
    #     iceberg_destination_configuration: {
    #       destination_table_configuration_list: [
    #         {
    #           destination_table_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           destination_database_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           unique_keys: ["NonEmptyStringWithoutWhitespace"],
    #           partition_spec: {
    #             identity: [
    #               {
    #                 source_name: "NonEmptyStringWithoutWhitespace", # required
    #               }
    #             ]
    #           },
    #           s3_error_output_prefix: "ErrorOutputPrefix"
    #         }
    #       ],
    #       schema_evolution_configuration: {
    #         enabled: false, # required
    #       },
    #       table_creation_configuration: {
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       role_arn: "RoleARN", # required
    #       append_only: false,
    #       catalog_configuration: { # required
    #         catalog_arn: "GlueDataCatalogARN",
    #         warehouse_location: "WarehouseLocation"
    #       },
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       }
    #     },
    #     database_source_configuration: {
    #       type: "MySQL" # One of: ["MySQL", "PostgreSQL"], # required
    #       endpoint: "DatabaseEndpoint", # required
    #       port: 1, # required
    #       ssl_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #       databases: { # required
    #         include: ["DatabaseName"],
    #         exclude: ["DatabaseName"]
    #       },
    #       tables: { # required
    #         include: ["DatabaseTableName"],
    #         exclude: ["DatabaseTableName"]
    #       },
    #       columns: {
    #         include: ["DatabaseColumnName"],
    #         exclude: ["DatabaseColumnName"]
    #       },
    #       surrogate_keys: ["NonEmptyStringWithoutWhitespace"],
    #       snapshot_watermark_table: "DatabaseTableName", # required
    #       database_source_authentication_configuration: { # required
    #         secrets_manager_configuration: { # required
    #           secret_arn: "SecretARN",
    #           role_arn: "RoleARN",
    #           enabled: false, # required
    #         }
    #       },
    #       database_source_vpc_configuration: { # required
    #         vpc_endpoint_service_name: "VpcEndpointServiceName", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_delivery_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_stream_arn: "DeliveryStreamARN"
    #   }
    # @return [Types::CreateDeliveryStreamOutput]
    def create_delivery_stream(params = {}, options = {})
      request = build_request(:create_delivery_stream, params)
      request.send_request(options)
    end

    # <p>Deletes a Firehose stream and its data.</p>
    #          <p>You can delete a Firehose stream only if it is in one of the following states:
    #             <code>ACTIVE</code>, <code>DELETING</code>, <code>CREATING_FAILED</code>, or
    #             <code>DELETING_FAILED</code>. You can't delete a Firehose stream that is in the
    #          <code>CREATING</code> state. To check the state of a Firehose stream, use <a>DescribeDeliveryStream</a>. </p>
    #          <p>DeleteDeliveryStream is an asynchronous API. When an API request to DeleteDeliveryStream succeeds, the Firehose stream is marked for deletion, and it goes into the 
    #          <code>DELETING</code> state.While the Firehose stream is in the <code>DELETING</code> state, the service might
    #          continue to accept records, but it doesn't make any guarantees with respect to delivering
    #          the data. Therefore, as a best practice, first stop any applications that are sending
    #          records before you delete a Firehose stream.</p>
    #          <p>Removal of a Firehose stream that is in the <code>DELETING</code> state is a low priority operation for the service. A stream may remain in the 
    #          <code>DELETING</code> state for several minutes. Therefore, as a best practice, applications should not wait for streams in the <code>DELETING</code> state 
    #          to be removed. </p>
    # @param [Hash, Types::DeleteDeliveryStreamInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    # @option params [Boolean] :allow_force_delete
    #   <p>Set this to true if you want to delete the Firehose stream even if Firehose
    #            is unable to retire the grant for the CMK. Firehose might be unable to retire
    #            the grant due to a customer error, such as when the CMK or the grant are in an invalid
    #            state. If you force deletion, you can then use the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html">RevokeGrant</a> operation to
    #            revoke the grant you gave to Firehose. If a failure to retire the grant
    #            happens due to an Amazon Web Services KMS issue, Firehose keeps retrying the
    #            delete operation.</p>
    #            <p>The default value is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     allow_force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_delivery_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDeliveryStreamOutput]
    def delete_delivery_stream(params = {}, options = {})
      request = build_request(:delete_delivery_stream, params)
      request.send_request(options)
    end

    # <p>Describes the specified Firehose stream and its status. For example, after your
    #          Firehose stream is created, call <code>DescribeDeliveryStream</code> to see whether the
    #          Firehose stream is <code>ACTIVE</code> and therefore ready for data to be sent to it. </p>
    #          <p>If the status of a Firehose stream is <code>CREATING_FAILED</code>, this status
    #          doesn't change, and you can't invoke <a>CreateDeliveryStream</a> again on it.
    #          However, you can invoke the <a>DeleteDeliveryStream</a> operation to delete it.
    #          If the status is <code>DELETING_FAILED</code>, you can force deletion by invoking <a>DeleteDeliveryStream</a> again but with <a>DeleteDeliveryStreamInput$AllowForceDelete</a> set to true.</p>
    # @param [Hash, Types::DescribeDeliveryStreamInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    # @option params [Integer] :limit
    #   <p>The limit on the number of destinations to return. You can have one destination per
    #            Firehose stream.</p>
    # @option params [String] :exclusive_start_destination_id
    #   <p>The ID of the destination to start returning the destination information. Firehose supports one destination per Firehose stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     limit: 1,
    #     exclusive_start_destination_id: "DestinationId"
    #   }
    #   options = {}
    #   response = client.describe_delivery_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_stream_description: { # required
    #       delivery_stream_name: "DeliveryStreamName", # required
    #       delivery_stream_arn: "DeliveryStreamARN", # required
    #       delivery_stream_status: "CREATING" # One of: ["CREATING", "CREATING_FAILED", "DELETING", "DELETING_FAILED", "ACTIVE"], # required
    #       failure_description: {
    #         type: "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND" # One of: ["VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND", "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED", "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"], # required
    #         details: "NonEmptyString", # required
    #       },
    #       delivery_stream_encryption_configuration: {
    #         key_arn: "AWSKMSKeyARN",
    #         key_type: "AWS_OWNED_CMK" # One of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"],
    #         status: "ENABLED" # One of: ["ENABLED", "ENABLING", "ENABLING_FAILED", "DISABLED", "DISABLING", "DISABLING_FAILED"],
    #         failure_description: {
    #           type: "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND" # One of: ["VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND", "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED", "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"], # required
    #           details: "NonEmptyString", # required
    #         }
    #       },
    #       delivery_stream_type: "DirectPut" # One of: ["DirectPut", "KinesisStreamAsSource", "MSKAsSource", "DatabaseAsSource"], # required
    #       version_id: "DeliveryStreamVersionId", # required
    #       create_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       source: {
    #         direct_put_source_description: {
    #           throughput_hint_in_m_bs: 1
    #         },
    #         kinesis_stream_source_description: {
    #           kinesis_stream_arn: "KinesisStreamARN",
    #           role_arn: "RoleARN",
    #           delivery_start_timestamp: Time.now
    #         },
    #         msk_source_description: {
    #           msk_cluster_arn: "MSKClusterARN",
    #           topic_name: "TopicName",
    #           authentication_configuration: {
    #             role_arn: "RoleARN", # required
    #             connectivity: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"], # required
    #           },
    #           delivery_start_timestamp: Time.now,
    #           read_from_timestamp: Time.now
    #         },
    #         database_source_description: {
    #           type: "MySQL" # One of: ["MySQL", "PostgreSQL"],
    #           endpoint: "DatabaseEndpoint",
    #           port: 1,
    #           ssl_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #           databases: {
    #             include: ["DatabaseName"],
    #             exclude: ["DatabaseName"]
    #           },
    #           tables: {
    #             include: ["DatabaseTableName"],
    #             exclude: ["DatabaseTableName"]
    #           },
    #           columns: {
    #             include: ["DatabaseColumnName"],
    #             exclude: ["DatabaseColumnName"]
    #           },
    #           surrogate_keys: ["DatabaseColumnName"],
    #           snapshot_watermark_table: "DatabaseTableName",
    #           snapshot_info: [
    #             {
    #               id: "NonEmptyStringWithoutWhitespace", # required
    #               table: "DatabaseTableName", # required
    #               request_timestamp: Time.now, # required
    #               requested_by: "USER" # One of: ["USER", "FIREHOSE"], # required
    #               status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "SUSPENDED"], # required
    #               failure_description: {
    #                 type: "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND" # One of: ["VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND", "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED", "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"], # required
    #                 details: "NonEmptyString", # required
    #               }
    #             }
    #           ],
    #           database_source_authentication_configuration: {
    #             secrets_manager_configuration: { # required
    #               secret_arn: "SecretARN",
    #               role_arn: "RoleARN",
    #               enabled: false, # required
    #             }
    #           },
    #           database_source_vpc_configuration: {
    #             vpc_endpoint_service_name: "VpcEndpointServiceName", # required
    #           }
    #         }
    #       },
    #       destinations: [ # required
    #         {
    #           destination_id: "DestinationId", # required
    #           s3_destination_description: {
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: { # required
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1
    #             },
    #             compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #             encryption_configuration: { # required
    #               no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               }
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             }
    #           },
    #           extended_s3_destination_description: {
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: { # required
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1
    #             },
    #             compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #             encryption_configuration: { # required
    #               no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               }
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             s3_backup_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #             s3_backup_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             data_format_conversion_configuration: {
    #               schema_configuration: {
    #                 role_arn: "NonEmptyStringWithoutWhitespace",
    #                 catalog_id: "NonEmptyStringWithoutWhitespace",
    #                 database_name: "NonEmptyStringWithoutWhitespace",
    #                 table_name: "NonEmptyStringWithoutWhitespace",
    #                 region: "NonEmptyStringWithoutWhitespace",
    #                 version_id: "NonEmptyStringWithoutWhitespace"
    #               },
    #               input_format_configuration: {
    #                 deserializer: {
    #                   open_x_json_ser_de: {
    #                     convert_dots_in_json_keys_to_underscores: false,
    #                     case_insensitive: false,
    #                     column_to_json_key_mappings: {
    #                       "NonEmptyStringWithoutWhitespace" => "NonEmptyString"
    #                     }
    #                   },
    #                   hive_json_ser_de: {
    #                     timestamp_formats: ["NonEmptyString"]
    #                   }
    #                 }
    #               },
    #               output_format_configuration: {
    #                 serializer: {
    #                   parquet_ser_de: {
    #                     block_size_bytes: 1,
    #                     page_size_bytes: 1,
    #                     compression: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "SNAPPY"],
    #                     enable_dictionary_compression: false,
    #                     max_padding_bytes: 1,
    #                     writer_version: "V1" # One of: ["V1", "V2"]
    #                   },
    #                   orc_ser_de: {
    #                     stripe_size_bytes: 1,
    #                     block_size_bytes: 1,
    #                     row_index_stride: 1,
    #                     enable_padding: false,
    #                     padding_tolerance: 1.0,
    #                     compression: "NONE" # One of: ["NONE", "ZLIB", "SNAPPY"],
    #                     bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #                     bloom_filter_false_positive_probability: 1.0,
    #                     dictionary_key_threshold: 1.0,
    #                     format_version: "V0_11" # One of: ["V0_11", "V0_12"]
    #                   }
    #                 }
    #               },
    #               enabled: false
    #             },
    #             dynamic_partitioning_configuration: {
    #               retry_options: {
    #                 duration_in_seconds: 1
    #               },
    #               enabled: false
    #             },
    #             file_extension: "FileExtension",
    #             custom_time_zone: "CustomTimeZone"
    #           },
    #           redshift_destination_description: {
    #             role_arn: "RoleARN", # required
    #             cluster_jdbcurl: "ClusterJDBCURL", # required
    #             copy_command: { # required
    #               data_table_name: "DataTableName", # required
    #               data_table_columns: "DataTableColumns",
    #               copy_options: "CopyOptions"
    #             },
    #             username: "Username",
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             s3_destination_description: { # required
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             s3_backup_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #             s3_backup_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             secrets_manager_configuration: {
    #               secret_arn: "SecretARN",
    #               role_arn: "RoleARN",
    #               enabled: false, # required
    #             }
    #           },
    #           elasticsearch_destination_description: {
    #             role_arn: "RoleARN",
    #             domain_arn: "ElasticsearchDomainARN",
    #             cluster_endpoint: "ElasticsearchClusterEndpoint",
    #             index_name: "ElasticsearchIndexName",
    #             type_name: "ElasticsearchTypeName",
    #             index_rotation_period: "NoRotation" # One of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"],
    #             buffering_hints: {
    #               interval_in_seconds: 1,
    #               size_in_m_bs: 1
    #             },
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             s3_backup_mode: "FailedDocumentsOnly" # One of: ["FailedDocumentsOnly", "AllDocuments"],
    #             s3_destination_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             vpc_configuration_description: {
    #               subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #               role_arn: "RoleARN", # required
    #               security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #               vpc_id: "NonEmptyStringWithoutWhitespace", # required
    #             },
    #             document_id_options: {
    #               default_document_id_format: "FIREHOSE_DEFAULT" # One of: ["FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"], # required
    #             }
    #           },
    #           amazonopensearchservice_destination_description: {
    #             role_arn: "RoleARN",
    #             domain_arn: "AmazonopensearchserviceDomainARN",
    #             cluster_endpoint: "AmazonopensearchserviceClusterEndpoint",
    #             index_name: "AmazonopensearchserviceIndexName",
    #             type_name: "AmazonopensearchserviceTypeName",
    #             index_rotation_period: "NoRotation" # One of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"],
    #             buffering_hints: {
    #               interval_in_seconds: 1,
    #               size_in_m_bs: 1
    #             },
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             s3_backup_mode: "FailedDocumentsOnly" # One of: ["FailedDocumentsOnly", "AllDocuments"],
    #             s3_destination_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             vpc_configuration_description: {
    #               subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #               role_arn: "RoleARN", # required
    #               security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #               vpc_id: "NonEmptyStringWithoutWhitespace", # required
    #             },
    #             document_id_options: {
    #               default_document_id_format: "FIREHOSE_DEFAULT" # One of: ["FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"], # required
    #             }
    #           },
    #           splunk_destination_description: {
    #             hec_endpoint: "HECEndpoint",
    #             hec_endpoint_type: "Raw" # One of: ["Raw", "Event"],
    #             hec_token: "HECToken",
    #             hec_acknowledgment_timeout_in_seconds: 1,
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             s3_backup_mode: "FailedEventsOnly" # One of: ["FailedEventsOnly", "AllEvents"],
    #             s3_destination_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             buffering_hints: {
    #               interval_in_seconds: 1,
    #               size_in_m_bs: 1
    #             },
    #             secrets_manager_configuration: {
    #               secret_arn: "SecretARN",
    #               role_arn: "RoleARN",
    #               enabled: false, # required
    #             }
    #           },
    #           http_endpoint_destination_description: {
    #             endpoint_configuration: {
    #               url: "HttpEndpointUrl",
    #               name: "HttpEndpointName"
    #             },
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             request_configuration: {
    #               content_encoding: "NONE" # One of: ["NONE", "GZIP"],
    #               common_attributes: [
    #                 {
    #                   attribute_name: "HttpEndpointAttributeName", # required
    #                   attribute_value: "HttpEndpointAttributeValue", # required
    #                 }
    #               ]
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             role_arn: "RoleARN",
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #             s3_destination_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             secrets_manager_configuration: {
    #               secret_arn: "SecretARN",
    #               role_arn: "RoleARN",
    #               enabled: false, # required
    #             }
    #           },
    #           snowflake_destination_description: {
    #             account_url: "SnowflakeAccountUrl",
    #             user: "SnowflakeUser",
    #             database: "SnowflakeDatabase",
    #             schema: "SnowflakeSchema",
    #             table: "SnowflakeTable",
    #             snowflake_role_configuration: {
    #               enabled: false,
    #               snowflake_role: "SnowflakeRole"
    #             },
    #             data_loading_option: "JSON_MAPPING" # One of: ["JSON_MAPPING", "VARIANT_CONTENT_MAPPING", "VARIANT_CONTENT_AND_METADATA_MAPPING"],
    #             meta_data_column_name: "SnowflakeMetaDataColumnName",
    #             content_column_name: "SnowflakeContentColumnName",
    #             snowflake_vpc_configuration: {
    #               private_link_vpce_id: "SnowflakePrivateLinkVpceId", # required
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             role_arn: "RoleARN",
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #             s3_destination_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             secrets_manager_configuration: {
    #               secret_arn: "SecretARN",
    #               role_arn: "RoleARN",
    #               enabled: false, # required
    #             },
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1
    #             }
    #           },
    #           amazon_open_search_serverless_destination_description: {
    #             role_arn: "RoleARN",
    #             collection_endpoint: "AmazonOpenSearchServerlessCollectionEndpoint",
    #             index_name: "AmazonOpenSearchServerlessIndexName",
    #             buffering_hints: {
    #               interval_in_seconds: 1,
    #               size_in_m_bs: 1
    #             },
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             s3_backup_mode: "FailedDocumentsOnly" # One of: ["FailedDocumentsOnly", "AllDocuments"],
    #             s3_destination_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             vpc_configuration_description: {
    #               subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #               role_arn: "RoleARN", # required
    #               security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #               vpc_id: "NonEmptyStringWithoutWhitespace", # required
    #             }
    #           },
    #           iceberg_destination_description: {
    #             destination_table_configuration_list: [
    #               {
    #                 destination_table_name: "StringWithLettersDigitsUnderscoresDots", # required
    #                 destination_database_name: "StringWithLettersDigitsUnderscoresDots", # required
    #                 unique_keys: ["NonEmptyStringWithoutWhitespace"],
    #                 partition_spec: {
    #                   identity: [
    #                     {
    #                       source_name: "NonEmptyStringWithoutWhitespace", # required
    #                     }
    #                   ]
    #                 },
    #                 s3_error_output_prefix: "ErrorOutputPrefix"
    #               }
    #             ],
    #             schema_evolution_configuration: {
    #               enabled: false, # required
    #             },
    #             table_creation_configuration: {
    #               enabled: false, # required
    #             },
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName"
    #             },
    #             processing_configuration: {
    #               enabled: false,
    #               processors: [
    #                 {
    #                   type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #                   parameters: [
    #                     {
    #                       parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                       parameter_value: "ProcessorParameterValue", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #             retry_options: {
    #               duration_in_seconds: 1
    #             },
    #             role_arn: "RoleARN",
    #             append_only: false,
    #             catalog_configuration: {
    #               catalog_arn: "GlueDataCatalogARN",
    #               warehouse_location: "WarehouseLocation"
    #             },
    #             s3_destination_description: {
    #               role_arn: "RoleARN", # required
    #               bucket_arn: "BucketARN", # required
    #               prefix: "Prefix",
    #               error_output_prefix: "ErrorOutputPrefix",
    #               buffering_hints: { # required
    #                 size_in_m_bs: 1,
    #                 interval_in_seconds: 1
    #               },
    #               compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"], # required
    #               encryption_configuration: { # required
    #                 no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #                 kms_encryption_config: {
    #                   awskms_key_arn: "AWSKMSKeyARN", # required
    #                 }
    #               },
    #               cloud_watch_logging_options: {
    #                 enabled: false,
    #                 log_group_name: "LogGroupName",
    #                 log_stream_name: "LogStreamName"
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       has_more_destinations: false, # required
    #     }
    #   }
    # @return [Types::DescribeDeliveryStreamOutput]
    def describe_delivery_stream(params = {}, options = {})
      request = build_request(:describe_delivery_stream, params)
      request.send_request(options)
    end

    # <p>Lists your Firehose streams in alphabetical order of their names.</p>
    #          <p>The number of Firehose streams might be too large to return using a single call to
    #             <code>ListDeliveryStreams</code>. You can limit the number of Firehose streams returned,
    #          using the <code>Limit</code> parameter. To determine whether there are more delivery
    #          streams to list, check the value of <code>HasMoreDeliveryStreams</code> in the output. If
    #          there are more Firehose streams to list, you can request them by calling this operation
    #          again and setting the <code>ExclusiveStartDeliveryStreamName</code> parameter to the name
    #          of the last Firehose stream returned in the last call.</p>
    # @param [Hash, Types::ListDeliveryStreamsInput] params
    # @option params [Integer] :limit
    #   <p>The maximum number of Firehose streams to list. The default value is 10.</p>
    # @option params [String] :delivery_stream_type
    #   <p>The Firehose stream type. This can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the Firehose stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The Firehose stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    #            <p>This parameter is optional. If this parameter is omitted, Firehose streams of all
    #            types are returned.</p>
    # @option params [String] :exclusive_start_delivery_stream_name
    #   <p>The list of Firehose streams returned by this call to
    #               <code>ListDeliveryStreams</code> will start with the Firehose stream whose name comes
    #            alphabetically immediately after the name you specify in
    #               <code>ExclusiveStartDeliveryStreamName</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     delivery_stream_type: "DirectPut" # One of: ["DirectPut", "KinesisStreamAsSource", "MSKAsSource", "DatabaseAsSource"],
    #     exclusive_start_delivery_stream_name: "DeliveryStreamName"
    #   }
    #   options = {}
    #   response = client.list_delivery_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_stream_names: ["DeliveryStreamName"], # required
    #     has_more_delivery_streams: false, # required
    #   }
    # @return [Types::ListDeliveryStreamsOutput]
    def list_delivery_streams(params = {}, options = {})
      request = build_request(:list_delivery_streams, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified Firehose stream. This operation has a limit of five
    #          transactions per second per account. </p>
    # @param [Hash, Types::ListTagsForDeliveryStreamInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream whose tags you want to list.</p>
    # @option params [String] :exclusive_start_tag_key
    #   <p>The key to use as the starting point for the list of tags. If you set this parameter,
    #               <code>ListTagsForDeliveryStream</code> gets all tags that occur after
    #               <code>ExclusiveStartTagKey</code>.</p>
    # @option params [Integer] :limit
    #   <p>The number of tags to return. If this number is less than the total number of tags
    #            associated with the Firehose stream, <code>HasMoreTags</code> is set to <code>true</code>
    #            in the response. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last
    #            key in the response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     exclusive_start_tag_key: "TagKey",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_delivery_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     has_more_tags: false, # required
    #   }
    # @return [Types::ListTagsForDeliveryStreamOutput]
    def list_tags_for_delivery_stream(params = {}, options = {})
      request = build_request(:list_tags_for_delivery_stream, params)
      request.send_request(options)
    end

    # <p>Writes a single data record into an Firehose stream. To
    #          write multiple data records into a Firehose stream, use <a>PutRecordBatch</a>.
    #          Applications using these operations are referred to as producers.</p>
    #          <p>By default, each Firehose stream can take in up to 2,000 transactions per second,
    #          5,000 records per second, or 5 MB per second. If you use <a>PutRecord</a> and
    #             <a>PutRecordBatch</a>, the limits are an aggregate across these two
    #          operations for each Firehose stream. For more information about limits and how to request
    #          an increase, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon
    #             Firehose Limits</a>. </p>
    #          <p>Firehose accumulates and publishes a particular metric for a customer account in one minute intervals. It is possible that the bursts of incoming bytes/records ingested to a Firehose stream last only for a few seconds. Due to this, the actual spikes in the traffic might not be fully visible in the customer's 1 minute CloudWatch metrics.</p>
    #          <p>You must specify the name of the Firehose stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000
    #          KiB in size, and any kind of data. For example, it can be a segment from a log file,
    #          geographic location data, website clickstream data, and so on.</p>
    #          <p>For multi record de-aggregation, you can not put more than 500 records even if the
    #          data blob length is less than 1000 KiB. If you include more than 500 records, the request
    #          succeeds but the record de-aggregation doesn't work as expected and transformation lambda
    #          is invoked with the complete base64 encoded data blob instead of de-aggregated base64
    #          decoded records.</p>
    #          <p>Firehose buffers records before delivering them to the destination. To
    #          disambiguate the data blobs at the destination, a common solution is to use delimiters in
    #          the data, such as a newline (<code>\n</code>) or some other character unique within the
    #          data. This allows the consumer application to parse individual data items when reading the
    #          data from the destination.</p>
    #          <p>The <code>PutRecord</code> operation returns a <code>RecordId</code>, which is a
    #          unique string assigned to each record. Producer applications can use this ID for purposes
    #          such as auditability and investigation.</p>
    #          <p>If the <code>PutRecord</code> operation throws a
    #             <code>ServiceUnavailableException</code>, the API is automatically reinvoked (retried) 3
    #          times. If the exception persists, it is possible that the throughput limits have been
    #          exceeded for the Firehose stream. </p>
    #          <p>Re-invoking the Put API operations (for example, PutRecord and PutRecordBatch) can
    #          result in data duplicates. For larger data assets, allow for a longer time out before
    #          retrying Put API operations.</p>
    #          <p>Data records sent to Firehose are stored for 24 hours from the time they
    #          are added to a Firehose stream as it tries to send the records to the destination. If the
    #          destination is unreachable for more than 24 hours, the data is no longer
    #          available.</p>
    #          <important>
    #             <p>Don't concatenate two or more base64 strings to form the data fields of your records.
    #             Instead, concatenate the raw data, then perform base64 encoding.</p>
    #          </important>
    # @param [Hash, Types::PutRecordInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    # @option params [Types::Record] :record
    #   <p>The record.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     record: { # required
    #       data: "data", # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_id: "PutResponseRecordId", # required
    #     encrypted: false
    #   }
    # @return [Types::PutRecordOutput]
    def put_record(params = {}, options = {})
      request = build_request(:put_record, params)
      request.send_request(options)
    end

    # <p>Writes multiple data records into a Firehose stream in a single call, which can
    #          achieve higher throughput per producer than when writing single records. To write single
    #          data records into a Firehose stream, use <a>PutRecord</a>. Applications using
    #          these operations are referred to as producers.</p>
    #          <p>Firehose accumulates and publishes a particular metric for a customer account in one minute intervals. It is possible that the bursts of incoming bytes/records ingested to a Firehose stream last only for a few seconds. Due to this, the actual spikes in the traffic might not be fully visible in the customer's 1 minute CloudWatch metrics.</p>
    #          <p>For information about service quota, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Firehose
    #          Quota</a>.</p>
    #          <p>Each <a>PutRecordBatch</a> request supports up to 500 records. Each record
    #          in the request can be as large as 1,000 KB (before base64 encoding), up to a limit of 4 MB
    #          for the entire request. These limits cannot be changed.</p>
    #          <p>You must specify the name of the Firehose stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000
    #          KB in size, and any kind of data. For example, it could be a segment from a log file,
    #          geographic location data, website clickstream data, and so on.</p>
    #          <p>For multi record de-aggregation, you can not put more than 500 records even if the
    #          data blob length is less than 1000 KiB. If you include more than 500 records, the request
    #          succeeds but the record de-aggregation doesn't work as expected and transformation lambda
    #          is invoked with the complete base64 encoded data blob instead of de-aggregated base64
    #          decoded records.</p>
    #          <p>Firehose buffers records before delivering them to the destination. To
    #          disambiguate the data blobs at the destination, a common solution is to use delimiters in
    #          the data, such as a newline (<code>\n</code>) or some other character unique within the
    #          data. This allows the consumer application to parse individual data items when reading the
    #          data from the destination.</p>
    #          <p>The <a>PutRecordBatch</a> response includes a count of failed records,
    #             <code>FailedPutCount</code>, and an array of responses, <code>RequestResponses</code>.
    #          Even if the <a>PutRecordBatch</a> call succeeds, the value of
    #             <code>FailedPutCount</code> may be greater than 0, indicating that there are records for
    #          which the operation didn't succeed. Each entry in the <code>RequestResponses</code> array
    #          provides additional information about the processed record. It directly correlates with a
    #          record in the request array using the same ordering, from the top to the bottom. The
    #          response array always includes the same number of records as the request array.
    #             <code>RequestResponses</code> includes both successfully and unsuccessfully processed
    #          records. Firehose tries to process all records in each <a>PutRecordBatch</a> request. A single record failure does not stop the processing
    #          of subsequent records. </p>
    #          <p>A successfully processed record includes a <code>RecordId</code> value, which is
    #          unique for the record. An unsuccessfully processed record includes <code>ErrorCode</code>
    #          and <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error,
    #          and is one of the following values: <code>ServiceUnavailableException</code> or
    #             <code>InternalFailure</code>. <code>ErrorMessage</code> provides more detailed
    #          information about the error.</p>
    #          <p>If there is an internal server error or a timeout, the write might have completed or
    #          it might have failed. If <code>FailedPutCount</code> is greater than 0, retry the request,
    #          resending only those records that might have failed processing. This minimizes the possible
    #          duplicate records and also reduces the total bytes sent (and corresponding charges). We
    #          recommend that you handle any duplicates at the destination.</p>
    #          <p>If <a>PutRecordBatch</a> throws <code>ServiceUnavailableException</code>,
    #          the API is automatically reinvoked (retried) 3 times. If the exception persists, it is
    #          possible that the throughput limits have been exceeded for the Firehose stream.</p>
    #          <p>Re-invoking the Put API operations (for example, PutRecord and PutRecordBatch) can
    #          result in data duplicates. For larger data assets, allow for a longer time out before
    #          retrying Put API operations.</p>
    #          <p>Data records sent to Firehose are stored for 24 hours from the time they
    #          are added to a Firehose stream as it attempts to send the records to the destination. If
    #          the destination is unreachable for more than 24 hours, the data is no longer
    #          available.</p>
    #          <important>
    #             <p>Don't concatenate two or more base64 strings to form the data fields of your records.
    #             Instead, concatenate the raw data, then perform base64 encoding.</p>
    #          </important>
    # @param [Hash, Types::PutRecordBatchInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    # @option params [Array<Types::Record>] :records
    #   <p>One or more records.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     records: [ # required
    #       {
    #         data: "data", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_record_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_put_count: 1, # required
    #     encrypted: false,
    #     request_responses: [ # required
    #       {
    #         record_id: "PutResponseRecordId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::PutRecordBatchOutput]
    def put_record_batch(params = {}, options = {})
      request = build_request(:put_record_batch, params)
      request.send_request(options)
    end

    # <p>Enables server-side encryption (SSE) for the Firehose stream. </p>
    #          <p>This operation is asynchronous. It returns immediately. When you invoke it, Firehose first sets the encryption status of the stream to <code>ENABLING</code>, and then
    #          to <code>ENABLED</code>. The encryption status of a Firehose stream is the
    #             <code>Status</code> property in <a>DeliveryStreamEncryptionConfiguration</a>.
    #          If the operation fails, the encryption status changes to <code>ENABLING_FAILED</code>. You
    #          can continue to read and write data to your Firehose stream while the encryption status is
    #             <code>ENABLING</code>, but the data is not encrypted. It can take up to 5 seconds after
    #          the encryption status changes to <code>ENABLED</code> before all records written to the
    #          Firehose stream are encrypted. To find out whether a record or a batch of records was
    #          encrypted, check the response elements <a>PutRecordOutput$Encrypted</a> and
    #             <a>PutRecordBatchOutput$Encrypted</a>, respectively.</p>
    #          <p>To check the encryption status of a Firehose stream, use <a>DescribeDeliveryStream</a>.</p>
    #          <p>Even if encryption is currently enabled for a Firehose stream, you can still invoke this
    #          operation on it to change the ARN of the CMK or both its type and ARN. If you invoke this
    #          method to change the CMK, and the old CMK is of type <code>CUSTOMER_MANAGED_CMK</code>,
    #          Firehose schedules the grant it had on the old CMK for retirement. If the new
    #          CMK is of type <code>CUSTOMER_MANAGED_CMK</code>, Firehose creates a grant
    #          that enables it to use the new CMK to encrypt and decrypt data and to manage the
    #          grant.</p>
    #          <p>For the KMS grant creation to be successful, the Firehose API operations
    #             <code>StartDeliveryStreamEncryption</code> and <code>CreateDeliveryStream</code> should
    #          not be called with session credentials that are more than 6 hours old.</p>
    #          <p>If a Firehose stream already has encryption enabled and then you invoke this operation
    #          to change the ARN of the CMK or both its type and ARN and you get
    #             <code>ENABLING_FAILED</code>, this only means that the attempt to change the CMK failed.
    #          In this case, encryption remains enabled with the old CMK.</p>
    #          <p>If the encryption status of your Firehose stream is <code>ENABLING_FAILED</code>, you
    #          can invoke this operation again with a valid CMK. The CMK must be enabled and the key
    #          policy mustn't explicitly deny the permission for Firehose to invoke KMS
    #          encrypt and decrypt operations.</p>
    #          <p>You can enable SSE for a Firehose stream only if it's a Firehose stream that uses
    #             <code>DirectPut</code> as its source. </p>
    #          <p>The <code>StartDeliveryStreamEncryption</code> and
    #             <code>StopDeliveryStreamEncryption</code> operations have a combined limit of 25 calls
    #          per Firehose stream per 24 hours. For example, you reach the limit if you call
    #             <code>StartDeliveryStreamEncryption</code> 13 times and
    #             <code>StopDeliveryStreamEncryption</code> 12 times for the same Firehose stream in a
    #          24-hour period.</p>
    # @param [Hash, Types::StartDeliveryStreamEncryptionInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream for which you want to enable server-side encryption
    #            (SSE).</p>
    # @option params [Types::DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: "AWSKMSKeyARN",
    #       key_type: "AWS_OWNED_CMK" # One of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_delivery_stream_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartDeliveryStreamEncryptionOutput]
    def start_delivery_stream_encryption(params = {}, options = {})
      request = build_request(:start_delivery_stream_encryption, params)
      request.send_request(options)
    end

    # <p>Disables server-side encryption (SSE) for the Firehose stream. </p>
    #          <p>This operation is asynchronous. It returns immediately. When you invoke it, Firehose first sets the encryption status of the stream to <code>DISABLING</code>, and then
    #          to <code>DISABLED</code>. You can continue to read and write data to your stream while its
    #          status is <code>DISABLING</code>. It can take up to 5 seconds after the encryption status
    #          changes to <code>DISABLED</code> before all records written to the Firehose stream are no
    #          longer subject to encryption. To find out whether a record or a batch of records was
    #          encrypted, check the response elements <a>PutRecordOutput$Encrypted</a> and
    #             <a>PutRecordBatchOutput$Encrypted</a>, respectively.</p>
    #          <p>To check the encryption state of a Firehose stream, use <a>DescribeDeliveryStream</a>. </p>
    #          <p>If SSE is enabled using a customer managed CMK and then you invoke
    #             <code>StopDeliveryStreamEncryption</code>, Firehose schedules the related
    #          KMS grant for retirement and then retires it after it ensures that it is finished
    #          delivering records to the destination.</p>
    #          <p>The <code>StartDeliveryStreamEncryption</code> and
    #             <code>StopDeliveryStreamEncryption</code> operations have a combined limit of 25 calls
    #          per Firehose stream per 24 hours. For example, you reach the limit if you call
    #             <code>StartDeliveryStreamEncryption</code> 13 times and
    #             <code>StopDeliveryStreamEncryption</code> 12 times for the same Firehose stream in a
    #          24-hour period.</p>
    # @param [Hash, Types::StopDeliveryStreamEncryptionInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream for which you want to disable server-side encryption
    #            (SSE).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #   }
    #   options = {}
    #   response = client.stop_delivery_stream_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopDeliveryStreamEncryptionOutput]
    def stop_delivery_stream_encryption(params = {}, options = {})
      request = build_request(:stop_delivery_stream_encryption, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for the specified Firehose stream. A tag is a key-value pair
    #          that you can define and assign to Amazon Web Services resources. If you specify a tag that
    #          already exists, the tag value is replaced with the value that you specify in the request.
    #          Tags are metadata. For example, you can add friendly names and descriptions or other types
    #          of information that can help you distinguish the Firehose stream. For more information
    #          about tags, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #             Tags</a> in the <i>Amazon Web Services Billing and Cost Management User
    #             Guide</i>. </p>
    #          <p>Each Firehose stream can have up to 50 tags. </p>
    #          <p>This operation has a limit of five transactions per second per account. </p>
    # @param [Hash, Types::TagDeliveryStreamInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream to which you want to add the tags.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A set of key-value pairs to use to create the tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_delivery_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagDeliveryStreamOutput]
    def tag_delivery_stream(params = {}, options = {})
      request = build_request(:tag_delivery_stream, params)
      request.send_request(options)
    end

    # <p>Removes tags from the specified Firehose stream. Removed tags are deleted, and you
    #          can't recover them after this operation successfully completes.</p>
    #          <p>If you specify a tag that doesn't exist, the operation ignores it.</p>
    #          <p>This operation has a limit of five transactions per second per account. </p>
    # @param [Hash, Types::UntagDeliveryStreamInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the delivery
    #            stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_delivery_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagDeliveryStreamOutput]
    def untag_delivery_stream(params = {}, options = {})
      request = build_request(:untag_delivery_stream, params)
      request.send_request(options)
    end

    # <p>Updates the specified destination of the specified Firehose stream.</p>
    #          <p>Use this operation to change the destination type (for example, to replace the Amazon
    #          S3 destination with Amazon Redshift) or change the parameters associated with a destination
    #          (for example, to change the bucket name of the Amazon S3 destination). The update might not
    #          occur immediately. The target Firehose stream remains active while the configurations are
    #          updated, so data writes to the Firehose stream can continue during this process. The
    #          updated configurations are usually effective within a few minutes.</p>
    #          <p>Switching between Amazon OpenSearch Service and other services is not supported. For
    #          an Amazon OpenSearch Service destination, you can only update to another Amazon OpenSearch
    #          Service destination.</p>
    #          <p>If the destination type is the same, Firehose merges the configuration
    #          parameters specified with the destination configuration that already exists on the delivery
    #          stream. If any of the parameters are not specified in the call, the existing values are
    #          retained. For example, in the Amazon S3 destination, if <a>EncryptionConfiguration</a> is not specified, then the existing
    #             <code>EncryptionConfiguration</code> is maintained on the destination.</p>
    #          <p>If the destination type is not the same, for example, changing the destination from
    #          Amazon S3 to Amazon Redshift, Firehose does not merge any parameters. In this
    #          case, all parameters must be specified.</p>
    #          <p>Firehose uses <code>CurrentDeliveryStreamVersionId</code> to avoid race
    #          conditions and conflicting merges. This is a required field, and the service updates the
    #          configuration only if the existing configuration has a version ID that matches. After the
    #          update is applied successfully, the version ID is updated, and can be retrieved using <a>DescribeDeliveryStream</a>. Use the new version ID to set
    #             <code>CurrentDeliveryStreamVersionId</code> in the next call.</p>
    # @param [Hash, Types::UpdateDestinationInput] params
    # @option params [String] :delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    # @option params [String] :current_delivery_stream_version_id
    #   <p>Obtain this value from the <code>VersionId</code> result of <a>DeliveryStreamDescription</a>. This value is required, and helps the service
    #            perform conditional operations. For example, if there is an interleaving update and this
    #            value is null, then the update destination fails. After the update is successful, the
    #               <code>VersionId</code> value is updated. The service then performs a merge of the old
    #            configuration with the new configuration.</p>
    # @option params [String] :destination_id
    #   <p>The ID of the destination.</p>
    # @option params [Types::S3DestinationUpdate] :s3_destination_update
    #   <p>[Deprecated] Describes an update for a destination in Amazon S3.</p>
    # @option params [Types::ExtendedS3DestinationUpdate] :extended_s3_destination_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    # @option params [Types::RedshiftDestinationUpdate] :redshift_destination_update
    #   <p>Describes an update for a destination in Amazon Redshift.</p>
    # @option params [Types::ElasticsearchDestinationUpdate] :elasticsearch_destination_update
    #   <p>Describes an update for a destination in Amazon OpenSearch Service.</p>
    # @option params [Types::AmazonopensearchserviceDestinationUpdate] :amazonopensearchservice_destination_update
    #   <p>Describes an update for a destination in Amazon OpenSearch Service.</p>
    # @option params [Types::SplunkDestinationUpdate] :splunk_destination_update
    #   <p>Describes an update for a destination in Splunk.</p>
    # @option params [Types::HttpEndpointDestinationUpdate] :http_endpoint_destination_update
    #   <p>Describes an update to the specified HTTP endpoint destination.</p>
    # @option params [Types::AmazonOpenSearchServerlessDestinationUpdate] :amazon_open_search_serverless_destination_update
    #   <p>Describes an update for a destination in the Serverless offering for Amazon OpenSearch
    #            Service.</p>
    # @option params [Types::SnowflakeDestinationUpdate] :snowflake_destination_update
    #   <p>Update to the Snowflake destination configuration settings.</p>
    # @option params [Types::IcebergDestinationUpdate] :iceberg_destination_update
    #   <p>
    #            Describes an update for a destination in Apache Iceberg Tables.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     current_delivery_stream_version_id: "DeliveryStreamVersionId", # required
    #     destination_id: "DestinationId", # required
    #     s3_destination_update: {
    #       role_arn: "RoleARN",
    #       bucket_arn: "BucketARN",
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       }
    #     },
    #     extended_s3_destination_update: {
    #       role_arn: "RoleARN",
    #       bucket_arn: "BucketARN",
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #       s3_backup_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: "NonEmptyStringWithoutWhitespace",
    #           catalog_id: "NonEmptyStringWithoutWhitespace",
    #           database_name: "NonEmptyStringWithoutWhitespace",
    #           table_name: "NonEmptyStringWithoutWhitespace",
    #           region: "NonEmptyStringWithoutWhitespace",
    #           version_id: "NonEmptyStringWithoutWhitespace"
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 "NonEmptyStringWithoutWhitespace" => "NonEmptyString"
    #               }
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: ["NonEmptyString"]
    #             }
    #           }
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "SNAPPY"],
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: "V1" # One of: ["V1", "V2"]
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: "NONE" # One of: ["NONE", "ZLIB", "SNAPPY"],
    #               bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: "V0_11" # One of: ["V0_11", "V0_12"]
    #             }
    #           }
    #         },
    #         enabled: false
    #       },
    #       dynamic_partitioning_configuration: {
    #         retry_options: {
    #           duration_in_seconds: 1
    #         },
    #         enabled: false
    #       },
    #       file_extension: "FileExtension",
    #       custom_time_zone: "CustomTimeZone"
    #     },
    #     redshift_destination_update: {
    #       role_arn: "RoleARN",
    #       cluster_jdbcurl: "ClusterJDBCURL",
    #       copy_command: {
    #         data_table_name: "DataTableName", # required
    #         data_table_columns: "DataTableColumns",
    #         copy_options: "CopyOptions"
    #       },
    #       username: "Username",
    #       password: "Password",
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: "Disabled" # One of: ["Disabled", "Enabled"],
    #       s3_backup_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       }
    #     },
    #     elasticsearch_destination_update: {
    #       role_arn: "RoleARN",
    #       domain_arn: "ElasticsearchDomainARN",
    #       cluster_endpoint: "ElasticsearchClusterEndpoint",
    #       index_name: "ElasticsearchIndexName",
    #       type_name: "ElasticsearchTypeName",
    #       index_rotation_period: "NoRotation" # One of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"],
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT" # One of: ["FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"], # required
    #       }
    #     },
    #     amazonopensearchservice_destination_update: {
    #       role_arn: "RoleARN",
    #       domain_arn: "AmazonopensearchserviceDomainARN",
    #       cluster_endpoint: "AmazonopensearchserviceClusterEndpoint",
    #       index_name: "AmazonopensearchserviceIndexName",
    #       type_name: "AmazonopensearchserviceTypeName",
    #       index_rotation_period: "NoRotation" # One of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"],
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT" # One of: ["FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"], # required
    #       }
    #     },
    #     splunk_destination_update: {
    #       hec_endpoint: "HECEndpoint",
    #       hec_endpoint_type: "Raw" # One of: ["Raw", "Event"],
    #       hec_token: "HECToken",
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedEventsOnly" # One of: ["FailedEventsOnly", "AllEvents"],
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       }
    #     },
    #     http_endpoint_destination_update: {
    #       endpoint_configuration: {
    #         url: "HttpEndpointUrl", # required
    #         name: "HttpEndpointName",
    #         access_key: "HttpEndpointAccessKey"
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       request_configuration: {
    #         content_encoding: "NONE" # One of: ["NONE", "GZIP"],
    #         common_attributes: [
    #           {
    #             attribute_name: "HttpEndpointAttributeName", # required
    #             attribute_value: "HttpEndpointAttributeValue", # required
    #           }
    #         ]
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       }
    #     },
    #     amazon_open_search_serverless_destination_update: {
    #       role_arn: "RoleARN",
    #       collection_endpoint: "AmazonOpenSearchServerlessCollectionEndpoint",
    #       index_name: "AmazonOpenSearchServerlessIndexName",
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       }
    #     },
    #     snowflake_destination_update: {
    #       account_url: "SnowflakeAccountUrl",
    #       private_key: "SnowflakePrivateKey",
    #       key_passphrase: "SnowflakeKeyPassphrase",
    #       user: "SnowflakeUser",
    #       database: "SnowflakeDatabase",
    #       schema: "SnowflakeSchema",
    #       table: "SnowflakeTable",
    #       snowflake_role_configuration: {
    #         enabled: false,
    #         snowflake_role: "SnowflakeRole"
    #       },
    #       data_loading_option: "JSON_MAPPING" # One of: ["JSON_MAPPING", "VARIANT_CONTENT_MAPPING", "VARIANT_CONTENT_AND_METADATA_MAPPING"],
    #       meta_data_column_name: "SnowflakeMetaDataColumnName",
    #       content_column_name: "SnowflakeContentColumnName",
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       }
    #     },
    #     iceberg_destination_update: {
    #       destination_table_configuration_list: [
    #         {
    #           destination_table_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           destination_database_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           unique_keys: ["NonEmptyStringWithoutWhitespace"],
    #           partition_spec: {
    #             identity: [
    #               {
    #                 source_name: "NonEmptyStringWithoutWhitespace", # required
    #               }
    #             ]
    #           },
    #           s3_error_output_prefix: "ErrorOutputPrefix"
    #         }
    #       ],
    #       schema_evolution_configuration: {
    #         enabled: false, # required
    #       },
    #       table_creation_configuration: {
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName"
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation" # One of: ["RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"], # required
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn" # One of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"], # required
    #                 parameter_value: "ProcessorParameterValue", # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: "FailedDataOnly" # One of: ["FailedDataOnly", "AllData"],
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       role_arn: "RoleARN",
    #       append_only: false,
    #       catalog_configuration: {
    #         catalog_arn: "GlueDataCatalogARN",
    #         warehouse_location: "WarehouseLocation"
    #       },
    #       s3_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1
    #         },
    #         compression_format: "UNCOMPRESSED" # One of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"],
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption" # One of: ["NoEncryption"],
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           }
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDestinationOutput]
    def update_destination(params = {}, options = {})
      request = build_request(:update_destination, params)
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
      context[:gem_name] = 'aws-sdk-firehose'
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

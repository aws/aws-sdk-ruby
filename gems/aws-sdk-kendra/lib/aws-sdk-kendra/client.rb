# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kendra)

module Aws::Kendra
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kendra

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetrics)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Removes one or more documents from an index. The documents must have
    # been added with the BatchPutDocument operation.
    #
    # The documents are deleted asynchronously. You can see the progress of
    # the deletion by using AWS CloudWatch. Any error messages releated to
    # the processing of the batch are sent to you CloudWatch log.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the documents to delete.
    #
    # @option params [required, Array<String>] :document_id_list
    #   One or more identifiers for documents to delete from the index.
    #
    # @return [Types::BatchDeleteDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteDocumentResponse#failed_documents #failed_documents} => Array&lt;Types::BatchDeleteDocumentResponseFailedDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_document({
    #     index_id: "IndexId", # required
    #     document_id_list: ["DocumentId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_documents #=> Array
    #   resp.failed_documents[0].id #=> String
    #   resp.failed_documents[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.failed_documents[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchDeleteDocument AWS API Documentation
    #
    # @overload batch_delete_document(params = {})
    # @param [Hash] params ({})
    def batch_delete_document(params = {}, options = {})
      req = build_request(:batch_delete_document, params)
      req.send_request(options)
    end

    # Adds one or more documents to an index.
    #
    # The `BatchPutDocument` operation enables you to ingest inline
    # documents or a set of documents stored in an Amazon S3 bucket. Use
    # this operation to ingest your text and unstructured text into an
    # index, add custom attributes to the documents, and to attach an access
    # control list to the documents added to the index.
    #
    # The documents are indexed asynchronously. You can see the progress of
    # the batch using AWS CloudWatch. Any error messages related to
    # processing the batch are sent to your AWS CloudWatch log.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index to add the documents to. You need to
    #   create the index first using the CreateIndex operation.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of a role that is allowed to run the
    #   `BatchPutDocument` operation. For more information, see [IAM Roles for
    #   Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [required, Array<Types::Document>] :documents
    #   One or more documents to add to the index.
    #
    #   Each document is limited to 5 Mb, the total size of the list is
    #   limited to 50 Mb.
    #
    # @return [Types::BatchPutDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutDocumentResponse#failed_documents #failed_documents} => Array&lt;Types::BatchPutDocumentResponseFailedDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_document({
    #     index_id: "IndexId", # required
    #     role_arn: "RoleArn",
    #     documents: [ # required
    #       {
    #         id: "DocumentId", # required
    #         title: "Title",
    #         blob: "data",
    #         s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #         ],
    #         access_control_list: [
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER", # required, accepts USER, GROUP
    #             access: "ALLOW", # required, accepts ALLOW, DENY
    #           },
    #         ],
    #         content_type: "PDF", # accepts PDF, HTML, MS_WORD, PLAIN_TEXT, PPT
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_documents #=> Array
    #   resp.failed_documents[0].id #=> String
    #   resp.failed_documents[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.failed_documents[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchPutDocument AWS API Documentation
    #
    # @overload batch_put_document(params = {})
    # @param [Hash] params ({})
    def batch_put_document(params = {}, options = {})
      req = build_request(:batch_put_document, params)
      req.send_request(options)
    end

    # Creates a data source that you use to with an Amazon Kendra index.
    #
    # You specify a name, connector type and description for your data
    # source. You can choose between an S3 connector, a SharePoint Online
    # connector, and a database connector.
    #
    # You also specify configuration information such as document metadata
    # (author, source URI, and so on) and user context information.
    #
    # `CreateDataSource` is a synchronous operation. The operation returns
    # 200 if the data source was successfully created. Otherwise, an
    # exception is raised.
    #
    # @option params [required, String] :name
    #   A unique name for the data source. A data source name can't be
    #   changed without deleting and recreating the data source.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that should be associated with this data
    #   source.
    #
    # @option params [required, String] :type
    #   The type of repository that contains the data source.
    #
    # @option params [required, Types::DataSourceConfiguration] :configuration
    #   The connector configuration information that is required to access the
    #   repository.
    #
    # @option params [String] :description
    #   A description for the data source.
    #
    # @option params [String] :schedule
    #   Sets the frequency that Amazon Kendra will check the documents in your
    #   repository and update the index. If you don't set a schedule Amazon
    #   Kendra will not periodically update the index. You can call the
    #   `StartDataSourceSyncJob` operation to update the index.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access the
    #   data source. For more information, see [IAM Roles for Amazon
    #   Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     name: "DataSourceName", # required
    #     index_id: "IndexId", # required
    #     type: "S3", # required, accepts S3, SHAREPOINT, DATABASE
    #     configuration: { # required
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey",
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey",
    #         },
    #       },
    #       share_point_configuration: {
    #         share_point_version: "SHAREPOINT_ONLINE", # required, accepts SHAREPOINT_ONLINE
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #       },
    #       database_configuration: {
    #         database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #       },
    #     },
    #     description: "Description",
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an new set of frequently asked question (FAQ) questions and
    # answers.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the FAQ.
    #
    # @option params [required, String] :name
    #   The name that should be associated with the FAQ.
    #
    # @option params [String] :description
    #   A description of the FAQ.
    #
    # @option params [required, Types::S3Path] :s3_path
    #   The S3 location of the FAQ input data.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access the
    #   S3 bucket that contains the FAQs. For more information, see [IAM Roles
    #   for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @return [Types::CreateFaqResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFaqResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_faq({
    #     index_id: "IndexId", # required
    #     name: "FaqName", # required
    #     description: "Description",
    #     s3_path: { # required
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateFaq AWS API Documentation
    #
    # @overload create_faq(params = {})
    # @param [Hash] params ({})
    def create_faq(params = {}, options = {})
      req = build_request(:create_faq, params)
      req.send_request(options)
    end

    # Creates a new Amazon Kendra index. Index creation is an asynchronous
    # operation. To determine if index creation has completed, check the
    # `Status` field returned from a call to . The `Status` field is set to
    # `ACTIVE` when the index is ready to use.
    #
    # Once the index is active you can index your documents using the
    # operation or using one of the supported data sources.
    #
    # @option params [required, String] :name
    #   The name for the new index.
    #
    # @option params [required, String] :role_arn
    #   An IAM role that gives Amazon Kendra permissions to access your Amazon
    #   CloudWatch logs and metrics. This is also the role used when you use
    #   the `BatchPutDocument` operation to index documents from an Amazon S3
    #   bucket.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The identifier of the AWS KMS customer managed key (CMK) to use to
    #   encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
    #   asymmetric CMKs.
    #
    # @option params [String] :description
    #   A description for the index.
    #
    # @return [Types::CreateIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIndexResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     name: "IndexName", # required
    #     role_arn: "RoleArn", # required
    #     server_side_encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #     },
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateIndex AWS API Documentation
    #
    # @overload create_index(params = {})
    # @param [Hash] params ({})
    def create_index(params = {}, options = {})
      req = build_request(:create_index, params)
      req.send_request(options)
    end

    # Removes an FAQ from an index.
    #
    # @option params [required, String] :id
    #   The identifier of the FAQ to remove.
    #
    # @option params [required, String] :index_id
    #   The index to remove the FAQ from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_faq({
    #     id: "FaqId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteFaq AWS API Documentation
    #
    # @overload delete_faq(params = {})
    # @param [Hash] params ({})
    def delete_faq(params = {}, options = {})
      req = build_request(:delete_faq, params)
      req.send_request(options)
    end

    # Deletes an existing Amazon Kendra index. An exception is not thrown if
    # the index is already being deleted. While the index is being deleted,
    # the `Status` field returned by a call to the DescribeIndex operation
    # is set to `DELETING`.
    #
    # @option params [required, String] :id
    #   The identifier of the index to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index({
    #     id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteIndex AWS API Documentation
    #
    # @overload delete_index(params = {})
    # @param [Hash] params ({})
    def delete_index(params = {}, options = {})
      req = build_request(:delete_index, params)
      req.send_request(options)
    end

    # Gets information about a Amazon Kendra data source.
    #
    # @option params [required, String] :id
    #   The unique identifier of the data source to describe.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the data source.
    #
    # @return [Types::DescribeDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourceResponse#id #id} => String
    #   * {Types::DescribeDataSourceResponse#index_id #index_id} => String
    #   * {Types::DescribeDataSourceResponse#name #name} => String
    #   * {Types::DescribeDataSourceResponse#type #type} => String
    #   * {Types::DescribeDataSourceResponse#configuration #configuration} => Types::DataSourceConfiguration
    #   * {Types::DescribeDataSourceResponse#created_at #created_at} => Time
    #   * {Types::DescribeDataSourceResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeDataSourceResponse#description #description} => String
    #   * {Types::DescribeDataSourceResponse#status #status} => String
    #   * {Types::DescribeDataSourceResponse#schedule #schedule} => String
    #   * {Types::DescribeDataSourceResponse#role_arn #role_arn} => String
    #   * {Types::DescribeDataSourceResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.index_id #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "S3", "SHAREPOINT", "DATABASE"
    #   resp.configuration.s3_configuration.bucket_name #=> String
    #   resp.configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.configuration.s3_configuration.exclusion_patterns #=> Array
    #   resp.configuration.s3_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.s3_configuration.documents_metadata_configuration.s3_prefix #=> String
    #   resp.configuration.s3_configuration.access_control_list_configuration.key_path #=> String
    #   resp.configuration.share_point_configuration.share_point_version #=> String, one of "SHAREPOINT_ONLINE"
    #   resp.configuration.share_point_configuration.urls #=> Array
    #   resp.configuration.share_point_configuration.urls[0] #=> String
    #   resp.configuration.share_point_configuration.secret_arn #=> String
    #   resp.configuration.share_point_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.share_point_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.share_point_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.share_point_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.share_point_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.share_point_configuration.field_mappings #=> Array
    #   resp.configuration.share_point_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.share_point_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.share_point_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.share_point_configuration.document_title_field_name #=> String
    #   resp.configuration.database_configuration.database_engine_type #=> String, one of "RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"
    #   resp.configuration.database_configuration.connection_configuration.database_host #=> String
    #   resp.configuration.database_configuration.connection_configuration.database_port #=> Integer
    #   resp.configuration.database_configuration.connection_configuration.database_name #=> String
    #   resp.configuration.database_configuration.connection_configuration.table_name #=> String
    #   resp.configuration.database_configuration.connection_configuration.secret_arn #=> String
    #   resp.configuration.database_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.database_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.database_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.database_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.database_configuration.column_configuration.document_id_column_name #=> String
    #   resp.configuration.database_configuration.column_configuration.document_data_column_name #=> String
    #   resp.configuration.database_configuration.column_configuration.document_title_column_name #=> String
    #   resp.configuration.database_configuration.column_configuration.field_mappings #=> Array
    #   resp.configuration.database_configuration.column_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.database_configuration.column_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.database_configuration.column_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.database_configuration.column_configuration.change_detecting_columns #=> Array
    #   resp.configuration.database_configuration.column_configuration.change_detecting_columns[0] #=> String
    #   resp.configuration.database_configuration.acl_configuration.allowed_groups_column_name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"
    #   resp.schedule #=> String
    #   resp.role_arn #=> String
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeDataSource AWS API Documentation
    #
    # @overload describe_data_source(params = {})
    # @param [Hash] params ({})
    def describe_data_source(params = {}, options = {})
      req = build_request(:describe_data_source, params)
      req.send_request(options)
    end

    # Gets information about an FAQ list.
    #
    # @option params [required, String] :id
    #   The unique identifier of the FAQ.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the FAQ.
    #
    # @return [Types::DescribeFaqResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFaqResponse#id #id} => String
    #   * {Types::DescribeFaqResponse#index_id #index_id} => String
    #   * {Types::DescribeFaqResponse#name #name} => String
    #   * {Types::DescribeFaqResponse#description #description} => String
    #   * {Types::DescribeFaqResponse#created_at #created_at} => Time
    #   * {Types::DescribeFaqResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeFaqResponse#s3_path #s3_path} => Types::S3Path
    #   * {Types::DescribeFaqResponse#status #status} => String
    #   * {Types::DescribeFaqResponse#role_arn #role_arn} => String
    #   * {Types::DescribeFaqResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_faq({
    #     id: "FaqId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.index_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.s3_path.bucket #=> String
    #   resp.s3_path.key #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.role_arn #=> String
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeFaq AWS API Documentation
    #
    # @overload describe_faq(params = {})
    # @param [Hash] params ({})
    def describe_faq(params = {}, options = {})
      req = build_request(:describe_faq, params)
      req.send_request(options)
    end

    # Describes an existing Amazon Kendra index
    #
    # @option params [required, String] :id
    #   The name of the index to describe.
    #
    # @return [Types::DescribeIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIndexResponse#name #name} => String
    #   * {Types::DescribeIndexResponse#id #id} => String
    #   * {Types::DescribeIndexResponse#role_arn #role_arn} => String
    #   * {Types::DescribeIndexResponse#server_side_encryption_configuration #server_side_encryption_configuration} => Types::ServerSideEncryptionConfiguration
    #   * {Types::DescribeIndexResponse#status #status} => String
    #   * {Types::DescribeIndexResponse#description #description} => String
    #   * {Types::DescribeIndexResponse#created_at #created_at} => Time
    #   * {Types::DescribeIndexResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeIndexResponse#document_metadata_configurations #document_metadata_configurations} => Array&lt;Types::DocumentMetadataConfiguration&gt;
    #   * {Types::DescribeIndexResponse#index_statistics #index_statistics} => Types::IndexStatistics
    #   * {Types::DescribeIndexResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index({
    #     id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.role_arn #=> String
    #   resp.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "SYSTEM_UPDATING"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.document_metadata_configurations #=> Array
    #   resp.document_metadata_configurations[0].name #=> String
    #   resp.document_metadata_configurations[0].type #=> String, one of "STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"
    #   resp.document_metadata_configurations[0].relevance.freshness #=> Boolean
    #   resp.document_metadata_configurations[0].relevance.importance #=> Integer
    #   resp.document_metadata_configurations[0].relevance.duration #=> String
    #   resp.document_metadata_configurations[0].relevance.rank_order #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.document_metadata_configurations[0].relevance.value_importance_map #=> Hash
    #   resp.document_metadata_configurations[0].relevance.value_importance_map["ValueImportanceMapKey"] #=> Integer
    #   resp.document_metadata_configurations[0].search.facetable #=> Boolean
    #   resp.document_metadata_configurations[0].search.searchable #=> Boolean
    #   resp.document_metadata_configurations[0].search.displayable #=> Boolean
    #   resp.index_statistics.faq_statistics.indexed_question_answers_count #=> Integer
    #   resp.index_statistics.text_document_statistics.indexed_text_documents_count #=> Integer
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeIndex AWS API Documentation
    #
    # @overload describe_index(params = {})
    # @param [Hash] params ({})
    def describe_index(params = {}, options = {})
      req = build_request(:describe_index, params)
      req.send_request(options)
    end

    # Gets statistics about synchronizing Amazon Kendra with a data source.
    #
    # @option params [required, String] :id
    #   The identifier of the data source.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the data source.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `GetDataSourceSyncJobHistory`
    #   was truncated, include the `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of synchronization jobs to return in the response.
    #   If there are fewer results in the list, this response contains only
    #   the actual results.
    #
    # @option params [Types::TimeRange] :start_time_filter
    #   When specified, the synchronization jobs returned in the list are
    #   limited to jobs between the specified dates.
    #
    # @option params [String] :status_filter
    #   When specified, only returns synchronization jobs with the `Status`
    #   field equal to the specified status.
    #
    # @return [Types::ListDataSourceSyncJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourceSyncJobsResponse#history #history} => Array&lt;Types::DataSourceSyncJob&gt;
    #   * {Types::ListDataSourceSyncJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_sync_jobs({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     start_time_filter: {
    #       start_time: Time.now,
    #       end_time: Time.now,
    #     },
    #     status_filter: "FAILED", # accepts FAILED, SUCCEEDED, SYNCING, INCOMPLETE, STOPPING, ABORTED
    #   })
    #
    # @example Response structure
    #
    #   resp.history #=> Array
    #   resp.history[0].execution_id #=> String
    #   resp.history[0].start_time #=> Time
    #   resp.history[0].end_time #=> Time
    #   resp.history[0].status #=> String, one of "FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED"
    #   resp.history[0].error_message #=> String
    #   resp.history[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.history[0].data_source_error_code #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSourceSyncJobs AWS API Documentation
    #
    # @overload list_data_source_sync_jobs(params = {})
    # @param [Hash] params ({})
    def list_data_source_sync_jobs(params = {}, options = {})
      req = build_request(:list_data_source_sync_jobs, params)
      req.send_request(options)
    end

    # Lists the data sources that you have created.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the data source.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of data
    #   sources (`DataSourceSummaryItems`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of data sources to return.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#summary_items #summary_items} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary_items #=> Array
    #   resp.summary_items[0].name #=> String
    #   resp.summary_items[0].id #=> String
    #   resp.summary_items[0].type #=> String, one of "S3", "SHAREPOINT", "DATABASE"
    #   resp.summary_items[0].created_at #=> Time
    #   resp.summary_items[0].updated_at #=> Time
    #   resp.summary_items[0].status #=> String, one of "CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Gets a list of FAQ lists associated with an index.
    #
    # @option params [required, String] :index_id
    #   The index that contains the FAQ lists.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListFaqs` was truncated,
    #   include the `NextToken` to fetch the next set of FAQs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of FAQs to return in the response. If there are
    #   fewer results in the list, this response contains only the actual
    #   results.
    #
    # @return [Types::ListFaqsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFaqsResponse#next_token #next_token} => String
    #   * {Types::ListFaqsResponse#faq_summary_items #faq_summary_items} => Array&lt;Types::FaqSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_faqs({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.faq_summary_items #=> Array
    #   resp.faq_summary_items[0].id #=> String
    #   resp.faq_summary_items[0].name #=> String
    #   resp.faq_summary_items[0].status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.faq_summary_items[0].created_at #=> Time
    #   resp.faq_summary_items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListFaqs AWS API Documentation
    #
    # @overload list_faqs(params = {})
    # @param [Hash] params ({})
    def list_faqs(params = {}, options = {})
      req = build_request(:list_faqs, params)
      req.send_request(options)
    end

    # Lists the Amazon Kendra indexes that you have created.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of indexes
    #   (`DataSourceSummaryItems`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of data sources to return.
    #
    # @return [Types::ListIndicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndicesResponse#index_configuration_summary_items #index_configuration_summary_items} => Array&lt;Types::IndexConfigurationSummary&gt;
    #   * {Types::ListIndicesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indices({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.index_configuration_summary_items #=> Array
    #   resp.index_configuration_summary_items[0].name #=> String
    #   resp.index_configuration_summary_items[0].id #=> String
    #   resp.index_configuration_summary_items[0].created_at #=> Time
    #   resp.index_configuration_summary_items[0].updated_at #=> Time
    #   resp.index_configuration_summary_items[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "SYSTEM_UPDATING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListIndices AWS API Documentation
    #
    # @overload list_indices(params = {})
    # @param [Hash] params ({})
    def list_indices(params = {}, options = {})
      req = build_request(:list_indices, params)
      req.send_request(options)
    end

    # Searches an active index. Use this API to search your documents using
    # query. The `Query` operation enables to do faceted search and to
    # filter results based on document attributes.
    #
    # It also enables you to provide user context that Amazon Kendra uses to
    # enforce document access control in the search results.
    #
    # Amazon Kendra searches your index for text content and question and
    # answer (FAQ) content. By default the response contains three types of
    # results.
    #
    # * Relevant passages
    #
    # * Matching FAQs
    #
    # * Relevant documents
    #
    # You can specify that the query return only one type of result using
    # the `QueryResultTypeConfig` parameter.
    #
    # @option params [required, String] :index_id
    #   The unique identifier of the index to search. The identifier is
    #   returned in the response from the operation.
    #
    # @option params [required, String] :query_text
    #   The text to search for.
    #
    # @option params [Types::AttributeFilter] :attribute_filter
    #   Enables filtered searches based on document attributes. You can only
    #   provide one attribute filter; however, the `AndAllFilters`,
    #   `NotFilter`, and `OrAllFilters` parameters contain a list of other
    #   filters.
    #
    #   The `AttributeFilter` parameter enables you to create a set of
    #   filtering rules that a document must satisfy to be included in the
    #   query results.
    #
    # @option params [Array<Types::Facet>] :facets
    #   An array of documents attributes. Amazon Kendra returns a count for
    #   each attribute key specified. You can use this information to help
    #   narrow the search for your user.
    #
    # @option params [Array<String>] :requested_document_attributes
    #   An array of document attributes to include in the response. No other
    #   document attributes are included in the response. By default all
    #   document attributes are included in the response.
    #
    # @option params [String] :query_result_type_filter
    #   Sets the type of query. Only results for the specified query type are
    #   returned.
    #
    # @option params [Integer] :page_number
    #   Query results are returned in pages the size of the `PageSize`
    #   parameter. By default, Amazon Kendra returns the first page of
    #   results. Use this parameter to get result pages after the first one.
    #
    # @option params [Integer] :page_size
    #   Sets the number of results that are returned in each page of results.
    #   The default page size is 100.
    #
    # @return [Types::QueryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryResult#query_id #query_id} => String
    #   * {Types::QueryResult#result_items #result_items} => Array&lt;Types::QueryResultItem&gt;
    #   * {Types::QueryResult#facet_results #facet_results} => Array&lt;Types::FacetResult&gt;
    #   * {Types::QueryResult#total_number_of_results #total_number_of_results} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query({
    #     index_id: "IndexId", # required
    #     query_text: "QueryText", # required
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_all: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_any: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #     },
    #     facets: [
    #       {
    #         document_attribute_key: "DocumentAttributeKey",
    #       },
    #     ],
    #     requested_document_attributes: ["DocumentAttributeKey"],
    #     query_result_type_filter: "DOCUMENT", # accepts DOCUMENT, QUESTION_ANSWER, ANSWER
    #     page_number: 1,
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].id #=> String
    #   resp.result_items[0].type #=> String, one of "DOCUMENT", "QUESTION_ANSWER", "ANSWER"
    #   resp.result_items[0].additional_attributes #=> Array
    #   resp.result_items[0].additional_attributes[0].key #=> String
    #   resp.result_items[0].additional_attributes[0].value_type #=> String, one of "TEXT_WITH_HIGHLIGHTS_VALUE"
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.text #=> String
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights #=> Array
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].begin_offset #=> Integer
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].end_offset #=> Integer
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].top_answer #=> Boolean
    #   resp.result_items[0].document_id #=> String
    #   resp.result_items[0].document_title.text #=> String
    #   resp.result_items[0].document_title.highlights #=> Array
    #   resp.result_items[0].document_title.highlights[0].begin_offset #=> Integer
    #   resp.result_items[0].document_title.highlights[0].end_offset #=> Integer
    #   resp.result_items[0].document_title.highlights[0].top_answer #=> Boolean
    #   resp.result_items[0].document_excerpt.text #=> String
    #   resp.result_items[0].document_excerpt.highlights #=> Array
    #   resp.result_items[0].document_excerpt.highlights[0].begin_offset #=> Integer
    #   resp.result_items[0].document_excerpt.highlights[0].end_offset #=> Integer
    #   resp.result_items[0].document_excerpt.highlights[0].top_answer #=> Boolean
    #   resp.result_items[0].document_uri #=> String
    #   resp.result_items[0].document_attributes #=> Array
    #   resp.result_items[0].document_attributes[0].key #=> String
    #   resp.result_items[0].document_attributes[0].value.string_value #=> String
    #   resp.result_items[0].document_attributes[0].value.string_list_value #=> Array
    #   resp.result_items[0].document_attributes[0].value.string_list_value[0] #=> String
    #   resp.result_items[0].document_attributes[0].value.long_value #=> Integer
    #   resp.result_items[0].document_attributes[0].value.date_value #=> Time
    #   resp.facet_results #=> Array
    #   resp.facet_results[0].document_attribute_key #=> String
    #   resp.facet_results[0].document_attribute_value_count_pairs #=> Array
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.string_value #=> String
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.string_list_value #=> Array
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.string_list_value[0] #=> String
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.long_value #=> Integer
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.date_value #=> Time
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].count #=> Integer
    #   resp.total_number_of_results #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Query AWS API Documentation
    #
    # @overload query(params = {})
    # @param [Hash] params ({})
    def query(params = {}, options = {})
      req = build_request(:query, params)
      req.send_request(options)
    end

    # Starts a synchronization job for a data source. If a synchronization
    # job is already in progress, Amazon Kendra returns a
    # `ResourceInUseException` exception.
    #
    # @option params [required, String] :id
    #   The identifier of the data source to synchronize.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the data source.
    #
    # @return [Types::StartDataSourceSyncJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataSourceSyncJobResponse#execution_id #execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_source_sync_job({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/StartDataSourceSyncJob AWS API Documentation
    #
    # @overload start_data_source_sync_job(params = {})
    # @param [Hash] params ({})
    def start_data_source_sync_job(params = {}, options = {})
      req = build_request(:start_data_source_sync_job, params)
      req.send_request(options)
    end

    # Stops a running synchronization job. You can't stop a scheduled
    # synchronization job.
    #
    # @option params [required, String] :id
    #   The identifier of the data source for which to stop the
    #   synchronization jobs.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the data source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_data_source_sync_job({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/StopDataSourceSyncJob AWS API Documentation
    #
    # @overload stop_data_source_sync_job(params = {})
    # @param [Hash] params ({})
    def stop_data_source_sync_job(params = {}, options = {})
      req = build_request(:stop_data_source_sync_job, params)
      req.send_request(options)
    end

    # Enables you to provide feedback to Amazon Kendra to improve the
    # performance of the service.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that was queried.
    #
    # @option params [required, String] :query_id
    #   The identifier of the specific query for which you are submitting
    #   feedback. The query ID is returned in the response to the operation.
    #
    # @option params [Array<Types::ClickFeedback>] :click_feedback_items
    #   Tells Amazon Kendra that a particular search result link was chosen by
    #   the user.
    #
    # @option params [Array<Types::RelevanceFeedback>] :relevance_feedback_items
    #   Provides Amazon Kendra with relevant or not relevant feedback for
    #   whether a particular item was relevant to the search.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_feedback({
    #     index_id: "IndexId", # required
    #     query_id: "QueryId", # required
    #     click_feedback_items: [
    #       {
    #         result_id: "ResultId", # required
    #         click_time: Time.now, # required
    #       },
    #     ],
    #     relevance_feedback_items: [
    #       {
    #         result_id: "ResultId", # required
    #         relevance_value: "RELEVANT", # required, accepts RELEVANT, NOT_RELEVANT
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SubmitFeedback AWS API Documentation
    #
    # @overload submit_feedback(params = {})
    # @param [Hash] params ({})
    def submit_feedback(params = {}, options = {})
      req = build_request(:submit_feedback, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Kendra data source.
    #
    # @option params [required, String] :id
    #   The unique identifier of the data source to update.
    #
    # @option params [String] :name
    #   The name of the data source to update. The name of the data source
    #   can't be updated. To rename a data source you must delete the data
    #   source and re-create it.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the data source to update.
    #
    # @option params [Types::DataSourceConfiguration] :configuration
    #   Configuration information for a Amazon Kendra data source.
    #
    # @option params [String] :description
    #   The new description for the data source.
    #
    # @option params [String] :schedule
    #   The new update schedule for the data source.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the new role to use when the data
    #   source is accessing resources on your behalf.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     id: "DataSourceId", # required
    #     name: "DataSourceName",
    #     index_id: "IndexId", # required
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey",
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey",
    #         },
    #       },
    #       share_point_configuration: {
    #         share_point_version: "SHAREPOINT_ONLINE", # required, accepts SHAREPOINT_ONLINE
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #       },
    #       database_configuration: {
    #         database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #       },
    #     },
    #     description: "Description",
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Kendra index.
    #
    # @option params [required, String] :id
    #   The identifier of the index to update.
    #
    # @option params [String] :name
    #   The name of the index to update.
    #
    # @option params [String] :role_arn
    #   A new IAM role that gives Amazon Kendra permission to access your
    #   Amazon CloudWatch logs.
    #
    # @option params [String] :description
    #   A new description for the index.
    #
    # @option params [Array<Types::DocumentMetadataConfiguration>] :document_metadata_configuration_updates
    #   The document metadata to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_index({
    #     id: "IndexId", # required
    #     name: "IndexName",
    #     role_arn: "RoleArn",
    #     description: "Description",
    #     document_metadata_configuration_updates: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         type: "STRING_VALUE", # required, accepts STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE
    #         relevance: {
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1,
    #           },
    #         },
    #         search: {
    #           facetable: false,
    #           searchable: false,
    #           displayable: false,
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateIndex AWS API Documentation
    #
    # @overload update_index(params = {})
    # @param [Hash] params ({})
    def update_index(params = {}, options = {})
      req = build_request(:update_index, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-kendra'
      context[:gem_version] = '1.1.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end

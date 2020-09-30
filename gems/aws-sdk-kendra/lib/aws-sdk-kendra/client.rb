# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kendra)

module Aws::Kendra
  # An API client for Kendra.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Kendra::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
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
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
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
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
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
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
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
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
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
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
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
    # @option params [Types::DataSourceSyncJobMetricTarget] :data_source_sync_job_metric_target
    #   Maps a particular data source sync job to a particular data source.
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
    #     data_source_sync_job_metric_target: {
    #       data_source_id: "DataSourceId", # required
    #       data_source_sync_job_id: "DataSourceSyncJobId", # required
    #     },
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
    #   Documents have the following file size limits.
    #
    #   * 5 MB total size for inline documents
    #
    #   * 50 MB total size for files from an S3 bucket
    #
    #   * 5 MB extracted text for any file
    #
    #   For more information about file size and transaction per second
    #   quotas, see [Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
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
    # You specify a name, data source connector type and description for
    # your data source. You also specify configuration information such as
    # document metadata (author, source URI, and so on) and user context
    # information.
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
    #   The data source connector configuration information that is required
    #   to access the repository.
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
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify the data source. You can use
    #   the tags to identify and organize your resources and to control access
    #   to resources.
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
    #     type: "S3", # required, accepts S3, SHAREPOINT, DATABASE, SALESFORCE, ONEDRIVE, SERVICENOW
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
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
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
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #         },
    #       },
    #       salesforce_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       service_now_configuration: {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     description: "Description",
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify the FAQ. You can use the tags
    #   to identify and organize your resources and to control access to
    #   resources.
    #
    # @option params [String] :file_format
    #   The format of the input file. You can choose between a basic CSV
    #   format, a CSV format that includes customs attributes in a header, and
    #   a JSON format that includes custom attributes.
    #
    #   The format must match the format of the file stored in the S3 bucket
    #   identified in the `S3Path` parameter.
    #
    #   For more information, see [Adding questions and answers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html
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
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     file_format: "CSV", # accepts CSV, CSV_WITH_HEADER, JSON
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
    # @option params [String] :edition
    #   The Amazon Kendra edition to use for the index. Choose
    #   `DEVELOPER_EDITION` for indexes intended for development, testing, or
    #   proof of concept. Use `ENTERPRISE_EDITION` for your production
    #   databases. Once you set the edition for an index, it can't be
    #   changed.
    #
    #   The `Edition` parameter is optional. If you don't supply a value, the
    #   default is `ENTERPRISE_EDITION`.
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
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create an index.
    #   Multiple calls to the `CreateIndex` operation with the same client
    #   token will create only one index.”
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify the index. You can use the
    #   tags to identify and organize your resources and to control access to
    #   resources.
    #
    # @return [Types::CreateIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIndexResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     name: "IndexName", # required
    #     edition: "DEVELOPER_EDITION", # accepts DEVELOPER_EDITION, ENTERPRISE_EDITION
    #     role_arn: "RoleArn", # required
    #     server_side_encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #     },
    #     description: "Description",
    #     client_token: "ClientTokenName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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

    # Deletes an Amazon Kendra data source. An exception is not thrown if
    # the data source is already being deleted. While the data source is
    # being deleted, the `Status` field returned by a call to the operation
    # is set to `DELETING`. For more information, see [Deleting Data
    # Sources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html
    #
    # @option params [required, String] :id
    #   The unique identifier of the data source to delete.
    #
    # @option params [required, String] :index_id
    #   The unique identifier of the index associated with the data source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
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
    #   resp.type #=> String, one of "S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW"
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
    #   resp.configuration.share_point_configuration.use_change_log #=> Boolean
    #   resp.configuration.share_point_configuration.inclusion_patterns #=> Array
    #   resp.configuration.share_point_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.share_point_configuration.exclusion_patterns #=> Array
    #   resp.configuration.share_point_configuration.exclusion_patterns[0] #=> String
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
    #   resp.configuration.database_configuration.sql_configuration.query_identifiers_enclosing_option #=> String, one of "DOUBLE_QUOTES", "NONE"
    #   resp.configuration.salesforce_configuration.server_url #=> String
    #   resp.configuration.salesforce_configuration.secret_arn #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations #=> Array
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].name #=> String, one of "ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.included_states #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.included_states[0] #=> String, one of "DRAFT", "PUBLISHED", "ARCHIVED"
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.include_filter_types #=> Array
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.include_filter_types[0] #=> String, one of "ACTIVE_USER", "STANDARD_USER"
    #   resp.configuration.salesforce_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.include_attachment_file_patterns #=> Array
    #   resp.configuration.salesforce_configuration.include_attachment_file_patterns[0] #=> String
    #   resp.configuration.salesforce_configuration.exclude_attachment_file_patterns #=> Array
    #   resp.configuration.salesforce_configuration.exclude_attachment_file_patterns[0] #=> String
    #   resp.configuration.one_drive_configuration.tenant_domain #=> String
    #   resp.configuration.one_drive_configuration.secret_arn #=> String
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_list #=> Array
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_list[0] #=> String
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_s3_path.bucket #=> String
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_s3_path.key #=> String
    #   resp.configuration.one_drive_configuration.inclusion_patterns #=> Array
    #   resp.configuration.one_drive_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.one_drive_configuration.exclusion_patterns #=> Array
    #   resp.configuration.one_drive_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.one_drive_configuration.field_mappings #=> Array
    #   resp.configuration.one_drive_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.one_drive_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.one_drive_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.service_now_configuration.host_url #=> String
    #   resp.configuration.service_now_configuration.secret_arn #=> String
    #   resp.configuration.service_now_configuration.service_now_build_version #=> String, one of "LONDON", "OTHERS"
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.include_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.include_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.exclude_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.exclude_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.document_data_field_name #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.document_title_field_name #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings #=> Array
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.service_now_configuration.service_catalog_configuration.include_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.service_catalog_configuration.include_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.exclude_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.service_catalog_configuration.exclude_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.document_data_field_name #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.document_title_field_name #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings #=> Array
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings[0].index_field_name #=> String
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
    #   * {Types::DescribeFaqResponse#file_format #file_format} => String
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
    #   resp.file_format #=> String, one of "CSV", "CSV_WITH_HEADER", "JSON"
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
    #   * {Types::DescribeIndexResponse#edition #edition} => String
    #   * {Types::DescribeIndexResponse#role_arn #role_arn} => String
    #   * {Types::DescribeIndexResponse#server_side_encryption_configuration #server_side_encryption_configuration} => Types::ServerSideEncryptionConfiguration
    #   * {Types::DescribeIndexResponse#status #status} => String
    #   * {Types::DescribeIndexResponse#description #description} => String
    #   * {Types::DescribeIndexResponse#created_at #created_at} => Time
    #   * {Types::DescribeIndexResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeIndexResponse#document_metadata_configurations #document_metadata_configurations} => Array&lt;Types::DocumentMetadataConfiguration&gt;
    #   * {Types::DescribeIndexResponse#index_statistics #index_statistics} => Types::IndexStatistics
    #   * {Types::DescribeIndexResponse#error_message #error_message} => String
    #   * {Types::DescribeIndexResponse#capacity_units #capacity_units} => Types::CapacityUnitsConfiguration
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
    #   resp.edition #=> String, one of "DEVELOPER_EDITION", "ENTERPRISE_EDITION"
    #   resp.role_arn #=> String
    #   resp.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"
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
    #   resp.document_metadata_configurations[0].search.sortable #=> Boolean
    #   resp.index_statistics.faq_statistics.indexed_question_answers_count #=> Integer
    #   resp.index_statistics.text_document_statistics.indexed_text_documents_count #=> Integer
    #   resp.index_statistics.text_document_statistics.indexed_text_bytes #=> Integer
    #   resp.error_message #=> String
    #   resp.capacity_units.storage_capacity_units #=> Integer
    #   resp.capacity_units.query_capacity_units #=> Integer
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #     status_filter: "FAILED", # accepts FAILED, SUCCEEDED, SYNCING, INCOMPLETE, STOPPING, ABORTED, SYNCING_INDEXING
    #   })
    #
    # @example Response structure
    #
    #   resp.history #=> Array
    #   resp.history[0].execution_id #=> String
    #   resp.history[0].start_time #=> Time
    #   resp.history[0].end_time #=> Time
    #   resp.history[0].status #=> String, one of "FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"
    #   resp.history[0].error_message #=> String
    #   resp.history[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.history[0].data_source_error_code #=> String
    #   resp.history[0].metrics.documents_added #=> String
    #   resp.history[0].metrics.documents_modified #=> String
    #   resp.history[0].metrics.documents_deleted #=> String
    #   resp.history[0].metrics.documents_failed #=> String
    #   resp.history[0].metrics.documents_scanned #=> String
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.summary_items[0].type #=> String, one of "S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW"
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
    #   resp.faq_summary_items[0].file_format #=> String, one of "CSV", "CSV_WITH_HEADER", "JSON"
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.index_configuration_summary_items[0].edition #=> String, one of "DEVELOPER_EDITION", "ENTERPRISE_EDITION"
    #   resp.index_configuration_summary_items[0].created_at #=> Time
    #   resp.index_configuration_summary_items[0].updated_at #=> Time
    #   resp.index_configuration_summary_items[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"
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

    # Gets a list of tags associated with a specified resource. Indexes,
    # FAQs, and data sources can have tags associated with them.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   get a list of tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
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
    # Each query returns the 100 most relevant results.
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
    #   The default page size is 10. The maximum number of results returned is
    #   100. If you ask for more than 100 results, only 100 are returned.
    #
    # @option params [Types::SortingConfiguration] :sorting_configuration
    #   Provides information that determines how the results of the query are
    #   sorted. You can set the field that Amazon Kendra should sort the
    #   results on, and specify whether the results should be sorted in
    #   ascending or descending order. In the case of ties in sorting the
    #   results, the results are sorted by relevance.
    #
    #   If you don't provide sorting configuration, the results are sorted by
    #   the relevance that Amazon Kendra determines for the result.
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
    #     sorting_configuration: {
    #       document_attribute_key: "DocumentAttributeKey", # required
    #       sort_order: "DESC", # required, accepts DESC, ASC
    #     },
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
    #   resp.result_items[0].score_attributes.score_confidence #=> String, one of "VERY_HIGH", "HIGH", "MEDIUM", "LOW"
    #   resp.facet_results #=> Array
    #   resp.facet_results[0].document_attribute_key #=> String
    #   resp.facet_results[0].document_attribute_value_type #=> String, one of "STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"
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

    # Adds the specified tag to the specified index, FAQ, or data source
    # resource. If the tag already exists, the existing value is replaced
    # with the new value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tag keys to add to the index, FAQ, or data source. If a tag
    #   already exists, the existing value is replaced with the new value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an index, FAQ, or a data source.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the index, FAQ, or data source. If a
    #   tag key does not exist on the resource, it is ignored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
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
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #         },
    #       },
    #       salesforce_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       service_now_configuration: {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
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
    # @option params [Types::CapacityUnitsConfiguration] :capacity_units
    #   Sets the number of addtional storage and query capacity units that
    #   should be used by the index. You can change the capacity of the index
    #   up to 5 times per day.
    #
    #   If you are using extra storage units, you can't reduce the storage
    #   capacity below that required to meet the storage needs for your index.
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
    #           sortable: false,
    #         },
    #       },
    #     ],
    #     capacity_units: {
    #       storage_capacity_units: 1, # required
    #       query_capacity_units: 1, # required
    #     },
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
      context[:gem_version] = '1.14.0'
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

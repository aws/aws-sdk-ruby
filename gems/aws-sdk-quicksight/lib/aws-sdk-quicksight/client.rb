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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:quicksight)

module Aws::QuickSight
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :quicksight

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Cancels an on-going ingestion of data into SPICE.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @return [Types::CancelIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelIngestionResponse#arn #arn} => String
    #   * {Types::CancelIngestionResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CancelIngestionResponse#request_id #request_id} => String
    #   * {Types::CancelIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ingestion({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "string", # required
    #     ingestion_id: "IngestionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CancelIngestion AWS API Documentation
    #
    # @overload cancel_ingestion(params = {})
    # @param [Hash] params ({})
    def cancel_ingestion(params = {}, options = {})
      req = build_request(:cancel_ingestion, params)
      req.send_request(options)
    end

    # Creates a dashboard from a template. To first create a template, see
    # the CreateTemplate API.
    #
    # A dashboard is an entity in QuickSight which identifies Quicksight
    # reports, created from analyses. QuickSight dashboards are sharable.
    # With the right permissions, you can create scheduled email reports
    # from them. The `CreateDashboard`, `DescribeDashboard` and
    # `ListDashboardsByUser` APIs act on the dashboard entity. If you have
    # the correct permissions, you can create a dashboard from a template
    # that exists in a different AWS account.
    #
    # CLI syntax:
    #
    # `aws quicksight create-dashboard --cli-input-json
    # file://create-dashboard.json`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID where you want to create the dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to IAM policy.
    #
    # @option params [required, String] :name
    #   The display name of the dashboard.
    #
    # @option params [Types::Parameters] :parameters
    #   A structure that contains the parameters of the dashboard. These are
    #   parameter overrides for a dashboard. A dashboard can have any type of
    #   parameters and some parameters might accept multiple values. You could
    #   use the following structure to override two string parameters that
    #   accept multiple values:
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that contains the permissions of the dashboard. You can
    #   use this for granting permissions with principal and action
    #   information.
    #
    # @option params [required, Types::DashboardSourceEntity] :source_entity
    #   Source entity from which the dashboard is created. The souce entity
    #   accepts the ARN of the source template or analysis and also references
    #   the replacement datasets for the placeholders set when creating the
    #   template. The replacement datasets need to follow the same schema as
    #   the datasets for which placeholders were created when creating the
    #   template.
    #
    #   If you are creating a dashboard from a source entity in a different
    #   AWS account, use the ARN of the source template.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dashboard.
    #
    # @option params [String] :version_description
    #   A description for the first version of the dashboard being created.
    #
    # @option params [Types::DashboardPublishOptions] :dashboard_publish_options
    #   Publishing options when creating dashboard.
    #
    #   * AvailabilityStatus for AdHocFilteringOption - This can be either
    #     `ENABLED` or `DISABLED`. When This is set to set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published dashboard,
    #     which can be used for AdHoc filtering. Enabled by default.
    #
    #   * AvailabilityStatus for ExportToCSVOption - This can be either
    #     `ENABLED` or `DISABLED`. The visual option to export data to CSV is
    #     disabled when this is set to `DISABLED`. Enabled by default.
    #
    #   * VisibilityState for SheetControlsOption - This can be either
    #     `COLLAPSED` or `EXPANDED`. The sheet controls pane is collapsed by
    #     default when set to true. Collapsed by default.
    #
    #   Shorthand Syntax:
    #
    #   `AdHocFilteringDisabled=boolean,ExportToCSVDisabled=boolean,SheetControlsCollapsed=boolean`
    #
    # @return [Types::CreateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDashboardResponse#arn #arn} => String
    #   * {Types::CreateDashboardResponse#version_arn #version_arn} => String
    #   * {Types::CreateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::CreateDashboardResponse#creation_status #creation_status} => String
    #   * {Types::CreateDashboardResponse#status #status} => Integer
    #   * {Types::CreateDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     name: "DashboardName", # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["String"], # required
    #         },
    #       ],
    #       integer_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1], # required
    #         },
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1.0], # required
    #         },
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [Time.now], # required
    #         },
    #       ],
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     source_entity: { # required
    #       source_template: {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     version_description: "VersionDescription",
    #     dashboard_publish_options: {
    #       ad_hoc_filtering_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       export_to_csv_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       sheet_controls_option: {
    #         visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDashboard AWS API Documentation
    #
    # @overload create_dashboard(params = {})
    # @param [Hash] params ({})
    def create_dashboard(params = {}, options = {})
      req = build_request(:create_dashboard, params)
      req.send_request(options)
    end

    # Creates a dataset.
    #
    # CLI syntax:
    #
    # `aws quicksight create-data-set `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-set-id=unique-data-set-id `
    #
    # `--name='My dataset' `
    #
    # `--import-mode=SPICE `
    #
    # `--physical-table-map='\{`
    #
    # ` "physical-table-id": \{`
    #
    # ` "RelationalTable": \{`
    #
    # ` "DataSourceArn":
    # "arn:aws:quicksight:us-west-2:111111111111:datasource/data-source-id",`
    #
    # ` "Name": "table1",`
    #
    # ` "InputColumns": [`
    #
    # ` \{`
    #
    # ` "Name": "column1",`
    #
    # ` "Type": "STRING"`
    #
    # ` \}`
    #
    # ` ]`
    #
    # ` \}`
    #
    # ` \}'`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID.
    #
    # @option params [required, String] :data_set_id
    #   An ID for the dataset you want to create. This is unique per region
    #   per AWS account.
    #
    # @option params [required, String] :name
    #   The display name for the dataset.
    #
    # @option params [required, Hash<String,Types::PhysicalTable>] :physical_table_map
    #   Declares the physical tables that are available in the underlying data
    #   sources.
    #
    # @option params [Hash<String,Types::LogicalTable>] :logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #
    # @option params [required, String] :import_mode
    #   Indicates whether or not you want to import the data into SPICE.
    #
    # @option params [Array<Types::ColumnGroup>] :column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently only geospatial hierarchy is supported.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the dataset.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   Row-level security configuration on the data you want to create.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dataset.
    #
    # @return [Types::CreateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSetResponse#arn #arn} => String
    #   * {Types::CreateDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::CreateDataSetResponse#ingestion_arn #ingestion_arn} => String
    #   * {Types::CreateDataSetResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CreateDataSetResponse#request_id #request_id} => String
    #   * {Types::CreateDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     physical_table_map: { # required
    #       "PhysicalTableId" => {
    #         relational_table: {
    #           data_source_arn: "Arn", # required
    #           schema: "RelationalTableSchema",
    #           name: "RelationalTableName", # required
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         custom_sql: {
    #           data_source_arn: "Arn", # required
    #           name: "CustomSqlName", # required
    #           sql_query: "SqlQuery", # required
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         s3_source: {
    #           data_source_arn: "Arn", # required
    #           upload_settings: {
    #             format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #             delimiter: "Delimiter",
    #           },
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     logical_table_map: {
    #       "LogicalTableId" => {
    #         alias: "LogicalTableAlias", # required
    #         data_transforms: [
    #           {
    #             project_operation: {
    #               projected_columns: ["String"], # required
    #             },
    #             filter_operation: {
    #               condition_expression: "Expression", # required
    #             },
    #             create_columns_operation: {
    #               columns: [ # required
    #                 {
    #                   column_name: "ColumnName", # required
    #                   column_id: "ColumnId", # required
    #                   expression: "Expression", # required
    #                 },
    #               ],
    #             },
    #             rename_column_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_name: "ColumnName", # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #               format: "TypeCastFormat",
    #             },
    #             tag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tags: [ # required
    #                 {
    #                   column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # required, accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     row_level_permission_data_set: {
    #       arn: "Arn", # required
    #       permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #     },
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
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.ingestion_arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSet AWS API Documentation
    #
    # @overload create_data_set(params = {})
    # @param [Hash] params ({})
    def create_data_set(params = {}, options = {})
      req = build_request(:create_data_set, params)
      req.send_request(options)
    end

    # Creates a data source.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:datasource/data-source-id`
    #
    # CLI syntax:
    #
    # `aws quicksight create-data-source `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-source-id=unique-data-source-id `
    #
    # `--name='My Data Source' `
    #
    # `--type=POSTGRESQL `
    #
    # `--data-source-parameters='\{ "PostgreSqlParameters": \{`
    #
    # ` "Host": "my-db-host.example.com",`
    #
    # ` "Port": 1234,`
    #
    # ` "Database": "my-db" \} \}' `
    #
    # `--credentials='\{ "CredentialPair": \{`
    #
    # ` "Username": "username",`
    #
    # ` "Password": "password" \} \}'`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   An ID for the data source. This is unique per AWS Region per AWS
    #   account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [required, String] :type
    #   The type of the data source. Currently the supported types for this
    #   operation are: `ATHENA, AURORA, AURORA_POSTGRESQL, MARIADB, MYSQL,
    #   POSTGRESQL, PRESTO, REDSHIFT, S3, SNOWFLAKE, SPARK, SQLSERVER,
    #   TERADATA`. Use `ListDataSources` to return a list of all data sources.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters QuickSight uses to connect to your underlying source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials QuickSight uses to connect to your underlying source.
    #   Currently only username/password based credentials are supported.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the data source.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   You need to use this parameter only when you want QuickSight to use a
    #   VPC connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   SSL properties that apply when QuickSight connects to your underlying
    #   source.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the data source.
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#arn #arn} => String
    #   * {Types::CreateDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::CreateDataSourceResponse#creation_status #creation_status} => String
    #   * {Types::CreateDataSourceResponse#request_id #request_id} => String
    #   * {Types::CreateDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     type: "ADOBE_ANALYTICS", # required, accepts ADOBE_ANALYTICS, AMAZON_ELASTICSEARCH, ATHENA, AURORA, AURORA_POSTGRESQL, AWS_IOT_ANALYTICS, GITHUB, JIRA, MARIADB, MYSQL, POSTGRESQL, PRESTO, REDSHIFT, S3, SALESFORCE, SERVICENOW, SNOWFLAKE, SPARK, SQLSERVER, TERADATA, TWITTER
    #     data_source_parameters: {
    #       amazon_elasticsearch_parameters: {
    #         domain: "Domain", # required
    #       },
    #       athena_parameters: {
    #         work_group: "WorkGroup",
    #       },
    #       aurora_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: "DataSetName", # required
    #       },
    #       jira_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       maria_db_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       my_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       presto_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       rds_parameters: {
    #         instance_id: "InstanceId", # required
    #         database: "Database", # required
    #       },
    #       redshift_parameters: {
    #         host: "Host",
    #         port: 1,
    #         database: "Database", # required
    #         cluster_id: "ClusterId",
    #       },
    #       s3_parameters: {
    #         manifest_file_location: { # required
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #       },
    #       service_now_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       snowflake_parameters: {
    #         host: "Host", # required
    #         database: "Database", # required
    #         warehouse: "Warehouse", # required
    #       },
    #       spark_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       sql_server_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       teradata_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       twitter_parameters: {
    #         query: "Query", # required
    #         max_rows: 1, # required
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "Username", # required
    #         password: "Password", # required
    #       },
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     vpc_connection_properties: {
    #       vpc_connection_arn: "Arn", # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false,
    #     },
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
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an Amazon QuickSight group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<relevant-aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a group object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight create-group --aws-account-id=111122223333
    # --namespace=default --group-name="Sales-Management"
    # --description="Sales Management - Forecasting" `
    #
    # @option params [required, String] :group_name
    #   A name for the group that you want to create.
    #
    # @option params [String] :description
    #   A description for the group that you want to create.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::Group
    #   * {Types::CreateGroupResponse#request_id #request_id} => String
    #   * {Types::CreateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Adds an Amazon QuickSight user to an Amazon QuickSight group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The condition resource is the user name.
    #
    # The condition key is `quicksight:UserName`.
    #
    # The response is the group member object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight create-group-membership --aws-account-id=111122223333
    # --namespace=default --group-name=Sales --member-name=Pat `
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to add to the group membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to add the user to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::CreateGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupMembershipResponse#group_member #group_member} => Types::GroupMember
    #   * {Types::CreateGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::CreateGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member.arn #=> String
    #   resp.group_member.member_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembership AWS API Documentation
    #
    # @overload create_group_membership(params = {})
    # @param [Hash] params ({})
    def create_group_membership(params = {}, options = {})
      req = build_request(:create_group_membership, params)
      req.send_request(options)
    end

    # Creates an assignment with one specified IAM policy ARN and will
    # assigned to specified groups or users of QuickSight. Users and groups
    # need to be in the same namespace.
    #
    # CLI syntax:
    #
    # `aws quicksight create-iam-policy-assignment
    # --aws-account-id=111122223333 --assignment-name=helpAssignment
    # --policy-arn=arn:aws:iam::aws:policy/AdministratorAccess
    # --identities="user=user5,engineer123,group=QS-Admin"
    # --namespace=default --region=us-west-2`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID where you want to assign QuickSight users or groups
    #   to an IAM policy.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment. It must be unique within an AWS account.
    #
    # @option params [required, String] :assignment_status
    #   The status of an assignment:
    #
    #   * ENABLED - Anything specified in this assignment is used while
    #     creating the data source.
    #
    #   * DISABLED - This assignment isn't used while creating the data
    #     source.
    #
    #   * DRAFT - Assignment is an unfinished draft and isn't used while
    #     creating the data source.
    #
    # @option params [String] :policy_arn
    #   An IAM policy ARN that you want to apply to the QuickSight users and
    #   groups specified in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   QuickSight users and/or groups that you want to assign the policy to.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::CreateIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_id #assignment_id} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_status #assignment_status} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#policy_arn #policy_arn} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#identities #identities} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::CreateIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     assignment_status: "ENABLED", # required, accepts ENABLED, DRAFT, DISABLED
    #     policy_arn: "Arn",
    #     identities: {
    #       "String" => ["IdentityName"],
    #     },
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.assignment_id #=> String
    #   resp.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.policy_arn #=> String
    #   resp.identities #=> Hash
    #   resp.identities["String"] #=> Array
    #   resp.identities["String"][0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIAMPolicyAssignment AWS API Documentation
    #
    # @overload create_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def create_iam_policy_assignment(params = {}, options = {})
      req = build_request(:create_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Creates and starts a new SPICE ingestion on a dataset
    #
    # Any ingestions operating on tagged datasets inherit the same tags
    # automatically for use in access-control. For an example, see [How do I
    # create an IAM policy to control access to Amazon EC2 resources using
    # tags?][1]. Tags will be visible on the tagged dataset, but not on the
    # ingestion resource.
    #
    #
    #
    # [1]: https://aws.example.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @return [Types::CreateIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIngestionResponse#arn #arn} => String
    #   * {Types::CreateIngestionResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CreateIngestionResponse#ingestion_status #ingestion_status} => String
    #   * {Types::CreateIngestionResponse#request_id #request_id} => String
    #   * {Types::CreateIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingestion({
    #     data_set_id: "string", # required
    #     ingestion_id: "IngestionId", # required
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIngestion AWS API Documentation
    #
    # @overload create_ingestion(params = {})
    # @param [Hash] params ({})
    def create_ingestion(params = {}, options = {})
      req = build_request(:create_ingestion, params)
      req.send_request(options)
    end

    # Creates a template from an existing QuickSight analysis or template.
    # The resulting template can be used to create a dashboard.
    #
    # A template is an entity in QuickSight which encapsulates the metadata
    # required to create an analysis that can be used to create dashboard.
    # It adds a layer of abstraction by use placeholders to replace the
    # dataset associated with the analysis. You can use templates to create
    # dashboards by replacing dataset placeholders with datasets which
    # follow the same schema that was used to create the source analysis and
    # template.
    #
    # To create a template from an existing analysis, use the analysis's
    # ARN, `aws-account-id`, `template-id`, `source-entity`, and
    # `data-set-references`.
    #
    # CLI syntax to create a template:
    #
    # `aws quicksight create-template —cli-input-json
    # file://create-template.json`
    #
    # CLI syntax to create a template from another template in the same AWS
    # account:
    #
    # `aws quicksight create-template --aws-account-id 111122223333
    # --template-id reports_test_template --data-set-references
    # DataSetPlaceholder=reports,DataSetArn=arn:aws:quicksight:us-west-2:111122223333:dataset/0dfc789c-81f6-4f4f-b9ac-7db2453eefc8
    # DataSetPlaceholder=Elblogs,DataSetArn=arn:aws:quicksight:us-west-2:111122223333:dataset/f60da323-af68-45db-9016-08e0d1d7ded5
    # --source-entity
    # SourceAnalysis='\{Arn=arn:aws:quicksight:us-west-2:111122223333:analysis/7fb74527-c36d-4be8-8139-ac1be4c97365\}'`
    #
    # To create template from another account’s template, you need to grant
    # cross account resource permission for DescribeTemplate the account
    # that contains the template.
    #
    # You can use a file to pass JSON to the function if you prefer.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :template_id
    #   An ID for the template you want to create. This is unique per AWS
    #   region per AWS account.
    #
    # @option params [String] :name
    #   A display name for the template.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions to be set on the template. The
    #   shorthand syntax should look similar to this: `Shorthand Syntax:
    #   Principal=string,Actions=string,string ... `
    #
    # @option params [required, Types::TemplateSourceEntity] :source_entity
    #   The ARN of the source entity from which this template is being
    #   created. Templates can be currently created from an analysis or
    #   another template. If the ARN is for an analysis, you must include its
    #   dataset references.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @option params [String] :version_description
    #   A description of the current template version being created. This API
    #   created the first version of the template. Every time UpdateTemplate
    #   is called a new version is created. Each version of the template
    #   maintains a description of the version in the VersionDescription
    #   field.
    #
    # @return [Types::CreateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateResponse#arn #arn} => String
    #   * {Types::CreateTemplateResponse#version_arn #version_arn} => String
    #   * {Types::CreateTemplateResponse#template_id #template_id} => String
    #   * {Types::CreateTemplateResponse#creation_status #creation_status} => String
    #   * {Types::CreateTemplateResponse#status #status} => Integer
    #   * {Types::CreateTemplateResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     name: "TemplateName",
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     source_entity: { # required
    #       source_analysis: {
    #         arn: "Arn", # required
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #       },
    #       source_template: {
    #         arn: "Arn", # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     version_description: "VersionDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.template_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # Creates a template alias for a template.
    #
    # CLI syntax:
    #
    # `aws quicksight create-template-alias --aws-account-id 111122223333
    # --template-id 'reports_test_template' --alias-name PROD
    # —version-number 1`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template you are aliasing.
    #
    # @option params [required, String] :template_id
    #   An ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The name you want to give the template's alias. Alias names can't
    #   begin with a `$`, which is reserved by QuickSight. Alias names that
    #   start with ‘$’ sign are QuickSight reserved naming and can't be
    #   deleted.
    #
    # @option params [required, Integer] :template_version_number
    #   The version number of the template.
    #
    # @return [Types::CreateTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::CreateTemplateAliasResponse#status #status} => Integer
    #   * {Types::CreateTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     template_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateAlias AWS API Documentation
    #
    # @overload create_template_alias(params = {})
    # @param [Hash] params ({})
    def create_template_alias(params = {}, options = {})
      req = build_request(:create_template_alias, params)
      req.send_request(options)
    end

    # Deletes a dashboard.
    #
    # CLI syntax:
    #
    # `aws quicksight delete-dashboard --aws-account-id 111122223333
    # —dashboard-id 123123123`
    #
    # `aws quicksight delete-dashboard --aws-account-id 111122223333
    # —dashboard-id 123123123 —version-number 3`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are deleting.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Integer] :version_number
    #   The version number of the dashboard. If version number property is
    #   provided, only the specified version of the dashboard is deleted.
    #
    # @return [Types::DeleteDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDashboardResponse#status #status} => Integer
    #   * {Types::DeleteDashboardResponse#arn #arn} => String
    #   * {Types::DeleteDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DeleteDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDashboard AWS API Documentation
    #
    # @overload delete_dashboard(params = {})
    # @param [Hash] params ({})
    def delete_dashboard(params = {}, options = {})
      req = build_request(:delete_dashboard, params)
      req.send_request(options)
    end

    # Deletes a dataset.
    #
    # CLI syntax:
    #
    # `aws quicksight delete-data-set `
    #
    # `--aws-account-id=111111111111 `
    #
    # `--data-set-id=unique-data-set-id`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset you want to create. This is unique per region
    #   per AWS account.
    #
    # @return [Types::DeleteDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSetResponse#arn #arn} => String
    #   * {Types::DeleteDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::DeleteDataSetResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSet AWS API Documentation
    #
    # @overload delete_data_set(params = {})
    # @param [Hash] params ({})
    def delete_data_set(params = {}, options = {})
      req = build_request(:delete_data_set, params)
      req.send_request(options)
    end

    # Deletes the data source permanently. This action breaks all the
    # datasets that reference the deleted data source.
    #
    # CLI syntax:
    #
    # `aws quicksight delete-data-source `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-source-id=unique-data-source-id `
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This is unique per AWS Region per AWS
    #   account.
    #
    # @return [Types::DeleteDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceResponse#arn #arn} => String
    #   * {Types::DeleteDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::DeleteDataSourceResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Removes a user group from Amazon QuickSight.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # **CLI Sample:**
    #
    # `aws quicksight delete-group -\-aws-account-id=111122223333
    # -\-namespace=default -\-group-name=Sales-Management `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Removes a user from a group so that the user is no longer a member of
    # the group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The condition resource is the user name.
    #
    # The condition key is `quicksight:UserName`.
    #
    # **CLI Sample:**
    #
    # `aws quicksight delete-group-membership --aws-account-id=111122223333
    # --namespace=default --group-name=Sales-Management
    # --member-name=Charlie `
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to delete from the group
    #   membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete the user from.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembership AWS API Documentation
    #
    # @overload delete_group_membership(params = {})
    # @param [Hash] params ({})
    def delete_group_membership(params = {}, options = {})
      req = build_request(:delete_group_membership, params)
      req.send_request(options)
    end

    # Deletes an existing assignment.
    #
    # CLI syntax:
    #
    # `aws quicksight delete-iam-policy-assignment
    # --aws-account-id=111122223333 --assignment-name=testtest
    # --region=us-east-1 --namespace=default`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID where you want to delete an IAM policy assignment.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::DeleteIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::DeleteIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::DeleteIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIAMPolicyAssignment AWS API Documentation
    #
    # @overload delete_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def delete_iam_policy_assignment(params = {}, options = {})
      req = build_request(:delete_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Deletes a template.
    #
    # CLI syntax:
    #
    # * `aws quicksight delete-template --aws-account-id 111122223333
    #   —-template-id reports_test_template --version-number 2 `
    #
    # * `aws quicksight delete-template —aws-account-id 111122223333
    #   —template-id reports_test_template —alias-name STAGING `
    #
    # * `aws quicksight delete-template —aws-account-id 111122223333
    #   —template-id reports_test_template —alias-name ‘\$LATEST’ `
    #
    # * `aws quicksight delete-template --aws-account-id 111122223333
    #   —-template-id reports_test_template`
    #
    # If version number which is an optional field is not passed the
    # template (including all the versions) is deleted by the API, if
    # version number is provided, the specific template version is deleted
    # by the API.
    #
    # Users can explicitly describe the latest version of the template by
    # passing `$LATEST` to the `alias-name` parameter. `$LATEST` is an
    # internally supported alias, which points to the latest version of the
    # template.
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template you are deleting.
    #
    # @option params [required, String] :template_id
    #   An ID for the template you want to delete.
    #
    # @option params [Integer] :version_number
    #   The version number
    #
    # @return [Types::DeleteTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTemplateResponse#request_id #request_id} => String
    #   * {Types::DeleteTemplateResponse#arn #arn} => String
    #   * {Types::DeleteTemplateResponse#template_id #template_id} => String
    #   * {Types::DeleteTemplateResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.arn #=> String
    #   resp.template_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplate AWS API Documentation
    #
    # @overload delete_template(params = {})
    # @param [Hash] params ({})
    def delete_template(params = {}, options = {})
      req = build_request(:delete_template, params)
      req.send_request(options)
    end

    # Update template alias of given template.
    #
    # CLI syntax:
    #
    # `aws quicksight delete-template-alias --aws-account-id 111122223333
    # --template-id 'reports_test_template' --alias-name 'STAGING'`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template alias you are deleting.
    #
    # @option params [required, String] :template_id
    #   An ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The alias of the template. If alias-name is provided, the version that
    #   the alias-name points to is deleted. Alias names that start with `$`
    #   are reserved by QuickSight and can't be deleted.”
    #
    # @return [Types::DeleteTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTemplateAliasResponse#status #status} => Integer
    #   * {Types::DeleteTemplateAliasResponse#template_id #template_id} => String
    #   * {Types::DeleteTemplateAliasResponse#alias_name #alias_name} => String
    #   * {Types::DeleteTemplateAliasResponse#arn #arn} => String
    #   * {Types::DeleteTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.template_id #=> String
    #   resp.alias_name #=> String
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateAlias AWS API Documentation
    #
    # @overload delete_template_alias(params = {})
    # @param [Hash] params ({})
    def delete_template_alias(params = {}, options = {})
      req = build_request(:delete_template_alias, params)
      req.send_request(options)
    end

    # Deletes the Amazon QuickSight user that is associated with the
    # identity of the AWS Identity and Access Management (IAM) user or role
    # that's making the call. The IAM user isn't deleted as a result of
    # this call.
    #
    # **CLI Sample:**
    #
    # `aws quicksight delete-user --aws-account-id=111122223333
    # --namespace=default --user-name=Pat `
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserResponse#request_id #request_id} => String
    #   * {Types::DeleteUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes a user identified by its principal ID.
    #
    # **CLI Sample:**
    #
    # `aws quicksight delete-user-by-principal-id
    # --aws-account-id=111122223333 --namespace=default
    # --principal-id=ABCDEFJA26JLI7EUUOEHS `
    #
    # @option params [required, String] :principal_id
    #   The principal ID of the user.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserByPrincipalIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserByPrincipalIdResponse#request_id #request_id} => String
    #   * {Types::DeleteUserByPrincipalIdResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_by_principal_id({
    #     principal_id: "String", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalId AWS API Documentation
    #
    # @overload delete_user_by_principal_id(params = {})
    # @param [Hash] params ({})
    def delete_user_by_principal_id(params = {}, options = {})
      req = build_request(:delete_user_by_principal_id, params)
      req.send_request(options)
    end

    # Provides a summary for a dashboard.
    #
    # CLI syntax:
    #
    # * `aws quicksight describe-dashboard --aws-account-id 111122223333
    #   —dashboard-id reports_test_report -version-number 2`
    #
    # * ` aws quicksight describe-dashboard --aws-account-id 111122223333
    #   —dashboard-id reports_test_report -alias-name ‘$PUBLISHED’ `
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are describing.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Integer] :version_number
    #   The version number for the dashboard. If version number isn’t passed
    #   the latest published dashboard version is described.
    #
    # @option params [String] :alias_name
    #   The alias name.
    #
    # @return [Types::DescribeDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardResponse#dashboard #dashboard} => Types::Dashboard
    #   * {Types::DescribeDashboardResponse#status #status} => Integer
    #   * {Types::DescribeDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard.dashboard_id #=> String
    #   resp.dashboard.arn #=> String
    #   resp.dashboard.name #=> String
    #   resp.dashboard.version.created_time #=> Time
    #   resp.dashboard.version.errors #=> Array
    #   resp.dashboard.version.errors[0].type #=> String, one of "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"
    #   resp.dashboard.version.errors[0].message #=> String
    #   resp.dashboard.version.version_number #=> Integer
    #   resp.dashboard.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.dashboard.version.arn #=> String
    #   resp.dashboard.version.source_entity_arn #=> String
    #   resp.dashboard.version.description #=> String
    #   resp.dashboard.created_time #=> Time
    #   resp.dashboard.last_published_time #=> Time
    #   resp.dashboard.last_updated_time #=> Time
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboard AWS API Documentation
    #
    # @overload describe_dashboard(params = {})
    # @param [Hash] params ({})
    def describe_dashboard(params = {}, options = {})
      req = build_request(:describe_dashboard, params)
      req.send_request(options)
    end

    # Describes read and write permissions on a dashboard.
    #
    # CLI syntax:
    #
    # `aws quicksight describe-dashboard-permissions --aws-account-id
    # 735340738645 —dashboard-id reports_test_bob_report`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are describing
    #   permissions of.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to IAM policy.
    #
    # @return [Types::DescribeDashboardPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardPermissionsResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardPermissionsResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::DescribeDashboardPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDashboardPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeDashboardPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissions AWS API Documentation
    #
    # @overload describe_dashboard_permissions(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_permissions(params = {}, options = {})
      req = build_request(:describe_dashboard_permissions, params)
      req.send_request(options)
    end

    # Describes a dataset.
    #
    # CLI syntax:
    #
    # `aws quicksight describe-data-set `
    #
    # `--aws-account-id=111111111111 `
    #
    # `--data-set-id=unique-data-set-id`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset you want to create. This is unique per region
    #   per AWS account.
    #
    # @return [Types::DescribeDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetResponse#data_set #data_set} => Types::DataSet
    #   * {Types::DescribeDataSetResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set.arn #=> String
    #   resp.data_set.data_set_id #=> String
    #   resp.data_set.name #=> String
    #   resp.data_set.created_time #=> Time
    #   resp.data_set.last_updated_time #=> Time
    #   resp.data_set.physical_table_map #=> Hash
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.schema #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.sql_query #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.format #=> String, one of "CSV", "TSV", "CLF", "ELF", "XLSX", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.start_from_row #=> Integer
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.contains_header #=> Boolean
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.text_qualifier #=> String, one of "DOUBLE_QUOTE", "SINGLE_QUOTE"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.delimiter #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.logical_table_map #=> Hash
    #   resp.data_set.logical_table_map["LogicalTableId"].alias #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].project_operation.projected_columns #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].project_operation.projected_columns[0] #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].filter_operation.condition_expression #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].column_id #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].expression #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].rename_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].rename_column_operation.new_column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.new_column_type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME"
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.format #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags[0].column_geographic_role #=> String, one of "COUNTRY", "STATE", "COUNTY", "CITY", "POSTCODE", "LONGITUDE", "LATITUDE"
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.left_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.right_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.type #=> String, one of "INNER", "OUTER", "LEFT", "RIGHT"
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.on_clause #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.physical_table_id #=> String
    #   resp.data_set.output_columns #=> Array
    #   resp.data_set.output_columns[0].name #=> String
    #   resp.data_set.output_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME"
    #   resp.data_set.import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set.consumed_spice_capacity_in_bytes #=> Integer
    #   resp.data_set.column_groups #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.name #=> String
    #   resp.data_set.column_groups[0].geo_spatial_column_group.country_code #=> String, one of "US"
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns[0] #=> String
    #   resp.data_set.row_level_permission_data_set.arn #=> String
    #   resp.data_set.row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSet AWS API Documentation
    #
    # @overload describe_data_set(params = {})
    # @param [Hash] params ({})
    def describe_data_set(params = {}, options = {})
      req = build_request(:describe_data_set, params)
      req.send_request(options)
    end

    # Describes the permissions on a dataset.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`
    #
    # CLI syntax:
    #
    # `aws quicksight describe-data-set-permissions `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-set-id=unique-data-set-id `
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset you want to create. This is unique per region
    #   per AWS account.
    #
    # @return [Types::DescribeDataSetPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetPermissionsResponse#data_set_arn #data_set_arn} => String
    #   * {Types::DescribeDataSetPermissionsResponse#data_set_id #data_set_id} => String
    #   * {Types::DescribeDataSetPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDataSetPermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_arn #=> String
    #   resp.data_set_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetPermissions AWS API Documentation
    #
    # @overload describe_data_set_permissions(params = {})
    # @param [Hash] params ({})
    def describe_data_set_permissions(params = {}, options = {})
      req = build_request(:describe_data_set_permissions, params)
      req.send_request(options)
    end

    # Describes a data source.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:datasource/data-source-id`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This is unique per AWS Region per AWS
    #   account.
    #
    # @return [Types::DescribeDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourceResponse#data_source #data_source} => Types::DataSource
    #   * {Types::DescribeDataSourceResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.arn #=> String
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER"
    #   resp.data_source.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.data_source.created_time #=> Time
    #   resp.data_source.last_updated_time #=> Time
    #   resp.data_source.data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_source.data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_source.data_source_parameters.aurora_parameters.host #=> String
    #   resp.data_source.data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.aurora_parameters.database #=> String
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_source.data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data_source.data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data_source.data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data_source.data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.presto_parameters.host #=> String
    #   resp.data_source.data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data_source.data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data_source.data_source_parameters.rds_parameters.database #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.host #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.redshift_parameters.database #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data_source.data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_source.data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data_source.data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data_source.data_source_parameters.spark_parameters.host #=> String
    #   resp.data_source.data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data_source.data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data_source.data_source_parameters.teradata_parameters.host #=> String
    #   resp.data_source.data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.teradata_parameters.database #=> String
    #   resp.data_source.data_source_parameters.twitter_parameters.query #=> String
    #   resp.data_source.data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data_source.vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.ssl_properties.disable_ssl #=> Boolean
    #   resp.data_source.error_info.type #=> String, one of "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_source.error_info.message #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSource AWS API Documentation
    #
    # @overload describe_data_source(params = {})
    # @param [Hash] params ({})
    def describe_data_source(params = {}, options = {})
      req = build_request(:describe_data_source, params)
      req.send_request(options)
    end

    # Describes the resource permissions for a data source.
    #
    # The permissions resource is
    # `aws:quicksight:region:aws-account-id:datasource/data-source-id`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This is unique per AWS Region per AWS
    #   account.
    #
    # @return [Types::DescribeDataSourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourcePermissionsResponse#data_source_arn #data_source_arn} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#data_source_id #data_source_id} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDataSourcePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #   resp.data_source_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourcePermissions AWS API Documentation
    #
    # @overload describe_data_source_permissions(params = {})
    # @param [Hash] params ({})
    def describe_data_source_permissions(params = {}, options = {})
      req = build_request(:describe_data_source_permissions, params)
      req.send_request(options)
    end

    # Returns an Amazon QuickSight group's description and Amazon Resource
    # Name (ARN).
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<relevant-aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is the group object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight describe-group -\-aws-account-id=11112222333
    # -\-namespace=default -\-group-name=Sales `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DescribeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResponse#group #group} => Types::Group
    #   * {Types::DescribeGroupResponse#request_id #request_id} => String
    #   * {Types::DescribeGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Describes an existing IAMPolicy Assignment by specified assignment
    # name.
    #
    # CLI syntax:
    #
    # `aws quicksight describe-iam-policy-assignment
    # --aws-account-id=111122223333 --assignment-name=testtest
    # --namespace=default --region=us-east-1 `
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID that contains the assignment you want to describe.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::DescribeIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIAMPolicyAssignmentResponse#iam_policy_assignment #iam_policy_assignment} => Types::IAMPolicyAssignment
    #   * {Types::DescribeIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::DescribeIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_policy_assignment.aws_account_id #=> String
    #   resp.iam_policy_assignment.assignment_id #=> String
    #   resp.iam_policy_assignment.assignment_name #=> String
    #   resp.iam_policy_assignment.policy_arn #=> String
    #   resp.iam_policy_assignment.identities #=> Hash
    #   resp.iam_policy_assignment.identities["String"] #=> Array
    #   resp.iam_policy_assignment.identities["String"][0] #=> String
    #   resp.iam_policy_assignment.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIAMPolicyAssignment AWS API Documentation
    #
    # @overload describe_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def describe_iam_policy_assignment(params = {}, options = {})
      req = build_request(:describe_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Describes a SPICE ingestion.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @return [Types::DescribeIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIngestionResponse#ingestion #ingestion} => Types::Ingestion
    #   * {Types::DescribeIngestionResponse#request_id #request_id} => String
    #   * {Types::DescribeIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ingestion({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "string", # required
    #     ingestion_id: "IngestionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion.arn #=> String
    #   resp.ingestion.ingestion_id #=> String
    #   resp.ingestion.ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.ingestion.error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR"
    #   resp.ingestion.error_info.message #=> String
    #   resp.ingestion.row_info.rows_ingested #=> Integer
    #   resp.ingestion.row_info.rows_dropped #=> Integer
    #   resp.ingestion.queue_info.waiting_on_ingestion #=> String
    #   resp.ingestion.queue_info.queued_ingestion #=> String
    #   resp.ingestion.created_time #=> Time
    #   resp.ingestion.ingestion_time_in_seconds #=> Integer
    #   resp.ingestion.ingestion_size_in_bytes #=> Integer
    #   resp.ingestion.request_source #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.ingestion.request_type #=> String, one of "INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIngestion AWS API Documentation
    #
    # @overload describe_ingestion(params = {})
    # @param [Hash] params ({})
    def describe_ingestion(params = {}, options = {})
      req = build_request(:describe_ingestion, params)
      req.send_request(options)
    end

    # Describes a template's metadata.
    #
    # CLI syntax:
    #
    # `aws quicksight describe-template --aws-account-id 111122223333
    # --template-id reports_test_template `
    #
    # `aws quicksight describe-template --aws-account-id 111122223333
    # --template-id reports_test_template --version-number-2`
    #
    # `aws quicksight describe-template --aws-account-id 111122223333
    # --template-id reports_test_template --alias-name '\$LATEST' `
    #
    # Users can explicitly describe the latest version of the dashboard by
    # passing `$LATEST` to the `alias-name` parameter. `$LATEST` is an
    # internally supported alias, which points to the latest version of the
    # dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template you are describing.
    #
    # @option params [required, String] :template_id
    #   An ID for the template.
    #
    # @option params [Integer] :version_number
    #   This is an optional field, when a version number is provided the
    #   corresponding version is describe, if it's not provided the latest
    #   version of the template is described.
    #
    # @option params [String] :alias_name
    #   This is an optional field, when an alias name is provided, the version
    #   referenced by the alias is described. Refer to `CreateTemplateAlias`
    #   to create a template alias. `$PUBLISHED` is not supported for
    #   template.
    #
    # @return [Types::DescribeTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateResponse#template #template} => Types::Template
    #   * {Types::DescribeTemplateResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.template.arn #=> String
    #   resp.template.name #=> String
    #   resp.template.version.created_time #=> Time
    #   resp.template.version.errors #=> Array
    #   resp.template.version.errors[0].type #=> String, one of "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE"
    #   resp.template.version.errors[0].message #=> String
    #   resp.template.version.version_number #=> Integer
    #   resp.template.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.template.version.data_set_configurations #=> Array
    #   resp.template.version.data_set_configurations[0].placeholder #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].name #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].data_type #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].geographic_role #=> String
    #   resp.template.version.data_set_configurations[0].column_group_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].name #=> String
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list[0].name #=> String
    #   resp.template.version.description #=> String
    #   resp.template.version.source_entity_arn #=> String
    #   resp.template.template_id #=> String
    #   resp.template.last_updated_time #=> Time
    #   resp.template.created_time #=> Time
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplate AWS API Documentation
    #
    # @overload describe_template(params = {})
    # @param [Hash] params ({})
    def describe_template(params = {}, options = {})
      req = build_request(:describe_template, params)
      req.send_request(options)
    end

    # Describes the template aliases of a template.
    #
    # CLI syntax:
    #
    # `aws quicksight describe-template-alias --aws-account-id 111122223333
    # --template-id 'reports_test_template' --alias-name 'STAGING'`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template alias you are describing.
    #
    # @option params [required, String] :template_id
    #   An ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The alias name. `$PUBLISHED` is not supported for template.
    #
    # @return [Types::DescribeTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::DescribeTemplateAliasResponse#status #status} => Integer
    #   * {Types::DescribeTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateAlias AWS API Documentation
    #
    # @overload describe_template_alias(params = {})
    # @param [Hash] params ({})
    def describe_template_alias(params = {}, options = {})
      req = build_request(:describe_template_alias, params)
      req.send_request(options)
    end

    # Describes read and write permissions on a template.
    #
    # CLI syntax:
    #
    # `aws quicksight describe-template-permissions —aws-account-id
    # 735340738645 —template-id reports_test_template`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template you are describing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @return [Types::DescribeTemplatePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplatePermissionsResponse#template_id #template_id} => String
    #   * {Types::DescribeTemplatePermissionsResponse#template_arn #template_arn} => String
    #   * {Types::DescribeTemplatePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeTemplatePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeTemplatePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplatePermissions AWS API Documentation
    #
    # @overload describe_template_permissions(params = {})
    # @param [Hash] params ({})
    def describe_template_permissions(params = {}, options = {})
      req = build_request(:describe_template_permissions, params)
      req.send_request(options)
    end

    # Returns information about a user, given the user name.
    #
    # The response is a user object that contains the user's Amazon
    # Resource Name (ARN), AWS Identity and Access Management (IAM) role,
    # and email address.
    #
    # **CLI Sample:**
    #
    # `aws quicksight describe-user --aws-account-id=111122223333
    # --namespace=default --user-name=Pat `
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #   * {Types::DescribeUserResponse#request_id #request_id} => String
    #   * {Types::DescribeUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Generates a server-side embeddable URL and authorization code. Before
    # this can work properly, first you need to configure the dashboards and
    # user permissions. For more information, see [ Embedding Amazon
    # QuickSight Dashboards][1].
    #
    # Currently, you can use `GetDashboardEmbedURL` only from the server,
    # not from the user’s browser.
    #
    # **CLI Sample:**
    #
    # Assume the role with permissions enabled for actions:
    # `quickSight:RegisterUser` and `quicksight:GetDashboardEmbedURL`. You
    # can use assume-role, assume-role-with-web-identity, or
    # assume-role-with-saml.
    #
    # `aws sts assume-role --role-arn
    # "arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role"
    # --role-session-name embeddingsession`
    #
    # If the user does not exist in QuickSight, register the user:
    #
    # `aws quicksight register-user --aws-account-id 111122223333
    # --namespace default --identity-type IAM --iam-arn
    # "arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role"
    # --user-role READER --session-name "embeddingsession" --email
    # user123@example.com --region us-east-1`
    #
    # Get the URL for the embedded dashboard (`IAM` identity
    # authentication):
    #
    # `aws quicksight get-dashboard-embed-url --aws-account-id 111122223333
    # --dashboard-id 1a1ac2b2-3fc3-4b44-5e5d-c6db6778df89 --identity-type
    # IAM`
    #
    # Get the URL for the embedded dashboard (`QUICKSIGHT` identity
    # authentication):
    #
    # `aws quicksight get-dashboard-embed-url --aws-account-id 111122223333
    # --dashboard-id 1a1ac2b2-3fc3-4b44-5e5d-c6db6778df89 --identity-type
    # QUICKSIGHT --user-arn
    # arn:aws:quicksight:us-east-1:111122223333:user/default/embedding_quicksight_dashboard_role/embeddingsession`
    #
    #
    #
    # [1]: https://docs.aws.example.com/en_us/quicksight/latest/user/embedding.html
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are embedding.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to IAM policy
    #
    # @option params [required, String] :identity_type
    #   The authentication method the user uses to sign in (IAM only).
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   between 15 and 600 minutes.
    #
    # @option params [Boolean] :undo_redo_disabled
    #   Remove the undo/redo button on embedded dashboard. The default is
    #   FALSE, which enables the undo/redo button.
    #
    # @option params [Boolean] :reset_disabled
    #   Remove the reset button on embedded dashboard. The default is FALSE,
    #   which allows the reset button.
    #
    # @option params [String] :user_arn
    #   The Amazon QuickSight user's ARN, for use with `QUICKSIGHT` identity
    #   type. You can use this for any Amazon QuickSight users in your account
    #   (readers, authors, or admins) authenticated as one of the following:
    #
    #   * Active Directory (AD) users or group members
    #
    #   * Invited non-federated users
    #
    #   * IAM users and IAM role-based sessions authenticated through
    #     Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #     Federation
    #
    # @return [Types::GetDashboardEmbedUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDashboardEmbedUrlResponse#embed_url #embed_url} => String
    #   * {Types::GetDashboardEmbedUrlResponse#status #status} => Integer
    #   * {Types::GetDashboardEmbedUrlResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard_embed_url({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #     session_lifetime_in_minutes: 1,
    #     undo_redo_disabled: false,
    #     reset_disabled: false,
    #     user_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrl AWS API Documentation
    #
    # @overload get_dashboard_embed_url(params = {})
    # @param [Hash] params ({})
    def get_dashboard_embed_url(params = {}, options = {})
      req = build_request(:get_dashboard_embed_url, params)
      req.send_request(options)
    end

    # Lists all the versions of the dashboards in the Quicksight
    # subscription.
    #
    # CLI syntax:
    #
    # aws quicksight list-template-versions —aws-account-id 111122223333
    # —template-id reports-test-template
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are listing.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDashboardVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardVersionsResponse#dashboard_version_summary_list #dashboard_version_summary_list} => Array&lt;Types::DashboardVersionSummary&gt;
    #   * {Types::ListDashboardVersionsResponse#next_token #next_token} => String
    #   * {Types::ListDashboardVersionsResponse#status #status} => Integer
    #   * {Types::ListDashboardVersionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboard_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_version_summary_list #=> Array
    #   resp.dashboard_version_summary_list[0].arn #=> String
    #   resp.dashboard_version_summary_list[0].created_time #=> Time
    #   resp.dashboard_version_summary_list[0].version_number #=> Integer
    #   resp.dashboard_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.dashboard_version_summary_list[0].source_entity_arn #=> String
    #   resp.dashboard_version_summary_list[0].description #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardVersions AWS API Documentation
    #
    # @overload list_dashboard_versions(params = {})
    # @param [Hash] params ({})
    def list_dashboard_versions(params = {}, options = {})
      req = build_request(:list_dashboard_versions, params)
      req.send_request(options)
    end

    # Lists dashboards in the AWS account.
    #
    # CLI syntax:
    #
    # `aws quicksight list-dashboards --aws-account-id 111122223333
    # --max-results 5 —next-token 'next-10'`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboards you are listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardsResponse#dashboard_summary_list #dashboard_summary_list} => Array&lt;Types::DashboardSummary&gt;
    #   * {Types::ListDashboardsResponse#next_token #next_token} => String
    #   * {Types::ListDashboardsResponse#status #status} => Integer
    #   * {Types::ListDashboardsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_summary_list #=> Array
    #   resp.dashboard_summary_list[0].arn #=> String
    #   resp.dashboard_summary_list[0].dashboard_id #=> String
    #   resp.dashboard_summary_list[0].name #=> String
    #   resp.dashboard_summary_list[0].created_time #=> Time
    #   resp.dashboard_summary_list[0].last_updated_time #=> Time
    #   resp.dashboard_summary_list[0].published_version_number #=> Integer
    #   resp.dashboard_summary_list[0].last_published_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboards AWS API Documentation
    #
    # @overload list_dashboards(params = {})
    # @param [Hash] params ({})
    def list_dashboards(params = {}, options = {})
      req = build_request(:list_dashboards, params)
      req.send_request(options)
    end

    # Lists all of the datasets belonging to this account in an AWS region.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/*`
    #
    # CLI syntax: `aws quicksight list-data-sets
    # --aws-account-id=111111111111`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSetsResponse#data_set_summaries #data_set_summaries} => Array&lt;Types::DataSetSummary&gt;
    #   * {Types::ListDataSetsResponse#next_token #next_token} => String
    #   * {Types::ListDataSetsResponse#request_id #request_id} => String
    #   * {Types::ListDataSetsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_summaries #=> Array
    #   resp.data_set_summaries[0].arn #=> String
    #   resp.data_set_summaries[0].data_set_id #=> String
    #   resp.data_set_summaries[0].name #=> String
    #   resp.data_set_summaries[0].created_time #=> Time
    #   resp.data_set_summaries[0].last_updated_time #=> Time
    #   resp.data_set_summaries[0].import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set_summaries[0].row_level_permission_data_set.arn #=> String
    #   resp.data_set_summaries[0].row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSets AWS API Documentation
    #
    # @overload list_data_sets(params = {})
    # @param [Hash] params ({})
    def list_data_sets(params = {}, options = {})
      req = build_request(:list_data_sets, params)
      req.send_request(options)
    end

    # Lists data sources in current AWS region that belong to this AWS
    # account.
    #
    # The permissions resource is:
    # `arn:aws:quicksight:region:aws-account-id:datasource/*`
    #
    # CLI syntax: `aws quicksight list-data-sources
    # --aws-account-id=111122223333`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #   * {Types::ListDataSourcesResponse#request_id #request_id} => String
    #   * {Types::ListDataSourcesResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].arn #=> String
    #   resp.data_sources[0].data_source_id #=> String
    #   resp.data_sources[0].name #=> String
    #   resp.data_sources[0].type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER"
    #   resp.data_sources[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.data_sources[0].created_time #=> Time
    #   resp.data_sources[0].last_updated_time #=> Time
    #   resp.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_sources[0].data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_sources[0].data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.presto_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data_sources[0].data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data_sources[0].data_source_parameters.rds_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data_sources[0].data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data_sources[0].data_source_parameters.spark_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.twitter_parameters.query #=> String
    #   resp.data_sources[0].data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data_sources[0].vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].ssl_properties.disable_ssl #=> Boolean
    #   resp.data_sources[0].error_info.type #=> String, one of "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_sources[0].error_info.message #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists member users in a group.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a list of group member objects.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-group-memberships -\-aws-account-id=111122223333
    # -\-namespace=default `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to see a membership list of.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListGroupMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembershipsResponse#group_member_list #group_member_list} => Array&lt;Types::GroupMember&gt;
    #   * {Types::ListGroupMembershipsResponse#next_token #next_token} => String
    #   * {Types::ListGroupMembershipsResponse#request_id #request_id} => String
    #   * {Types::ListGroupMembershipsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_memberships({
    #     group_name: "GroupName", # required
    #     next_token: "String",
    #     max_results: 1,
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member_list #=> Array
    #   resp.group_member_list[0].arn #=> String
    #   resp.group_member_list[0].member_name #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMemberships AWS API Documentation
    #
    # @overload list_group_memberships(params = {})
    # @param [Hash] params ({})
    def list_group_memberships(params = {}, options = {})
      req = build_request(:list_group_memberships, params)
      req.send_request(options)
    end

    # Lists all user groups in Amazon QuickSight.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/*`.
    #
    # The response is a list of group objects.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-groups -\-aws-account-id=111122223333
    # -\-namespace=default `
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #   * {Types::ListGroupsResponse#request_id #request_id} => String
    #   * {Types::ListGroupsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists assignments in current QuickSight account.
    #
    # CLI syntax:
    #
    # `aws quicksight list-iam-policy-assignments
    # --aws-account-id=111122223333 --max-result=5
    # --assignment-status=ENABLED --namespace=default --region=us-east-1
    # --next-token=3 `
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID that contains this IAM policy assignment.
    #
    # @option params [String] :assignment_status
    #   The status of the assignment.
    #
    # @option params [required, String] :namespace
    #   The namespace for this assignment.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListIAMPolicyAssignmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIAMPolicyAssignmentsResponse#iam_policy_assignments #iam_policy_assignments} => Array&lt;Types::IAMPolicyAssignmentSummary&gt;
    #   * {Types::ListIAMPolicyAssignmentsResponse#next_token #next_token} => String
    #   * {Types::ListIAMPolicyAssignmentsResponse#request_id #request_id} => String
    #   * {Types::ListIAMPolicyAssignmentsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #     namespace: "Namespace", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_policy_assignments #=> Array
    #   resp.iam_policy_assignments[0].assignment_name #=> String
    #   resp.iam_policy_assignments[0].assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignments AWS API Documentation
    #
    # @overload list_iam_policy_assignments(params = {})
    # @param [Hash] params ({})
    def list_iam_policy_assignments(params = {}, options = {})
      req = build_request(:list_iam_policy_assignments, params)
      req.send_request(options)
    end

    # Lists all the assignments and the ARNs for the associated IAM policies
    # assigned to the specified user and the group or groups that the user
    # belongs to.
    #
    # CLI syntax:
    #
    # `aws quicksight list-iam-policy-assignments-for-user
    # --aws-account-id=111122223333 --user-name=user5 --namespace=default
    # --max-result=6 --region=us-east-1 `
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID that contains the assignment.
    #
    # @option params [required, String] :user_name
    #   The name of the user.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [required, String] :namespace
    #   The namespace of the assignment.
    #
    # @return [Types::ListIAMPolicyAssignmentsForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#active_assignments #active_assignments} => Array&lt;Types::ActiveIAMPolicyAssignment&gt;
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#request_id #request_id} => String
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#next_token #next_token} => String
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments_for_user({
    #     aws_account_id: "AwsAccountId", # required
    #     user_name: "UserName", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.active_assignments #=> Array
    #   resp.active_assignments[0].assignment_name #=> String
    #   resp.active_assignments[0].policy_arn #=> String
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsForUser AWS API Documentation
    #
    # @overload list_iam_policy_assignments_for_user(params = {})
    # @param [Hash] params ({})
    def list_iam_policy_assignments_for_user(params = {}, options = {})
      req = build_request(:list_iam_policy_assignments_for_user, params)
      req.send_request(options)
    end

    # Lists the history of SPICE ingestions for a dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListIngestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestionsResponse#ingestions #ingestions} => Array&lt;Types::Ingestion&gt;
    #   * {Types::ListIngestionsResponse#next_token #next_token} => String
    #   * {Types::ListIngestionsResponse#request_id #request_id} => String
    #   * {Types::ListIngestionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestions({
    #     data_set_id: "string", # required
    #     next_token: "string",
    #     aws_account_id: "AwsAccountId", # required
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestions #=> Array
    #   resp.ingestions[0].arn #=> String
    #   resp.ingestions[0].ingestion_id #=> String
    #   resp.ingestions[0].ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.ingestions[0].error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR"
    #   resp.ingestions[0].error_info.message #=> String
    #   resp.ingestions[0].row_info.rows_ingested #=> Integer
    #   resp.ingestions[0].row_info.rows_dropped #=> Integer
    #   resp.ingestions[0].queue_info.waiting_on_ingestion #=> String
    #   resp.ingestions[0].queue_info.queued_ingestion #=> String
    #   resp.ingestions[0].created_time #=> Time
    #   resp.ingestions[0].ingestion_time_in_seconds #=> Integer
    #   resp.ingestions[0].ingestion_size_in_bytes #=> Integer
    #   resp.ingestions[0].request_source #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.ingestions[0].request_type #=> String, one of "INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIngestions AWS API Documentation
    #
    # @overload list_ingestions(params = {})
    # @param [Hash] params ({})
    def list_ingestions(params = {}, options = {})
      req = build_request(:list_ingestions, params)
      req.send_request(options)
    end

    # Lists the tags assigned to a resource.
    #
    # CLI syntax:
    #
    # * `aws quicksight list-tags-for-resource --resource-arn
    #   arn:aws:quicksight:us-east-1:111111111111:dataset/dataset1 --region
    #   us-east-1`
    #
    # ^
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource you want a list of tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#request_id #request_id} => String
    #   * {Types::ListTagsForResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all the aliases of a template.
    #
    # CLI syntax:
    #
    # `aws quicksight list-template-aliases --aws-account-id 111122223333
    # —template-id 'reports_test_template'`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template aliases you are listing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplateAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateAliasesResponse#template_alias_list #template_alias_list} => Array&lt;Types::TemplateAlias&gt;
    #   * {Types::ListTemplateAliasesResponse#status #status} => Integer
    #   * {Types::ListTemplateAliasesResponse#request_id #request_id} => String
    #   * {Types::ListTemplateAliasesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_aliases({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias_list #=> Array
    #   resp.template_alias_list[0].alias_name #=> String
    #   resp.template_alias_list[0].arn #=> String
    #   resp.template_alias_list[0].template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateAliases AWS API Documentation
    #
    # @overload list_template_aliases(params = {})
    # @param [Hash] params ({})
    def list_template_aliases(params = {}, options = {})
      req = build_request(:list_template_aliases, params)
      req.send_request(options)
    end

    # Lists all the versions of the templates in the Quicksight account.
    #
    # CLI syntax:
    #
    # aws quicksight list-template-versions --aws-account-id 111122223333
    # --aws-account-id 196359894473 --template-id reports-test-template
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the templates you are listing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplateVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateVersionsResponse#template_version_summary_list #template_version_summary_list} => Array&lt;Types::TemplateVersionSummary&gt;
    #   * {Types::ListTemplateVersionsResponse#next_token #next_token} => String
    #   * {Types::ListTemplateVersionsResponse#status #status} => Integer
    #   * {Types::ListTemplateVersionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_version_summary_list #=> Array
    #   resp.template_version_summary_list[0].arn #=> String
    #   resp.template_version_summary_list[0].version_number #=> Integer
    #   resp.template_version_summary_list[0].created_time #=> Time
    #   resp.template_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.template_version_summary_list[0].description #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateVersions AWS API Documentation
    #
    # @overload list_template_versions(params = {})
    # @param [Hash] params ({})
    def list_template_versions(params = {}, options = {})
      req = build_request(:list_template_versions, params)
      req.send_request(options)
    end

    # Lists all the templates in the QuickSight account.
    #
    # CLI syntax:
    #
    # `aws quicksight list-templates --aws-account-id 111122223333
    # --max-results 1 —next-token AYADeJuxwOypAndSoOn`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the templates you are listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#template_summary_list #template_summary_list} => Array&lt;Types::TemplateSummary&gt;
    #   * {Types::ListTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListTemplatesResponse#status #status} => Integer
    #   * {Types::ListTemplatesResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_summary_list #=> Array
    #   resp.template_summary_list[0].arn #=> String
    #   resp.template_summary_list[0].template_id #=> String
    #   resp.template_summary_list[0].name #=> String
    #   resp.template_summary_list[0].latest_version_number #=> Integer
    #   resp.template_summary_list[0].created_time #=> Time
    #   resp.template_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
    # member of.
    #
    # The response is a one or more group objects.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-user-groups -\-user-name=Pat
    # -\-aws-account-id=111122223333 -\-namespace=default
    # -\-region=us-east-1 `
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to list group
    #   memberships for.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID that the user is in. Currently, you use the ID for
    #   the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @return [Types::ListUserGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListUserGroupsResponse#next_token #next_token} => String
    #   * {Types::ListUserGroupsResponse#request_id #request_id} => String
    #   * {Types::ListUserGroupsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_groups({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroups AWS API Documentation
    #
    # @overload list_user_groups(params = {})
    # @param [Hash] params ({})
    def list_user_groups(params = {}, options = {})
      req = build_request(:list_user_groups, params)
      req.send_request(options)
    end

    # Returns a list of all of the Amazon QuickSight users belonging to this
    # account.
    #
    # The response is a list of user objects, containing each user's Amazon
    # Resource Name (ARN), AWS Identity and Access Management (IAM) role,
    # and email address.
    #
    # **CLI Sample:**
    #
    # `aws quicksight list-users --aws-account-id=111122223333
    # --namespace=default `
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_list #user_list} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#request_id #request_id} => String
    #   * {Types::ListUsersResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_list #=> Array
    #   resp.user_list[0].arn #=> String
    #   resp.user_list[0].user_name #=> String
    #   resp.user_list[0].email #=> String
    #   resp.user_list[0].role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user_list[0].identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user_list[0].active #=> Boolean
    #   resp.user_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Creates an Amazon QuickSight user, whose identity is associated with
    # the AWS Identity and Access Management (IAM) identity or role
    # specified in the request.
    #
    # **CLI Sample:**
    #
    # `aws quicksight register-user -\-aws-account-id=111122223333
    # -\-namespace=default -\-email=pat@example.com -\-identity-type=IAM
    # -\-user-role=AUTHOR -\-iam-arn=arn:aws:iam::111122223333:user/Pat `
    #
    # @option params [required, String] :identity_type
    #   Amazon QuickSight supports several ways of managing the identity of
    #   users. This parameter accepts two values:
    #
    #   * `IAM`\: A user whose identity maps to an existing IAM user or role.
    #
    #   * `QUICKSIGHT`\: A user whose identity is owned and managed internally
    #     by Amazon QuickSight.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to register.
    #
    # @option params [required, String] :user_role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `RESTRICTED_READER`\: This role isn't currently available for use.
    #
    #   * `RESTRICTED_AUTHOR`\: This role isn't currently available for use.
    #
    # @option params [String] :iam_arn
    #   The ARN of the IAM user or role that you are registering with Amazon
    #   QuickSight.
    #
    # @option params [String] :session_name
    #   You need to use this parameter only when you register one or more
    #   users using an assumed IAM role. You don't need to provide the
    #   session name for other scenarios, for example when you are registering
    #   an IAM user or an Amazon QuickSight user. You can register multiple
    #   users using the same IAM role if each user has a different session
    #   name. For more information on assuming IAM roles, see [ `assume-role`
    #   ][1] in the *AWS CLI Reference.*
    #
    #
    #
    #   [1]: https://docs.aws.example.com/cli/latest/reference/sts/assume-role.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :user_name
    #   The Amazon QuickSight user name that you want to create for the user
    #   you are registering.
    #
    # @return [Types::RegisterUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterUserResponse#user #user} => Types::User
    #   * {Types::RegisterUserResponse#user_invitation_url #user_invitation_url} => String
    #   * {Types::RegisterUserResponse#request_id #request_id} => String
    #   * {Types::RegisterUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_user({
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #     email: "String", # required
    #     user_role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #     iam_arn: "String",
    #     session_name: "RoleSessionName",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     user_name: "UserName",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user_invitation_url #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUser AWS API Documentation
    #
    # @overload register_user(params = {})
    # @param [Hash] params ({})
    def register_user(params = {}, options = {})
      req = build_request(:register_user, params)
      req.send_request(options)
    end

    # Assigns a tag or tags to a resource.
    #
    # Assigns one or more tags (key-value pairs) to the specified QuickSight
    # resource. Tags can help you organize and categorize your resources.
    # You can also use them to scope user permissions, by granting a user
    # permission to access or change only resources with certain tag values.
    # You can use the TagResource action with a resource that already has
    # tags. If you specify a new tag key for the resource, this tag is
    # appended to the list of tags associated with the resource. If you
    # specify a tag key that is already associated with the resource, the
    # new tag value that you specify replaces the previous value for that
    # tag.
    #
    # You can associate as many as 50 tags with a resource. QuickSight
    # supports tagging on data-set, data-source, dashboard, template.
    #
    # Tagging for QuickSight works in a similar was to tagging for other AWS
    # services, except for the following:
    #
    # * You can't use tags to track AWS costs for QuickSight, because
    #   QuickSight costs are based on users and SPICE capacity, which
    #   aren't taggable resources.
    #
    # * QuickSight doesn't currently support the Tag Editor for AWS
    #   Resource Groups.
    #
    # CLI syntax to tag a resource:
    #
    # * `aws quicksight tag-resource --resource-arn
    #   arn:aws:quicksight:us-east-1:111111111111:dataset/dataset1 --tags
    #   Key=K1,Value=V1 Key=K2,Value=V2 --region us-east-1`
    #
    # ^
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @return [Types::TagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceResponse#request_id #request_id} => String
    #   * {Types::TagResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or tags from a resource.
    #
    # CLI syntax:
    #
    # * `aws quicksight untag-resource --resource-arn
    #   arn:aws:quicksight:us-east-1:111111111111:dataset/dataset1
    #   --tag-keys K1 K2 --region us-east-1`
    #
    # ^
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource you to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value pairs for the resource tag or tags assigned
    #   to the resource.
    #
    # @return [Types::UntagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceResponse#request_id #request_id} => String
    #   * {Types::UntagResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a dashboard in the AWS account.
    #
    # CLI syntax:
    #
    # `aws quicksight update-dashboard --aws-account-id 111122223333
    # --dashboard-id 123123123 --dashboard-name "test-update102"
    # --source-entity
    # SourceTemplate=\{Arn=arn:aws:quicksight:us-west-2:111122223333:template/sales-report-template2\}
    # --data-set-references
    # DataSetPlaceholder=SalesDataSet,DataSetArn=arn:aws:quicksight:us-west-2:111122223333:dataset/0e251aef-9ebf-46e1-b852-eb4fa33c1d3a`
    #
    # `aws quicksight update-dashboard --cli-input-json
    # file://update-dashboard.json `
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, String] :name
    #   The display name of the dashboard.
    #
    # @option params [required, Types::DashboardSourceEntity] :source_entity
    #   The template or analysis from which the dashboard is created. The
    #   SouceTemplate entity accepts the Arn of the template and also
    #   references to replacement datasets for the placeholders set when
    #   creating the template. The replacement datasets need to follow the
    #   same schema as the datasets for which placeholders were created when
    #   creating the template.
    #
    # @option params [Types::Parameters] :parameters
    #   A structure that contains the parameters of the dashboard.
    #
    # @option params [String] :version_description
    #   A description for the first version of the dashboard being created.
    #
    # @option params [Types::DashboardPublishOptions] :dashboard_publish_options
    #   Publishing options when creating a dashboard.
    #
    #   * AvailabilityStatus for AdHocFilteringOption - This can be either
    #     `ENABLED` or `DISABLED`. When This is set to set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published dashboard,
    #     which can be used for AdHoc filtering. Enabled by default.
    #
    #   * AvailabilityStatus for ExportToCSVOption - This can be either
    #     `ENABLED` or `DISABLED`. The visual option to export data to CSV is
    #     disabled when this is set to `DISABLED`. Enabled by default.
    #
    #   * VisibilityState for SheetControlsOption - This can be either
    #     `COLLAPSED` or `EXPANDED`. The sheet controls pane is collapsed by
    #     default when set to true. Collapsed by default.
    #
    # @return [Types::UpdateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardResponse#arn #arn} => String
    #   * {Types::UpdateDashboardResponse#version_arn #version_arn} => String
    #   * {Types::UpdateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardResponse#creation_status #creation_status} => String
    #   * {Types::UpdateDashboardResponse#status #status} => Integer
    #   * {Types::UpdateDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     name: "DashboardName", # required
    #     source_entity: { # required
    #       source_template: {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       },
    #     },
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: ["String"], # required
    #         },
    #       ],
    #       integer_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1], # required
    #         },
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [1.0], # required
    #         },
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: "NonEmptyString", # required
    #           values: [Time.now], # required
    #         },
    #       ],
    #     },
    #     version_description: "VersionDescription",
    #     dashboard_publish_options: {
    #       ad_hoc_filtering_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       export_to_csv_option: {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       sheet_controls_option: {
    #         visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboard AWS API Documentation
    #
    # @overload update_dashboard(params = {})
    # @param [Hash] params ({})
    def update_dashboard(params = {}, options = {})
      req = build_request(:update_dashboard, params)
      req.send_request(options)
    end

    # Updates read and write permissions on a dashboard.
    #
    # CLI syntax:
    #
    # `aws quicksight update-dashboard-permissions —cli-input-json
    # file://update-permission.json`
    #
    # A sample update-permissions.json for granting read only permissions:
    #
    # `\{ "AwsAccountId": "111122223333", "DashboardId":
    # "reports_test_report", "GrantPermissions": [ \{ "Principal":
    # "arn:aws:quicksight:us-east-1:111122223333:user/default/user2",
    # "Actions": [ "quicksight:DescribeDashboard",
    # "quicksight:ListDashboardVersions",
    # "quicksight:DescribeDashboardVersion", "quicksight:QueryDashboard" ]
    # \} ] \}`
    #
    # A sample update-permissions.json for granting read and write
    # permissions:
    #
    # `\{ "AwsAccountId": "111122223333", "DashboardId":
    # "reports_test_report", "GrantPermissions": [ \{ "Principal":
    # "arn:aws:quicksight:us-east-1:111122223333:user/default/user2",
    # "Actions": [ "quicksight:DescribeDashboard",
    # "quicksight:ListDashboardVersions",
    # "quicksight:DescribeDashboardVersion", "quicksight:QueryDashboard",
    # "quicksight:DescribeDashboardPermissions",
    # "quicksight:UpdateDashboardPermissions",
    # "quicksight:DeleteDashboardVersion", "quicksight:DeleteDashboard",
    # "quicksight:UpdateDashboard",
    # "quicksight:UpdateDashboardPublishedVersion", ] \} ] \}`
    #
    # A sample update-permissions.json for revoking write permissions:
    #
    # `\{ "AwsAccountId": "111122223333", "DashboardId":
    # "reports_test_report", "RevokePermissions": [ \{ "Principal":
    # "arn:aws:quicksight:us-east-1:111122223333:user/default/user2",
    # "Actions": [ "quicksight:DescribeDashboardPermissions",
    # "quicksight:UpdateDashboardPermissions",
    # "quicksight:DeleteDashboardVersion", "quicksight:DeleteDashboard",
    # "quicksight:UpdateDashboard",
    # "quicksight:UpdateDashboardPublishedVersion", ] \} ] \}`
    #
    # A sample update-permissions.json for revoking read and write
    # permissions:
    #
    # `\{ "AwsAccountId": "111122223333", "DashboardId":
    # "reports_test_report", "RevokePermissions": [ \{ "Principal":
    # "arn:aws:quicksight:us-east-1:111122223333:user/default/user2",
    # "Actions": [ "quicksight:DescribeDashboard",
    # "quicksight:ListDashboardVersions",
    # "quicksight:DescribeDashboardVersion", "quicksight:QueryDashboard",
    # "quicksight:DescribeDashboardPermissions",
    # "quicksight:UpdateDashboardPermissions",
    # "quicksight:DeleteDashboardVersion", "quicksight:DeleteDashboard",
    # "quicksight:UpdateDashboard",
    # "quicksight:UpdateDashboardPublishedVersion", ] \} ] \}`
    #
    # To obtain the principal name of a QuickSight user or group, you can
    # use describe-group or describe-user. For example:
    #
    # `aws quicksight describe-user --aws-account-id 111122223333
    # --namespace default --user-name user2 --region us-east-1 \{ "User": \{
    # "Arn": "arn:aws:quicksight:us-east-1:111122223333:user/default/user2",
    # "Active": true, "Email": "user2@example.com", "Role": "ADMIN",
    # "UserName": "user2", "PrincipalId":
    # "federated/iam/abcd2abcdabcdeabc5ab5" \}, "RequestId":
    # "8f74bb31-6291-448a-a71c-a765a44bae31", "Status": 200 \}`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The permissions that you want to grant on this resource.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The permissions that you want to revoke from this resource.
    #
    # @return [Types::UpdateDashboardPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateDashboardPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPermissions AWS API Documentation
    #
    # @overload update_dashboard_permissions(params = {})
    # @param [Hash] params ({})
    def update_dashboard_permissions(params = {}, options = {})
      req = build_request(:update_dashboard_permissions, params)
      req.send_request(options)
    end

    # Updates the published version of a dashboard.
    #
    # CLI syntax:
    #
    # `aws quicksight update-dashboard-published-version --aws-account-id
    # 111122223333 --dashboard-id dashboard-w1 ---version-number 2`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the dashboard you are updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the dashboard.
    #
    # @return [Types::UpdateDashboardPublishedVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardPublishedVersionResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardPublishedVersionResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardPublishedVersionResponse#status #status} => Integer
    #   * {Types::UpdateDashboardPublishedVersionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_published_version({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "RestrictiveResourceId", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPublishedVersion AWS API Documentation
    #
    # @overload update_dashboard_published_version(params = {})
    # @param [Hash] params ({})
    def update_dashboard_published_version(params = {}, options = {})
      req = build_request(:update_dashboard_published_version, params)
      req.send_request(options)
    end

    # Updates a dataset.
    #
    # CLI syntax:
    #
    # `aws quicksight update-data-set `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-set-id=unique-data-set-id `
    #
    # `--name='My dataset' `
    #
    # `--import-mode=SPICE `
    #
    # `--physical-table-map='\{`
    #
    # ` "physical-table-id": \{`
    #
    # ` "RelationalTable": \{`
    #
    # ` "DataSourceArn":
    # "arn:aws:quicksight:us-west-2:111111111111:datasource/data-source-id",`
    #
    # ` "Name": "table1",`
    #
    # ` "InputColumns": [`
    #
    # ` \{`
    #
    # ` "Name": "column1",`
    #
    # ` "Type": "STRING"`
    #
    # ` \}`
    #
    # ` ]`
    #
    # ` \}`
    #
    # ` \}'`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset you want to create. This is unique per region
    #   per AWS account.
    #
    # @option params [required, String] :name
    #   The display name for the dataset.
    #
    # @option params [required, Hash<String,Types::PhysicalTable>] :physical_table_map
    #   Declares the physical tables that are available in the underlying data
    #   sources.
    #
    # @option params [Hash<String,Types::LogicalTable>] :logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #
    # @option params [required, String] :import_mode
    #   Indicates whether or not you want to import the data into SPICE.
    #
    # @option params [Array<Types::ColumnGroup>] :column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently only geospatial hierarchy is supported.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   Row-level security configuration on the data you want to create.
    #
    # @return [Types::UpdateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSetResponse#arn #arn} => String
    #   * {Types::UpdateDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateDataSetResponse#ingestion_arn #ingestion_arn} => String
    #   * {Types::UpdateDataSetResponse#ingestion_id #ingestion_id} => String
    #   * {Types::UpdateDataSetResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     physical_table_map: { # required
    #       "PhysicalTableId" => {
    #         relational_table: {
    #           data_source_arn: "Arn", # required
    #           schema: "RelationalTableSchema",
    #           name: "RelationalTableName", # required
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         custom_sql: {
    #           data_source_arn: "Arn", # required
    #           name: "CustomSqlName", # required
    #           sql_query: "SqlQuery", # required
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         s3_source: {
    #           data_source_arn: "Arn", # required
    #           upload_settings: {
    #             format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #             delimiter: "Delimiter",
    #           },
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     logical_table_map: {
    #       "LogicalTableId" => {
    #         alias: "LogicalTableAlias", # required
    #         data_transforms: [
    #           {
    #             project_operation: {
    #               projected_columns: ["String"], # required
    #             },
    #             filter_operation: {
    #               condition_expression: "Expression", # required
    #             },
    #             create_columns_operation: {
    #               columns: [ # required
    #                 {
    #                   column_name: "ColumnName", # required
    #                   column_id: "ColumnId", # required
    #                   expression: "Expression", # required
    #                 },
    #               ],
    #             },
    #             rename_column_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_name: "ColumnName", # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #               format: "TypeCastFormat",
    #             },
    #             tag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tags: [ # required
    #                 {
    #                   column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # required, accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     row_level_permission_data_set: {
    #       arn: "Arn", # required
    #       permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.ingestion_arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSet AWS API Documentation
    #
    # @overload update_data_set(params = {})
    # @param [Hash] params ({})
    def update_data_set(params = {}, options = {})
      req = build_request(:update_data_set, params)
      req.send_request(options)
    end

    # Updates the permissions on a dataset.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`
    #
    # CLI syntax:
    #
    # `aws quicksight update-data-set-permissions `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-set-id=unique-data-set-id `
    #
    # `--grant-permissions='[\{"Principal":"arn:aws:quicksight:us-east-1:111122223333:user/default/user1","Actions":["quicksight:DescribeDataSet","quicksight:DescribeDataSetPermissions","quicksight:PassDataSet","quicksight:ListIngestions","quicksight:DescribeIngestion"]\}]'
    # `
    #
    # `--revoke-permissions='[\{"Principal":"arn:aws:quicksight:us-east-1:111122223333:user/default/user2","Actions":["quicksight:UpdateDataSet","quicksight:DeleteDataSet","quicksight:UpdateDataSetPermissions","quicksight:CreateIngestion","quicksight:CancelIngestion"]\}]'`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS Account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset you want to create. This is unique per region
    #   per AWS account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The resource permissions that you want to grant to the dataset.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The resource permissions that you want to revoke from the dataset.
    #
    # @return [Types::UpdateDataSetPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSetPermissionsResponse#data_set_arn #data_set_arn} => String
    #   * {Types::UpdateDataSetPermissionsResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateDataSetPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSetPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_arn #=> String
    #   resp.data_set_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetPermissions AWS API Documentation
    #
    # @overload update_data_set_permissions(params = {})
    # @param [Hash] params ({})
    def update_data_set_permissions(params = {}, options = {})
      req = build_request(:update_data_set_permissions, params)
      req.send_request(options)
    end

    # Updates a data source.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:datasource/data-source-id`
    #
    # CLI syntax:
    #
    # `aws quicksight update-data-source `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-source-id=unique-data-source-id `
    #
    # `--name='My Data Source' `
    #
    # `--data-source-parameters='\{"PostgreSqlParameters":\{"Host":"my-db-host.example.com","Port":1234,"Database":"my-db"\}\}'
    # `
    #
    # `--credentials='\{"CredentialPair":\{"Username":"username","Password":"password"\}\}`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This is unique per AWS Region per AWS
    #   account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters QuickSight uses to connect to your underlying source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials QuickSight uses to connect to your underlying source.
    #   Currently only username/password based credentials are supported.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   You need to use this parameter only when you want QuickSight to use a
    #   VPC connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   SSL properties that apply when QuickSight connects to your underlying
    #   source.
    #
    # @return [Types::UpdateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceResponse#arn #arn} => String
    #   * {Types::UpdateDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::UpdateDataSourceResponse#update_status #update_status} => String
    #   * {Types::UpdateDataSourceResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     data_source_parameters: {
    #       amazon_elasticsearch_parameters: {
    #         domain: "Domain", # required
    #       },
    #       athena_parameters: {
    #         work_group: "WorkGroup",
    #       },
    #       aurora_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: "DataSetName", # required
    #       },
    #       jira_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       maria_db_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       my_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       presto_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       rds_parameters: {
    #         instance_id: "InstanceId", # required
    #         database: "Database", # required
    #       },
    #       redshift_parameters: {
    #         host: "Host",
    #         port: 1,
    #         database: "Database", # required
    #         cluster_id: "ClusterId",
    #       },
    #       s3_parameters: {
    #         manifest_file_location: { # required
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #       },
    #       service_now_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       snowflake_parameters: {
    #         host: "Host", # required
    #         database: "Database", # required
    #         warehouse: "Warehouse", # required
    #       },
    #       spark_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       sql_server_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       teradata_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       twitter_parameters: {
    #         query: "Query", # required
    #         max_rows: 1, # required
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "Username", # required
    #         password: "Password", # required
    #       },
    #     },
    #     vpc_connection_properties: {
    #       vpc_connection_arn: "Arn", # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.update_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates the permissions to a data source.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:datasource/data-source-id`
    #
    # CLI syntax:
    #
    # `aws quicksight update-data-source-permissions `
    #
    # `--aws-account-id=111122223333 `
    #
    # `--data-source-id=unique-data-source-id `
    #
    # `--name='My Data Source' `
    #
    # `--grant-permissions='[\{"Principal":"arn:aws:quicksight:us-east-1:111122223333:user/default/user1","Actions":["quicksight:DescribeDataSource","quicksight:DescribeDataSourcePermissions","quicksight:PassDataSource"]\}]'
    # `
    #
    # `--revoke-permissions='[\{"Principal":"arn:aws:quicksight:us-east-1:111122223333:user/default/user2","Actions":["quicksight:UpdateDataSource","quicksight:DeleteDataSource","quicksight:UpdateDataSourcePermissions"]\}]'`
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This is unique per AWS Region per AWS
    #   account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions that you want to grant on the data
    #   source.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions that you want to revoke on the data
    #   source.
    #
    # @return [Types::UpdateDataSourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourcePermissionsResponse#data_source_arn #data_source_arn} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#data_source_id #data_source_id} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #   resp.data_source_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourcePermissions AWS API Documentation
    #
    # @overload update_data_source_permissions(params = {})
    # @param [Hash] params ({})
    def update_data_source_permissions(params = {}, options = {})
      req = build_request(:update_data_source_permissions, params)
      req.send_request(options)
    end

    # Changes a group description.
    #
    # The permissions resource is
    # `arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a group object.
    #
    # **CLI Sample:**
    #
    # `aws quicksight update-group --aws-account-id=111122223333
    # --namespace=default --group-name=Sales --description="Sales BI
    # Dashboards" `
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to update.
    #
    # @option params [String] :description
    #   The description for the group that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::UpdateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResponse#group #group} => Types::Group
    #   * {Types::UpdateGroupResponse#request_id #request_id} => String
    #   * {Types::UpdateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates an existing assignment. This operation updates only the
    # optional parameter or parameters that are specified in the request.
    #
    # CLI syntax:
    #
    # ``aws quicksight update-iam-policy-assignment
    # --aws-account-id=111122223333 --assignment-name=FullAccessAssignment
    # --assignment-status=DRAFT
    # --policy-arns=arn:aws:iam::aws:policy/AdministratorAccess
    # --identities="user=user-1,user-2,group=admin" --namespace=default
    # --region=us-east-1
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID that contains the IAM policy assignment.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment. It must be unique within an AWS account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the assignment.
    #
    # @option params [String] :assignment_status
    #   The status of an assignment:
    #
    #   * ENABLED - Anything specified in this assignment is used while
    #     creating the data source.
    #
    #   * DISABLED - This assignment isn't used while creating the data
    #     source.
    #
    #   * DRAFT - Assignment is an unfinished draft and isn't used while
    #     creating the data source.
    #
    # @option params [String] :policy_arn
    #   An IAM policy ARN that will be applied to specified QuickSight users
    #   and groups in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   QuickSight users and/or groups that you want to assign to the
    #   specified IAM policy.
    #
    # @return [Types::UpdateIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_id #assignment_id} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#policy_arn #policy_arn} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#identities #identities} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_status #assignment_status} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #     assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #     policy_arn: "Arn",
    #     identities: {
    #       "String" => ["IdentityName"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.assignment_id #=> String
    #   resp.policy_arn #=> String
    #   resp.identities #=> Hash
    #   resp.identities["String"] #=> Array
    #   resp.identities["String"][0] #=> String
    #   resp.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIAMPolicyAssignment AWS API Documentation
    #
    # @overload update_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def update_iam_policy_assignment(params = {}, options = {})
      req = build_request(:update_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Updates a template from an existing QuickSight analysis.
    #
    # CLI syntax:
    #
    # `aws quicksight update-template --aws-account-id 111122223333
    # --template-id reports_test_template --data-set-references
    # DataSetPlaceholder=reports,DataSetArn=arn:aws:quicksight:us-west-2:111122223333:dataset/c684a204-d134-4c53-a63c-451f72c60c28
    # DataSetPlaceholder=Elblogs,DataSetArn=arn:aws:quicksight:us-west-2:111122223333:dataset/15840b7d-b542-4491-937b-602416b367b3
    # —source-entity
    # SourceAnalysis=’\{Arn=arn:aws:quicksight:us-west-2:111122223333:analysis/c5731fe9-4708-4598-8f6d-cf2a70875b6d\}`
    #
    # You can also pass in a json file: `aws quicksight update-template
    # —cli-input-json file://create-template.json`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template you are updating.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [required, Types::TemplateSourceEntity] :source_entity
    #   The source QuickSight entity from which this template is being
    #   created. Templates can be currently created from an Analysis or
    #   another template.
    #
    # @option params [String] :version_description
    #   A description of the current template version being created. This API
    #   created the first version of the template. Every time UpdateTemplate
    #   is called a new version is created. Each version of the template
    #   maintains a description of the version in the VersionDescription
    #   field.
    #
    # @option params [String] :name
    #   The name for the template.
    #
    # @return [Types::UpdateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateResponse#template_id #template_id} => String
    #   * {Types::UpdateTemplateResponse#arn #arn} => String
    #   * {Types::UpdateTemplateResponse#version_arn #version_arn} => String
    #   * {Types::UpdateTemplateResponse#creation_status #creation_status} => String
    #   * {Types::UpdateTemplateResponse#status #status} => Integer
    #   * {Types::UpdateTemplateResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     source_entity: { # required
    #       source_analysis: {
    #         arn: "Arn", # required
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #       },
    #       source_template: {
    #         arn: "Arn", # required
    #       },
    #     },
    #     version_description: "VersionDescription",
    #     name: "TemplateName",
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
      req.send_request(options)
    end

    # Updates the template alias of a template.
    #
    # CLI syntax:
    #
    # `aws quicksight update-template-alias --aws-account-id 111122223333
    # --template-id 'reports_test_template' --alias-name STAGING
    # —template-version-number 2 `
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template aliases you are updating.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The alias name.
    #
    # @option params [required, Integer] :template_version_number
    #   The version number of the template.
    #
    # @return [Types::UpdateTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::UpdateTemplateAliasResponse#status #status} => Integer
    #   * {Types::UpdateTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     template_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateAlias AWS API Documentation
    #
    # @overload update_template_alias(params = {})
    # @param [Hash] params ({})
    def update_template_alias(params = {}, options = {})
      req = build_request(:update_template_alias, params)
      req.send_request(options)
    end

    # Updates the permissions on a template.
    #
    # CLI syntax:
    #
    # * `aws quicksight describe-template-permissions —aws-account-id
    #   111122223333 —template-id reports_test_template`
    #
    # * `aws quicksight update-template-permissions —cli-input-json
    #   file://update-permission.json `
    #
    # * The structure of `update-permissions.json` to add permissions:
    #
    #   `\{ "AwsAccountId": "111122223333",`
    #
    #   ` "DashboardId": "reports_test_template",`
    #
    #   ` "GrantPermissions": [`
    #
    #   ` \{ "Principal":
    #   "arn:aws:quicksight:us-east-1:196359894473:user/default/user3",`
    #
    #   ` "Actions": [`
    #
    #   ` "quicksight:DescribeTemplate",`
    #
    #   ` "quicksight:ListTemplateVersions"`
    #
    #   ` ] \} ] \}`
    #
    #   The structure of `update-permissions.json` to add permissions:
    #
    #   `\{ "AwsAccountId": "111122223333",`
    #
    #   ` "DashboardId": "reports_test_template",`
    #
    #   ` "RevokePermissions": [`
    #
    #   ` \{ "Principal":
    #   "arn:aws:quicksight:us-east-1:196359894473:user/default/user3",`
    #
    #   ` "Actions": [`
    #
    #   ` "quicksight:DescribeTemplate",`
    #
    #   ` "quicksight:ListTemplateVersions"`
    #
    #   ` ] \} ] \}`
    #
    #   To obtain the principal name of a QuickSight group or user, use user
    #   describe-group or describe-user. For example:
    #
    #   `aws quicksight describe-user `
    #
    #   `--aws-account-id 111122223333`
    #
    #   `--namespace default`
    #
    #   `--user-name user2 `
    #
    #   `--region us-east-1`
    #
    #   `\{`
    #
    #   ` "User": \{`
    #
    #   ` "Arn":
    #   "arn:aws:quicksight:us-east-1:111122223333:user/default/user2",`
    #
    #   ` "Active": true,`
    #
    #   ` "Email": "user2@example.com",`
    #
    #   ` "Role": "ADMIN",`
    #
    #   ` "UserName": "user2",`
    #
    #   ` "PrincipalId": "federated/iam/abcd2abcdabcdeabc5ab5"`
    #
    #   ` \},`
    #
    #   ` "RequestId": "8f74bb31-6291-448a-a71c-a765a44bae31",`
    #
    #   ` "Status": 200`
    #
    #   `\}`
    #
    # @option params [required, String] :aws_account_id
    #   AWS account ID that contains the template.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions to be granted on the template. The
    #   following example shows the shorthand syntax:
    #
    #   `Shorthand Syntax: Principal=string,Actions=string,string ... `
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions to be revoked from the template.
    #   Shorthand syntax: `Shorthand Syntax:
    #   Principal=string,Actions=string,string ... `
    #
    # @return [Types::UpdateTemplatePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplatePermissionsResponse#template_id #template_id} => String
    #   * {Types::UpdateTemplatePermissionsResponse#template_arn #template_arn} => String
    #   * {Types::UpdateTemplatePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateTemplatePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateTemplatePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "RestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplatePermissions AWS API Documentation
    #
    # @overload update_template_permissions(params = {})
    # @param [Hash] params ({})
    def update_template_permissions(params = {}, options = {})
      req = build_request(:update_template_permissions, params)
      req.send_request(options)
    end

    # Updates an Amazon QuickSight user.
    #
    # The response is a user object that contains the user's Amazon
    # QuickSight user name, email address, active or inactive status in
    # Amazon QuickSight, Amazon QuickSight role, and Amazon Resource Name
    # (ARN).
    #
    # **CLI Sample:**
    #
    # `aws quicksight update-user --user-name=Pat --role=ADMIN
    # --email=new_address@example.com --aws-account-id=111122223333
    # --namespace=default --region=us-east-1 `
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use the
    #   ID for the AWS account that contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to update.
    #
    # @option params [required, String] :role
    #   The Amazon QuickSight role of the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #   * {Types::UpdateUserResponse#request_id #request_id} => String
    #   * {Types::UpdateUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     email: "String", # required
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-quicksight'
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

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

Aws::Plugins::GlobalConfiguration.add_identifier(:lakeformation)

module Aws::LakeFormation
  # An API client for LakeFormation.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LakeFormation::Client.new(
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

    @identifier = :lakeformation

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

    # Batch operation to grant permissions to the principal.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @option params [required, Array<Types::BatchPermissionsRequestEntry>] :entries
    #   A list of up to 20 entries for resource permissions to be granted by
    #   batch operation to the principal.
    #
    # @return [Types::BatchGrantPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGrantPermissionsResponse#failures #failures} => Array&lt;Types::BatchPermissionsFailureEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_grant_permissions({
    #     catalog_id: "CatalogIdString",
    #     entries: [ # required
    #       {
    #         id: "Identifier", # required
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource: {
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #         },
    #         permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].request_entry.id #=> String
    #   resp.failures[0].request_entry.principal.data_lake_principal_identifier #=> String
    #   resp.failures[0].request_entry.resource.database.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.database.name #=> String
    #   resp.failures[0].request_entry.resource.table.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table.database_name #=> String
    #   resp.failures[0].request_entry.resource.table.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.database_name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.data_location.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.data_location.resource_arn #=> String
    #   resp.failures[0].request_entry.permissions #=> Array
    #   resp.failures[0].request_entry.permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.failures[0].request_entry.permissions_with_grant_option #=> Array
    #   resp.failures[0].request_entry.permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.failures[0].error.error_code #=> String
    #   resp.failures[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchGrantPermissions AWS API Documentation
    #
    # @overload batch_grant_permissions(params = {})
    # @param [Hash] params ({})
    def batch_grant_permissions(params = {}, options = {})
      req = build_request(:batch_grant_permissions, params)
      req.send_request(options)
    end

    # Batch operation to revoke permissions from the principal.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @option params [required, Array<Types::BatchPermissionsRequestEntry>] :entries
    #   A list of up to 20 entries for resource permissions to be revoked by
    #   batch operation to the principal.
    #
    # @return [Types::BatchRevokePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchRevokePermissionsResponse#failures #failures} => Array&lt;Types::BatchPermissionsFailureEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_revoke_permissions({
    #     catalog_id: "CatalogIdString",
    #     entries: [ # required
    #       {
    #         id: "Identifier", # required
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource: {
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #         },
    #         permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].request_entry.id #=> String
    #   resp.failures[0].request_entry.principal.data_lake_principal_identifier #=> String
    #   resp.failures[0].request_entry.resource.database.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.database.name #=> String
    #   resp.failures[0].request_entry.resource.table.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table.database_name #=> String
    #   resp.failures[0].request_entry.resource.table.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.database_name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.name #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.failures[0].request_entry.resource.data_location.catalog_id #=> String
    #   resp.failures[0].request_entry.resource.data_location.resource_arn #=> String
    #   resp.failures[0].request_entry.permissions #=> Array
    #   resp.failures[0].request_entry.permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.failures[0].request_entry.permissions_with_grant_option #=> Array
    #   resp.failures[0].request_entry.permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.failures[0].error.error_code #=> String
    #   resp.failures[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchRevokePermissions AWS API Documentation
    #
    # @overload batch_revoke_permissions(params = {})
    # @param [Hash] params ({})
    def batch_revoke_permissions(params = {}, options = {})
      req = build_request(:batch_revoke_permissions, params)
      req.send_request(options)
    end

    # Deregisters the resource as managed by the Data Catalog.
    #
    # When you deregister a path, Lake Formation removes the path from the
    # inline policy attached to your service-linked role.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   deregister.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_resource({
    #     resource_arn: "ResourceArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeregisterResource AWS API Documentation
    #
    # @overload deregister_resource(params = {})
    # @param [Hash] params ({})
    def deregister_resource(params = {}, options = {})
      req = build_request(:deregister_resource, params)
      req.send_request(options)
    end

    # Retrieves the current data access role for the given resource
    # registered in AWS Lake Formation.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @return [Types::DescribeResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceResponse#resource_info #resource_info} => Types::ResourceInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource({
    #     resource_arn: "ResourceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_info.resource_arn #=> String
    #   resp.resource_info.role_arn #=> String
    #   resp.resource_info.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeResource AWS API Documentation
    #
    # @overload describe_resource(params = {})
    # @param [Hash] params ({})
    def describe_resource(params = {}, options = {})
      req = build_request(:describe_resource, params)
      req.send_request(options)
    end

    # Retrieves the list of the data lake administrators of a Lake
    # Formation-managed data lake.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @return [Types::GetDataLakeSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataLakeSettingsResponse#data_lake_settings #data_lake_settings} => Types::DataLakeSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_lake_settings({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_lake_settings.data_lake_admins #=> Array
    #   resp.data_lake_settings.data_lake_admins[0].data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.create_database_default_permissions #=> Array
    #   resp.data_lake_settings.create_database_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.create_database_default_permissions[0].permissions #=> Array
    #   resp.data_lake_settings.create_database_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.data_lake_settings.create_table_default_permissions #=> Array
    #   resp.data_lake_settings.create_table_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.data_lake_settings.create_table_default_permissions[0].permissions #=> Array
    #   resp.data_lake_settings.create_table_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.data_lake_settings.trusted_resource_owners #=> Array
    #   resp.data_lake_settings.trusted_resource_owners[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetDataLakeSettings AWS API Documentation
    #
    # @overload get_data_lake_settings(params = {})
    # @param [Hash] params ({})
    def get_data_lake_settings(params = {}, options = {})
      req = build_request(:get_data_lake_settings, params)
      req.send_request(options)
    end

    # Returns the Lake Formation permissions for a specified table or
    # database resource located at a path in Amazon S3.
    # `GetEffectivePermissionsForPath` will not return databases and tables
    # if the catalog is encrypted.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get permissions.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::GetEffectivePermissionsForPathResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEffectivePermissionsForPathResponse#permissions #permissions} => Array&lt;Types::PrincipalResourcePermissions&gt;
    #   * {Types::GetEffectivePermissionsForPathResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_permissions_for_path({
    #     catalog_id: "CatalogIdString",
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.permissions[0].resource.database.catalog_id #=> String
    #   resp.permissions[0].resource.database.name #=> String
    #   resp.permissions[0].resource.table.catalog_id #=> String
    #   resp.permissions[0].resource.table.database_name #=> String
    #   resp.permissions[0].resource.table.name #=> String
    #   resp.permissions[0].resource.table_with_columns.catalog_id #=> String
    #   resp.permissions[0].resource.table_with_columns.database_name #=> String
    #   resp.permissions[0].resource.table_with_columns.name #=> String
    #   resp.permissions[0].resource.table_with_columns.column_names #=> Array
    #   resp.permissions[0].resource.table_with_columns.column_names[0] #=> String
    #   resp.permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.permissions[0].resource.data_location.catalog_id #=> String
    #   resp.permissions[0].resource.data_location.resource_arn #=> String
    #   resp.permissions[0].permissions #=> Array
    #   resp.permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.permissions[0].permissions_with_grant_option #=> Array
    #   resp.permissions[0].permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.permissions[0].additional_details.resource_share #=> Array
    #   resp.permissions[0].additional_details.resource_share[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetEffectivePermissionsForPath AWS API Documentation
    #
    # @overload get_effective_permissions_for_path(params = {})
    # @param [Hash] params ({})
    def get_effective_permissions_for_path(params = {}, options = {})
      req = build_request(:get_effective_permissions_for_path, params)
      req.send_request(options)
    end

    # Grants permissions to the principal to access metadata in the Data
    # Catalog and data organized in underlying data storage such as Amazon
    # S3.
    #
    # For information about permissions, see [Security and Access Control to
    # Metadata and Data][1].
    #
    #
    #
    # [1]: https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @option params [required, Types::DataLakePrincipal] :principal
    #   The principal to be granted the permissions on the resource. Supported
    #   principals are IAM users or IAM roles, and they are defined by their
    #   principal type and their ARN.
    #
    #   Note that if you define a resource with a particular ARN, then later
    #   delete, and recreate a resource with that same ARN, the resource
    #   maintains the permissions already granted.
    #
    # @option params [required, Types::Resource] :resource
    #   The resource to which permissions are to be granted. Resources in AWS
    #   Lake Formation are the Data Catalog, databases, and tables.
    #
    # @option params [required, Array<String>] :permissions
    #   The permissions granted to the principal on the resource. AWS Lake
    #   Formation defines privileges to grant and revoke access to metadata in
    #   the Data Catalog and data organized in underlying data storage such as
    #   Amazon S3. AWS Lake Formation requires that each principal be
    #   authorized to perform a specific task on AWS Lake Formation resources.
    #
    # @option params [Array<String>] :permissions_with_grant_option
    #   Indicates a list of the granted permissions that the principal may
    #   pass to other users. These permissions may only be a subset of the
    #   permissions granted in the `Privileges`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_permissions({
    #     catalog_id: "CatalogIdString",
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString",
    #     },
    #     resource: { # required
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #     },
    #     permissions: ["ALL"], # required, accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #     permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GrantPermissions AWS API Documentation
    #
    # @overload grant_permissions(params = {})
    # @param [Hash] params ({})
    def grant_permissions(params = {}, options = {})
      req = build_request(:grant_permissions, params)
      req.send_request(options)
    end

    # Returns a list of the principal permissions on the resource, filtered
    # by the permissions of the caller. For example, if you are granted an
    # ALTER permission, you are able to see only the principal permissions
    # for ALTER.
    #
    # This operation returns only those permissions that have been
    # explicitly granted.
    #
    # For information about permissions, see [Security and Access Control to
    # Metadata and Data][1].
    #
    #
    #
    # [1]: https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @option params [Types::DataLakePrincipal] :principal
    #   Specifies a principal to filter the permissions returned.
    #
    # @option params [String] :resource_type
    #   Specifies a resource type to filter the permissions returned.
    #
    # @option params [Types::Resource] :resource
    #   A resource where you will get a list of the principal permissions.
    #
    #   This operation does not support getting privileges on a table with
    #   columns. Instead, call this operation on the table, and the operation
    #   returns the table and the table w columns.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionsResponse#principal_resource_permissions #principal_resource_permissions} => Array&lt;Types::PrincipalResourcePermissions&gt;
    #   * {Types::ListPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions({
    #     catalog_id: "CatalogIdString",
    #     principal: {
    #       data_lake_principal_identifier: "DataLakePrincipalString",
    #     },
    #     resource_type: "CATALOG", # accepts CATALOG, DATABASE, TABLE, DATA_LOCATION
    #     resource: {
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.principal_resource_permissions #=> Array
    #   resp.principal_resource_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.principal_resource_permissions[0].resource.database.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.database.name #=> String
    #   resp.principal_resource_permissions[0].resource.table.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.table.database_name #=> String
    #   resp.principal_resource_permissions[0].resource.table.name #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.database_name #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.name #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_names #=> Array
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_names[0] #=> String
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names #=> Array
    #   resp.principal_resource_permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names[0] #=> String
    #   resp.principal_resource_permissions[0].resource.data_location.catalog_id #=> String
    #   resp.principal_resource_permissions[0].resource.data_location.resource_arn #=> String
    #   resp.principal_resource_permissions[0].permissions #=> Array
    #   resp.principal_resource_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.principal_resource_permissions[0].permissions_with_grant_option #=> Array
    #   resp.principal_resource_permissions[0].permissions_with_grant_option[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.principal_resource_permissions[0].additional_details.resource_share #=> Array
    #   resp.principal_resource_permissions[0].additional_details.resource_share[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListPermissions AWS API Documentation
    #
    # @overload list_permissions(params = {})
    # @param [Hash] params ({})
    def list_permissions(params = {}, options = {})
      req = build_request(:list_permissions, params)
      req.send_request(options)
    end

    # Lists the resources registered to be managed by the Data Catalog.
    #
    # @option params [Array<Types::FilterCondition>] :filter_condition_list
    #   Any applicable row-level and/or column-level filtering conditions for
    #   the resources.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource results.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve these
    #   resources.
    #
    # @return [Types::ListResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesResponse#resource_info_list #resource_info_list} => Array&lt;Types::ResourceInfo&gt;
    #   * {Types::ListResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     filter_condition_list: [
    #       {
    #         field: "RESOURCE_ARN", # accepts RESOURCE_ARN, ROLE_ARN, LAST_MODIFIED
    #         comparison_operator: "EQ", # accepts EQ, NE, LE, LT, GE, GT, CONTAINS, NOT_CONTAINS, BEGINS_WITH, IN, BETWEEN
    #         string_value_list: ["StringValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_info_list #=> Array
    #   resp.resource_info_list[0].resource_arn #=> String
    #   resp.resource_info_list[0].role_arn #=> String
    #   resp.resource_info_list[0].last_modified #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Sets the list of data lake administrators who have admin privileges on
    # all resources managed by Lake Formation. For more information on admin
    # privileges, see [Granting Lake Formation Permissions][1].
    #
    # This API replaces the current list of data lake admins with the new
    # list being passed. To add an admin, fetch the current list and add the
    # new admin to that list and pass that list in this API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @option params [required, Types::DataLakeSettings] :data_lake_settings
    #   A structure representing a list of AWS Lake Formation principals
    #   designated as data lake administrators.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_lake_settings({
    #     catalog_id: "CatalogIdString",
    #     data_lake_settings: { # required
    #       data_lake_admins: [
    #         {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #       ],
    #       create_database_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         },
    #       ],
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         },
    #       ],
    #       trusted_resource_owners: ["CatalogIdString"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PutDataLakeSettings AWS API Documentation
    #
    # @overload put_data_lake_settings(params = {})
    # @param [Hash] params ({})
    def put_data_lake_settings(params = {}, options = {})
      req = build_request(:put_data_lake_settings, params)
      req.send_request(options)
    end

    # Registers the resource as managed by the Data Catalog.
    #
    # To add or update data, Lake Formation needs read/write access to the
    # chosen Amazon S3 path. Choose a role that you know has permission to
    # do this, or choose the AWSServiceRoleForLakeFormationDataAccess
    # service-linked role. When you register the first Amazon S3 path, the
    # service-linked role and a new inline policy are created on your
    # behalf. Lake Formation adds the first path to the inline policy and
    # attaches it to the service-linked role. When you register subsequent
    # paths, Lake Formation adds the path to the existing policy.
    #
    # The following request registers a new location and gives AWS Lake
    # Formation permission to use the service-linked role to access that
    # location.
    #
    # `ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true`
    #
    # If `UseServiceLinkedRole` is not set to true, you must provide or set
    # the `RoleArn`\:
    #
    # `arn:aws:iam::12345:role/my-data-access-role`
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   register.
    #
    # @option params [Boolean] :use_service_linked_role
    #   Designates an AWS Identity and Access Management (IAM) service-linked
    #   role by registering this role with the Data Catalog. A service-linked
    #   role is a unique type of IAM role that is linked directly to Lake
    #   Formation.
    #
    #   For more information, see [Using Service-Linked Roles for Lake
    #   Formation][1].
    #
    #
    #
    #   [1]: https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html
    #
    # @option params [String] :role_arn
    #   The identifier for the role that registers the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_resource({
    #     resource_arn: "ResourceArnString", # required
    #     use_service_linked_role: false,
    #     role_arn: "IAMRoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RegisterResource AWS API Documentation
    #
    # @overload register_resource(params = {})
    # @param [Hash] params ({})
    def register_resource(params = {}, options = {})
      req = build_request(:register_resource, params)
      req.send_request(options)
    end

    # Revokes permissions to the principal to access metadata in the Data
    # Catalog and data organized in underlying data storage such as Amazon
    # S3.
    #
    # @option params [String] :catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #
    # @option params [required, Types::DataLakePrincipal] :principal
    #   The principal to be revoked permissions on the resource.
    #
    # @option params [required, Types::Resource] :resource
    #   The resource to which permissions are to be revoked.
    #
    # @option params [required, Array<String>] :permissions
    #   The permissions revoked to the principal on the resource. For
    #   information about permissions, see [Security and Access Control to
    #   Metadata and Data][1].
    #
    #
    #
    #   [1]: https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html
    #
    # @option params [Array<String>] :permissions_with_grant_option
    #   Indicates a list of permissions for which to revoke the grant option
    #   allowing the principal to pass permissions to other principals.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_permissions({
    #     catalog_id: "CatalogIdString",
    #     principal: { # required
    #       data_lake_principal_identifier: "DataLakePrincipalString",
    #     },
    #     resource: { # required
    #       catalog: {
    #       },
    #       database: {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       },
    #       table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       },
    #       table_with_columns: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       },
    #       data_location: {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       },
    #     },
    #     permissions: ["ALL"], # required, accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #     permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RevokePermissions AWS API Documentation
    #
    # @overload revoke_permissions(params = {})
    # @param [Hash] params ({})
    def revoke_permissions(params = {}, options = {})
      req = build_request(:revoke_permissions, params)
      req.send_request(options)
    end

    # Updates the data access role used for vending access to the given
    # (registered) resource in AWS Lake Formation.
    #
    # @option params [required, String] :role_arn
    #   The new role to use for the given resource registered in AWS Lake
    #   Formation.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource({
    #     role_arn: "IAMRoleArn", # required
    #     resource_arn: "ResourceArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateResource AWS API Documentation
    #
    # @overload update_resource(params = {})
    # @param [Hash] params ({})
    def update_resource(params = {}, options = {})
      req = build_request(:update_resource, params)
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
      context[:gem_name] = 'aws-sdk-lakeformation'
      context[:gem_version] = '1.11.0'
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

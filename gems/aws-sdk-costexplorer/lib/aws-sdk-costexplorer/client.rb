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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:costexplorer)

module Aws::CostExplorer
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :costexplorer

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Retrieves cost and usage metrics for your account. You can specify
    # which cost and usage-related metric, such as `BlendedCosts` or
    # `UsageQuantity`, that you want the request to return. You can also
    # filter and group your data by various dimensions, such as `SERVICE` or
    # `AZ`, in a specific time range. For a complete list of valid
    # dimensions, see the ` GetDimensionValues ` operation. Master accounts
    # in an organization in AWS Organizations have access to all member
    # accounts.
    #
    # @option params [Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving AWS costs. The start date
    #   is inclusive, but the end date is exclusive. For example, if `start`
    #   is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage
    #   data is retrieved from `2017-01-01` up to and including `2017-04-30`
    #   but not including `2017-05-01`.
    #
    # @option params [String] :granularity
    #   Sets the AWS cost granularity to `MONTHLY` or `DAILY`. If
    #   `Granularity` isn't set, the response object doesn't include the
    #   `Granularity`, either `MONTHLY` or `DAILY`.
    #
    # @option params [Types::Expression] :filter
    #   Filters AWS costs by different dimensions. For example, you can
    #   specify `SERVICE` and `LINKED_ACCOUNT` and get the costs that are
    #   associated with that account's usage of that service. You can nest
    #   `Expression` objects to define any combination of dimension filters.
    #   For more information, see [Expression][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [Array<String>] :metrics
    #   Which metrics are returned in the query. For more information about
    #   blended and unblended rates, see [Why does the "blended" annotation
    #   appear on some line items in my bill?][1].
    #
    #   Valid values are `AmortizedCost`, `BlendedCost`, `UnblendedCost`, and
    #   `UsageQuantity`.
    #
    #   <note markdown="1"> If you return the `UsageQuantity` metric, the service aggregates all
    #   usage numbers without taking into account the units. For example, if
    #   you aggregate `usageQuantity` across all of EC2, the results aren't
    #   meaningful because EC2 compute hours and data transfer are measured in
    #   different units (for example, hours vs. GB). To get more meaningful
    #   `UsageQuantity` metrics, filter by `UsageType` or `UsageTypeGroups`.
    #
    #    </note>
    #
    #   `Metrics` is required for `GetCostAndUsage` requests.
    #
    #
    #
    #   [1]: https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   You can group AWS costs using up to two different groups, either
    #   dimensions, tag keys, or both.
    #
    #   When you group by tag key, you get all tag values, including empty
    #   strings.
    #
    #   Valid values are `AZ`, `INSTANCE_TYPE`, `LEGAL_ENTITY_NAME`,
    #   `LINKED_ACCOUNT`, `OPERATION`, `PLATFORM`, `PURCHASE_TYPE`, `SERVICE`,
    #   `TAGS`, `TENANCY`, and `USAGE_TYPE`.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @return [Types::GetCostAndUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCostAndUsageResponse#next_page_token #next_page_token} => String
    #   * {Types::GetCostAndUsageResponse#group_definitions #group_definitions} => Array&lt;Types::GroupDefinition&gt;
    #   * {Types::GetCostAndUsageResponse#results_by_time #results_by_time} => Array&lt;Types::ResultByTime&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_and_usage({
    #     time_period: {
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY", # accepts DAILY, MONTHLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY
    #         values: ["Value"],
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #       },
    #     },
    #     metrics: ["MetricName"],
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_token #=> String
    #   resp.group_definitions #=> Array
    #   resp.group_definitions[0].type #=> String, one of "DIMENSION", "TAG"
    #   resp.group_definitions[0].key #=> String
    #   resp.results_by_time #=> Array
    #   resp.results_by_time[0].time_period.start #=> String
    #   resp.results_by_time[0].time_period.end #=> String
    #   resp.results_by_time[0].total #=> Hash
    #   resp.results_by_time[0].total["MetricName"].amount #=> String
    #   resp.results_by_time[0].total["MetricName"].unit #=> String
    #   resp.results_by_time[0].groups #=> Array
    #   resp.results_by_time[0].groups[0].keys #=> Array
    #   resp.results_by_time[0].groups[0].keys[0] #=> String
    #   resp.results_by_time[0].groups[0].metrics #=> Hash
    #   resp.results_by_time[0].groups[0].metrics["MetricName"].amount #=> String
    #   resp.results_by_time[0].groups[0].metrics["MetricName"].unit #=> String
    #   resp.results_by_time[0].estimated #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsage AWS API Documentation
    #
    # @overload get_cost_and_usage(params = {})
    # @param [Hash] params ({})
    def get_cost_and_usage(params = {}, options = {})
      req = build_request(:get_cost_and_usage, params)
      req.send_request(options)
    end

    # Retrieves all available filter values for a specified filter over a
    # period of time. You can search the dimension values for an arbitrary
    # string.
    #
    # @option params [String] :search_string
    #   The value that you want to search the filter values for.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The start and end dates for retrieving the dimension values. The start
    #   date is inclusive, but the end date is exclusive. For example, if
    #   `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and
    #   usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #
    # @option params [required, String] :dimension
    #   The name of the dimension. Each `Dimension` is available for different
    #   a `Context`. For more information, see `Context`.
    #
    # @option params [String] :context
    #   The context for the call to `GetDimensionValues`. This can be
    #   `RESERVATIONS` or `COST_AND_USAGE`. The default value is
    #   `COST_AND_USAGE`. If the context is set to `RESERVATIONS`, the
    #   resulting dimension values can be used in the
    #   `GetReservationUtilization` operation. If the context is set to
    #   `COST_AND_USAGE` the resulting dimension values can be used in the
    #   `GetCostAndUsage` operation.
    #
    #   If you set the context to `COST_AND_USAGE`, you can use the following
    #   dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * DATABASE\_ENGINE - The Amazon Relational Database Service database.
    #     Examples are Aurora or MySQL.
    #
    #   * INSTANCE\_TYPE - The type of EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LEGAL\_ENTITY\_NAME - The name of the organization that sells you
    #     AWS services, such as Amazon Web Services.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     AWS ID of the member account.
    #
    #   * OPERATING\_SYSTEM - The operating system. Examples are Windows or
    #     Linux.
    #
    #   * OPERATION - The action performed. Examples include `RunInstance` and
    #     `CreateBucket`.
    #
    #   * PLATFORM - The EC2 operating system. Examples are Windows or Linux.
    #
    #   * PURCHASE\_TYPE - The reservation type of the purchase to which this
    #     usage is related. Examples include On-Demand Instances and Standard
    #     Reserved Instances.
    #
    #   * SERVICE - The AWS service such as Amazon DynamoDB.
    #
    #   * USAGE\_TYPE - The type of usage. An example is
    #     DataTransfer-In-Bytes. The response for the `GetDimensionValues`
    #     operation includes a unit attribute. Examples include GB and Hrs.
    #
    #   * USAGE\_TYPE\_GROUP - The grouping of common usage types. An example
    #     is EC2: CloudWatch – Alarms. The response for this operation
    #     includes a unit attribute.
    #
    #   * RECORD\_TYPE - The different types of charges such as RI fees, usage
    #     costs, tax refunds, and credits.
    #
    #   If you set the context to `RESERVATIONS`, you can use the following
    #   dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * CACHE\_ENGINE - The Amazon ElastiCache operating system. Examples
    #     are Windows or Linux.
    #
    #   * DEPLOYMENT\_OPTION - The scope of Amazon Relational Database Service
    #     deployments. Valid values are `SingleAZ` and `MultiAZ`.
    #
    #   * INSTANCE\_TYPE - The type of EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     AWS ID of the member account.
    #
    #   * PLATFORM - The EC2 operating system. Examples are Windows or Linux.
    #
    #   * REGION - The AWS Region.
    #
    #   * SCOPE (Utilization only) - The scope of a Reserved Instance (RI).
    #     Values are regional or a single Availability Zone.
    #
    #   * TAG (Coverage only) - The tags that are associated with a Reserved
    #     Instance (RI).
    #
    #   * TENANCY - The tenancy of a resource. Examples are shared or
    #     dedicated.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @return [Types::GetDimensionValuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDimensionValuesResponse#dimension_values #dimension_values} => Array&lt;Types::DimensionValuesWithAttributes&gt;
    #   * {Types::GetDimensionValuesResponse#return_size #return_size} => Integer
    #   * {Types::GetDimensionValuesResponse#total_size #total_size} => Integer
    #   * {Types::GetDimensionValuesResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dimension_values({
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     dimension: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY
    #     context: "COST_AND_USAGE", # accepts COST_AND_USAGE, RESERVATIONS
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dimension_values #=> Array
    #   resp.dimension_values[0].value #=> String
    #   resp.dimension_values[0].attributes #=> Hash
    #   resp.dimension_values[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.return_size #=> Integer
    #   resp.total_size #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetDimensionValues AWS API Documentation
    #
    # @overload get_dimension_values(params = {})
    # @param [Hash] params ({})
    def get_dimension_values(params = {}, options = {})
      req = build_request(:get_dimension_values, params)
      req.send_request(options)
    end

    # Retrieves the reservation coverage for your account. This allows you
    # to see how much of your Amazon Elastic Compute Cloud, Amazon
    # ElastiCache, Amazon Relational Database Service, or Amazon Redshift
    # usage is covered by a reservation. An organization's master account
    # can see the coverage of the associated member accounts. For any time
    # period, you can filter data about reservation usage by the following
    # dimensions:
    #
    # * AZ
    #
    # * CACHE\_ENGINE
    #
    # * DATABASE\_ENGINE
    #
    # * DEPLOYMENT\_OPTION
    #
    # * INSTANCE\_TYPE
    #
    # * LINKED\_ACCOUNT
    #
    # * OPERATING\_SYSTEM
    #
    # * PLATFORM
    #
    # * REGION
    #
    # * SERVICE
    #
    # * TAG
    #
    # * TENANCY
    #
    # To determine valid values for a dimension, use the
    # `GetDimensionValues` operation.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The start and end dates of the period for which you want to retrieve
    #   data about reservation coverage. You can retrieve data for a maximum
    #   of 13 months: the last 12 months and the current month. The start date
    #   is inclusive, but the end date is exclusive. For example, if `start`
    #   is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage
    #   data is retrieved from `2017-01-01` up to and including `2017-04-30`
    #   but not including `2017-05-01`.
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   You can group the data by the following attributes:
    #
    #   * AZ
    #
    #   * CACHE\_ENGINE
    #
    #   * DATABASE\_ENGINE
    #
    #   * DEPLOYMENT\_OPTION
    #
    #   * INSTANCE\_TYPE
    #
    #   * LINKED\_ACCOUNT
    #
    #   * OPERATING\_SYSTEM
    #
    #   * PLATFORM
    #
    #   * REGION
    #
    #   * TAG
    #
    #   * TENANCY
    #
    # @option params [String] :granularity
    #   The granularity of the AWS cost data for the reservation. Valid values
    #   are `MONTHLY` and `DAILY`.
    #
    #   If `GroupBy` is set, `Granularity` can't be set. If `Granularity`
    #   isn't set, the response object doesn't include `Granularity`, either
    #   `MONTHLY` or `DAILY`.
    #
    # @option params [Types::Expression] :filter
    #   Filters utilization data by dimensions. You can filter by the
    #   following dimensions:
    #
    #   * AZ
    #
    #   * CACHE\_ENGINE
    #
    #   * DATABASE\_ENGINE
    #
    #   * DEPLOYMENT\_OPTION
    #
    #   * INSTANCE\_TYPE
    #
    #   * LINKED\_ACCOUNT
    #
    #   * OPERATING\_SYSTEM
    #
    #   * PLATFORM
    #
    #   * REGION
    #
    #   * SERVICE
    #
    #   * TAG
    #
    #   * TENANCY
    #
    #   `GetReservationCoverage` uses the same ` Expression ` object as the
    #   other operations, but only `AND` is supported among each dimension.
    #   You can nest only one level deep. If there are multiple values for a
    #   dimension, they are OR'd together.
    #
    #   If you don't provide a `SERVICE` filter, Cost Explorer defaults to
    #   EC2.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @return [Types::GetReservationCoverageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservationCoverageResponse#coverages_by_time #coverages_by_time} => Array&lt;Types::CoverageByTime&gt;
    #   * {Types::GetReservationCoverageResponse#total #total} => Types::Coverage
    #   * {Types::GetReservationCoverageResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_coverage({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     granularity: "DAILY", # accepts DAILY, MONTHLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY
    #         values: ["Value"],
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #       },
    #     },
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.coverages_by_time #=> Array
    #   resp.coverages_by_time[0].time_period.start #=> String
    #   resp.coverages_by_time[0].time_period.end #=> String
    #   resp.coverages_by_time[0].groups #=> Array
    #   resp.coverages_by_time[0].groups[0].attributes #=> Hash
    #   resp.coverages_by_time[0].groups[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.on_demand_hours #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.reserved_hours #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.total_running_hours #=> String
    #   resp.coverages_by_time[0].groups[0].coverage.coverage_hours.coverage_hours_percentage #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.on_demand_hours #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.reserved_hours #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.total_running_hours #=> String
    #   resp.coverages_by_time[0].total.coverage_hours.coverage_hours_percentage #=> String
    #   resp.total.coverage_hours.on_demand_hours #=> String
    #   resp.total.coverage_hours.reserved_hours #=> String
    #   resp.total.coverage_hours.total_running_hours #=> String
    #   resp.total.coverage_hours.coverage_hours_percentage #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationCoverage AWS API Documentation
    #
    # @overload get_reservation_coverage(params = {})
    # @param [Hash] params ({})
    def get_reservation_coverage(params = {}, options = {})
      req = build_request(:get_reservation_coverage, params)
      req.send_request(options)
    end

    # Gets recommendations for which reservations to purchase. These
    # recommendations could help you reduce your costs. Reservations provide
    # a discounted hourly rate (up to 75%) compared to On-Demand pricing.
    #
    # AWS generates your recommendations by identifying your On-Demand usage
    # during a specific time period and collecting your usage into
    # categories that are eligible for a reservation. After AWS has these
    # categories, it simulates every combination of reservations in each
    # category of usage to identify the best number of each type of RI to
    # purchase to maximize your estimated savings.
    #
    # For example, AWS automatically aggregates your EC2 Linux, shared
    # tenancy, and c4 family usage in the US West (Oregon) Region and
    # recommends that you buy size-flexible regional reservations to apply
    # to the c4 family usage. AWS recommends the smallest size instance in
    # an instance family. This makes it easier to purchase a size-flexible
    # RI. AWS also shows the equal number of normalized units so that you
    # can purchase any instance size that you want. For this example, your
    # RI recommendation would be for `c4.large`, because that is the
    # smallest size instance in the c4 instance family.
    #
    # @option params [String] :account_id
    #   The account ID that is associated with the recommendation.
    #
    # @option params [required, String] :service
    #   The specific service that you want recommendations for.
    #
    # @option params [String] :account_scope
    #   The account scope that you want recommendations for. `PAYER` means
    #   that AWS includes the master account and any member accounts when it
    #   calculates its recommendations. `LINKED` means that AWS includes only
    #   member accounts when it calculates its recommendations.
    #
    #   Valid values are `PAYER` and `LINKED`.
    #
    # @option params [String] :lookback_period_in_days
    #   The number of previous days that you want AWS to consider when it
    #   calculates your recommendations.
    #
    # @option params [String] :term_in_years
    #   The reservation term that you want recommendations for.
    #
    # @option params [String] :payment_option
    #   The reservation purchase option that you want recommendations for.
    #
    # @option params [Types::ServiceSpecification] :service_specification
    #   The hardware specifications for the service instances that you want
    #   recommendations for, such as standard or convertible EC2 instances.
    #
    # @option params [Integer] :page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #
    # @option params [String] :next_page_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #
    # @return [Types::GetReservationPurchaseRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservationPurchaseRecommendationResponse#metadata #metadata} => Types::ReservationPurchaseRecommendationMetadata
    #   * {Types::GetReservationPurchaseRecommendationResponse#recommendations #recommendations} => Array&lt;Types::ReservationPurchaseRecommendation&gt;
    #   * {Types::GetReservationPurchaseRecommendationResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_purchase_recommendation({
    #     account_id: "GenericString",
    #     service: "GenericString", # required
    #     account_scope: "PAYER", # accepts PAYER, LINKED
    #     lookback_period_in_days: "SEVEN_DAYS", # accepts SEVEN_DAYS, THIRTY_DAYS, SIXTY_DAYS
    #     term_in_years: "ONE_YEAR", # accepts ONE_YEAR, THREE_YEARS
    #     payment_option: "NO_UPFRONT", # accepts NO_UPFRONT, PARTIAL_UPFRONT, ALL_UPFRONT, LIGHT_UTILIZATION, MEDIUM_UTILIZATION, HEAVY_UTILIZATION
    #     service_specification: {
    #       ec2_specification: {
    #         offering_class: "STANDARD", # accepts STANDARD, CONVERTIBLE
    #       },
    #     },
    #     page_size: 1,
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.recommendation_id #=> String
    #   resp.metadata.generation_timestamp #=> String
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].account_scope #=> String, one of "PAYER", "LINKED"
    #   resp.recommendations[0].lookback_period_in_days #=> String, one of "SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"
    #   resp.recommendations[0].term_in_years #=> String, one of "ONE_YEAR", "THREE_YEARS"
    #   resp.recommendations[0].payment_option #=> String, one of "NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"
    #   resp.recommendations[0].service_specification.ec2_specification.offering_class #=> String, one of "STANDARD", "CONVERTIBLE"
    #   resp.recommendations[0].recommendation_details #=> Array
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.instance_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.availability_zone #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.platform #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.tenancy #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.instance_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.database_engine #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.database_edition #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.deployment_option #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.license_model #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.node_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.family #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.node_type #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.product_description #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.elasticache_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.instance_class #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.instance_size #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.region #=> String
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.current_generation #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].instance_details.es_instance_details.size_flex_eligible #=> Boolean
    #   resp.recommendations[0].recommendation_details[0].recommended_number_of_instances_to_purchase #=> String
    #   resp.recommendations[0].recommendation_details[0].recommended_normalized_units_to_purchase #=> String
    #   resp.recommendations[0].recommendation_details[0].minimum_number_of_instances_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].minimum_normalized_units_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].maximum_number_of_instances_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].maximum_normalized_units_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].average_number_of_instances_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].average_normalized_units_used_per_hour #=> String
    #   resp.recommendations[0].recommendation_details[0].average_utilization #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_break_even_in_months #=> String
    #   resp.recommendations[0].recommendation_details[0].currency_code #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_monthly_savings_amount #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_monthly_savings_percentage #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_monthly_on_demand_cost #=> String
    #   resp.recommendations[0].recommendation_details[0].estimated_reservation_cost_for_lookback_period #=> String
    #   resp.recommendations[0].recommendation_details[0].upfront_cost #=> String
    #   resp.recommendations[0].recommendation_details[0].recurring_standard_monthly_cost #=> String
    #   resp.recommendations[0].recommendation_summary.total_estimated_monthly_savings_amount #=> String
    #   resp.recommendations[0].recommendation_summary.total_estimated_monthly_savings_percentage #=> String
    #   resp.recommendations[0].recommendation_summary.currency_code #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationPurchaseRecommendation AWS API Documentation
    #
    # @overload get_reservation_purchase_recommendation(params = {})
    # @param [Hash] params ({})
    def get_reservation_purchase_recommendation(params = {}, options = {})
      req = build_request(:get_reservation_purchase_recommendation, params)
      req.send_request(options)
    end

    # Retrieves the reservation utilization for your account. Master
    # accounts in an organization have access to member accounts. You can
    # filter data by dimensions in a time period. You can use
    # `GetDimensionValues` to determine the possible dimension values.
    # Currently, you can group only by `SUBSCRIPTION_ID`.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving Reserved Instance (RI)
    #   utilization. The start date is inclusive, but the end date is
    #   exclusive. For example, if `start` is `2017-01-01` and `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`.
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   Groups only by `SUBSCRIPTION_ID`. Metadata is included.
    #
    # @option params [String] :granularity
    #   If `GroupBy` is set, `Granularity` can't be set. If `Granularity`
    #   isn't set, the response object doesn't include `Granularity`, either
    #   `MONTHLY` or `DAILY`. If both `GroupBy` and `Granularity` aren't set,
    #   `GetReservationUtilization` defaults to `DAILY`.
    #
    # @option params [Types::Expression] :filter
    #   Filters utilization data by dimensions. You can filter by the
    #   following dimensions:
    #
    #   * AZ
    #
    #   * CACHE\_ENGINE
    #
    #   * DATABASE\_ENGINE
    #
    #   * DEPLOYMENT\_OPTION
    #
    #   * INSTANCE\_TYPE
    #
    #   * LINKED\_ACCOUNT
    #
    #   * OPERATING\_SYSTEM
    #
    #   * PLATFORM
    #
    #   * REGION
    #
    #   * SERVICE
    #
    #   * SCOPE
    #
    #   * TENANCY
    #
    #   `GetReservationUtilization` uses the same ` Expression ` object as the
    #   other operations, but only `AND` is supported among each dimension,
    #   and nesting is supported up to only one level deep. If there are
    #   multiple values for a dimension, they are OR'd together.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @return [Types::GetReservationUtilizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservationUtilizationResponse#utilizations_by_time #utilizations_by_time} => Array&lt;Types::UtilizationByTime&gt;
    #   * {Types::GetReservationUtilizationResponse#total #total} => Types::ReservationAggregates
    #   * {Types::GetReservationUtilizationResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_utilization({
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG
    #         key: "GroupDefinitionKey",
    #       },
    #     ],
    #     granularity: "DAILY", # accepts DAILY, MONTHLY
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         },
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY
    #         values: ["Value"],
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #       },
    #     },
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.utilizations_by_time #=> Array
    #   resp.utilizations_by_time[0].time_period.start #=> String
    #   resp.utilizations_by_time[0].time_period.end #=> String
    #   resp.utilizations_by_time[0].groups #=> Array
    #   resp.utilizations_by_time[0].groups[0].key #=> String
    #   resp.utilizations_by_time[0].groups[0].value #=> String
    #   resp.utilizations_by_time[0].groups[0].attributes #=> Hash
    #   resp.utilizations_by_time[0].groups[0].attributes["AttributeType"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.utilizations_by_time[0].groups[0].utilization.utilization_percentage #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.purchased_hours #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.total_actual_hours #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.unused_hours #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.on_demand_cost_of_ri_hours_used #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.net_ri_savings #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.total_potential_ri_savings #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.amortized_upfront_fee #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.amortized_recurring_fee #=> String
    #   resp.utilizations_by_time[0].groups[0].utilization.total_amortized_fee #=> String
    #   resp.utilizations_by_time[0].total.utilization_percentage #=> String
    #   resp.utilizations_by_time[0].total.purchased_hours #=> String
    #   resp.utilizations_by_time[0].total.total_actual_hours #=> String
    #   resp.utilizations_by_time[0].total.unused_hours #=> String
    #   resp.utilizations_by_time[0].total.on_demand_cost_of_ri_hours_used #=> String
    #   resp.utilizations_by_time[0].total.net_ri_savings #=> String
    #   resp.utilizations_by_time[0].total.total_potential_ri_savings #=> String
    #   resp.utilizations_by_time[0].total.amortized_upfront_fee #=> String
    #   resp.utilizations_by_time[0].total.amortized_recurring_fee #=> String
    #   resp.utilizations_by_time[0].total.total_amortized_fee #=> String
    #   resp.total.utilization_percentage #=> String
    #   resp.total.purchased_hours #=> String
    #   resp.total.total_actual_hours #=> String
    #   resp.total.unused_hours #=> String
    #   resp.total.on_demand_cost_of_ri_hours_used #=> String
    #   resp.total.net_ri_savings #=> String
    #   resp.total.total_potential_ri_savings #=> String
    #   resp.total.amortized_upfront_fee #=> String
    #   resp.total.amortized_recurring_fee #=> String
    #   resp.total.total_amortized_fee #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationUtilization AWS API Documentation
    #
    # @overload get_reservation_utilization(params = {})
    # @param [Hash] params ({})
    def get_reservation_utilization(params = {}, options = {})
      req = build_request(:get_reservation_utilization, params)
      req.send_request(options)
    end

    # Queries for available tag keys and tag values for a specified period.
    # You can search the tag values for an arbitrary string.
    #
    # @option params [String] :search_string
    #   The value that you want to search for.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   The start and end dates for retrieving the dimension values. The start
    #   date is inclusive, but the end date is exclusive. For example, if
    #   `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and
    #   usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #
    # @option params [String] :tag_key
    #   The key of the tag that you want to return values for.
    #
    # @option params [String] :next_page_token
    #   The token to retrieve the next set of results. AWS provides the token
    #   when the response from a previous call has more results than the
    #   maximum page size.
    #
    # @return [Types::GetTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsResponse#next_page_token #next_page_token} => String
    #   * {Types::GetTagsResponse#tags #tags} => Array&lt;String&gt;
    #   * {Types::GetTagsResponse#return_size #return_size} => Integer
    #   * {Types::GetTagsResponse#total_size #total_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     tag_key: "TagKey",
    #     next_page_token: "NextPageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0] #=> String
    #   resp.return_size #=> Integer
    #   resp.total_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetTags AWS API Documentation
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
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
      context[:gem_name] = 'aws-sdk-costexplorer'
      context[:gem_version] = '1.9.0'
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

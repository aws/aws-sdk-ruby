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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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

    # Retrieve cost and usage metrics for your account. You can specify
    # which cost and usage-related metric, such as `BlendedCosts` or
    # `UsageQuantity`, that you want the request to return. You can also
    # filter and group your data by various dimensions, such as `AWS
    # Service` or `AvailabilityZone`, in a specific time range. See the
    # `GetDimensionValues` action for a complete list of the valid
    # dimensions. Master accounts in an organization have access to all
    # member accounts.
    #
    # @option params [Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving AWS costs. The start date
    #   is inclusive, but the end date is exclusive. For example, if `start`
    #   is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage
    #   data is retrieved from `2017-01-01` up to and including `2017-04-30`
    #   but not including `2017-05-01`.
    #
    # @option params [String] :granularity
    #   Sets the AWS cost granularity to `MONTHLY` or `DAILY`.
    #
    # @option params [Types::Expression] :filter
    #   Filters AWS costs by different dimensions. For example, you can
    #   specify `Service` and `Linked Account` and get the costs associated
    #   with that account's usage of that service. You can nest `Expression`
    #   objects to define any combination of dimension filters. For more
    #   information, see the `Expression` object or `More Examples`.
    #
    # @option params [Array<String>] :metrics
    #   Which metrics are returned in the query. For more information about
    #   blended and unblended rates, see
    #   https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/.
    #
    #   Valid values are `BlendedCost`, `UnblendedCost`, and `UsageQuantity`.
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
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   You can group AWS costs using up to two different groups, either
    #   dimensions, tag keys, or both.
    #
    #   When you group by tag key, you get all tag values, including empty
    #   strings.
    #
    #   Valid values are: `AZ`, `INSTANCE_TYPE`, `LINKED_ACCCOUNT`,
    #   `OPERATION`, `PURCHASE_TYPE`, `SERVICE`, `USAGE_TYPE`, `TAGS`, and
    #   `PLATFORM`.
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
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

    # You can use `GetDimensionValues` to retrieve all available filter
    # values for a specific filter over a period of time. You can search the
    # dimension values for an arbitrary string.
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
    #   The name of the dimension. Different `Dimensions`are available for
    #   different `Context`s. For more information, see `Context`.
    #
    # @option params [String] :context
    #   The context for the call to `GetDimensionValues`. This can be
    #   `RESERVED_INSTANCE` or `COST_AND_USAGE`. The default value is
    #   `COST_AND_USAGE`. If the context is set to `RESERVED_INSTANCE`, the
    #   resulting dimension values can be used in the
    #   `GetReservationUtilization` action. If the context is set to
    #   `COST_AND_USAGE`, , the resulting dimension values can be used in the
    #   `GetCostAndUsage` operation.
    #
    #   If you set the context to `CostAndUsage`, you can use the following
    #   dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is us-east-1a.
    #
    #   * InstanceType - The type of EC2 instance. An example is m4.xlarge.
    #
    #   * LinkedAccount - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     AWS ID of the member account
    #
    #   * Operation - The action performed. Examples include RunInstance and
    #     CreateBucket.
    #
    #   * PurchaseType - The reservation type of the purchase to which this
    #     usage is related. Examples include: On Demand Instances and Standard
    #     Reserved Instances
    #
    #   * Service - The AWS service such as DynamoDB.
    #
    #   * UsageType -The type of usage. An example is DataTransfer-In-Bytes.
    #     The response for the GetDimensionValues action includes a unit
    #     attribute, examples of which include GB and Hrs.
    #
    #   * UsageTypeGroup - The grouping of common usage types. An example is
    #     EC2: CloudWatch – Alarms. The response for this action includes a
    #     unit attribute.
    #
    #   * RecordType - The different types of charges such as RI fees, usage
    #     costs, tax refunds, and credits
    #
    #   If you set the context to `ReservedInstance`, you can use the
    #   following dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is us-east-1a.
    #
    #   * InstanceType - The type of EC2 instance. An example is m4.xlarge.
    #
    #   * LinkedAccount - The description in the attribute map that includes
    #     the full name of the member account. The value field contains the
    #     AWS ID of the member account
    #
    #   * Platform - The operating system. Examples are Windows or Linux.
    #
    #   * Region - The AWS region.
    #
    #   * Scope - The scope of a reserved instance (RI). Values are regional
    #     or a single availability zone.
    #
    #   * Tenancy - The tenancy of a resource. Examples are shared or
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
    #     dimension: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
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

    # You can retrieve the Reservation utilization for your account. Master
    # accounts in an organization have access to their associated member
    # accounts. You can filter data by dimensions in a time period. You can
    # use `GetDimensionValues` to determine the possible dimension values.
    # Currently, you can group only by `SUBSCRIPTION_ID`.
    #
    # @option params [required, Types::DateInterval] :time_period
    #   Sets the start and end dates for retrieving reserve instance (RI)
    #   utilization. The start date is inclusive, but the end date is
    #   exclusive. For example, if `start` is `2017-01-01` and `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`.
    #
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   Groups only by `SubscriptionId`. Metadata is included.
    #
    # @option params [String] :granularity
    #   Sets the AWS cost granularity to `MONTHLY` or `DAILY`. If both
    #   `GroupBy` and `granularity` are not set, `GetReservationUtilization`
    #   defaults to `DAILY`. If `GroupBy` is set, `Granularity` can't be set,
    #   and the response object doesn't include `MONTHLY` or `DAILY`
    #   granularity.
    #
    # @option params [Types::Expression] :filter
    #   Filters utilization data by using different dimensions.
    #   `GetReservationUtilization` uses the same `Expression` object as the
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
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
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
    #   resp.utilizations_by_time[0].total.utilization_percentage #=> String
    #   resp.utilizations_by_time[0].total.purchased_hours #=> String
    #   resp.utilizations_by_time[0].total.total_actual_hours #=> String
    #   resp.utilizations_by_time[0].total.unused_hours #=> String
    #   resp.total.utilization_percentage #=> String
    #   resp.total.purchased_hours #=> String
    #   resp.total.total_actual_hours #=> String
    #   resp.total.unused_hours #=> String
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

    # You can query for available tag keys and tag values for a specified
    # period. You can search the tag values for an arbitrary string.
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
      context[:gem_version] = '1.0.0'
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

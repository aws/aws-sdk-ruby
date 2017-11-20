# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostExplorer
  module Types

    # The time period that you want the usage and costs for.
    #
    # @note When making an API call, you may pass DateInterval
    #   data as a hash:
    #
    #       {
    #         start: "YearMonthDay", # required
    #         end: "YearMonthDay", # required
    #       }
    #
    # @!attribute [rw] start
    #   The beginning of the time period that you want the usage and costs
    #   for. The start date is inclusive. For example, if `start` is
    #   `2017-01-01`, then the cost and usage data is retrieved starting at
    #   `2017-01-01` up to the end date.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The end of the time period that you want the usage and costs for.
    #   The end date is exclusive. For example, if the `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from the
    #   start date but not including `2017-05-01`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DateInterval AWS API Documentation
    #
    class DateInterval < Struct.new(
      :start,
      :end)
      include Aws::Structure
    end

    # The metadata that you can use to filter and group your results. You
    # can use `GetDimensionValues` to find specific values.
    #
    # @note When making an API call, you may pass DimensionValues
    #   data as a hash:
    #
    #       {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #         values: ["Value"],
    #       }
    #
    # @!attribute [rw] key
    #   The names of the metadata types that you can use to filter and group
    #   your results. For example, `AZ` returns a list of Availability
    #   Zones.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The metadata values that you can use to filter and group your
    #   results. You can use `GetDimensionValues` to find specific values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DimensionValues AWS API Documentation
    #
    class DimensionValues < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # The metadata of a specific type that you can use to filter and group
    # your results. You can use `GetDimensionValues` to find specific
    # values.
    #
    # @!attribute [rw] value
    #   The value of a dimension with a specific attribute.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attribute that applies to a specific `Dimension`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DimensionValuesWithAttributes AWS API Documentation
    #
    class DimensionValuesWithAttributes < Struct.new(
      :value,
      :attributes)
      include Aws::Structure
    end

    # Use `Expression` to filter by cost or by usage. There are two
    # patterns:
    #
    # * Simple dimension values - You can set the dimension name and values
    #   for the filters that you plan to use. For example, you can filter
    #   for `InstanceType==m4.xlarge OR InstanceType==c4.large`. The
    #   `Expression` for that looks like this.
    #
    #   `\{ "Dimensions": \{ "Key": "InstanceType", "Values": [ "m4.xlarge",
    #   “c4.large” ] \} \}`
    #
    #   The list of dimension values are OR'd together to retrieve cost or
    #   usage data. You can create `Expression` and `DimensionValues`
    #   objects using either `with*` methods or `set*` methods in multiple
    #   lines.
    #
    # * Compound dimension values with logical operations - You can use
    #   multiple `Expression` types and the logical operators `AND/OR/NOT`
    #   to create a list of one or more `Expression` objects. This allows
    #   you to filter on more advanced options. For example, you can filter
    #   on `((InstanceType == m4.large OR InstanceType == m3.large) OR
    #   (Tag.Type == Type1)) AND (UsageType != DataTransfer)`. The
    #   `Expression` for that looks like this.
    #
    #   `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "InstanceType",
    #   "Values": [ "m4.x.large", "c4.large" ] \}\}, \{"Tag": \{ "Key":
    #   "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not": \{"dimensions":
    #   \{ "Key": "UsageType", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #   <note markdown="1"> Because each `Expression` can have only one operator, the service
    #   returns an error if more than one is specified. The following
    #   example shows an Expression object that will create an error.
    #
    #    </note>
    #
    #   ` \{ "And": [ ... ], "DimensionValues": \{ "Dimension": "UsageType",
    #   "Values": [ "DataTransfer" ] \} \} `
    #
    # @note When making an API call, you may pass Expression
    #   data as a hash:
    #
    #       {
    #         or: [
    #           {
    #             or: {
    #               # recursive Expressions
    #             },
    #             and: {
    #               # recursive Expressions
    #             },
    #             not: {
    #               # recursive Expression
    #             },
    #             dimensions: {
    #               key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #               values: ["Value"],
    #             },
    #             tags: {
    #               key: "TagKey",
    #               values: ["Value"],
    #             },
    #           },
    #         ],
    #         and: [
    #           {
    #             or: {
    #               # recursive Expressions
    #             },
    #             and: {
    #               # recursive Expressions
    #             },
    #             not: {
    #               # recursive Expression
    #             },
    #             dimensions: {
    #               key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #               values: ["Value"],
    #             },
    #             tags: {
    #               key: "TagKey",
    #               values: ["Value"],
    #             },
    #           },
    #         ],
    #         not: {
    #           or: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #         },
    #         dimensions: {
    #           key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #           values: ["Value"],
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #         },
    #       }
    #
    # @!attribute [rw] or
    #   Return results that match either `Dimension`.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] and
    #   Return results that match both `Dimension` objects.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] not
    #   Return results that don't match `Dimension`.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] dimensions
    #   The specific `Dimension` to use for `Expression`.
    #   @return [Types::DimensionValues]
    #
    # @!attribute [rw] tags
    #   The specific `Tag` to use for `Expression`.
    #   @return [Types::TagValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Expression AWS API Documentation
    #
    class Expression < Struct.new(
      :or,
      :and,
      :not,
      :dimensions,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCostAndUsageRequest
    #   data as a hash:
    #
    #       {
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         granularity: "DAILY", # accepts DAILY, MONTHLY
    #         filter: {
    #           or: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #         },
    #         metrics: ["MetricName"],
    #         group_by: [
    #           {
    #             type: "DIMENSION", # accepts DIMENSION, TAG
    #             key: "GroupDefinitionKey",
    #           },
    #         ],
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] time_period
    #   Sets the start and end dates for retrieving AWS costs. The start
    #   date is inclusive, but the end date is exclusive. For example, if
    #   `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and
    #   usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] granularity
    #   Sets the AWS cost granularity to `MONTHLY` or `DAILY`.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters AWS costs by different dimensions. For example, you can
    #   specify `Service` and `Linked Account` and get the costs associated
    #   with that account's usage of that service. You can nest
    #   `Expression` objects to define any combination of dimension filters.
    #   For more information, see the `Expression` object or `More
    #   Examples`.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] metrics
    #   Which metrics are returned in the query. For more information about
    #   blended and unblended rates, see
    #   https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/.
    #
    #   Valid values are `BlendedCost`, `UnblendedCost`, and
    #   `UsageQuantity`.
    #
    #   <note markdown="1"> If you return the `UsageQuantity` metric, the service aggregates all
    #   usage numbers without taking into account the units. For example, if
    #   you aggregate `usageQuantity` across all of EC2, the results aren't
    #   meaningful because EC2 compute hours and data transfer are measured
    #   in different units (for example, hours vs. GB). To get more
    #   meaningful `UsageQuantity` metrics, filter by `UsageType` or
    #   `UsageTypeGroups`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_by
    #   You can group AWS costs using up to two different groups, either
    #   dimensions, tag keys, or both.
    #
    #   When you group by tag key, you get all tag values, including empty
    #   strings.
    #
    #   Valid values are: `AZ`, `INSTANCE_TYPE`, `LINKED_ACCCOUNT`,
    #   `OPERATION`, `PURCHASE_TYPE`, `SERVICE`, `USAGE_TYPE`, `TAGS`, and
    #   `PLATFORM`.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageRequest AWS API Documentation
    #
    class GetCostAndUsageRequest < Struct.new(
      :time_period,
      :granularity,
      :filter,
      :metrics,
      :group_by,
      :next_page_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] group_definitions
    #   The groups specified by the the `Filter` or `GroupBy` parameters in
    #   the request.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] results_by_time
    #   The time period covered by the results in the response.
    #   @return [Array<Types::ResultByTime>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageResponse AWS API Documentation
    #
    class GetCostAndUsageResponse < Struct.new(
      :next_page_token,
      :group_definitions,
      :results_by_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDimensionValuesRequest
    #   data as a hash:
    #
    #       {
    #         search_string: "SearchString",
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         dimension: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #         context: "COST_AND_USAGE", # accepts COST_AND_USAGE, RESERVATIONS
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] search_string
    #   The value that you want to search the filter values for.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   The start and end dates for retrieving the dimension values. The
    #   start date is inclusive, but the end date is exclusive. For example,
    #   if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost
    #   and usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] dimension
    #   The name of the dimension. Different `Dimensions`are available for
    #   different `Context`s. For more information, see `Context`.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The context for the call to `GetDimensionValues`. This can be
    #   `RESERVED_INSTANCE` or `COST_AND_USAGE`. The default value is
    #   `COST_AND_USAGE`. If the context is set to `RESERVED_INSTANCE`, the
    #   resulting dimension values can be used in the
    #   `GetReservationUtilization` action. If the context is set to
    #   `COST_AND_USAGE`, , the resulting dimension values can be used in
    #   the `GetCostAndUsage` operation.
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
    #     usage is related. Examples include: On Demand Instances and
    #     Standard Reserved Instances
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
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetDimensionValuesRequest AWS API Documentation
    #
    class GetDimensionValuesRequest < Struct.new(
      :search_string,
      :time_period,
      :dimension,
      :context,
      :next_page_token)
      include Aws::Structure
    end

    # @!attribute [rw] dimension_values
    #   The filters that you used to filter your request. Some dimensions
    #   are available only for a specific context:
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
    #     usage is related. Examples include: On Demand Instances and
    #     Standard Reserved Instances
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
    #   @return [Array<Types::DimensionValuesWithAttributes>]
    #
    # @!attribute [rw] return_size
    #   The number of results that AWS returned at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size
    #   The total number of search results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetDimensionValuesResponse AWS API Documentation
    #
    class GetDimensionValuesResponse < Struct.new(
      :dimension_values,
      :return_size,
      :total_size,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReservationUtilizationRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         group_by: [
    #           {
    #             type: "DIMENSION", # accepts DIMENSION, TAG
    #             key: "GroupDefinitionKey",
    #           },
    #         ],
    #         granularity: "DAILY", # accepts DAILY, MONTHLY
    #         filter: {
    #           or: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             },
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #         },
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] time_period
    #   Sets the start and end dates for retrieving reserve instance (RI)
    #   utilization. The start date is inclusive, but the end date is
    #   exclusive. For example, if `start` is `2017-01-01` and `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] group_by
    #   Groups only by `SubscriptionId`. Metadata is included.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] granularity
    #   Sets the AWS cost granularity to `MONTHLY` or `DAILY`. If both
    #   `GroupBy` and `granularity` are not set, `GetReservationUtilization`
    #   defaults to `DAILY`. If `GroupBy` is set, `Granularity` can't be
    #   set, and the response object doesn't include `MONTHLY` or `DAILY`
    #   granularity.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters utilization data by using different dimensions.
    #   `GetReservationUtilization` uses the same `Expression` object as the
    #   other operations, but only `AND` is supported among each dimension,
    #   and nesting is supported up to only one level deep. If there are
    #   multiple values for a dimension, they are OR'd together.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationUtilizationRequest AWS API Documentation
    #
    class GetReservationUtilizationRequest < Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :next_page_token)
      include Aws::Structure
    end

    # @!attribute [rw] utilizations_by_time
    #   The amount of time that you utilized your RIs.
    #   @return [Array<Types::UtilizationByTime>]
    #
    # @!attribute [rw] total
    #   The total amount of time that you utilized your RIs.
    #   @return [Types::ReservationAggregates]
    #
    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationUtilizationResponse AWS API Documentation
    #
    class GetReservationUtilizationResponse < Struct.new(
      :utilizations_by_time,
      :total,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagsRequest
    #   data as a hash:
    #
    #       {
    #         search_string: "SearchString",
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         tag_key: "TagKey",
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] search_string
    #   The value that you want to search for.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   The start and end dates for retrieving the dimension values. The
    #   start date is inclusive, but the end date is exclusive. For example,
    #   if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost
    #   and usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] tag_key
    #   The key of the tag that you want to return values for.
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetTagsRequest AWS API Documentation
    #
    class GetTagsRequest < Struct.new(
      :search_string,
      :time_period,
      :tag_key,
      :next_page_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that match your request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] return_size
    #   The number of query results that AWS returns at a time.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size
    #   The total number of query results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetTagsResponse AWS API Documentation
    #
    class GetTagsResponse < Struct.new(
      :next_page_token,
      :tags,
      :return_size,
      :total_size)
      include Aws::Structure
    end

    # One level of grouped data within the results.
    #
    # @!attribute [rw] keys
    #   The keys included in this group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metrics
    #   The metrics included in this group.
    #   @return [Hash<String,Types::MetricValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Group AWS API Documentation
    #
    class Group < Struct.new(
      :keys,
      :metrics)
      include Aws::Structure
    end

    # Represents a group when you specify a group by criteria, or in the
    # response to a query with a specific grouping.
    #
    # @note When making an API call, you may pass GroupDefinition
    #   data as a hash:
    #
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG
    #         key: "GroupDefinitionKey",
    #       }
    #
    # @!attribute [rw] type
    #   The string that represents the type of group.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The string that represents a key for a specified group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GroupDefinition AWS API Documentation
    #
    class GroupDefinition < Struct.new(
      :type,
      :key)
      include Aws::Structure
    end

    # The aggregated value for a metric.
    #
    # @!attribute [rw] amount
    #   The actual number that represents the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit that the metric is given in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/MetricValue AWS API Documentation
    #
    class MetricValue < Struct.new(
      :amount,
      :unit)
      include Aws::Structure
    end

    # The aggregated numbers for your RI usage.
    #
    # @!attribute [rw] utilization_percentage
    #   The percentage of RI time that you used.
    #   @return [String]
    #
    # @!attribute [rw] purchased_hours
    #   How many RI hours you purchased.
    #   @return [String]
    #
    # @!attribute [rw] total_actual_hours
    #   The total number of RI hours that you used.
    #   @return [String]
    #
    # @!attribute [rw] unused_hours
    #   The number of RI hours that you didn't use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationAggregates AWS API Documentation
    #
    class ReservationAggregates < Struct.new(
      :utilization_percentage,
      :purchased_hours,
      :total_actual_hours,
      :unused_hours)
      include Aws::Structure
    end

    # A group of RIs that share a set of attributes.
    #
    # @!attribute [rw] key
    #   The key for a specific RI attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a specific RI attribute.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes for this group of RIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] utilization
    #   How much you used this group of RIs.
    #   @return [Types::ReservationAggregates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationUtilizationGroup AWS API Documentation
    #
    class ReservationUtilizationGroup < Struct.new(
      :key,
      :value,
      :attributes,
      :utilization)
      include Aws::Structure
    end

    # The result that is associated with a time period.
    #
    # @!attribute [rw] time_period
    #   The time period covered by a result.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] total
    #   The total amount of cost or usage accrued during the time period.
    #   @return [Hash<String,Types::MetricValue>]
    #
    # @!attribute [rw] groups
    #   The groups that are included in this time period.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] estimated
    #   Whether or not this result is estimated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResultByTime AWS API Documentation
    #
    class ResultByTime < Struct.new(
      :time_period,
      :total,
      :groups,
      :estimated)
      include Aws::Structure
    end

    # The values that are available for a tag.
    #
    # @note When making an API call, you may pass TagValues
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         values: ["Value"],
    #       }
    #
    # @!attribute [rw] key
    #   The key for a tag.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The specific value of a tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TagValues AWS API Documentation
    #
    class TagValues < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # The amount of utilization, in hours.
    #
    # @!attribute [rw] time_period
    #   The period of time over which this utilization was used.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] groups
    #   The groups that are included in this utilization result.
    #   @return [Array<Types::ReservationUtilizationGroup>]
    #
    # @!attribute [rw] total
    #   The total number of RI hours that were used.
    #   @return [Types::ReservationAggregates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UtilizationByTime AWS API Documentation
    #
    class UtilizationByTime < Struct.new(
      :time_period,
      :groups,
      :total)
      include Aws::Structure
    end

  end
end

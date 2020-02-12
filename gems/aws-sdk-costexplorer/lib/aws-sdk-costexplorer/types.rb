# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostExplorer
  module Types

    # The requested report expired. Update the date interval and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/BillExpirationException AWS API Documentation
    #
    class BillExpirationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # <i> <b>Cost Category is in public beta for AWS Billing and Cost
    # Management and is subject to change. Your use of Cost Categories is
    # subject to the Beta Service Participation terms of the <a
    # href="https://aws.amazon.com/service-terms/">AWS Service Terms</a>
    # (Section 1.10).</b> </i>
    #
    # The structure of Cost Categories. This includes detailed metadata and
    # the set of rules for the `CostCategory` object.
    #
    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date.
    #   @return [String]
    #
    # @!attribute [rw] effective_end
    #   The Cost Category's effective end date.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule schema version in this particular Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   Rules are processed in order. If there are multiple rules that match
    #   the line item, then the first rule to match is used to determine
    #   that Cost Category value.
    #   @return [Array<Types::CostCategoryRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategory AWS API Documentation
    #
    class CostCategory < Struct.new(
      :cost_category_arn,
      :effective_start,
      :effective_end,
      :name,
      :rule_version,
      :rules)
      include Aws::Structure
    end

    # <i> <b>Cost Category is in public beta for AWS Billing and Cost
    # Management and is subject to change. Your use of Cost Categories is
    # subject to the Beta Service Participation terms of the <a
    # href="https://aws.amazon.com/service-terms/">AWS Service Terms</a>
    # (Section 1.10).</b> </i>
    #
    # A reference to a Cost Category containing only enough information to
    # identify the Cost Category.
    #
    # You can use this information to retrieve the full Cost Category
    # information using `DescribeCostCategory`.
    #
    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category Reference.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date.
    #   @return [String]
    #
    # @!attribute [rw] effective_end
    #   The Cost Category's effective end date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryReference AWS API Documentation
    #
    class CostCategoryReference < Struct.new(
      :cost_category_arn,
      :name,
      :effective_start,
      :effective_end)
      include Aws::Structure
    end

    # <i> <b>Cost Category is in public beta for AWS Billing and Cost
    # Management and is subject to change. Your use of Cost Categories is
    # subject to the Beta Service Participation terms of the <a
    # href="https://aws.amazon.com/service-terms/">AWS Service Terms</a>
    # (Section 1.10).</b> </i>
    #
    # Rules are processed in order. If there are multiple rules that match
    # the line item, then the first rule to match is used to determine that
    # Cost Category value.
    #
    # @note When making an API call, you may pass CostCategoryRule
    #   data as a hash:
    #
    #       {
    #         value: "CostCategoryValue", # required
    #         rule: { # required
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] value
    #   The value a line item will be categorized as, if it matches the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   An [Expression][1] object used to categorize costs. This supports
    #   dimensions, Tags, and nested expressions. Currently the only
    #   dimensions supported is `LINKED_ACCOUNT`.
    #
    #   Root level `OR` is not supported. We recommend you create a separate
    #   rule instead.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryRule AWS API Documentation
    #
    class CostCategoryRule < Struct.new(
      :value,
      :rule)
      include Aws::Structure
    end

    # <i> <b>Cost Category is in public beta for AWS Billing and Cost
    # Management and is subject to change. Your use of Cost Categories is
    # subject to the Beta Service Participation terms of the <a
    # href="https://aws.amazon.com/service-terms/">AWS Service Terms</a>
    # (Section 1.10).</b> </i>
    #
    # The values that are available for Cost Categories.
    #
    # @note When making an API call, you may pass CostCategoryValues
    #   data as a hash:
    #
    #       {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #       }
    #
    # @!attribute [rw] key
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The specific value of the Cost Category.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryValues AWS API Documentation
    #
    class CostCategoryValues < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # The amount of instance usage that a reservation covered.
    #
    # @!attribute [rw] coverage_hours
    #   The amount of instance usage that the reservation covered, in hours.
    #   @return [Types::CoverageHours]
    #
    # @!attribute [rw] coverage_normalized_units
    #   The amount of instance usage that the reservation covered, in
    #   normalized units.
    #   @return [Types::CoverageNormalizedUnits]
    #
    # @!attribute [rw] coverage_cost
    #   The amount of cost that the reservation covered.
    #   @return [Types::CoverageCost]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Coverage AWS API Documentation
    #
    class Coverage < Struct.new(
      :coverage_hours,
      :coverage_normalized_units,
      :coverage_cost)
      include Aws::Structure
    end

    # Reservation coverage for a specified period, in hours.
    #
    # @!attribute [rw] time_period
    #   The period that this coverage was used over.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] groups
    #   The groups of instances that the reservation covered.
    #   @return [Array<Types::ReservationCoverageGroup>]
    #
    # @!attribute [rw] total
    #   The total reservation coverage, in hours.
    #   @return [Types::Coverage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CoverageByTime AWS API Documentation
    #
    class CoverageByTime < Struct.new(
      :time_period,
      :groups,
      :total)
      include Aws::Structure
    end

    # How much it cost to run an instance.
    #
    # @!attribute [rw] on_demand_cost
    #   How much an On-Demand instance cost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CoverageCost AWS API Documentation
    #
    class CoverageCost < Struct.new(
      :on_demand_cost)
      include Aws::Structure
    end

    # How long a running instance either used a reservation or was
    # On-Demand.
    #
    # @!attribute [rw] on_demand_hours
    #   The number of instance running hours that On-Demand Instances
    #   covered.
    #   @return [String]
    #
    # @!attribute [rw] reserved_hours
    #   The number of instance running hours that reservations covered.
    #   @return [String]
    #
    # @!attribute [rw] total_running_hours
    #   The total instance usage, in hours.
    #   @return [String]
    #
    # @!attribute [rw] coverage_hours_percentage
    #   The percentage of instance hours that a reservation covered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CoverageHours AWS API Documentation
    #
    class CoverageHours < Struct.new(
      :on_demand_hours,
      :reserved_hours,
      :total_running_hours,
      :coverage_hours_percentage)
      include Aws::Structure
    end

    # The amount of instance usage, in normalized units. Normalized units
    # enable you to see your EC2 usage for multiple sizes of instances in a
    # uniform way. For example, suppose you run an xlarge instance and a
    # 2xlarge instance. If you run both instances for the same amount of
    # time, the 2xlarge instance uses twice as much of your reservation as
    # the xlarge instance, even though both instances show only one
    # instance-hour. Using normalized units instead of instance-hours, the
    # xlarge instance used 8 normalized units, and the 2xlarge instance used
    # 16 normalized units.
    #
    # For more information, see [Modifying Reserved Instances][1] in the
    # *Amazon Elastic Compute Cloud User Guide for Linux Instances*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html
    #
    # @!attribute [rw] on_demand_normalized_units
    #   The number of normalized units that are covered by On-Demand
    #   Instances instead of a reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_normalized_units
    #   The number of normalized units that a reservation covers.
    #   @return [String]
    #
    # @!attribute [rw] total_running_normalized_units
    #   The total number of normalized units that you used.
    #   @return [String]
    #
    # @!attribute [rw] coverage_normalized_units_percentage
    #   The percentage of your used instance normalized units that a
    #   reservation covers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CoverageNormalizedUnits AWS API Documentation
    #
    class CoverageNormalizedUnits < Struct.new(
      :on_demand_normalized_units,
      :reserved_normalized_units,
      :total_running_normalized_units,
      :coverage_normalized_units_percentage)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCostCategoryDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         name: "CostCategoryName", # required
    #         rule_version: "CostCategoryExpression.v1", # required, accepts CostCategoryExpression.v1
    #         rules: [ # required
    #           {
    #             value: "CostCategoryValue", # required
    #             rule: { # required
    #               or: [
    #                 {
    #                   # recursive Expression
    #                 },
    #               ],
    #               and: [
    #                 {
    #                   # recursive Expression
    #                 },
    #               ],
    #               not: {
    #                 # recursive Expression
    #               },
    #               dimensions: {
    #                 key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #                 values: ["Value"],
    #               },
    #               tags: {
    #                 key: "TagKey",
    #                 values: ["Value"],
    #               },
    #               cost_categories: {
    #                 key: "CostCategoryName",
    #                 values: ["Value"],
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule schema version in this particular Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   `CreateCostCategoryDefinition` supports dimensions, Tags, and nested
    #   expressions. Currently the only dimensions supported is
    #   `LINKED_ACCOUNT`.
    #
    #   Root level `OR` is not supported. We recommend you create a separate
    #   rule instead.
    #
    #   Rules are processed in order. If there are multiple rules that match
    #   the line item, then the first rule to match is used to determine
    #   that Cost Category value.
    #   @return [Array<Types::CostCategoryRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateCostCategoryDefinitionRequest AWS API Documentation
    #
    class CreateCostCategoryDefinitionRequest < Struct.new(
      :name,
      :rule_version,
      :rules)
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your newly created Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateCostCategoryDefinitionResponse AWS API Documentation
    #
    class CreateCostCategoryDefinitionResponse < Struct.new(
      :cost_category_arn,
      :effective_start)
      include Aws::Structure
    end

    # Context about the current instance.
    #
    # @!attribute [rw] resource_id
    #   Resource ID of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Cost allocation resource tags applied to the instance.
    #   @return [Array<Types::TagValues>]
    #
    # @!attribute [rw] resource_details
    #   Details about the resource and utilization.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] resource_utilization
    #   Utilization information of the current instance during the lookback
    #   period.
    #   @return [Types::ResourceUtilization]
    #
    # @!attribute [rw] reservation_covered_hours_in_lookback_period
    #   Number of hours during the lookback period covered by reservations.
    #   @return [String]
    #
    # @!attribute [rw] savings_plans_covered_hours_in_lookback_period
    #   Number of hours during the lookback period covered by Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_hours_in_lookback_period
    #   Number of hours during the lookback period billed at On Demand
    #   rates.
    #   @return [String]
    #
    # @!attribute [rw] total_running_hours_in_lookback_period
    #   The total number of hours the instance ran during the lookback
    #   period.
    #   @return [String]
    #
    # @!attribute [rw] monthly_cost
    #   Current On Demand cost of operating this instance on a monthly
    #   basis.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that Amazon Web Services used to calculate the
    #   costs for this instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CurrentInstance AWS API Documentation
    #
    class CurrentInstance < Struct.new(
      :resource_id,
      :tags,
      :resource_details,
      :resource_utilization,
      :reservation_covered_hours_in_lookback_period,
      :savings_plans_covered_hours_in_lookback_period,
      :on_demand_hours_in_lookback_period,
      :total_running_hours_in_lookback_period,
      :monthly_cost,
      :currency_code)
      include Aws::Structure
    end

    # The requested data is unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DataUnavailableException AWS API Documentation
    #
    class DataUnavailableException < Struct.new(
      :message)
      include Aws::Structure
    end

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
    #   `2017-01-01`, AWS retrieves cost and usage data starting at
    #   `2017-01-01` up to the end date.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The end of the time period that you want the usage and costs for.
    #   The end date is exclusive. For example, if `end` is `2017-05-01`,
    #   AWS retrieves cost and usage data from the start date up to, but not
    #   including, `2017-05-01`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DateInterval AWS API Documentation
    #
    class DateInterval < Struct.new(
      :start,
      :end)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCostCategoryDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         cost_category_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteCostCategoryDefinitionRequest AWS API Documentation
    #
    class DeleteCostCategoryDefinitionRequest < Struct.new(
      :cost_category_arn)
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_end
    #   The effective end date of the Cost Category as a result of deleting
    #   it. No costs after this date will be categorized by the deleted Cost
    #   Category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteCostCategoryDefinitionResponse AWS API Documentation
    #
    class DeleteCostCategoryDefinitionResponse < Struct.new(
      :cost_category_arn,
      :effective_end)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCostCategoryDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         cost_category_arn: "Arn", # required
    #         effective_on: "ZonedDateTime",
    #       }
    #
    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_on
    #   The date when the Cost Category was effective.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DescribeCostCategoryDefinitionRequest AWS API Documentation
    #
    class DescribeCostCategoryDefinitionRequest < Struct.new(
      :cost_category_arn,
      :effective_on)
      include Aws::Structure
    end

    # @!attribute [rw] cost_category
    #   <i> <b>Cost Category is in public beta for AWS Billing and Cost
    #   Management and is subject to change. Your use of Cost Categories is
    #   subject to the Beta Service Participation terms of the <a
    #   href="https://aws.amazon.com/service-terms/">AWS Service Terms</a>
    #   (Section 1.10).</b> </i>
    #
    #   The structure of Cost Categories. This includes detailed metadata
    #   and the set of rules for the `CostCategory` object.
    #   @return [Types::CostCategory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DescribeCostCategoryDefinitionResponse AWS API Documentation
    #
    class DescribeCostCategoryDefinitionResponse < Struct.new(
      :cost_category)
      include Aws::Structure
    end

    # The metadata that you can use to filter and group your results. You
    # can use `GetDimensionValues` to find specific values.
    #
    # @note When making an API call, you may pass DimensionValues
    #   data as a hash:
    #
    #       {
    #         key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
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
    #
    #   Valid values for the `SERVICE` dimension are `Amazon Elastic Compute
    #   Cloud - Compute`, `Amazon Elasticsearch Service`, `Amazon
    #   ElastiCache`, `Amazon Redshift`, and `Amazon Relational Database
    #   Service`.
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

    # Details about the Amazon EC2 instances that AWS recommends that you
    # purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that AWS recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the recommended reservation. The platform is the
    #   specific combination of operating system, license model, and
    #   software on an instance.
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   Whether the recommended reservation is dedicated or shared.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Whether the recommendation is for a current-generation instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Whether the recommended reservation is size flexible.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/EC2InstanceDetails AWS API Documentation
    #
    class EC2InstanceDetails < Struct.new(
      :family,
      :instance_type,
      :region,
      :availability_zone,
      :platform,
      :tenancy,
      :current_generation,
      :size_flex_eligible)
      include Aws::Structure
    end

    # Details on the Amazon EC2 Resource.
    #
    # @!attribute [rw] hourly_on_demand_rate
    #   Hourly public On Demand rate for the instance type.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of Amazon Web Services instance.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the Amazon Web Services instance. The platform is
    #   the specific combination of operating system, license model, and
    #   software on an instance.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the instance.
    #   @return [String]
    #
    # @!attribute [rw] sku
    #   The SKU of the product.
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   Memory capacity of Amazon Web Services instance.
    #   @return [String]
    #
    # @!attribute [rw] network_performance
    #   Network performance capacity of the Amazon Web Services instance.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   The disk storage of the Amazon Web Services instance (Not EBS
    #   storage).
    #   @return [String]
    #
    # @!attribute [rw] vcpu
    #   Number of VCPU cores in the Amazon Web Services instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/EC2ResourceDetails AWS API Documentation
    #
    class EC2ResourceDetails < Struct.new(
      :hourly_on_demand_rate,
      :instance_type,
      :platform,
      :region,
      :sku,
      :memory,
      :network_performance,
      :storage,
      :vcpu)
      include Aws::Structure
    end

    # Utilization metrics of the instance.
    #
    # @!attribute [rw] max_cpu_utilization_percentage
    #   Maximum observed or expected CPU utilization of the instance.
    #   @return [String]
    #
    # @!attribute [rw] max_memory_utilization_percentage
    #   Maximum observed or expected memory utilization of the instance.
    #   @return [String]
    #
    # @!attribute [rw] max_storage_utilization_percentage
    #   Maximum observed or expected storage utilization of the instance
    #   (does not measure EBS storage).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/EC2ResourceUtilization AWS API Documentation
    #
    class EC2ResourceUtilization < Struct.new(
      :max_cpu_utilization_percentage,
      :max_memory_utilization_percentage,
      :max_storage_utilization_percentage)
      include Aws::Structure
    end

    # The Amazon EC2 hardware specifications that you want AWS to provide
    # recommendations for.
    #
    # @note When making an API call, you may pass EC2Specification
    #   data as a hash:
    #
    #       {
    #         offering_class: "STANDARD", # accepts STANDARD, CONVERTIBLE
    #       }
    #
    # @!attribute [rw] offering_class
    #   Whether you want a recommendation for standard or convertible
    #   reservations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/EC2Specification AWS API Documentation
    #
    class EC2Specification < Struct.new(
      :offering_class)
      include Aws::Structure
    end

    # Details about the Amazon ES instances that AWS recommends that you
    # purchase.
    #
    # @!attribute [rw] instance_class
    #   The class of instance that AWS recommends.
    #   @return [String]
    #
    # @!attribute [rw] instance_size
    #   The size of instance that AWS recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Whether the recommendation is for a current-generation instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Whether the recommended reservation is size flexible.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ESInstanceDetails AWS API Documentation
    #
    class ESInstanceDetails < Struct.new(
      :instance_class,
      :instance_size,
      :region,
      :current_generation,
      :size_flex_eligible)
      include Aws::Structure
    end

    # Details about the Amazon ElastiCache instances that AWS recommends
    # that you purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of node that AWS recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The description of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Whether the recommendation is for a current generation instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Whether the recommended reservation is size flexible.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ElastiCacheInstanceDetails AWS API Documentation
    #
    class ElastiCacheInstanceDetails < Struct.new(
      :family,
      :node_type,
      :region,
      :product_description,
      :current_generation,
      :size_flex_eligible)
      include Aws::Structure
    end

    # Use `Expression` to filter by cost or by usage. There are two
    # patterns:
    #
    # * Simple dimension values - You can set the dimension name and values
    #   for the filters that you plan to use. For example, you can filter
    #   for `REGION==us-east-1 OR REGION==us-west-1`. The `Expression` for
    #   that looks like this:
    #
    #   `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #   “us-west-1” ] \} \}`
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
    #   on `((REGION == us-east-1 OR REGION == us-west-1) OR (TAG.Type ==
    #   Type1)) AND (USAGE_TYPE != DataTransfer)`. The `Expression` for that
    #   looks like this:
    #
    #   `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values":
    #   [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #   "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #   "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #   <note markdown="1"> Because each `Expression` can have only one operator, the service
    #   returns an error if more than one is specified. The following
    #   example shows an `Expression` object that creates an error.
    #
    #    </note>
    #
    #   ` \{ "And": [ ... ], "DimensionValues": \{ "Dimension":
    #   "USAGE_TYPE", "Values": [ "DataTransfer" ] \} \} `
    #
    # <note markdown="1"> For `GetRightsizingRecommendation` action, a combination of OR and NOT
    # is not supported. OR is not supported between different dimensions, or
    # dimensions and tags. NOT operators aren't supported. Dimensions are
    # also limited to `LINKED_ACCOUNT`, `REGION`, or `RIGHTSIZING_TYPE`.
    #
    #  </note>
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
    #               key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #               values: ["Value"],
    #             },
    #             tags: {
    #               key: "TagKey",
    #               values: ["Value"],
    #             },
    #             cost_categories: {
    #               key: "CostCategoryName",
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
    #               key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #               values: ["Value"],
    #             },
    #             tags: {
    #               key: "TagKey",
    #               values: ["Value"],
    #             },
    #             cost_categories: {
    #               key: "CostCategoryName",
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         dimensions: {
    #           key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #           values: ["Value"],
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #         },
    #       }
    #
    # @!attribute [rw] or
    #   Return results that match either `Dimension` object.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] and
    #   Return results that match both `Dimension` objects.
    #   @return [Array<Types::Expression>]
    #
    # @!attribute [rw] not
    #   Return results that don't match a `Dimension` object.
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
    # @!attribute [rw] cost_categories
    #   <i> <b>Cost Category is in public beta for AWS Billing and Cost
    #   Management and is subject to change. Your use of Cost Categories is
    #   subject to the Beta Service Participation terms of the <a
    #   href="https://aws.amazon.com/service-terms/">AWS Service Terms</a>
    #   (Section 1.10).</b> </i>
    #
    #   The specific `CostCategory` used for `Expression`.
    #   @return [Types::CostCategoryValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Expression AWS API Documentation
    #
    class Expression < Struct.new(
      :or,
      :and,
      :not,
      :dimensions,
      :tags,
      :cost_categories)
      include Aws::Structure
    end

    # The forecast created for your query.
    #
    # @!attribute [rw] time_period
    #   The period of time that the forecast covers.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] mean_value
    #   The mean value of the forecast.
    #   @return [String]
    #
    # @!attribute [rw] prediction_interval_lower_bound
    #   The lower limit for the prediction interval.
    #   @return [String]
    #
    # @!attribute [rw] prediction_interval_upper_bound
    #   The upper limit for the prediction interval.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ForecastResult AWS API Documentation
    #
    class ForecastResult < Struct.new(
      :time_period,
      :mean_value,
      :prediction_interval_lower_bound,
      :prediction_interval_upper_bound)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCostAndUsageRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         metrics: ["MetricName"],
    #         group_by: [
    #           {
    #             type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
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
    #   Sets the AWS cost granularity to `MONTHLY` or `DAILY`, or `HOURLY`.
    #   If `Granularity` isn't set, the response object doesn't include
    #   the `Granularity`, either `MONTHLY` or `DAILY`, or `HOURLY`.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters AWS costs by different dimensions. For example, you can
    #   specify `SERVICE` and `LINKED_ACCOUNT` and get the costs that are
    #   associated with that account's usage of that service. You can nest
    #   `Expression` objects to define any combination of dimension filters.
    #   For more information, see [Expression][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] metrics
    #   Which metrics are returned in the query. For more information about
    #   blended and unblended rates, see [Why does the "blended"
    #   annotation appear on some line items in my bill?][1].
    #
    #   Valid values are `AmortizedCost`, `BlendedCost`, `NetAmortizedCost`,
    #   `NetUnblendedCost`, `NormalizedUsageAmount`, `UnblendedCost`, and
    #   `UsageQuantity`.
    #
    #   <note markdown="1"> If you return the `UsageQuantity` metric, the service aggregates all
    #   usage numbers without taking into account the units. For example, if
    #   you aggregate `usageQuantity` across all of Amazon EC2, the results
    #   aren't meaningful because Amazon EC2 compute hours and data
    #   transfer are measured in different units (for example, hours vs.
    #   GB). To get more meaningful `UsageQuantity` metrics, filter by
    #   `UsageType` or `UsageTypeGroups`.
    #
    #    </note>
    #
    #   `Metrics` is required for `GetCostAndUsage` requests.
    #
    #
    #
    #   [1]: https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_by
    #   You can group AWS costs using up to two different groups, either
    #   dimensions, tag keys, or both.
    #
    #   When you group by tag key, you get all tag values, including empty
    #   strings.
    #
    #   Valid values are `AZ`, `INSTANCE_TYPE`, `LEGAL_ENTITY_NAME`,
    #   `LINKED_ACCOUNT`, `OPERATION`, `PLATFORM`, `PURCHASE_TYPE`,
    #   `SERVICE`, `TAGS`, `TENANCY`, `RECORD_TYPE`, and `USAGE_TYPE`.
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
    #   The groups that are specified by the `Filter` or `GroupBy`
    #   parameters in the request.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] results_by_time
    #   The time period that is covered by the results in the response.
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

    # @note When making an API call, you may pass GetCostAndUsageWithResourcesRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         metrics: ["MetricName"],
    #         group_by: [
    #           {
    #             type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #             key: "GroupDefinitionKey",
    #           },
    #         ],
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] time_period
    #   Sets the start and end dates for retrieving Amazon Web Services
    #   costs. The range must be within the last 14 days (the start date
    #   cannot be earlier than 14 days ago). The start date is inclusive,
    #   but the end date is exclusive. For example, if `start` is
    #   `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data
    #   is retrieved from `2017-01-01` up to and including `2017-04-30` but
    #   not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] granularity
    #   Sets the AWS cost granularity to `MONTHLY`, `DAILY`, or `HOURLY`. If
    #   `Granularity` isn't set, the response object doesn't include the
    #   `Granularity`, `MONTHLY`, `DAILY`, or `HOURLY`.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters Amazon Web Services costs by different dimensions. For
    #   example, you can specify `SERVICE` and `LINKED_ACCOUNT` and get the
    #   costs that are associated with that account's usage of that
    #   service. You can nest `Expression` objects to define any combination
    #   of dimension filters. For more information, see [Expression][1].
    #
    #   The `GetCostAndUsageWithResources` operation requires that you
    #   either group by or filter by a `ResourceId`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] metrics
    #   Which metrics are returned in the query. For more information about
    #   blended and unblended rates, see [Why does the "blended"
    #   annotation appear on some line items in my bill?][1].
    #
    #   Valid values are `AmortizedCost`, `BlendedCost`, `NetAmortizedCost`,
    #   `NetUnblendedCost`, `NormalizedUsageAmount`, `UnblendedCost`, and
    #   `UsageQuantity`.
    #
    #   <note markdown="1"> If you return the `UsageQuantity` metric, the service aggregates all
    #   usage numbers without taking the units into account. For example, if
    #   you aggregate `usageQuantity` across all of Amazon EC2, the results
    #   aren't meaningful because Amazon EC2 compute hours and data
    #   transfer are measured in different units (for example, hours vs.
    #   GB). To get more meaningful `UsageQuantity` metrics, filter by
    #   `UsageType` or `UsageTypeGroups`.
    #
    #    </note>
    #
    #   `Metrics` is required for `GetCostAndUsageWithResources` requests.
    #
    #
    #
    #   [1]: https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_by
    #   You can group Amazon Web Services costs using up to two different
    #   groups: either dimensions, tag keys, or both.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageWithResourcesRequest AWS API Documentation
    #
    class GetCostAndUsageWithResourcesRequest < Struct.new(
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
    #   The groups that are specified by the `Filter` or `GroupBy`
    #   parameters in the request.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] results_by_time
    #   The time period that is covered by the results in the response.
    #   @return [Array<Types::ResultByTime>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageWithResourcesResponse AWS API Documentation
    #
    class GetCostAndUsageWithResourcesResponse < Struct.new(
      :next_page_token,
      :group_definitions,
      :results_by_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCostForecastRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         metric: "BLENDED_COST", # required, accepts BLENDED_COST, UNBLENDED_COST, AMORTIZED_COST, NET_UNBLENDED_COST, NET_AMORTIZED_COST, USAGE_QUANTITY, NORMALIZED_USAGE_AMOUNT
    #         granularity: "DAILY", # required, accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         prediction_interval_level: 1,
    #       }
    #
    # @!attribute [rw] time_period
    #   The period of time that you want the forecast to cover.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] metric
    #   Which metric Cost Explorer uses to create your forecast. For more
    #   information about blended and unblended rates, see [Why does the
    #   "blended" annotation appear on some line items in my bill?][1].
    #
    #   Valid values for a `GetCostForecast` call are the following:
    #
    #   * AMORTIZED\_COST
    #
    #   * BLENDED\_COST
    #
    #   * NET\_AMORTIZED\_COST
    #
    #   * NET\_UNBLENDED\_COST
    #
    #   * UNBLENDED\_COST
    #
    #
    #
    #   [1]: https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #   @return [String]
    #
    # @!attribute [rw] granularity
    #   How granular you want the forecast to be. You can get 3 months of
    #   `DAILY` forecasts or 12 months of `MONTHLY` forecasts.
    #
    #   The `GetCostForecast` operation supports only `DAILY` and `MONTHLY`
    #   granularities.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The filters that you want to use to filter your forecast. Cost
    #   Explorer API supports all of the Cost Explorer filters.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] prediction_interval_level
    #   Cost Explorer always returns the mean forecast as a single point.
    #   You can request a prediction interval around the mean by specifying
    #   a confidence level. The higher the confidence level, the more
    #   confident Cost Explorer is about the actual value falling in the
    #   prediction interval. Higher confidence levels result in wider
    #   prediction intervals.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostForecastRequest AWS API Documentation
    #
    class GetCostForecastRequest < Struct.new(
      :time_period,
      :metric,
      :granularity,
      :filter,
      :prediction_interval_level)
      include Aws::Structure
    end

    # @!attribute [rw] total
    #   How much you are forecasted to spend over the forecast period, in
    #   `USD`.
    #   @return [Types::MetricValue]
    #
    # @!attribute [rw] forecast_results_by_time
    #   The forecasts for your query, in order. For `DAILY` forecasts, this
    #   is a list of days. For `MONTHLY` forecasts, this is a list of
    #   months.
    #   @return [Array<Types::ForecastResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostForecastResponse AWS API Documentation
    #
    class GetCostForecastResponse < Struct.new(
      :total,
      :forecast_results_by_time)
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
    #         dimension: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #         context: "COST_AND_USAGE", # accepts COST_AND_USAGE, RESERVATIONS, SAVINGS_PLANS
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
    #   The name of the dimension. Each `Dimension` is available for a
    #   different `Context`. For more information, see `Context`.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The context for the call to `GetDimensionValues`. This can be
    #   `RESERVATIONS` or `COST_AND_USAGE`. The default value is
    #   `COST_AND_USAGE`. If the context is set to `RESERVATIONS`, the
    #   resulting dimension values can be used in the
    #   `GetReservationUtilization` operation. If the context is set to
    #   `COST_AND_USAGE`, the resulting dimension values can be used in the
    #   `GetCostAndUsage` operation.
    #
    #   If you set the context to `COST_AND_USAGE`, you can use the
    #   following dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * DATABASE\_ENGINE - The Amazon Relational Database Service
    #     database. Examples are Aurora or MySQL.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LEGAL\_ENTITY\_NAME - The name of the organization that sells you
    #     AWS services, such as Amazon Web Services.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the AWS ID of the member account.
    #
    #   * OPERATING\_SYSTEM - The operating system. Examples are Windows or
    #     Linux.
    #
    #   * OPERATION - The action performed. Examples include `RunInstance`
    #     and `CreateBucket`.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows
    #     or Linux.
    #
    #   * PURCHASE\_TYPE - The reservation type of the purchase to which
    #     this usage is related. Examples include On-Demand Instances and
    #     Standard Reserved Instances.
    #
    #   * SERVICE - The AWS service such as Amazon DynamoDB.
    #
    #   * USAGE\_TYPE - The type of usage. An example is
    #     DataTransfer-In-Bytes. The response for the `GetDimensionValues`
    #     operation includes a unit attribute. Examples include GB and Hrs.
    #
    #   * USAGE\_TYPE\_GROUP - The grouping of common usage types. An
    #     example is Amazon EC2: CloudWatch – Alarms. The response for this
    #     operation includes a unit attribute.
    #
    #   * RECORD\_TYPE - The different types of charges such as RI fees,
    #     usage costs, tax refunds, and credits.
    #
    #   * RESOURCE\_ID - The unique identifier of the resource. ResourceId
    #     is an opt-in feature only available for last 14 days for
    #     EC2-Compute Service.
    #
    #   If you set the context to `RESERVATIONS`, you can use the following
    #   dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * CACHE\_ENGINE - The Amazon ElastiCache operating system. Examples
    #     are Windows or Linux.
    #
    #   * DEPLOYMENT\_OPTION - The scope of Amazon Relational Database
    #     Service deployments. Valid values are `SingleAZ` and `MultiAZ`.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the AWS ID of the member account.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows
    #     or Linux.
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
    #   If you set the context to `SAVINGS_PLANS`, you can use the following
    #   dimensions for searching:
    #
    #   * SAVINGS\_PLANS\_TYPE - Type of Savings Plans (EC2 Instance or
    #     Compute)
    #
    #   * PAYMENT\_OPTION - Payment option for the given Savings Plans (for
    #     example, All Upfront)
    #
    #   * REGION - The AWS Region.
    #
    #   * INSTANCE\_TYPE\_FAMILY - The family of instances (For example,
    #     `m5`)
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the AWS ID of the member account.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plan
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
    #   are available only for a specific context.
    #
    #   If you set the context to `COST_AND_USAGE`, you can use the
    #   following dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * DATABASE\_ENGINE - The Amazon Relational Database Service
    #     database. Examples are Aurora or MySQL.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LEGAL\_ENTITY\_NAME - The name of the organization that sells you
    #     AWS services, such as Amazon Web Services.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the AWS ID of the member account.
    #
    #   * OPERATING\_SYSTEM - The operating system. Examples are Windows or
    #     Linux.
    #
    #   * OPERATION - The action performed. Examples include `RunInstance`
    #     and `CreateBucket`.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows
    #     or Linux.
    #
    #   * PURCHASE\_TYPE - The reservation type of the purchase to which
    #     this usage is related. Examples include On-Demand Instances and
    #     Standard Reserved Instances.
    #
    #   * SERVICE - The AWS service such as Amazon DynamoDB.
    #
    #   * USAGE\_TYPE - The type of usage. An example is
    #     DataTransfer-In-Bytes. The response for the `GetDimensionValues`
    #     operation includes a unit attribute. Examples include GB and Hrs.
    #
    #   * USAGE\_TYPE\_GROUP - The grouping of common usage types. An
    #     example is Amazon EC2: CloudWatch – Alarms. The response for this
    #     operation includes a unit attribute.
    #
    #   * RECORD\_TYPE - The different types of charges such as RI fees,
    #     usage costs, tax refunds, and credits.
    #
    #   * RESOURCE\_ID - The unique identifier of the resource. ResourceId
    #     is an opt-in feature only available for last 14 days for
    #     EC2-Compute Service.
    #
    #   If you set the context to `RESERVATIONS`, you can use the following
    #   dimensions for searching:
    #
    #   * AZ - The Availability Zone. An example is `us-east-1a`.
    #
    #   * CACHE\_ENGINE - The Amazon ElastiCache operating system. Examples
    #     are Windows or Linux.
    #
    #   * DEPLOYMENT\_OPTION - The scope of Amazon Relational Database
    #     Service deployments. Valid values are `SingleAZ` and `MultiAZ`.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the AWS ID of the member account.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows
    #     or Linux.
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
    #   If you set the context to `SAVINGS_PLANS`, you can use the following
    #   dimensions for searching:
    #
    #   * SAVINGS\_PLANS\_TYPE - Type of Savings Plans (EC2 Instance or
    #     Compute)
    #
    #   * PAYMENT\_OPTION - Payment option for the given Savings Plans (for
    #     example, All Upfront)
    #
    #   * REGION - The AWS Region.
    #
    #   * INSTANCE\_TYPE\_FAMILY - The family of instances (For example,
    #     `m5`)
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the AWS ID of the member account.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plan
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

    # You can use the following request parameters to query for how much of
    # your instance usage a reservation covered.
    #
    # @note When making an API call, you may pass GetReservationCoverageRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         group_by: [
    #           {
    #             type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #             key: "GroupDefinitionKey",
    #           },
    #         ],
    #         granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         metrics: ["MetricName"],
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] time_period
    #   The start and end dates of the period that you want to retrieve data
    #   about reservation coverage for. You can retrieve data for a maximum
    #   of 13 months: the last 12 months and the current month. The start
    #   date is inclusive, but the end date is exclusive. For example, if
    #   `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and
    #   usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] group_by
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
    #   * TENANCY
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] granularity
    #   The granularity of the AWS cost data for the reservation. Valid
    #   values are `MONTHLY` and `DAILY`.
    #
    #   If `GroupBy` is set, `Granularity` can't be set. If `Granularity`
    #   isn't set, the response object doesn't include `Granularity`,
    #   either `MONTHLY` or `DAILY`.
    #
    #   The `GetReservationCoverage` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #   @return [String]
    #
    # @!attribute [rw] filter
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
    #   `GetReservationCoverage` uses the same [Expression][1] object as the
    #   other operations, but only `AND` is supported among each dimension.
    #   You can nest only one level deep. If there are multiple values for a
    #   dimension, they are OR'd together.
    #
    #   If you don't provide a `SERVICE` filter, Cost Explorer defaults to
    #   EC2.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] metrics
    #   The measurement that you want your reservation coverage reported in.
    #
    #   Valid values are `Hour`, `Unit`, and `Cost`. You can use multiple
    #   values in a request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationCoverageRequest AWS API Documentation
    #
    class GetReservationCoverageRequest < Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      :next_page_token)
      include Aws::Structure
    end

    # @!attribute [rw] coverages_by_time
    #   The amount of time that your reservations covered.
    #   @return [Array<Types::CoverageByTime>]
    #
    # @!attribute [rw] total
    #   The total amount of instance usage that a reservation covered.
    #   @return [Types::Coverage]
    #
    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationCoverageResponse AWS API Documentation
    #
    class GetReservationCoverageResponse < Struct.new(
      :coverages_by_time,
      :total,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReservationPurchaseRecommendationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "GenericString",
    #         service: "GenericString", # required
    #         account_scope: "PAYER", # accepts PAYER, LINKED
    #         lookback_period_in_days: "SEVEN_DAYS", # accepts SEVEN_DAYS, THIRTY_DAYS, SIXTY_DAYS
    #         term_in_years: "ONE_YEAR", # accepts ONE_YEAR, THREE_YEARS
    #         payment_option: "NO_UPFRONT", # accepts NO_UPFRONT, PARTIAL_UPFRONT, ALL_UPFRONT, LIGHT_UTILIZATION, MEDIUM_UTILIZATION, HEAVY_UTILIZATION
    #         service_specification: {
    #           ec2_specification: {
    #             offering_class: "STANDARD", # accepts STANDARD, CONVERTIBLE
    #           },
    #         },
    #         page_size: 1,
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID that is associated with the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The specific service that you want recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want recommendations for. `PAYER` means
    #   that AWS includes the master account and any member accounts when it
    #   calculates its recommendations. `LINKED` means that AWS includes
    #   only member accounts when it calculates its recommendations.
    #
    #   Valid values are `PAYER` and `LINKED`.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The number of previous days that you want AWS to consider when it
    #   calculates your recommendations.
    #   @return [String]
    #
    # @!attribute [rw] term_in_years
    #   The reservation term that you want recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The reservation purchase option that you want recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] service_specification
    #   The hardware specifications for the service instances that you want
    #   recommendations for, such as standard or convertible Amazon EC2
    #   instances.
    #   @return [Types::ServiceSpecification]
    #
    # @!attribute [rw] page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationPurchaseRecommendationRequest AWS API Documentation
    #
    class GetReservationPurchaseRecommendationRequest < Struct.new(
      :account_id,
      :service,
      :account_scope,
      :lookback_period_in_days,
      :term_in_years,
      :payment_option,
      :service_specification,
      :page_size,
      :next_page_token)
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   Information about this specific recommendation call, such as the
    #   time stamp for when Cost Explorer generated this recommendation.
    #   @return [Types::ReservationPurchaseRecommendationMetadata]
    #
    # @!attribute [rw] recommendations
    #   Recommendations for reservations to purchase.
    #   @return [Array<Types::ReservationPurchaseRecommendation>]
    #
    # @!attribute [rw] next_page_token
    #   The pagination token for the next set of retrievable results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationPurchaseRecommendationResponse AWS API Documentation
    #
    class GetReservationPurchaseRecommendationResponse < Struct.new(
      :metadata,
      :recommendations,
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
    #             type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #             key: "GroupDefinitionKey",
    #           },
    #         ],
    #         granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] time_period
    #   Sets the start and end dates for retrieving RI utilization. The
    #   start date is inclusive, but the end date is exclusive. For example,
    #   if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost
    #   and usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] group_by
    #   Groups only by `SUBSCRIPTION_ID`. Metadata is included.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] granularity
    #   If `GroupBy` is set, `Granularity` can't be set. If `Granularity`
    #   isn't set, the response object doesn't include `Granularity`,
    #   either `MONTHLY` or `DAILY`. If both `GroupBy` and `Granularity`
    #   aren't set, `GetReservationUtilization` defaults to `DAILY`.
    #
    #   The `GetReservationUtilization` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters utilization data by dimensions. You can filter by the
    #   following dimensions:
    #
    #   * AZ
    #
    #   * CACHE\_ENGINE
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
    #   `GetReservationUtilization` uses the same [Expression][1] object as
    #   the other operations, but only `AND` is supported among each
    #   dimension, and nesting is supported up to only one level deep. If
    #   there are multiple values for a dimension, they are OR'd together.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
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
    #   The amount of time that you used your RIs.
    #   @return [Array<Types::UtilizationByTime>]
    #
    # @!attribute [rw] total
    #   The total amount of time that you used your RIs.
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

    # @note When making an API call, you may pass GetRightsizingRecommendationRequest
    #   data as a hash:
    #
    #       {
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         service: "GenericString", # required
    #         page_size: 1,
    #         next_page_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] filter
    #   Use `Expression` to filter by cost or by usage. There are two
    #   patterns:
    #
    #   * Simple dimension values - You can set the dimension name and
    #     values for the filters that you plan to use. For example, you can
    #     filter for `REGION==us-east-1 OR REGION==us-west-1`. The
    #     `Expression` for that looks like this:
    #
    #     `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #     “us-west-1” ] \} \}`
    #
    #     The list of dimension values are OR'd together to retrieve cost
    #     or usage data. You can create `Expression` and `DimensionValues`
    #     objects using either `with*` methods or `set*` methods in multiple
    #     lines.
    #
    #   * Compound dimension values with logical operations - You can use
    #     multiple `Expression` types and the logical operators `AND/OR/NOT`
    #     to create a list of one or more `Expression` objects. This allows
    #     you to filter on more advanced options. For example, you can
    #     filter on `((REGION == us-east-1 OR REGION == us-west-1) OR
    #     (TAG.Type == Type1)) AND (USAGE_TYPE != DataTransfer)`. The
    #     `Expression` for that looks like this:
    #
    #     `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION",
    #     "Values": [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key":
    #     "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not":
    #     \{"Dimensions": \{ "Key": "USAGE_TYPE", "Values": ["DataTransfer"]
    #     \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error.
    #
    #      </note>
    #
    #     ` \{ "And": [ ... ], "DimensionValues": \{ "Dimension":
    #     "USAGE_TYPE", "Values": [ "DataTransfer" ] \} \} `
    #
    #   <note markdown="1"> For `GetRightsizingRecommendation` action, a combination of OR and
    #   NOT is not supported. OR is not supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    </note>
    #   @return [Types::Expression]
    #
    # @!attribute [rw] service
    #   The specific service that you want recommendations for. The only
    #   valid value for `GetRightsizingRecommendation` is "`AmazonEC2`".
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetRightsizingRecommendationRequest AWS API Documentation
    #
    class GetRightsizingRecommendationRequest < Struct.new(
      :filter,
      :service,
      :page_size,
      :next_page_token)
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   Information regarding this specific recommendation set.
    #   @return [Types::RightsizingRecommendationMetadata]
    #
    # @!attribute [rw] summary
    #   Summary of this recommendation set.
    #   @return [Types::RightsizingRecommendationSummary]
    #
    # @!attribute [rw] rightsizing_recommendations
    #   Recommendations to rightsize resources.
    #   @return [Array<Types::RightsizingRecommendation>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetRightsizingRecommendationResponse AWS API Documentation
    #
    class GetRightsizingRecommendationResponse < Struct.new(
      :metadata,
      :summary,
      :rightsizing_recommendations,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSavingsPlansCoverageRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         group_by: [
    #           {
    #             type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
    #             key: "GroupDefinitionKey",
    #           },
    #         ],
    #         granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         metrics: ["MetricName"],
    #         next_token: "NextPageToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] time_period
    #   The time period that you want the usage and costs for. The `Start`
    #   date must be within 13 months. The `End` date must be after the
    #   `Start` date, and before the current date. Future dates can't be
    #   used as an `End` date.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] group_by
    #   You can group the data using the attributes `INSTANCE_FAMILY`,
    #   `REGION`, or `SERVICE`.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] granularity
    #   The granularity of the Amazon Web Services cost data for your
    #   Savings Plans. `Granularity` can't be set if `GroupBy` is set.
    #
    #   The `GetSavingsPlansCoverage` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters Savings Plans coverage data by dimensions. You can filter
    #   data for Savings Plans usage with the following dimensions:
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `REGION`
    #
    #   * `SERVICE`
    #
    #   * `INSTANCE_FAMILY`
    #
    #   `GetSavingsPlansCoverage` uses the same [Expression][1] object as
    #   the other operations, but only `AND` is supported among each
    #   dimension. If there are multiple values for a dimension, they are
    #   OR'd together.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] metrics
    #   The measurement that you want your Savings Plans coverage reported
    #   in. The only valid value is `SpendCoveredBySavingsPlans`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to be returned in a response. The default is
    #   `20`, with a minimum value of `1`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansCoverageRequest AWS API Documentation
    #
    class GetSavingsPlansCoverageRequest < Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] savings_plans_coverages
    #   The amount of spend that your Savings Plans covered.
    #   @return [Array<Types::SavingsPlansCoverage>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansCoverageResponse AWS API Documentation
    #
    class GetSavingsPlansCoverageResponse < Struct.new(
      :savings_plans_coverages,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSavingsPlansPurchaseRecommendationRequest
    #   data as a hash:
    #
    #       {
    #         savings_plans_type: "COMPUTE_SP", # required, accepts COMPUTE_SP, EC2_INSTANCE_SP
    #         term_in_years: "ONE_YEAR", # required, accepts ONE_YEAR, THREE_YEARS
    #         payment_option: "NO_UPFRONT", # required, accepts NO_UPFRONT, PARTIAL_UPFRONT, ALL_UPFRONT, LIGHT_UTILIZATION, MEDIUM_UTILIZATION, HEAVY_UTILIZATION
    #         next_page_token: "NextPageToken",
    #         page_size: 1,
    #         lookback_period_in_days: "SEVEN_DAYS", # required, accepts SEVEN_DAYS, THIRTY_DAYS, SIXTY_DAYS
    #       }
    #
    # @!attribute [rw] savings_plans_type
    #   The Savings Plans recommendation type requested.
    #   @return [String]
    #
    # @!attribute [rw] term_in_years
    #   The savings plan recommendation term used to generated these
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option used to generate these recommendations.
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #   @return [Integer]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The lookback period used to generate the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansPurchaseRecommendationRequest AWS API Documentation
    #
    class GetSavingsPlansPurchaseRecommendationRequest < Struct.new(
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :next_page_token,
      :page_size,
      :lookback_period_in_days)
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   Information regarding this specific recommendation set.
    #   @return [Types::SavingsPlansPurchaseRecommendationMetadata]
    #
    # @!attribute [rw] savings_plans_purchase_recommendation
    #   Contains your request parameters, Savings Plan Recommendations
    #   Summary, and Details.
    #   @return [Types::SavingsPlansPurchaseRecommendation]
    #
    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. AWS provides the
    #   token when the response from a previous call has more results than
    #   the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansPurchaseRecommendationResponse AWS API Documentation
    #
    class GetSavingsPlansPurchaseRecommendationResponse < Struct.new(
      :metadata,
      :savings_plans_purchase_recommendation,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSavingsPlansUtilizationDetailsRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         next_token: "NextPageToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] time_period
    #   The time period that you want the usage and costs for. The `Start`
    #   date must be within 13 months. The `End` date must be after the
    #   `Start` date, and before the current date. Future dates can't be
    #   used as an `End` date.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] filter
    #   Filters Savings Plans utilization coverage data for active Savings
    #   Plans dimensions. You can filter data with the following dimensions:
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `SAVINGS_PLAN_ARN`
    #
    #   * `REGION`
    #
    #   * `PAYMENT_OPTION`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   `GetSavingsPlansUtilizationDetails` uses the same [Expression][1]
    #   object as the other operations, but only `AND` is supported among
    #   each dimension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to be returned in a response. The default is
    #   `20`, with a minimum value of `1`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilizationDetailsRequest AWS API Documentation
    #
    class GetSavingsPlansUtilizationDetailsRequest < Struct.new(
      :time_period,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] savings_plans_utilization_details
    #   Retrieves a single daily or monthly Savings Plans utilization rate
    #   and details for your account.
    #   @return [Array<Types::SavingsPlansUtilizationDetail>]
    #
    # @!attribute [rw] total
    #   The total Savings Plans utilization, regardless of time period.
    #   @return [Types::SavingsPlansUtilizationAggregates]
    #
    # @!attribute [rw] time_period
    #   The time period that you want the usage and costs for.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilizationDetailsResponse AWS API Documentation
    #
    class GetSavingsPlansUtilizationDetailsResponse < Struct.new(
      :savings_plans_utilization_details,
      :total,
      :time_period,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSavingsPlansUtilizationRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         granularity: "DAILY", # accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] time_period
    #   The time period that you want the usage and costs for. The `Start`
    #   date must be within 13 months. The `End` date must be after the
    #   `Start` date, and before the current date. Future dates can't be
    #   used as an `End` date.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] granularity
    #   The granularity of the Amazon Web Services utillization data for
    #   your Savings Plans.
    #
    #   The `GetSavingsPlansUtilization` operation supports only `DAILY` and
    #   `MONTHLY` granularities.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters Savings Plans utilization coverage data for active Savings
    #   Plans dimensions. You can filter data with the following dimensions:
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `SAVINGS_PLAN_ARN`
    #
    #   * `SAVINGS_PLANS_TYPE`
    #
    #   * `REGION`
    #
    #   * `PAYMENT_OPTION`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   `GetSavingsPlansUtilization` uses the same [Expression][1] object as
    #   the other operations, but only `AND` is supported among each
    #   dimension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilizationRequest AWS API Documentation
    #
    class GetSavingsPlansUtilizationRequest < Struct.new(
      :time_period,
      :granularity,
      :filter)
      include Aws::Structure
    end

    # @!attribute [rw] savings_plans_utilizations_by_time
    #   The amount of cost/commitment you used your Savings Plans. This
    #   allows you to specify date ranges.
    #   @return [Array<Types::SavingsPlansUtilizationByTime>]
    #
    # @!attribute [rw] total
    #   The total amount of cost/commitment that you used your Savings
    #   Plans, regardless of date ranges.
    #   @return [Types::SavingsPlansUtilizationAggregates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilizationResponse AWS API Documentation
    #
    class GetSavingsPlansUtilizationResponse < Struct.new(
      :savings_plans_utilizations_by_time,
      :total)
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

    # @note When making an API call, you may pass GetUsageForecastRequest
    #   data as a hash:
    #
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         metric: "BLENDED_COST", # required, accepts BLENDED_COST, UNBLENDED_COST, AMORTIZED_COST, NET_UNBLENDED_COST, NET_AMORTIZED_COST, USAGE_QUANTITY, NORMALIZED_USAGE_AMOUNT
    #         granularity: "DAILY", # required, accepts DAILY, MONTHLY, HOURLY
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
    #             key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #             values: ["Value"],
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #           },
    #         },
    #         prediction_interval_level: 1,
    #       }
    #
    # @!attribute [rw] time_period
    #   The start and end dates of the period that you want to retrieve
    #   usage forecast for. The start date is inclusive, but the end date is
    #   exclusive. For example, if `start` is `2017-01-01` and `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] metric
    #   Which metric Cost Explorer uses to create your forecast.
    #
    #   Valid values for a `GetUsageForecast` call are the following:
    #
    #   * USAGE\_QUANTITY
    #
    #   * NORMALIZED\_USAGE\_AMOUNT
    #   @return [String]
    #
    # @!attribute [rw] granularity
    #   How granular you want the forecast to be. You can get 3 months of
    #   `DAILY` forecasts or 12 months of `MONTHLY` forecasts.
    #
    #   The `GetUsageForecast` operation supports only `DAILY` and `MONTHLY`
    #   granularities.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The filters that you want to use to filter your forecast. Cost
    #   Explorer API supports all of the Cost Explorer filters.
    #   @return [Types::Expression]
    #
    # @!attribute [rw] prediction_interval_level
    #   Cost Explorer always returns the mean forecast as a single point.
    #   You can request a prediction interval around the mean by specifying
    #   a confidence level. The higher the confidence level, the more
    #   confident Cost Explorer is about the actual value falling in the
    #   prediction interval. Higher confidence levels result in wider
    #   prediction intervals.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetUsageForecastRequest AWS API Documentation
    #
    class GetUsageForecastRequest < Struct.new(
      :time_period,
      :metric,
      :granularity,
      :filter,
      :prediction_interval_level)
      include Aws::Structure
    end

    # @!attribute [rw] total
    #   How much you're forecasted to use over the forecast period.
    #   @return [Types::MetricValue]
    #
    # @!attribute [rw] forecast_results_by_time
    #   The forecasts for your query, in order. For `DAILY` forecasts, this
    #   is a list of days. For `MONTHLY` forecasts, this is a list of
    #   months.
    #   @return [Array<Types::ForecastResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetUsageForecastResponse AWS API Documentation
    #
    class GetUsageForecastResponse < Struct.new(
      :total,
      :forecast_results_by_time)
      include Aws::Structure
    end

    # One level of grouped data in the results.
    #
    # @!attribute [rw] keys
    #   The keys that are included in this group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metrics
    #   The metrics that are included in this group.
    #   @return [Hash<String,Types::MetricValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Group AWS API Documentation
    #
    class Group < Struct.new(
      :keys,
      :metrics)
      include Aws::Structure
    end

    # Represents a group when you specify a group by criteria or in the
    # response to a query with a specific grouping.
    #
    # @note When making an API call, you may pass GroupDefinition
    #   data as a hash:
    #
    #       {
    #         type: "DIMENSION", # accepts DIMENSION, TAG, COST_CATEGORY
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

    # Details about the instances that AWS recommends that you purchase.
    #
    # @!attribute [rw] ec2_instance_details
    #   The Amazon EC2 instances that AWS recommends that you purchase.
    #   @return [Types::EC2InstanceDetails]
    #
    # @!attribute [rw] rds_instance_details
    #   The Amazon RDS instances that AWS recommends that you purchase.
    #   @return [Types::RDSInstanceDetails]
    #
    # @!attribute [rw] redshift_instance_details
    #   The Amazon Redshift instances that AWS recommends that you purchase.
    #   @return [Types::RedshiftInstanceDetails]
    #
    # @!attribute [rw] elasticache_instance_details
    #   The ElastiCache instances that AWS recommends that you purchase.
    #   @return [Types::ElastiCacheInstanceDetails]
    #
    # @!attribute [rw] es_instance_details
    #   The Amazon ES instances that AWS recommends that you purchase.
    #   @return [Types::ESInstanceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/InstanceDetails AWS API Documentation
    #
    class InstanceDetails < Struct.new(
      :ec2_instance_details,
      :rds_instance_details,
      :redshift_instance_details,
      :elasticache_instance_details,
      :es_instance_details)
      include Aws::Structure
    end

    # The pagination token is invalid. Try again without a pagination token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You made too many calls in a short period of time. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCostCategoryDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         effective_on: "ZonedDateTime",
    #         next_token: "NextPageToken",
    #       }
    #
    # @!attribute [rw] effective_on
    #   The date when the Cost Category was effective.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    #   You can use this information to retrieve the full Cost Category
    #   information using `DescribeCostCategory`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListCostCategoryDefinitionsRequest AWS API Documentation
    #
    class ListCostCategoryDefinitionsRequest < Struct.new(
      :effective_on,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_references
    #   A reference to a Cost Category containing enough information to
    #   identify the Cost Category.
    #   @return [Array<Types::CostCategoryReference>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListCostCategoryDefinitionsResponse AWS API Documentation
    #
    class ListCostCategoryDefinitionsResponse < Struct.new(
      :cost_category_references,
      :next_token)
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

    # Details on the modification recommendation.
    #
    # @!attribute [rw] target_instances
    #   Identifies whether this instance type is the Amazon Web Services
    #   default recommendation.
    #   @return [Array<Types::TargetInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ModifyRecommendationDetail AWS API Documentation
    #
    class ModifyRecommendationDetail < Struct.new(
      :target_instances)
      include Aws::Structure
    end

    # Details about the Amazon RDS instances that AWS recommends that you
    # purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that AWS recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] database_engine
    #   The database engine that the recommended reservation supports.
    #   @return [String]
    #
    # @!attribute [rw] database_edition
    #   The database edition that the recommended reservation supports.
    #   @return [String]
    #
    # @!attribute [rw] deployment_option
    #   Whether the recommendation is for a reservation in a single
    #   Availability Zone or a reservation with a backup in a second
    #   Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model that the recommended reservation supports.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Whether the recommendation is for a current-generation instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Whether the recommended reservation is size flexible.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RDSInstanceDetails AWS API Documentation
    #
    class RDSInstanceDetails < Struct.new(
      :family,
      :instance_type,
      :region,
      :database_engine,
      :database_edition,
      :deployment_option,
      :license_model,
      :current_generation,
      :size_flex_eligible)
      include Aws::Structure
    end

    # Details about the Amazon Redshift instances that AWS recommends that
    # you purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of node that AWS recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Whether the recommendation is for a current-generation instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Whether the recommended reservation is size flexible.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RedshiftInstanceDetails AWS API Documentation
    #
    class RedshiftInstanceDetails < Struct.new(
      :family,
      :node_type,
      :region,
      :current_generation,
      :size_flex_eligible)
      include Aws::Structure
    end

    # Your request parameters changed between pages. Try again with the old
    # parameters or without a pagination token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RequestChangedException AWS API Documentation
    #
    class RequestChangedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The aggregated numbers for your reservation usage.
    #
    # @!attribute [rw] utilization_percentage
    #   The percentage of reservation time that you used.
    #   @return [String]
    #
    # @!attribute [rw] utilization_percentage_in_units
    #   The percentage of Amazon EC2 reservation time that you used,
    #   converted to normalized units. Normalized units are available only
    #   for Amazon EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] purchased_hours
    #   How many reservation hours that you purchased.
    #   @return [String]
    #
    # @!attribute [rw] purchased_units
    #   How many Amazon EC2 reservation hours that you purchased, converted
    #   to normalized units. Normalized units are available only for Amazon
    #   EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] total_actual_hours
    #   The total number of reservation hours that you used.
    #   @return [String]
    #
    # @!attribute [rw] total_actual_units
    #   The total number of Amazon EC2 reservation hours that you used,
    #   converted to normalized units. Normalized units are available only
    #   for Amazon EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] unused_hours
    #   The number of reservation hours that you didn't use.
    #   @return [String]
    #
    # @!attribute [rw] unused_units
    #   The number of Amazon EC2 reservation hours that you didn't use,
    #   converted to normalized units. Normalized units are available only
    #   for Amazon EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_cost_of_ri_hours_used
    #   How much your reservation would cost if charged On-Demand rates.
    #   @return [String]
    #
    # @!attribute [rw] net_ri_savings
    #   How much you saved due to purchasing and utilizing reservation. AWS
    #   calculates this by subtracting `TotalAmortizedFee` from
    #   `OnDemandCostOfRIHoursUsed`.
    #   @return [String]
    #
    # @!attribute [rw] total_potential_ri_savings
    #   How much you could save if you use your entire reservation.
    #   @return [String]
    #
    # @!attribute [rw] amortized_upfront_fee
    #   The upfront cost of your reservation, amortized over the reservation
    #   period.
    #   @return [String]
    #
    # @!attribute [rw] amortized_recurring_fee
    #   The monthly cost of your reservation, amortized over the reservation
    #   period.
    #   @return [String]
    #
    # @!attribute [rw] total_amortized_fee
    #   The total cost of your reservation, amortized over the reservation
    #   period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationAggregates AWS API Documentation
    #
    class ReservationAggregates < Struct.new(
      :utilization_percentage,
      :utilization_percentage_in_units,
      :purchased_hours,
      :purchased_units,
      :total_actual_hours,
      :total_actual_units,
      :unused_hours,
      :unused_units,
      :on_demand_cost_of_ri_hours_used,
      :net_ri_savings,
      :total_potential_ri_savings,
      :amortized_upfront_fee,
      :amortized_recurring_fee,
      :total_amortized_fee)
      include Aws::Structure
    end

    # A group of reservations that share a set of attributes.
    #
    # @!attribute [rw] attributes
    #   The attributes for this group of reservations.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] coverage
    #   How much instance usage this group of reservations covered.
    #   @return [Types::Coverage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationCoverageGroup AWS API Documentation
    #
    class ReservationCoverageGroup < Struct.new(
      :attributes,
      :coverage)
      include Aws::Structure
    end

    # A specific reservation that AWS recommends for purchase.
    #
    # @!attribute [rw] account_scope
    #   The account scope that AWS recommends that you purchase this
    #   instance for. For example, you can purchase this reservation for an
    #   entire organization in AWS Organizations.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   How many days of previous usage that AWS considers when making this
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] term_in_years
    #   The term of the reservation that you want recommendations for, in
    #   years.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the reservation. For example, `AllUpfront` or
    #   `NoUpfront`.
    #   @return [String]
    #
    # @!attribute [rw] service_specification
    #   Hardware specifications for the service that you want
    #   recommendations for.
    #   @return [Types::ServiceSpecification]
    #
    # @!attribute [rw] recommendation_details
    #   Details about the recommended purchases.
    #   @return [Array<Types::ReservationPurchaseRecommendationDetail>]
    #
    # @!attribute [rw] recommendation_summary
    #   A summary about the recommended purchase.
    #   @return [Types::ReservationPurchaseRecommendationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationPurchaseRecommendation AWS API Documentation
    #
    class ReservationPurchaseRecommendation < Struct.new(
      :account_scope,
      :lookback_period_in_days,
      :term_in_years,
      :payment_option,
      :service_specification,
      :recommendation_details,
      :recommendation_summary)
      include Aws::Structure
    end

    # Details about your recommended reservation purchase.
    #
    # @!attribute [rw] account_id
    #   The account that this RI recommendation is for.
    #   @return [String]
    #
    # @!attribute [rw] instance_details
    #   Details about the instances that AWS recommends that you purchase.
    #   @return [Types::InstanceDetails]
    #
    # @!attribute [rw] recommended_number_of_instances_to_purchase
    #   The number of instances that AWS recommends that you purchase.
    #   @return [String]
    #
    # @!attribute [rw] recommended_normalized_units_to_purchase
    #   The number of normalized units that AWS recommends that you
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] minimum_number_of_instances_used_per_hour
    #   The minimum number of instances that you used in an hour during the
    #   historical period. AWS uses this to calculate your recommended
    #   reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] minimum_normalized_units_used_per_hour
    #   The minimum number of normalized units that you used in an hour
    #   during the historical period. AWS uses this to calculate your
    #   recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] maximum_number_of_instances_used_per_hour
    #   The maximum number of instances that you used in an hour during the
    #   historical period. AWS uses this to calculate your recommended
    #   reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] maximum_normalized_units_used_per_hour
    #   The maximum number of normalized units that you used in an hour
    #   during the historical period. AWS uses this to calculate your
    #   recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] average_number_of_instances_used_per_hour
    #   The average number of instances that you used in an hour during the
    #   historical period. AWS uses this to calculate your recommended
    #   reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] average_normalized_units_used_per_hour
    #   The average number of normalized units that you used in an hour
    #   during the historical period. AWS uses this to calculate your
    #   recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] average_utilization
    #   The average utilization of your instances. AWS uses this to
    #   calculate your recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] estimated_break_even_in_months
    #   How long AWS estimates that it takes for this instance to start
    #   saving you money, in months.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that AWS used to calculate the costs for this
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_amount
    #   How much AWS estimates that this specific recommendation could save
    #   you in a month.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_percentage
    #   How much AWS estimates that this specific recommendation could save
    #   you in a month, as a percentage of your overall costs.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_on_demand_cost
    #   How much AWS estimates that you spend on On-Demand Instances in a
    #   month.
    #   @return [String]
    #
    # @!attribute [rw] estimated_reservation_cost_for_lookback_period
    #   How much AWS estimates that you would have spent for all usage
    #   during the specified historical period if you had a reservation.
    #   @return [String]
    #
    # @!attribute [rw] upfront_cost
    #   How much purchasing this instance costs you upfront.
    #   @return [String]
    #
    # @!attribute [rw] recurring_standard_monthly_cost
    #   How much purchasing this instance costs you on a monthly basis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationPurchaseRecommendationDetail AWS API Documentation
    #
    class ReservationPurchaseRecommendationDetail < Struct.new(
      :account_id,
      :instance_details,
      :recommended_number_of_instances_to_purchase,
      :recommended_normalized_units_to_purchase,
      :minimum_number_of_instances_used_per_hour,
      :minimum_normalized_units_used_per_hour,
      :maximum_number_of_instances_used_per_hour,
      :maximum_normalized_units_used_per_hour,
      :average_number_of_instances_used_per_hour,
      :average_normalized_units_used_per_hour,
      :average_utilization,
      :estimated_break_even_in_months,
      :currency_code,
      :estimated_monthly_savings_amount,
      :estimated_monthly_savings_percentage,
      :estimated_monthly_on_demand_cost,
      :estimated_reservation_cost_for_lookback_period,
      :upfront_cost,
      :recurring_standard_monthly_cost)
      include Aws::Structure
    end

    # Information about this specific recommendation, such as the time stamp
    # for when AWS made a specific recommendation.
    #
    # @!attribute [rw] recommendation_id
    #   The ID for this specific recommendation.
    #   @return [String]
    #
    # @!attribute [rw] generation_timestamp
    #   The time stamp for when AWS made this recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationPurchaseRecommendationMetadata AWS API Documentation
    #
    class ReservationPurchaseRecommendationMetadata < Struct.new(
      :recommendation_id,
      :generation_timestamp)
      include Aws::Structure
    end

    # A summary about this recommendation, such as the currency code, the
    # amount that AWS estimates that you could save, and the total amount of
    # reservation to purchase.
    #
    # @!attribute [rw] total_estimated_monthly_savings_amount
    #   The total amount that AWS estimates that this recommendation could
    #   save you in a month.
    #   @return [String]
    #
    # @!attribute [rw] total_estimated_monthly_savings_percentage
    #   The total amount that AWS estimates that this recommendation could
    #   save you in a month, as a percentage of your costs.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code used for this recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationPurchaseRecommendationSummary AWS API Documentation
    #
    class ReservationPurchaseRecommendationSummary < Struct.new(
      :total_estimated_monthly_savings_amount,
      :total_estimated_monthly_savings_percentage,
      :currency_code)
      include Aws::Structure
    end

    # A group of reservations that share a set of attributes.
    #
    # @!attribute [rw] key
    #   The key for a specific reservation attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a specific reservation attribute.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes for this group of reservations.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] utilization
    #   How much you used this group of reservations.
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

    # Details on the resource.
    #
    # @!attribute [rw] ec2_resource_details
    #   Details on the Amazon EC2 resource.
    #   @return [Types::EC2ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :ec2_resource_details)
      include Aws::Structure
    end

    # The specified ARN in the request doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Resource utilization of current resource.
    #
    # @!attribute [rw] ec2_resource_utilization
    #   Utilization of current Amazon EC2 Instance
    #   @return [Types::EC2ResourceUtilization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResourceUtilization AWS API Documentation
    #
    class ResourceUtilization < Struct.new(
      :ec2_resource_utilization)
      include Aws::Structure
    end

    # The result that is associated with a time period.
    #
    # @!attribute [rw] time_period
    #   The time period that the result covers.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] total
    #   The total amount of cost or usage accrued during the time period.
    #   @return [Hash<String,Types::MetricValue>]
    #
    # @!attribute [rw] groups
    #   The groups that this time period includes.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] estimated
    #   Whether the result is estimated.
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

    # Recommendations to rightsize resources.
    #
    # @!attribute [rw] account_id
    #   The account that this recommendation is for.
    #   @return [String]
    #
    # @!attribute [rw] current_instance
    #   Context regarding the current instance.
    #   @return [Types::CurrentInstance]
    #
    # @!attribute [rw] rightsizing_type
    #   Recommendation to either terminate or modify the resource.
    #   @return [String]
    #
    # @!attribute [rw] modify_recommendation_detail
    #   Details for modification recommendations.
    #   @return [Types::ModifyRecommendationDetail]
    #
    # @!attribute [rw] terminate_recommendation_detail
    #   Details for termination recommendations.
    #   @return [Types::TerminateRecommendationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RightsizingRecommendation AWS API Documentation
    #
    class RightsizingRecommendation < Struct.new(
      :account_id,
      :current_instance,
      :rightsizing_type,
      :modify_recommendation_detail,
      :terminate_recommendation_detail)
      include Aws::Structure
    end

    # Metadata for this recommendation set.
    #
    # @!attribute [rw] recommendation_id
    #   The ID for this specific recommendation.
    #   @return [String]
    #
    # @!attribute [rw] generation_timestamp
    #   The time stamp for when Amazon Web Services made this
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   How many days of previous usage that Amazon Web Services considers
    #   when making this recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RightsizingRecommendationMetadata AWS API Documentation
    #
    class RightsizingRecommendationMetadata < Struct.new(
      :recommendation_id,
      :generation_timestamp,
      :lookback_period_in_days)
      include Aws::Structure
    end

    # Summary of rightsizing recommendations
    #
    # @!attribute [rw] total_recommendation_count
    #   Total number of instance recommendations.
    #   @return [String]
    #
    # @!attribute [rw] estimated_total_monthly_savings_amount
    #   Estimated total savings resulting from modifications, on a monthly
    #   basis.
    #   @return [String]
    #
    # @!attribute [rw] savings_currency_code
    #   The currency code that Amazon Web Services used to calculate the
    #   savings.
    #   @return [String]
    #
    # @!attribute [rw] savings_percentage
    #   Savings percentage based on the recommended modifications, relative
    #   to the total On Demand costs associated with these instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RightsizingRecommendationSummary AWS API Documentation
    #
    class RightsizingRecommendationSummary < Struct.new(
      :total_recommendation_count,
      :estimated_total_monthly_savings_amount,
      :savings_currency_code,
      :savings_percentage)
      include Aws::Structure
    end

    # The amortized amount of Savings Plans purchased in a specific account
    # during a specific time interval.
    #
    # @!attribute [rw] amortized_recurring_commitment
    #   The amortized amount of your Savings Plans commitment that was
    #   purchased with either a `Partial` or a `NoUpfront`.
    #   @return [String]
    #
    # @!attribute [rw] amortized_upfront_commitment
    #   The amortized amount of your Savings Plans commitment that was
    #   purchased with an `Upfront` or `PartialUpfront` Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] total_amortized_commitment
    #   The total amortized amount of your Savings Plans commitment,
    #   regardless of your Savings Plans purchase method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansAmortizedCommitment AWS API Documentation
    #
    class SavingsPlansAmortizedCommitment < Struct.new(
      :amortized_recurring_commitment,
      :amortized_upfront_commitment,
      :total_amortized_commitment)
      include Aws::Structure
    end

    # The amount of Savings Plans eligible usage that is covered by Savings
    # Plans. All calculations consider the On-Demand equivalent of your
    # Savings Plans usage.
    #
    # @!attribute [rw] attributes
    #   The attribute that applies to a specific `Dimension`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] coverage
    #   The amount of Savings Plans eligible usage that the Savings Plans
    #   covered.
    #   @return [Types::SavingsPlansCoverageData]
    #
    # @!attribute [rw] time_period
    #   The time period that you want the usage and costs for.
    #   @return [Types::DateInterval]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansCoverage AWS API Documentation
    #
    class SavingsPlansCoverage < Struct.new(
      :attributes,
      :coverage,
      :time_period)
      include Aws::Structure
    end

    # Specific coverage percentage, On-Demand costs, and spend covered by
    # Savings Plans, and total Savings Plans costs for an account.
    #
    # @!attribute [rw] spend_covered_by_savings_plans
    #   The amount of your Amazon Web Services usage that is covered by a
    #   Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_cost
    #   The cost of your Amazon Web Services usage at the public On-Demand
    #   rate.
    #   @return [String]
    #
    # @!attribute [rw] total_cost
    #   The total cost of your Amazon Web Services usage, regardless of your
    #   purchase option.
    #   @return [String]
    #
    # @!attribute [rw] coverage_percentage
    #   The percentage of your existing Savings Planscovered usage, divided
    #   by all of your eligible Savings Plans usage in an account(or set of
    #   accounts).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansCoverageData AWS API Documentation
    #
    class SavingsPlansCoverageData < Struct.new(
      :spend_covered_by_savings_plans,
      :on_demand_cost,
      :total_cost,
      :coverage_percentage)
      include Aws::Structure
    end

    # Attribute details on a specific Savings Plan.
    #
    # @!attribute [rw] region
    #   A collection of AWS resources in a geographic area. Each AWS Region
    #   is isolated and independent of the other Regions.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   A group of instance types that Savings Plans applies to.
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   The unique ID used to distinguish Savings Plans from one another.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansDetails AWS API Documentation
    #
    class SavingsPlansDetails < Struct.new(
      :region,
      :instance_family,
      :offering_id)
      include Aws::Structure
    end

    # Contains your request parameters, Savings Plan Recommendations
    # Summary, and Details.
    #
    # @!attribute [rw] savings_plans_type
    #   The requested Savings Plans recommendation type.
    #   @return [String]
    #
    # @!attribute [rw] term_in_years
    #   The Savings Plans recommendation term in years, used to generate the
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option used to generate the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The lookback period in days, used to generate the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] savings_plans_purchase_recommendation_details
    #   Details for the Savings Plans we recommend you to purchase to cover
    #   existing, Savings Plans eligible workloads.
    #   @return [Array<Types::SavingsPlansPurchaseRecommendationDetail>]
    #
    # @!attribute [rw] savings_plans_purchase_recommendation_summary
    #   Summary metrics for your Savings Plans Recommendations.
    #   @return [Types::SavingsPlansPurchaseRecommendationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansPurchaseRecommendation AWS API Documentation
    #
    class SavingsPlansPurchaseRecommendation < Struct.new(
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :lookback_period_in_days,
      :savings_plans_purchase_recommendation_details,
      :savings_plans_purchase_recommendation_summary)
      include Aws::Structure
    end

    # Details for your recommended Savings Plans.
    #
    # @!attribute [rw] savings_plans_details
    #   Details for your recommended Savings Plans.
    #   @return [Types::SavingsPlansDetails]
    #
    # @!attribute [rw] account_id
    #   The `AccountID` the recommendation is generated for.
    #   @return [String]
    #
    # @!attribute [rw] upfront_cost
    #   The upfront cost of the recommended Savings Plans, based on the
    #   selected payment option.
    #   @return [String]
    #
    # @!attribute [rw] estimated_roi
    #   The estimated return on investment based on the recommended Savings
    #   Plans purchased. This is calculated as `estimatedSavingsAmount`/
    #   `estimatedSPCost`*100.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code Amazon Web Services used to generate the
    #   recommendations and present potential savings.
    #   @return [String]
    #
    # @!attribute [rw] estimated_sp_cost
    #   The cost of the recommended Savings Plans over the length of the
    #   lookback period.
    #   @return [String]
    #
    # @!attribute [rw] estimated_on_demand_cost
    #   The remaining On-Demand cost estimated to not be covered by the
    #   recommended Savings Plans, over the length of the lookback period.
    #   @return [String]
    #
    # @!attribute [rw] estimated_on_demand_cost_with_current_commitment
    #   The estimated On-Demand costs you would expect with no additional
    #   commitment, based on your usage of the selected time period and the
    #   Savings Plans you own.
    #   @return [String]
    #
    # @!attribute [rw] estimated_savings_amount
    #   The estimated savings amount based on the recommended Savings Plans
    #   over the length of the lookback period.
    #   @return [String]
    #
    # @!attribute [rw] estimated_savings_percentage
    #   The estimated savings percentage relative to the total cost of
    #   applicable On-Demand usage over the lookback period.
    #   @return [String]
    #
    # @!attribute [rw] hourly_commitment_to_purchase
    #   The recommended hourly commitment level for the Savings Plans type,
    #   and configuration based on the usage during the lookback period.
    #   @return [String]
    #
    # @!attribute [rw] estimated_average_utilization
    #   The estimated utilization of the recommended Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_amount
    #   The estimated monthly savings amount, based on the recommended
    #   Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] current_minimum_hourly_on_demand_spend
    #   The lowest value of hourly On-Demand spend over the lookback period
    #   of the applicable usage type.
    #   @return [String]
    #
    # @!attribute [rw] current_maximum_hourly_on_demand_spend
    #   The highest value of hourly On-Demand spend over the lookback period
    #   of the applicable usage type.
    #   @return [String]
    #
    # @!attribute [rw] current_average_hourly_on_demand_spend
    #   The average value of hourly On-Demand spend over the lookback period
    #   of the applicable usage type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansPurchaseRecommendationDetail AWS API Documentation
    #
    class SavingsPlansPurchaseRecommendationDetail < Struct.new(
      :savings_plans_details,
      :account_id,
      :upfront_cost,
      :estimated_roi,
      :currency_code,
      :estimated_sp_cost,
      :estimated_on_demand_cost,
      :estimated_on_demand_cost_with_current_commitment,
      :estimated_savings_amount,
      :estimated_savings_percentage,
      :hourly_commitment_to_purchase,
      :estimated_average_utilization,
      :estimated_monthly_savings_amount,
      :current_minimum_hourly_on_demand_spend,
      :current_maximum_hourly_on_demand_spend,
      :current_average_hourly_on_demand_spend)
      include Aws::Structure
    end

    # Metadata about your Savings Plans Purchase Recommendations.
    #
    # @!attribute [rw] recommendation_id
    #   The unique identifier for the recommendation set.
    #   @return [String]
    #
    # @!attribute [rw] generation_timestamp
    #   The timestamp showing when the recommendations were generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansPurchaseRecommendationMetadata AWS API Documentation
    #
    class SavingsPlansPurchaseRecommendationMetadata < Struct.new(
      :recommendation_id,
      :generation_timestamp)
      include Aws::Structure
    end

    # Summary metrics for your Savings Plans Purchase Recommendations.
    #
    # @!attribute [rw] estimated_roi
    #   The estimated return on investment based on the recommended Savings
    #   Plans and estimated savings.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code Amazon Web Services used to generate the
    #   recommendations and present potential savings.
    #   @return [String]
    #
    # @!attribute [rw] estimated_total_cost
    #   The estimated total cost of the usage after purchasing the
    #   recommended Savings Plans. This is a sum of the cost of Savings
    #   Plans during this term, and the remaining On-Demand usage.
    #   @return [String]
    #
    # @!attribute [rw] current_on_demand_spend
    #   The current total on demand spend of the applicable usage types over
    #   the lookback period.
    #   @return [String]
    #
    # @!attribute [rw] estimated_savings_amount
    #   The estimated total savings over the lookback period, based on the
    #   purchase of the recommended Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] total_recommendation_count
    #   The aggregate number of Savings Plans recommendations that exist for
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] daily_commitment_to_purchase
    #   The recommended Savings Plans cost on a daily (24 hourly) basis.
    #   @return [String]
    #
    # @!attribute [rw] hourly_commitment_to_purchase
    #   The recommended hourly commitment based on the recommendation
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] estimated_savings_percentage
    #   The estimated savings relative to the total cost of On-Demand usage,
    #   over the lookback period. This is calculated as
    #   `estimatedSavingsAmount`/ `CurrentOnDemandSpend`*100.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_amount
    #   The estimated monthly savings amount, based on the recommended
    #   Savings Plans purchase.
    #   @return [String]
    #
    # @!attribute [rw] estimated_on_demand_cost_with_current_commitment
    #   The estimated On-Demand costs you would expect with no additional
    #   commitment, based on your usage of the selected time period and the
    #   Savings Plans you own.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansPurchaseRecommendationSummary AWS API Documentation
    #
    class SavingsPlansPurchaseRecommendationSummary < Struct.new(
      :estimated_roi,
      :currency_code,
      :estimated_total_cost,
      :current_on_demand_spend,
      :estimated_savings_amount,
      :total_recommendation_count,
      :daily_commitment_to_purchase,
      :hourly_commitment_to_purchase,
      :estimated_savings_percentage,
      :estimated_monthly_savings_amount,
      :estimated_on_demand_cost_with_current_commitment)
      include Aws::Structure
    end

    # The amount of savings you're accumulating, against the public
    # On-Demand rate of the usage accrued in an account.
    #
    # @!attribute [rw] net_savings
    #   The savings amount that you are accumulating for the usage that is
    #   covered by a Savings Plans, when compared to the On-Demand
    #   equivalent of the same usage.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_cost_equivalent
    #   How much the amount that the usage would have cost if it was accrued
    #   at the On-Demand rate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansSavings AWS API Documentation
    #
    class SavingsPlansSavings < Struct.new(
      :net_savings,
      :on_demand_cost_equivalent)
      include Aws::Structure
    end

    # The measurement of how well you are using your existing Savings Plans.
    #
    # @!attribute [rw] total_commitment
    #   The total amount of Savings Plans commitment that's been purchased
    #   in an account (or set of accounts).
    #   @return [String]
    #
    # @!attribute [rw] used_commitment
    #   The amount of your Savings Plans commitment that was consumed from
    #   Savings Plans eligible usage in a specific period.
    #   @return [String]
    #
    # @!attribute [rw] unused_commitment
    #   The amount of your Savings Plans commitment that was not consumed
    #   from Savings Plans eligible usage in a specific period.
    #   @return [String]
    #
    # @!attribute [rw] utilization_percentage
    #   The amount of `UsedCommitment` divided by the `TotalCommitment` for
    #   your Savings Plans.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansUtilization AWS API Documentation
    #
    class SavingsPlansUtilization < Struct.new(
      :total_commitment,
      :used_commitment,
      :unused_commitment,
      :utilization_percentage)
      include Aws::Structure
    end

    # The aggregated utilization metrics for your Savings Plans usage.
    #
    # @!attribute [rw] utilization
    #   A ratio of your effectiveness of using existing Savings Plans to
    #   apply to workloads that are Savings Plans eligible.
    #   @return [Types::SavingsPlansUtilization]
    #
    # @!attribute [rw] savings
    #   The amount saved by using existing Savings Plans. Savings returns
    #   both net savings from Savings Plans, as well as the
    #   `onDemandCostEquivalent` of the Savings Plans when considering the
    #   utilization rate.
    #   @return [Types::SavingsPlansSavings]
    #
    # @!attribute [rw] amortized_commitment
    #   The total amortized commitment for a Savings Plans. This includes
    #   the sum of the upfront and recurring Savings Plans fees.
    #   @return [Types::SavingsPlansAmortizedCommitment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansUtilizationAggregates AWS API Documentation
    #
    class SavingsPlansUtilizationAggregates < Struct.new(
      :utilization,
      :savings,
      :amortized_commitment)
      include Aws::Structure
    end

    # The amount of Savings Plans utilization, in hours.
    #
    # @!attribute [rw] time_period
    #   The time period that you want the usage and costs for.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] utilization
    #   A ratio of your effectiveness of using existing Savings Plans to
    #   apply to workloads that are Savings Plans eligible.
    #   @return [Types::SavingsPlansUtilization]
    #
    # @!attribute [rw] savings
    #   The amount saved by using existing Savings Plans. Savings returns
    #   both net savings from Savings Plans as well as the
    #   `onDemandCostEquivalent` of the Savings Plans when considering the
    #   utilization rate.
    #   @return [Types::SavingsPlansSavings]
    #
    # @!attribute [rw] amortized_commitment
    #   The total amortized commitment for a Savings Plans. This includes
    #   the sum of the upfront and recurring Savings Plans fees.
    #   @return [Types::SavingsPlansAmortizedCommitment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansUtilizationByTime AWS API Documentation
    #
    class SavingsPlansUtilizationByTime < Struct.new(
      :time_period,
      :utilization,
      :savings,
      :amortized_commitment)
      include Aws::Structure
    end

    # A single daily or monthly Savings Plans utilization rate, and details
    # for your account. Master accounts in an organization have access to
    # member accounts. You can use `GetDimensionValues` to determine the
    # possible dimension values.
    #
    # @!attribute [rw] savings_plan_arn
    #   The unique Amazon Resource Name (ARN) for a particular Savings Plan.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attribute that applies to a specific `Dimension`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] utilization
    #   A ratio of your effectiveness of using existing Savings Plans to
    #   apply to workloads that are Savings Plans eligible.
    #   @return [Types::SavingsPlansUtilization]
    #
    # @!attribute [rw] savings
    #   The amount saved by using existing Savings Plans. Savings returns
    #   both net savings from savings plans as well as the
    #   `onDemandCostEquivalent` of the Savings Plans when considering the
    #   utilization rate.
    #   @return [Types::SavingsPlansSavings]
    #
    # @!attribute [rw] amortized_commitment
    #   The total amortized commitment for a Savings Plans. Includes the sum
    #   of the upfront and recurring Savings Plans fees.
    #   @return [Types::SavingsPlansAmortizedCommitment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansUtilizationDetail AWS API Documentation
    #
    class SavingsPlansUtilizationDetail < Struct.new(
      :savings_plan_arn,
      :attributes,
      :utilization,
      :savings,
      :amortized_commitment)
      include Aws::Structure
    end

    # You've reached the limit on the number of resources you can create,
    # or exceeded the size of an individual resources.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Hardware specifications for the service that you want recommendations
    # for.
    #
    # @note When making an API call, you may pass ServiceSpecification
    #   data as a hash:
    #
    #       {
    #         ec2_specification: {
    #           offering_class: "STANDARD", # accepts STANDARD, CONVERTIBLE
    #         },
    #       }
    #
    # @!attribute [rw] ec2_specification
    #   The Amazon EC2 hardware specifications that you want AWS to provide
    #   recommendations for.
    #   @return [Types::EC2Specification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ServiceSpecification AWS API Documentation
    #
    class ServiceSpecification < Struct.new(
      :ec2_specification)
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
    #   The key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The specific value of the tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TagValues AWS API Documentation
    #
    class TagValues < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Details on recommended instance.
    #
    # @!attribute [rw] estimated_monthly_cost
    #   Expected cost to operate this instance type on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Estimated savings resulting from modification, on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that Amazon Web Services used to calculate the
    #   costs for this instance.
    #   @return [String]
    #
    # @!attribute [rw] default_target_instance
    #   Indicates whether or not this recommendation is the defaulted Amazon
    #   Web Services recommendation.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_details
    #   Details on the target instance type.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] expected_resource_utilization
    #   Expected utilization metrics for target instance type.
    #   @return [Types::ResourceUtilization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TargetInstance AWS API Documentation
    #
    class TargetInstance < Struct.new(
      :estimated_monthly_cost,
      :estimated_monthly_savings,
      :currency_code,
      :default_target_instance,
      :resource_details,
      :expected_resource_utilization)
      include Aws::Structure
    end

    # Details on termination recommendation.
    #
    # @!attribute [rw] estimated_monthly_savings
    #   Estimated savings resulting from modification, on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that Amazon Web Services used to calculate the
    #   costs for this instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TerminateRecommendationDetail AWS API Documentation
    #
    class TerminateRecommendationDetail < Struct.new(
      :estimated_monthly_savings,
      :currency_code)
      include Aws::Structure
    end

    # Cost Explorer was unable to identify the usage unit. Provide
    # `UsageType/UsageTypeGroup` filter selections that contain matching
    # units, for example: `hours`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UnresolvableUsageUnitException AWS API Documentation
    #
    class UnresolvableUsageUnitException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCostCategoryDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         cost_category_arn: "Arn", # required
    #         rule_version: "CostCategoryExpression.v1", # required, accepts CostCategoryExpression.v1
    #         rules: [ # required
    #           {
    #             value: "CostCategoryValue", # required
    #             rule: { # required
    #               or: [
    #                 {
    #                   # recursive Expression
    #                 },
    #               ],
    #               and: [
    #                 {
    #                   # recursive Expression
    #                 },
    #               ],
    #               not: {
    #                 # recursive Expression
    #               },
    #               dimensions: {
    #                 key: "AZ", # accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION
    #                 values: ["Value"],
    #               },
    #               tags: {
    #                 key: "TagKey",
    #                 values: ["Value"],
    #               },
    #               cost_categories: {
    #                 key: "CostCategoryName",
    #                 values: ["Value"],
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule schema version in this particular Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   `UpdateCostCategoryDefinition` supports dimensions, Tags, and nested
    #   expressions. Currently the only dimensions supported is
    #   `LINKED_ACCOUNT`.
    #
    #   Root level `OR` is not supported. We recommend you create a separate
    #   rule instead.
    #
    #   Rules are processed in order. If there are multiple rules that match
    #   the line item, then the first rule to match is used to determine
    #   that Cost Category value.
    #   @return [Array<Types::CostCategoryRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostCategoryDefinitionRequest AWS API Documentation
    #
    class UpdateCostCategoryDefinitionRequest < Struct.new(
      :cost_category_arn,
      :rule_version,
      :rules)
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostCategoryDefinitionResponse AWS API Documentation
    #
    class UpdateCostCategoryDefinitionResponse < Struct.new(
      :cost_category_arn,
      :effective_start)
      include Aws::Structure
    end

    # The amount of utilization, in hours.
    #
    # @!attribute [rw] time_period
    #   The period of time that this utilization was used for.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] groups
    #   The groups that this utilization result uses.
    #   @return [Array<Types::ReservationUtilizationGroup>]
    #
    # @!attribute [rw] total
    #   The total number of reservation hours that were used.
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

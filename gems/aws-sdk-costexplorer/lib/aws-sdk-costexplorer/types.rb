# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostExplorer
  module Types

    # An unusual cost pattern. This consists of the detailed metadata and
    # the current status of the anomaly object.
    #
    # @!attribute [rw] anomaly_id
    #   The unique identifier for the anomaly.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_start_date
    #   The first day the anomaly is detected.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_end_date
    #   The last day the anomaly is detected.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value
    #   The dimension for the anomaly (for example, an Amazon Web Service in
    #   a service monitor).
    #   @return [String]
    #
    # @!attribute [rw] root_causes
    #   The list of identified root causes for the anomaly.
    #   @return [Array<Types::RootCause>]
    #
    # @!attribute [rw] anomaly_score
    #   The latest and maximum score for the anomaly.
    #   @return [Types::AnomalyScore]
    #
    # @!attribute [rw] impact
    #   The dollar impact for the anomaly.
    #   @return [Types::Impact]
    #
    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) for the cost monitor that generated
    #   this anomaly.
    #   @return [String]
    #
    # @!attribute [rw] feedback
    #   The feedback value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Anomaly AWS API Documentation
    #
    class Anomaly < Struct.new(
      :anomaly_id,
      :anomaly_start_date,
      :anomaly_end_date,
      :dimension_value,
      :root_causes,
      :anomaly_score,
      :impact,
      :monitor_arn,
      :feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time period for an anomaly.
    #
    # @!attribute [rw] start_date
    #   The first date an anomaly was observed.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The last date an anomaly was observed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/AnomalyDateInterval AWS API Documentation
    #
    class AnomalyDateInterval < Struct.new(
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object continuously inspects your account's cost data for
    # anomalies. It's based on `MonitorType` and `MonitorSpecification`.
    # The content consists of detailed metadata and the current status of
    # the monitor object.
    #
    # @!attribute [rw] monitor_arn
    #   The Amazon Resource Name (ARN) value.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the monitor was created.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date when the monitor was last updated.
    #   @return [String]
    #
    # @!attribute [rw] last_evaluated_date
    #   The date when the monitor last evaluated for anomalies.
    #   @return [String]
    #
    # @!attribute [rw] monitor_type
    #   The possible type values.
    #   @return [String]
    #
    # @!attribute [rw] monitor_dimension
    #   The dimensions to evaluate.
    #   @return [String]
    #
    # @!attribute [rw] monitor_specification
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that
    #         acts on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values
    #         are combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is
    #       supported.
    #
    #       * For example, you can filter for linked account names that
    #         start with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical
    #       operators `AND/OR/NOT` to create a list of one or more
    #       `Expression` objects. By doing this, you can filter by more
    #       advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION
    #       == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION",
    #       "Values": [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key":
    #       "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not":
    #       \{"Dimensions": \{ "Key": "USAGE_TYPE", "Values":
    #       ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR
    #   and NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] dimensional_value_count
    #   The value for evaluated dimensions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/AnomalyMonitor AWS API Documentation
    #
    class AnomalyMonitor < Struct.new(
      :monitor_arn,
      :monitor_name,
      :creation_date,
      :last_updated_date,
      :last_evaluated_date,
      :monitor_type,
      :monitor_dimension,
      :monitor_specification,
      :dimensional_value_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Quantifies the anomaly. The higher score means that it's more
    # anomalous.
    #
    # @!attribute [rw] max_score
    #   The maximum score that's observed during the `AnomalyDateInterval`.
    #   @return [Float]
    #
    # @!attribute [rw] current_score
    #   The last observed score.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/AnomalyScore AWS API Documentation
    #
    class AnomalyScore < Struct.new(
      :max_score,
      :current_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # The association between a monitor, threshold, and list of subscribers
    # used to deliver notifications about anomalies detected by a monitor
    # that exceeds a threshold. The content consists of the detailed
    # metadata and the current status of the `AnomalySubscription` object.
    #
    # @!attribute [rw] subscription_arn
    #   The `AnomalySubscription` Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Your unique account identifier.
    #   @return [String]
    #
    # @!attribute [rw] monitor_arn_list
    #   A list of cost anomaly monitors.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subscribers
    #   A list of subscribers to notify.
    #   @return [Array<Types::Subscriber>]
    #
    # @!attribute [rw] threshold
    #   (deprecated)
    #
    #   The dollar value that triggers a notification if the threshold is
    #   exceeded.
    #
    #   This field has been deprecated. To specify a threshold, use
    #   ThresholdExpression. Continued use of Threshold will be treated as
    #   shorthand syntax for a ThresholdExpression.
    #
    #   One of Threshold or ThresholdExpression is required for this
    #   resource.
    #   @return [Float]
    #
    # @!attribute [rw] frequency
    #   The frequency that anomaly reports are sent over email.
    #   @return [String]
    #
    # @!attribute [rw] subscription_name
    #   The name for the subscription.
    #   @return [String]
    #
    # @!attribute [rw] threshold_expression
    #   An [Expression][1] object used to specify the anomalies that you
    #   want to generate alerts for. This supports dimensions and nested
    #   expressions. The supported dimensions are
    #   `ANOMALY_TOTAL_IMPACT_ABSOLUTE` and
    #   `ANOMALY_TOTAL_IMPACT_PERCENTAGE`. The supported nested expression
    #   types are `AND` and `OR`. The match option `GREATER_THAN_OR_EQUAL`
    #   is required. Values must be numbers between 0 and 10,000,000,000.
    #
    #   One of Threshold or ThresholdExpression is required for this
    #   resource.
    #
    #   The following are examples of valid ThresholdExpressions:
    #
    #   * Absolute threshold: `\{ "Dimensions": \{ "Key":
    #     "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}`
    #
    #   * Percentage threshold: `\{ "Dimensions": \{ "Key":
    #     "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}`
    #
    #   * `AND` two thresholds together: `\{ "And": [ \{ "Dimensions": \{
    #     "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}, \{
    #     "Dimensions": \{ "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #     "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ]
    #     \} \} ] \}`
    #
    #   * `OR` two thresholds together: `\{ "Or": [ \{ "Dimensions": \{
    #     "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}, \{
    #     "Dimensions": \{ "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #     "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ]
    #     \} \} ] \}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/AnomalySubscription AWS API Documentation
    #
    class AnomalySubscription < Struct.new(
      :subscription_arn,
      :account_id,
      :monitor_arn_list,
      :subscribers,
      :threshold,
      :frequency,
      :subscription_name,
      :threshold_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested report expired. Update the date interval and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/BillExpirationException AWS API Documentation
    #
    class BillExpirationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cost allocation tag structure. This includes detailed metadata for
    # the `CostAllocationTag` object.
    #
    # @!attribute [rw] tag_key
    #   The key for the cost allocation tag.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of cost allocation tag. You can use `AWSGenerated` or
    #   `UserDefined` type tags. `AWSGenerated` type tags are tags that
    #   Amazon Web Services defines and applies to support Amazon Web
    #   Services resources for cost allocation purposes. `UserDefined` type
    #   tags are tags that you define, create, and apply to resources.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a cost allocation tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostAllocationTag AWS API Documentation
    #
    class CostAllocationTag < Struct.new(
      :tag_key,
      :type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cost allocation tag status. The status of a key can either be
    # active or inactive.
    #
    # @!attribute [rw] tag_key
    #   The key for the cost allocation tag.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a cost allocation tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostAllocationTagStatusEntry AWS API Documentation
    #
    class CostAllocationTagStatusEntry < Struct.new(
      :tag_key,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of Cost Categories. This includes detailed metadata and
    # the set of rules for the `CostCategory` object.
    #
    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The effective start date of your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_end
    #   The effective end date of your Cost Category.
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
    #   The rules are processed in order. If there are multiple rules that
    #   match the line item, then the first rule to match is used to
    #   determine that Cost Category value.
    #   @return [Array<Types::CostCategoryRule>]
    #
    # @!attribute [rw] split_charge_rules
    #   The split charge rules that are used to allocate your charges
    #   between your Cost Category values.
    #   @return [Array<Types::CostCategorySplitChargeRule>]
    #
    # @!attribute [rw] processing_status
    #   The list of processing statuses for Cost Management products for a
    #   specific cost category.
    #   @return [Array<Types::CostCategoryProcessingStatus>]
    #
    # @!attribute [rw] default_value
    #   The default value for the cost category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategory AWS API Documentation
    #
    class CostCategory < Struct.new(
      :cost_category_arn,
      :effective_start,
      :effective_end,
      :name,
      :rule_version,
      :rules,
      :split_charge_rules,
      :processing_status,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you create or update a cost category, you can define the
    # `CostCategoryRule` rule type as `INHERITED_VALUE`. This rule type adds
    # the flexibility to define a rule that dynamically inherits the cost
    # category value from the dimension value that's defined by
    # `CostCategoryInheritedValueDimension`. For example, suppose that you
    # want to dynamically group costs that are based on the value of a
    # specific tag key. First, choose an inherited value rule type, and then
    # choose the tag dimension and specify the tag key to use.
    #
    # @!attribute [rw] dimension_name
    #   The name of the dimension that's used to group costs.
    #
    #   If you specify `LINKED_ACCOUNT_NAME`, the cost category value is
    #   based on account name. If you specify `TAG`, the cost category value
    #   is based on the value of the specified tag key.
    #   @return [String]
    #
    # @!attribute [rw] dimension_key
    #   The key to extract cost category values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryInheritedValueDimension AWS API Documentation
    #
    class CostCategoryInheritedValueDimension < Struct.new(
      :dimension_name,
      :dimension_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of processing statuses for Cost Management products for a
    # specific cost category.
    #
    # @!attribute [rw] component
    #   The Cost Management product name of the applied status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The process status for a specific cost category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryProcessingStatus AWS API Documentation
    #
    class CostCategoryProcessingStatus < Struct.new(
      :component,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a Cost Category containing only enough information to
    # identify the Cost Category.
    #
    # You can use this information to retrieve the full Cost Category
    # information using `DescribeCostCategory`.
    #
    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
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
    # @!attribute [rw] number_of_rules
    #   The number of rules that are associated with a specific Cost
    #   Category.
    #   @return [Integer]
    #
    # @!attribute [rw] processing_status
    #   The list of processing statuses for Cost Management products for a
    #   specific cost category.
    #   @return [Array<Types::CostCategoryProcessingStatus>]
    #
    # @!attribute [rw] values
    #   A list of unique cost category values in a specific cost category.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_value
    #   The default value for the cost category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryReference AWS API Documentation
    #
    class CostCategoryReference < Struct.new(
      :cost_category_arn,
      :name,
      :effective_start,
      :effective_end,
      :number_of_rules,
      :processing_status,
      :values,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Rules are processed in order. If there are multiple rules that match
    # the line item, then the first rule to match is used to determine that
    # Cost Category value.
    #
    # @!attribute [rw] value
    #   The default value for the cost category.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   An [Expression][1] object used to categorize costs. This supports
    #   dimensions, tags, and nested expressions. Currently the only
    #   dimensions supported are `LINKED_ACCOUNT`, `SERVICE_CODE`,
    #   `RECORD_TYPE`, and `LINKED_ACCOUNT_NAME`.
    #
    #   Root level `OR` isn't supported. We recommend that you create a
    #   separate rule instead.
    #
    #   `RECORD_TYPE` is a dimension used for Cost Explorer APIs, and is
    #   also supported for Cost Category expressions. This dimension uses
    #   different terms, depending on whether you're using the console or
    #   API/JSON editor. For a detailed comparison, see [Term
    #   Comparisons][2] in the *Billing and Cost Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   [2]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-cost-categories.html#cost-categories-terms
    #   @return [Types::Expression]
    #
    # @!attribute [rw] inherited_value
    #   The value the line item is categorized as if the line item contains
    #   the matched dimension.
    #   @return [Types::CostCategoryInheritedValueDimension]
    #
    # @!attribute [rw] type
    #   You can define the `CostCategoryRule` rule type as either `REGULAR`
    #   or `INHERITED_VALUE`. The `INHERITED_VALUE` rule type adds the
    #   flexibility to define a rule that dynamically inherits the cost
    #   category value. This value is from the dimension value that's
    #   defined by `CostCategoryInheritedValueDimension`. For example,
    #   suppose that you want to costs to be dynamically grouped based on
    #   the value of a specific tag key. First, choose an inherited value
    #   rule type, and then choose the tag dimension and specify the tag key
    #   to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryRule AWS API Documentation
    #
    class CostCategoryRule < Struct.new(
      :value,
      :rule,
      :inherited_value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use the split charge rule to split the cost of one Cost Category value
    # across several other target values.
    #
    # @!attribute [rw] source
    #   The Cost Category value that you want to split. That value can't be
    #   used as a source or a target in other split charge rules. To
    #   indicate uncategorized costs, you can use an empty string as the
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The Cost Category values that you want to split costs across. These
    #   values can't be used as a source in other split charge rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] method
    #   The method that's used to define how to split your source costs
    #   across your targets.
    #
    #   `Proportional` - Allocates charges across your targets based on the
    #   proportional weighted cost of each target.
    #
    #   `Fixed` - Allocates charges across your targets based on your
    #   defined allocation percentage.
    #
    #   &gt;`Even` - Allocates costs evenly across all targets.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for a split charge method. This is only required for
    #   the `FIXED` method.
    #   @return [Array<Types::CostCategorySplitChargeRuleParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategorySplitChargeRule AWS API Documentation
    #
    class CostCategorySplitChargeRule < Struct.new(
      :source,
      :targets,
      :method,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for a split charge method.
    #
    # @!attribute [rw] type
    #   The parameter type.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The parameter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategorySplitChargeRuleParameter AWS API Documentation
    #
    class CostCategorySplitChargeRuleParameter < Struct.new(
      :type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Cost Categories values used for filtering the costs.
    #
    # If `Values` and `Key` are not specified, the `ABSENT` `MatchOption` is
    # applied to all Cost Categories. That is, it filters on resources that
    # aren't mapped to any Cost Categories.
    #
    # If `Values` is provided and `Key` isn't specified, the `ABSENT`
    # `MatchOption` is applied to the Cost Categories `Key` only. That is,
    # it filters on resources without the given Cost Categories key.
    #
    # @!attribute [rw] key
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The specific value of the Cost Category.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_options
    #   The match options that you can use to filter your results.
    #   MatchOptions is only applicable for actions related to cost
    #   category. The default values for `MatchOptions` is `EQUALS` and
    #   `CASE_SENSITIVE`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CostCategoryValues AWS API Documentation
    #
    class CostCategoryValues < Struct.new(
      :key,
      :values,
      :match_options)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # How much it costs to run an instance.
    #
    # @!attribute [rw] on_demand_cost
    #   How much an On-Demand Instance costs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CoverageCost AWS API Documentation
    #
    class CoverageCost < Struct.new(
      :on_demand_cost)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of instance usage, in normalized units. You can use
    # normalized units to see your EC2 usage for multiple sizes of instances
    # in a uniform way. For example, suppose that you run an xlarge instance
    # and a 2xlarge instance. If you run both instances for the same amount
    # of time, the 2xlarge instance uses twice as much of your reservation
    # as the xlarge instance, even though both instances show only one
    # instance-hour. When you use normalized units instead of
    # instance-hours, the xlarge instance used 8 normalized units, and the
    # 2xlarge instance used 16 normalized units.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_monitor
    #   The cost anomaly detection monitor object that you want to create.
    #   @return [Types::AnomalyMonitor]
    #
    # @!attribute [rw] resource_tags
    #   An optional list of tags to associate with the specified [
    #   `AnomalyMonitor` ][1]. You can use resource tags to control access
    #   to your `monitor` using IAM policies.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can
    #     assign a maximum of 50 user-tags to one resource. The remaining
    #     are reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing
    #     whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is
    #     reserved for Amazon Web Services use
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateAnomalyMonitorRequest AWS API Documentation
    #
    class CreateAnomalyMonitorRequest < Struct.new(
      :anomaly_monitor,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The unique identifier of your newly created cost anomaly detection
    #   monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateAnomalyMonitorResponse AWS API Documentation
    #
    class CreateAnomalyMonitorResponse < Struct.new(
      :monitor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_subscription
    #   The cost anomaly subscription object that you want to create.
    #   @return [Types::AnomalySubscription]
    #
    # @!attribute [rw] resource_tags
    #   An optional list of tags to associate with the specified [
    #   `AnomalySubscription` ][1]. You can use resource tags to control
    #   access to your `subscription` using IAM policies.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can
    #     assign a maximum of 50 user-tags to one resource. The remaining
    #     are reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing
    #     whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is
    #     reserved for Amazon Web Services use
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateAnomalySubscriptionRequest AWS API Documentation
    #
    class CreateAnomalySubscriptionRequest < Struct.new(
      :anomaly_subscription,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_arn
    #   The unique identifier of your newly created cost anomaly
    #   subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateAnomalySubscriptionResponse AWS API Documentation
    #
    class CreateAnomalySubscriptionResponse < Struct.new(
      :subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date. It can only be a billing
    #   start date (first day of the month). If the date isn't provided,
    #   it's the first day of the current month. Dates can't be before the
    #   previous twelve months, or in the future.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule schema version in this particular Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The Cost Category rules used to categorize costs. For more
    #   information, see [CostCategoryRule][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html
    #   @return [Array<Types::CostCategoryRule>]
    #
    # @!attribute [rw] default_value
    #   The default value for the cost category.
    #   @return [String]
    #
    # @!attribute [rw] split_charge_rules
    #   The split charge rules used to allocate your charges between your
    #   Cost Category values.
    #   @return [Array<Types::CostCategorySplitChargeRule>]
    #
    # @!attribute [rw] resource_tags
    #   An optional list of tags to associate with the specified [
    #   `CostCategory` ][1]. You can use resource tags to control access to
    #   your `cost category` using IAM policies.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can
    #     assign a maximum of 50 user-tags to one resource. The remaining
    #     are reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing
    #     whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is
    #     reserved for Amazon Web Services use
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateCostCategoryDefinitionRequest AWS API Documentation
    #
    class CreateCostCategoryDefinitionRequest < Struct.new(
      :name,
      :effective_start,
      :rule_version,
      :rules,
      :default_value,
      :split_charge_rules,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your newly created Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date. It can only be a billing
    #   start date (first day of the month).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/CreateCostCategoryDefinitionResponse AWS API Documentation
    #
    class CreateCostCategoryDefinitionResponse < Struct.new(
      :cost_category_arn,
      :effective_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # Context about the current instance.
    #
    # @!attribute [rw] resource_id
    #   Resource ID of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name that you given an instance. This field shows as blank if
    #   you haven't given the instance a name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Cost allocation resource tags that are applied to the instance.
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
    #   The number of hours during the lookback period that's covered by
    #   reservations.
    #   @return [String]
    #
    # @!attribute [rw] savings_plans_covered_hours_in_lookback_period
    #   The number of hours during the lookback period that's covered by
    #   Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_hours_in_lookback_period
    #   The number of hours during the lookback period that's billed at
    #   On-Demand rates.
    #   @return [String]
    #
    # @!attribute [rw] total_running_hours_in_lookback_period
    #   The total number of hours that the instance ran during the lookback
    #   period.
    #   @return [String]
    #
    # @!attribute [rw] monthly_cost
    #   The current On-Demand cost of operating this instance on a monthly
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
      :instance_name,
      :tags,
      :resource_details,
      :resource_utilization,
      :reservation_covered_hours_in_lookback_period,
      :savings_plans_covered_hours_in_lookback_period,
      :on_demand_hours_in_lookback_period,
      :total_running_hours_in_lookback_period,
      :monthly_cost,
      :currency_code)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The time period of the request.
    #
    # @!attribute [rw] start
    #   The beginning of the time period. The start date is inclusive. For
    #   example, if `start` is `2017-01-01`, Amazon Web Services retrieves
    #   cost and usage data starting at `2017-01-01` up to the end date. The
    #   start date must be equal to or no later than the current date to
    #   avoid a validation error.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The end of the time period. The end date is exclusive. For example,
    #   if `end` is `2017-05-01`, Amazon Web Services retrieves cost and
    #   usage data from the start date up to, but not including,
    #   `2017-05-01`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DateInterval AWS API Documentation
    #
    class DateInterval < Struct.new(
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The unique identifier of the cost anomaly monitor that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteAnomalyMonitorRequest AWS API Documentation
    #
    class DeleteAnomalyMonitorRequest < Struct.new(
      :monitor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteAnomalyMonitorResponse AWS API Documentation
    #
    class DeleteAnomalyMonitorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] subscription_arn
    #   The unique identifier of the cost anomaly subscription that you want
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteAnomalySubscriptionRequest AWS API Documentation
    #
    class DeleteAnomalySubscriptionRequest < Struct.new(
      :subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteAnomalySubscriptionResponse AWS API Documentation
    #
    class DeleteAnomalySubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteCostCategoryDefinitionRequest AWS API Documentation
    #
    class DeleteCostCategoryDefinitionRequest < Struct.new(
      :cost_category_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_end
    #   The effective end date of the Cost Category as a result of deleting
    #   it. No costs after this date is categorized by the deleted Cost
    #   Category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DeleteCostCategoryDefinitionResponse AWS API Documentation
    #
    class DeleteCostCategoryDefinitionResponse < Struct.new(
      :cost_category_arn,
      :effective_end)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_category
    #   The structure of Cost Categories. This includes detailed metadata
    #   and the set of rules for the `CostCategory` object.
    #   @return [Types::CostCategory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DescribeCostCategoryDefinitionResponse AWS API Documentation
    #
    class DescribeCostCategoryDefinitionResponse < Struct.new(
      :cost_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata that you can use to filter and group your results. You
    # can use `GetDimensionValues` to find specific values.
    #
    # @!attribute [rw] key
    #   The names of the metadata types that you can use to filter and group
    #   your results. For example, `AZ` returns a list of Availability
    #   Zones.
    #
    #   Not all dimensions are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   `LINK_ACCOUNT_NAME` and `SERVICE_CODE` can only be used in
    #   [CostCategoryRule][1].
    #
    #   `ANOMALY_TOTAL_IMPACT_ABSOLUTE` and
    #   `ANOMALY_TOTAL_IMPACT_PERCENTAGE` can only be used in
    #   [AnomalySubscriptions][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html
    #   [2]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The metadata values that you can use to filter and group your
    #   results. You can use `GetDimensionValues` to find specific values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_options
    #   The match options that you can use to filter your results.
    #
    #   `MatchOptions` is only applicable for actions related to Cost
    #   Category and Anomaly Subscriptions. Refer to the documentation for
    #   each specific API to see what is supported.
    #
    #   The default values for `MatchOptions` are `EQUALS` and
    #   `CASE_SENSITIVE`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DimensionValues AWS API Documentation
    #
    class DimensionValues < Struct.new(
      :key,
      :values,
      :match_options)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The field that contains a list of disk (local storage) metrics that
    # are associated with the current instance.
    #
    # @!attribute [rw] disk_read_ops_per_second
    #   The maximum number of read operations per second.
    #   @return [String]
    #
    # @!attribute [rw] disk_write_ops_per_second
    #   The maximum number of write operations per second.
    #   @return [String]
    #
    # @!attribute [rw] disk_read_bytes_per_second
    #   The maximum read throughput operations per second.
    #   @return [String]
    #
    # @!attribute [rw] disk_write_bytes_per_second
    #   The maximum write throughput operations per second.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/DiskResourceUtilization AWS API Documentation
    #
    class DiskResourceUtilization < Struct.new(
      :disk_read_ops_per_second,
      :disk_write_ops_per_second,
      :disk_read_bytes_per_second,
      :disk_write_bytes_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EBS field that contains a list of EBS metrics that are associated
    # with the current instance.
    #
    # @!attribute [rw] ebs_read_ops_per_second
    #   The maximum number of read operations per second.
    #   @return [String]
    #
    # @!attribute [rw] ebs_write_ops_per_second
    #   The maximum number of write operations per second.
    #   @return [String]
    #
    # @!attribute [rw] ebs_read_bytes_per_second
    #   The maximum size of read operations per second
    #   @return [String]
    #
    # @!attribute [rw] ebs_write_bytes_per_second
    #   The maximum size of write operations per second.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/EBSResourceUtilization AWS API Documentation
    #
    class EBSResourceUtilization < Struct.new(
      :ebs_read_ops_per_second,
      :ebs_write_ops_per_second,
      :ebs_read_bytes_per_second,
      :ebs_write_bytes_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Amazon EC2 instances that Amazon Web Services
    # recommends that you purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the recommended reservation.
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
    #   Determines whether the recommended reservation is dedicated or
    #   shared.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current-generation
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommended reservation is size flexible.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on the Amazon EC2 Resource.
    #
    # @!attribute [rw] hourly_on_demand_rate
    #   The hourly public On-Demand rate for the instance type.
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
    #   The memory capacity of the Amazon Web Services instance.
    #   @return [String]
    #
    # @!attribute [rw] network_performance
    #   The network performance capacity of the Amazon Web Services
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   The disk storage of the Amazon Web Services instance. This doesn't
    #   include EBS storage.
    #   @return [String]
    #
    # @!attribute [rw] vcpu
    #   The number of VCPU cores in the Amazon Web Services instance type.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Utilization metrics for the instance.
    #
    # @!attribute [rw] max_cpu_utilization_percentage
    #   The maximum observed or expected CPU utilization of the instance.
    #   @return [String]
    #
    # @!attribute [rw] max_memory_utilization_percentage
    #   The maximum observed or expected memory utilization of the instance.
    #   @return [String]
    #
    # @!attribute [rw] max_storage_utilization_percentage
    #   The maximum observed or expected storage utilization of the
    #   instance. This doesn't include EBS storage.
    #   @return [String]
    #
    # @!attribute [rw] ebs_resource_utilization
    #   The EBS field that contains a list of EBS metrics that are
    #   associated with the current instance.
    #   @return [Types::EBSResourceUtilization]
    #
    # @!attribute [rw] disk_resource_utilization
    #   The field that contains a list of disk (local storage) metrics that
    #   are associated with the current instance.
    #   @return [Types::DiskResourceUtilization]
    #
    # @!attribute [rw] network_resource_utilization
    #   The network field that contains a list of network metrics that are
    #   associated with the current instance.
    #   @return [Types::NetworkResourceUtilization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/EC2ResourceUtilization AWS API Documentation
    #
    class EC2ResourceUtilization < Struct.new(
      :max_cpu_utilization_percentage,
      :max_memory_utilization_percentage,
      :max_storage_utilization_percentage,
      :ebs_resource_utilization,
      :disk_resource_utilization,
      :network_resource_utilization)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon EC2 hardware specifications that you want Amazon Web
    # Services to provide recommendations for.
    #
    # @!attribute [rw] offering_class
    #   Indicates whether you want a recommendation for standard or
    #   convertible reservations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/EC2Specification AWS API Documentation
    #
    class EC2Specification < Struct.new(
      :offering_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Amazon OpenSearch Service instances that Amazon Web
    # Services recommends that you purchase.
    #
    # @!attribute [rw] instance_class
    #   The class of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] instance_size
    #   The size of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current-generation
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommended reservation is size flexible.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Amazon ElastiCache instances that Amazon Web
    # Services recommends that you purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of node that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The description of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current generation
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommended reservation is size flexible.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Use `Expression` to filter in various Cost Explorer APIs.
    #
    # Not all `Expression` types are supported in each API. Refer to the
    # documentation for each specific API to see what is supported.
    #
    # There are two patterns:
    #
    # * Simple dimension values.
    #
    #   * There are three types of simple dimension values:
    #     `CostCategories`, `Tags`, and `Dimensions`.
    #
    #     * Specify the `CostCategories` field to define a filter that acts
    #       on Cost Categories.
    #
    #     * Specify the `Tags` field to define a filter that acts on Cost
    #       Allocation Tags.
    #
    #     * Specify the `Dimensions` field to define a filter that acts on
    #       the [ `DimensionValues` ][1].
    #
    #   * For each filter type, you can set the dimension name and values
    #     for the filters that you plan to use.
    #
    #     * For example, you can filter for `REGION==us-east-1 OR
    #       REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #       Region is a full name (for example, `REGION==US East (N.
    #       Virginia)`.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #       “us-west-1” ] \} \}`
    #
    #     * As shown in the previous example, lists of dimension values are
    #       combined with `OR` when applying the filter.
    #
    #   * You can also set different match options to further control how
    #     the filter behaves. Not all APIs support match options. Refer to
    #     the documentation for each specific API to see what is supported.
    #
    #     * For example, you can filter for linked account names that start
    #       with “a”.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #       "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    # * Compound `Expression` types with logical operations.
    #
    #   * You can use multiple `Expression` types and the logical operators
    #     `AND/OR/NOT` to create a list of one or more `Expression` objects.
    #     By doing this, you can filter by more advanced options.
    #
    #   * For example, you can filter by `((REGION == us-east-1 OR REGION ==
    #     us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #     DataTransfer)`.
    #
    #   * The corresponding `Expression` for this example is as follows: `\{
    #     "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION", "Values": [
    #     "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key": "TagName",
    #     "Values": ["Value1"] \} \} ]\}, \{"Not": \{"Dimensions": \{ "Key":
    #     "USAGE_TYPE", "Values": ["DataTransfer"] \}\}\} ] \} `
    #
    #   <note markdown="1"> Because each `Expression` can have only one operator, the service
    #   returns an error if more than one is specified. The following
    #   example shows an `Expression` object that creates an error: ` \{
    #   "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #   "DataTransfer" ] \} \} `
    #
    #    The following is an example of the corresponding error message:
    #   `"Expression has more than one roots. Only one root operator is
    #   allowed for each expression: And, Or, Not, Dimensions, Tags,
    #   CostCategories"`
    #
    #    </note>
    #
    # <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR and
    # NOT isn't supported. OR isn't supported between different
    # dimensions, or dimensions and tags. NOT operators aren't supported.
    # Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    # `RIGHTSIZING_TYPE`.
    #
    #  For the `GetReservationPurchaseRecommendation` action, only NOT is
    # supported. AND and OR aren't supported. Dimensions are limited to
    # `LINKED_ACCOUNT`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
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
    #   The filter that's based on `CostCategory` values.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The forecast that's created for your query.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to generate a recommendation is already in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GenerationExistsException AWS API Documentation
    #
    class GenerationExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the Savings Plans recommendation generation.
    #
    # @!attribute [rw] recommendation_id
    #   Indicates the ID for this specific recommendation.
    #   @return [String]
    #
    # @!attribute [rw] generation_status
    #   Indicates whether the recommendation generation succeeded, is
    #   processing, or failed.
    #   @return [String]
    #
    # @!attribute [rw] generation_started_time
    #   Indicates the start time of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] generation_completion_time
    #   Indicates the completion time of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] estimated_completion_time
    #   Indicates the estimated time for when the recommendation generation
    #   will complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GenerationSummary AWS API Documentation
    #
    class GenerationSummary < Struct.new(
      :recommendation_id,
      :generation_status,
      :generation_started_time,
      :generation_completion_time,
      :estimated_completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   Retrieves all of the cost anomalies detected for a specific cost
    #   anomaly monitor Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] date_interval
    #   Assigns the start and end dates for retrieving cost anomalies. The
    #   returned anomaly object will have an `AnomalyEndDate` in the
    #   specified time range.
    #   @return [Types::AnomalyDateInterval]
    #
    # @!attribute [rw] feedback
    #   Filters anomaly results by the feedback field on the anomaly object.
    #   @return [String]
    #
    # @!attribute [rw] total_impact
    #   Filters anomaly results by the total impact field on the anomaly
    #   object. For example, you can filter anomalies `GREATER_THAN 200.00`
    #   to retrieve anomalies, with an estimated dollar impact greater than
    #   200.
    #   @return [Types::TotalImpactFilter]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of entries a paginated response contains.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomaliesRequest AWS API Documentation
    #
    class GetAnomaliesRequest < Struct.new(
      :monitor_arn,
      :date_interval,
      :feedback,
      :total_impact,
      :next_page_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomalies
    #   A list of cost anomalies.
    #   @return [Array<Types::Anomaly>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomaliesResponse AWS API Documentation
    #
    class GetAnomaliesResponse < Struct.new(
      :anomalies,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn_list
    #   A list of cost anomaly monitor ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of entries that a paginated response contains.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomalyMonitorsRequest AWS API Documentation
    #
    class GetAnomalyMonitorsRequest < Struct.new(
      :monitor_arn_list,
      :next_page_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_monitors
    #   A list of cost anomaly monitors that includes the detailed metadata
    #   for each monitor.
    #   @return [Array<Types::AnomalyMonitor>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomalyMonitorsResponse AWS API Documentation
    #
    class GetAnomalyMonitorsResponse < Struct.new(
      :anomaly_monitors,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_arn_list
    #   A list of cost anomaly subscription ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] monitor_arn
    #   Cost anomaly monitor ARNs.
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of entries a paginated response contains.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomalySubscriptionsRequest AWS API Documentation
    #
    class GetAnomalySubscriptionsRequest < Struct.new(
      :subscription_arn_list,
      :monitor_arn,
      :next_page_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_subscriptions
    #   A list of cost anomaly subscriptions that includes the detailed
    #   metadata for each one.
    #   @return [Array<Types::AnomalySubscription>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetAnomalySubscriptionsResponse AWS API Documentation
    #
    class GetAnomalySubscriptionsResponse < Struct.new(
      :anomaly_subscriptions,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   Sets the start date and end date for retrieving Amazon Web Services
    #   costs. The start date is inclusive, but the end date is exclusive.
    #   For example, if `start` is `2017-01-01` and `end` is `2017-05-01`,
    #   then the cost and usage data is retrieved from `2017-01-01` up to
    #   and including `2017-04-30` but not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] granularity
    #   Sets the Amazon Web Services cost granularity to `MONTHLY` or
    #   `DAILY`, or `HOURLY`. If `Granularity` isn't set, the response
    #   object doesn't include the `Granularity`, either `MONTHLY` or
    #   `DAILY`, or `HOURLY`.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters Amazon Web Services costs by different dimensions. For
    #   example, you can specify `SERVICE` and `LINKED_ACCOUNT` and get the
    #   costs that are associated with that account's usage of that
    #   service. You can nest `Expression` objects to define any combination
    #   of dimension filters. For more information, see [Expression][1].
    #
    #   Valid values for `MatchOptions` for `Dimensions` are `EQUALS` and
    #   `CASE_SENSITIVE`.
    #
    #   Valid values for `MatchOptions` for `CostCategories` and `Tags` are
    #   `EQUALS`, `ABSENT`, and `CASE_SENSITIVE`. Default values are
    #   `EQUALS` and `CASE_SENSITIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
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
    #   transfer are measured in different units (for example, hours and
    #   GB). To get more meaningful `UsageQuantity` metrics, filter by
    #   `UsageType` or `UsageTypeGroups`.
    #
    #    </note>
    #
    #   `Metrics` is required for `GetCostAndUsage` requests.
    #
    #
    #
    #   [1]: http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_by
    #   You can group Amazon Web Services costs using up to two different
    #   groups, either dimensions, tag keys, cost categories, or any two
    #   group by types.
    #
    #   Valid values for the `DIMENSION` type are `AZ`, `INSTANCE_TYPE`,
    #   `LEGAL_ENTITY_NAME`, `INVOICING_ENTITY`, `LINKED_ACCOUNT`,
    #   `OPERATION`, `PLATFORM`, `PURCHASE_TYPE`, `SERVICE`, `TENANCY`,
    #   `RECORD_TYPE`, and `USAGE_TYPE`.
    #
    #   When you group by the `TAG` type and include a valid tag key, you
    #   get all tag values, including empty strings.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. Amazon Web
    #   Services provides the token when the response from a previous call
    #   has more results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] group_definitions
    #   The groups that are specified by the `Filter` or `GroupBy`
    #   parameters in the request.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] results_by_time
    #   The time period that's covered by the results in the response.
    #   @return [Array<Types::ResultByTime>]
    #
    # @!attribute [rw] dimension_value_attributes
    #   The attributes that apply to a specific dimension value. For
    #   example, if the value is a linked account, the attribute is that
    #   account name.
    #   @return [Array<Types::DimensionValuesWithAttributes>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageResponse AWS API Documentation
    #
    class GetCostAndUsageResponse < Struct.new(
      :next_page_token,
      :group_definitions,
      :results_by_time,
      :dimension_value_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Sets the Amazon Web Services cost granularity to `MONTHLY`, `DAILY`,
    #   or `HOURLY`. If `Granularity` isn't set, the response object
    #   doesn't include the `Granularity`, `MONTHLY`, `DAILY`, or `HOURLY`.
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
    #   either group by or filter by a `ResourceId`. It requires the
    #   [Expression][1] `"SERVICE = Amazon Elastic Compute Cloud - Compute"`
    #   in the filter.
    #
    #   Valid values for `MatchOptions` for `Dimensions` are `EQUALS` and
    #   `CASE_SENSITIVE`.
    #
    #   Valid values for `MatchOptions` for `CostCategories` and `Tags` are
    #   `EQUALS`, `ABSENT`, and `CASE_SENSITIVE`. Default values are
    #   `EQUALS` and `CASE_SENSITIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
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
    #   transfer are measured in different units (for example, hour or GB).
    #   To get more meaningful `UsageQuantity` metrics, filter by
    #   `UsageType` or `UsageTypeGroups`.
    #
    #    </note>
    #
    #   `Metrics` is required for `GetCostAndUsageWithResources` requests.
    #
    #
    #
    #   [1]: http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_by
    #   You can group Amazon Web Services costs using up to two different
    #   groups: `DIMENSION`, `TAG`, `COST_CATEGORY`.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. Amazon Web
    #   Services provides the token when the response from a previous call
    #   has more results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] group_definitions
    #   The groups that are specified by the `Filter` or `GroupBy`
    #   parameters in the request.
    #   @return [Array<Types::GroupDefinition>]
    #
    # @!attribute [rw] results_by_time
    #   The time period that's covered by the results in the response.
    #   @return [Array<Types::ResultByTime>]
    #
    # @!attribute [rw] dimension_value_attributes
    #   The attributes that apply to a specific dimension value. For
    #   example, if the value is a linked account, the attribute is that
    #   account name.
    #   @return [Array<Types::DimensionValuesWithAttributes>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsageWithResourcesResponse AWS API Documentation
    #
    class GetCostAndUsageWithResourcesResponse < Struct.new(
      :next_page_token,
      :group_definitions,
      :results_by_time,
      :dimension_value_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_string
    #   The value that you want to search the filter values for.
    #
    #   If you don't specify a `CostCategoryName`, `SearchString` is used
    #   to filter Cost Category names that match the `SearchString` pattern.
    #   If you specify a `CostCategoryName`, `SearchString` is used to
    #   filter Cost Category values that match the `SearchString` pattern.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   The time period of the request.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] cost_category_name
    #   The unique name of the Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that
    #         acts on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values
    #         are combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is
    #       supported.
    #
    #       * For example, you can filter for linked account names that
    #         start with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical
    #       operators `AND/OR/NOT` to create a list of one or more
    #       `Expression` objects. By doing this, you can filter by more
    #       advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION
    #       == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION",
    #       "Values": [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key":
    #       "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not":
    #       \{"Dimensions": \{ "Key": "USAGE_TYPE", "Values":
    #       ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR
    #   and NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] sort_by
    #   The value that you sort the data by.
    #
    #   The key represents the cost and usage metrics. The following values
    #   are supported:
    #
    #   * `BlendedCost`
    #
    #   * `UnblendedCost`
    #
    #   * `AmortizedCost`
    #
    #   * `NetAmortizedCost`
    #
    #   * `NetUnblendedCost`
    #
    #   * `UsageQuantity`
    #
    #   * `NormalizedUsageAmount`
    #
    #   The supported key values for the `SortOrder` value are `ASCENDING`
    #   and `DESCENDING`.
    #
    #   When you use the `SortBy` value, the `NextPageToken` and
    #   `SearchString` key values aren't supported.
    #   @return [Array<Types::SortDefinition>]
    #
    # @!attribute [rw] max_results
    #   This field is only used when the `SortBy` value is provided in the
    #   request.
    #
    #   The maximum number of objects that are returned for this request. If
    #   `MaxResults` isn't specified with the `SortBy` value, the request
    #   returns 1000 results as the default value for this parameter.
    #
    #   For `GetCostCategories`, MaxResults has an upper quota of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   If the number of objects that are still available for retrieval
    #   exceeds the quota, Amazon Web Services returns a NextPageToken value
    #   in the response. To retrieve the next batch of objects, provide the
    #   NextPageToken from the previous call in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostCategoriesRequest AWS API Documentation
    #
    class GetCostCategoriesRequest < Struct.new(
      :search_string,
      :time_period,
      :cost_category_name,
      :filter,
      :sort_by,
      :max_results,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_page_token
    #   If the number of objects that are still available for retrieval
    #   exceeds the quota, Amazon Web Services returns a NextPageToken value
    #   in the response. To retrieve the next batch of objects, provide the
    #   marker from the prior call in your next request.
    #   @return [String]
    #
    # @!attribute [rw] cost_category_names
    #   The names of the Cost Categories.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cost_category_values
    #   The Cost Category values.
    #
    #   If the `CostCategoryName` key isn't specified in the request, the
    #   `CostCategoryValues` fields aren't returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] return_size
    #   The number of objects that are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size
    #   The total number of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostCategoriesResponse AWS API Documentation
    #
    class GetCostCategoriesResponse < Struct.new(
      :next_page_token,
      :cost_category_names,
      :cost_category_values,
      :return_size,
      :total_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   The period of time that you want the forecast to cover. The start
    #   date must be equal to or no later than the current date to avoid a
    #   validation error.
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
    #   [1]: http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/
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
    #   The filters that you want to use to filter your forecast. The
    #   `GetCostForecast` API supports filtering by the following
    #   dimensions:
    #
    #   * `AZ`
    #
    #   * `INSTANCE_TYPE`
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `LINKED_ACCOUNT_NAME`
    #
    #   * `OPERATION`
    #
    #   * `PURCHASE_TYPE`
    #
    #   * `REGION`
    #
    #   * `SERVICE`
    #
    #   * `USAGE_TYPE`
    #
    #   * `USAGE_TYPE_GROUP`
    #
    #   * `RECORD_TYPE`
    #
    #   * `OPERATING_SYSTEM`
    #
    #   * `TENANCY`
    #
    #   * `SCOPE`
    #
    #   * `PLATFORM`
    #
    #   * `SUBSCRIPTION_ID`
    #
    #   * `LEGAL_ENTITY_NAME`
    #
    #   * `DEPLOYMENT_OPTION`
    #
    #   * `DATABASE_ENGINE`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   * `BILLING_ENTITY`
    #
    #   * `RESERVATION_ID`
    #
    #   * `SAVINGS_PLAN_ARN`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_string
    #   The value that you want to search the filter values for.
    #   @return [String]
    #
    # @!attribute [rw] time_period
    #   The start date and end date for retrieving the dimension values. The
    #   start date is inclusive, but the end date is exclusive. For example,
    #   if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost
    #   and usage data is retrieved from `2017-01-01` up to and including
    #   `2017-04-30` but not including `2017-05-01`.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] dimension
    #   The name of the dimension. Each `Dimension` is available for a
    #   different `Context`. For more information, see `Context`.
    #   `LINK_ACCOUNT_NAME` and `SERVICE_CODE` can only be used in
    #   [CostCategoryRule][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/AAPI_CostCategoryRule.html
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
    #   * BILLING\_ENTITY - The Amazon Web Services seller that your account
    #     is with. Possible values are the following:
    #
    #     \- Amazon Web Services(Amazon Web Services): The entity that sells
    #     Amazon Web Services.
    #
    #     \- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian
    #     entity that's an acting reseller for Amazon Web Services in
    #     India.
    #
    #     \- Amazon Web Services Marketplace: The entity that supports the
    #     sale of solutions that are built on Amazon Web Services by
    #     third-party software providers.
    #
    #   * CACHE\_ENGINE - The Amazon ElastiCache operating system. Examples
    #     are Windows or Linux.
    #
    #   * DEPLOYMENT\_OPTION - The scope of Amazon Relational Database
    #     Service deployments. Valid values are `SingleAZ` and `MultiAZ`.
    #
    #   * DATABASE\_ENGINE - The Amazon Relational Database Service
    #     database. Examples are Aurora or MySQL.
    #
    #   * INSTANCE\_TYPE - The type of Amazon EC2 instance. An example is
    #     `m4.xlarge`.
    #
    #   * INSTANCE\_TYPE\_FAMILY - A family of instance types optimized to
    #     fit different use cases. Examples are `Compute Optimized` (for
    #     example, `C4`, `C5`, `C6g`, and `C7g`), `Memory Optimization` (for
    #     example, `R4`, `R5n`, `R5b`, and `R6g`).
    #
    #   * INVOICING\_ENTITY - The name of the entity that issues the Amazon
    #     Web Services invoice.
    #
    #   * LEGAL\_ENTITY\_NAME - The name of the organization that sells you
    #     Amazon Web Services services, such as Amazon Web Services.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the Amazon Web Services ID of the member account.
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
    #   * PURCHASE\_TYPE - The reservation type of the purchase that this
    #     usage is related to. Examples include On-Demand Instances and
    #     Standard Reserved Instances.
    #
    #   * RESERVATION\_ID - The unique identifier for an Amazon Web Services
    #     Reservation Instance.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plans.
    #
    #   * SAVINGS\_PLANS\_TYPE - Type of Savings Plans (EC2 Instance or
    #     Compute).
    #
    #   * SERVICE - The Amazon Web Services service such as Amazon DynamoDB.
    #
    #   * TENANCY - The tenancy of a resource. Examples are shared or
    #     dedicated.
    #
    #   * USAGE\_TYPE - The type of usage. An example is
    #     DataTransfer-In-Bytes. The response for the `GetDimensionValues`
    #     operation includes a unit attribute. Examples include GB and Hrs.
    #
    #   * USAGE\_TYPE\_GROUP - The grouping of common usage types. An
    #     example is Amazon EC2: CloudWatch – Alarms. The response for this
    #     operation includes a unit attribute.
    #
    #   * REGION - The Amazon Web Services Region.
    #
    #   * RECORD\_TYPE - The different types of charges such as Reserved
    #     Instance (RI) fees, usage costs, tax refunds, and credits.
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
    #     contains the Amazon Web Services ID of the member account.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows
    #     or Linux.
    #
    #   * REGION - The Amazon Web Services Region.
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
    #   * PAYMENT\_OPTION - The payment option for the given Savings Plans
    #     (for example, All Upfront)
    #
    #   * REGION - The Amazon Web Services Region.
    #
    #   * INSTANCE\_TYPE\_FAMILY - The family of instances (For example,
    #     `m5`)
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the Amazon Web Services ID of the member account.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that
    #         acts on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values
    #         are combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is
    #       supported.
    #
    #       * For example, you can filter for linked account names that
    #         start with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical
    #       operators `AND/OR/NOT` to create a list of one or more
    #       `Expression` objects. By doing this, you can filter by more
    #       advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION
    #       == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION",
    #       "Values": [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key":
    #       "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not":
    #       \{"Dimensions": \{ "Key": "USAGE_TYPE", "Values":
    #       ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR
    #   and NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] sort_by
    #   The value that you want to sort the data by.
    #
    #   The key represents cost and usage metrics. The following values are
    #   supported:
    #
    #   * `BlendedCost`
    #
    #   * `UnblendedCost`
    #
    #   * `AmortizedCost`
    #
    #   * `NetAmortizedCost`
    #
    #   * `NetUnblendedCost`
    #
    #   * `UsageQuantity`
    #
    #   * `NormalizedUsageAmount`
    #
    #   The supported values for the `SortOrder` key are `ASCENDING` or
    #   `DESCENDING`.
    #
    #   When you specify a `SortBy` paramater, the context must be
    #   `COST_AND_USAGE`. Further, when using `SortBy`, `NextPageToken` and
    #   `SearchString` aren't supported.
    #   @return [Array<Types::SortDefinition>]
    #
    # @!attribute [rw] max_results
    #   This field is only used when SortBy is provided in the request. The
    #   maximum number of objects that are returned for this request. If
    #   MaxResults isn't specified with SortBy, the request returns 1000
    #   results as the default value for this parameter.
    #
    #   For `GetDimensionValues`, MaxResults has an upper limit of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetDimensionValuesRequest AWS API Documentation
    #
    class GetDimensionValuesRequest < Struct.new(
      :search_string,
      :time_period,
      :dimension,
      :context,
      :filter,
      :sort_by,
      :max_results,
      :next_page_token)
      SENSITIVE = []
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
    #     Amazon Web Services services, such as Amazon Web Services.
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the Amazon Web Services ID of the member account.
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
    #   * SERVICE - The Amazon Web Services service such as Amazon DynamoDB.
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
    #     EC2-Compute Service. You can opt-in by enabling `Hourly` and
    #     `Resource Level Data` in Cost Management Console preferences.
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
    #     contains the Amazon Web Services ID of the member account.
    #
    #   * PLATFORM - The Amazon EC2 operating system. Examples are Windows
    #     or Linux.
    #
    #   * REGION - The Amazon Web Services Region.
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
    #   * REGION - The Amazon Web Services Region.
    #
    #   * INSTANCE\_TYPE\_FAMILY - The family of instances (For example,
    #     `m5`)
    #
    #   * LINKED\_ACCOUNT - The description in the attribute map that
    #     includes the full name of the member account. The value field
    #     contains the Amazon Web Services ID of the member account.
    #
    #   * SAVINGS\_PLAN\_ARN - The unique identifier for your Savings Plan
    #   @return [Array<Types::DimensionValuesWithAttributes>]
    #
    # @!attribute [rw] return_size
    #   The number of results that Amazon Web Services returned at one time.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size
    #   The total number of search results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. Amazon Web
    #   Services provides the token when the response from a previous call
    #   has more results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetDimensionValuesResponse AWS API Documentation
    #
    class GetDimensionValuesResponse < Struct.new(
      :dimension_values,
      :return_size,
      :total_size,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can use the following request parameters to query for how much of
    # your instance usage a reservation covered.
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
    #   * INVOICING\_ENTITY
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
    #   The granularity of the Amazon Web Services cost data for the
    #   reservation. Valid values are `MONTHLY` and `DAILY`.
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
    #   Cost category is also supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
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
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value by which you want to sort the data.
    #
    #   The following values are supported for `Key`:
    #
    #   * `OnDemandCost`
    #
    #   * `CoverageHoursPercentage`
    #
    #   * `OnDemandHours`
    #
    #   * `ReservedHours`
    #
    #   * `TotalRunningHours`
    #
    #   * `CoverageNormalizedUnitsPercentage`
    #
    #   * `OnDemandNormalizedUnits`
    #
    #   * `ReservedNormalizedUnits`
    #
    #   * `TotalRunningNormalizedUnits`
    #
    #   * `Time`
    #
    #   Supported values for `SortOrder` are `ASCENDING` or `DESCENDING`.
    #   @return [Types::SortDefinition]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you returned for this request. If
    #   more objects are available, in the response, Amazon Web Services
    #   provides a NextPageToken value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationCoverageRequest AWS API Documentation
    #
    class GetReservationCoverageRequest < Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      :next_page_token,
      :sort_by,
      :max_results)
      SENSITIVE = []
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
    #   The token for the next set of retrievable results. Amazon Web
    #   Services provides the token when the response from a previous call
    #   has more results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationCoverageResponse AWS API Documentation
    #
    class GetReservationCoverageResponse < Struct.new(
      :coverages_by_time,
      :total,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID that's associated with the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The specific service that you want recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that
    #         acts on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values
    #         are combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is
    #       supported.
    #
    #       * For example, you can filter for linked account names that
    #         start with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical
    #       operators `AND/OR/NOT` to create a list of one or more
    #       `Expression` objects. By doing this, you can filter by more
    #       advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION
    #       == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION",
    #       "Values": [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key":
    #       "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not":
    #       \{"Dimensions": \{ "Key": "USAGE_TYPE", "Values":
    #       ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR
    #   and NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations including the management account
    #   and member accounts if the value is set to `PAYER`. If the value is
    #   `LINKED`, recommendations are calculated for individual member
    #   accounts only.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The number of previous days that you want Amazon Web Services to
    #   consider when it calculates your recommendations.
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
      :filter,
      :account_scope,
      :lookback_period_in_days,
      :term_in_years,
      :payment_option,
      :service_specification,
      :page_size,
      :next_page_token)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   Sets the start and end dates for retrieving Reserved Instance (RI)
    #   utilization. The start date is inclusive, but the end date is
    #   exclusive. For example, if `start` is `2017-01-01` and `end` is
    #   `2017-05-01`, then the cost and usage data is retrieved from
    #   `2017-01-01` up to and including `2017-04-30` but not including
    #   `2017-05-01`.
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
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `UtilizationPercentage`
    #
    #   * `UtilizationPercentageInUnits`
    #
    #   * `PurchasedHours`
    #
    #   * `PurchasedUnits`
    #
    #   * `TotalActualHours`
    #
    #   * `TotalActualUnits`
    #
    #   * `UnusedHours`
    #
    #   * `UnusedUnits`
    #
    #   * `OnDemandCostOfRIHoursUsed`
    #
    #   * `NetRISavings`
    #
    #   * `TotalPotentialRISavings`
    #
    #   * `AmortizedUpfrontFee`
    #
    #   * `AmortizedRecurringFee`
    #
    #   * `TotalAmortizedFee`
    #
    #   * `RICostForUnusedHours`
    #
    #   * `RealizedSavings`
    #
    #   * `UnrealizedSavings`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and
    #   `DESCENDING`.
    #   @return [Types::SortDefinition]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you returned for this request. If
    #   more objects are available, in the response, Amazon Web Services
    #   provides a NextPageToken value that you can use in a subsequent call
    #   to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationUtilizationRequest AWS API Documentation
    #
    class GetReservationUtilizationRequest < Struct.new(
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :sort_by,
      :next_page_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] utilizations_by_time
    #   The amount of time that you used your Reserved Instances (RIs).
    #   @return [Array<Types::UtilizationByTime>]
    #
    # @!attribute [rw] total
    #   The total amount of time that you used your Reserved Instances
    #   (RIs).
    #   @return [Types::ReservationAggregates]
    #
    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. Amazon Web
    #   Services provides the token when the response from a previous call
    #   has more results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationUtilizationResponse AWS API Documentation
    #
    class GetReservationUtilizationResponse < Struct.new(
      :utilizations_by_time,
      :total,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that
    #         acts on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values
    #         are combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is
    #       supported.
    #
    #       * For example, you can filter for linked account names that
    #         start with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical
    #       operators `AND/OR/NOT` to create a list of one or more
    #       `Expression` objects. By doing this, you can filter by more
    #       advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION
    #       == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION",
    #       "Values": [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key":
    #       "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not":
    #       \{"Dimensions": \{ "Key": "USAGE_TYPE", "Values":
    #       ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR
    #   and NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] configuration
    #   You can use Configuration to customize recommendations across two
    #   attributes. You can choose to view recommendations for instances
    #   within the same instance families or across different instance
    #   families. You can also choose to view your estimated savings that
    #   are associated with recommendations with consideration of existing
    #   Savings Plans or RI benefits, or neither.
    #   @return [Types::RightsizingRecommendationConfiguration]
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
      :configuration,
      :service,
      :page_size,
      :next_page_token)
      SENSITIVE = []
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
    # @!attribute [rw] configuration
    #   You can use Configuration to customize recommendations across two
    #   attributes. You can choose to view recommendations for instances
    #   within the same instance families or across different instance
    #   families. You can also choose to view your estimated savings that
    #   are associated with recommendations with consideration of existing
    #   Savings Plans or RI benefits, or neither.
    #   @return [Types::RightsizingRecommendationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetRightsizingRecommendationResponse AWS API Documentation
    #
    class GetRightsizingRecommendationResponse < Struct.new(
      :metadata,
      :summary,
      :rightsizing_recommendations,
      :next_page_token,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Cost category is also supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
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
    # @!attribute [rw] sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `SpendCoveredBySavingsPlan`
    #
    #   * `OnDemandCost`
    #
    #   * `CoveragePercentage`
    #
    #   * `TotalCost`
    #
    #   * `InstanceFamily`
    #
    #   * `Region`
    #
    #   * `Service`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and
    #   `DESCENDING`.
    #   @return [Types::SortDefinition]
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
      :max_results,
      :sort_by)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] savings_plans_type
    #   The Savings Plans recommendation type that's requested.
    #   @return [String]
    #
    # @!attribute [rw] term_in_years
    #   The savings plan recommendation term that's used to generate these
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option that's used to generate these recommendations.
    #   @return [String]
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations including the management account
    #   and member accounts if the value is set to `PAYER`. If the value is
    #   `LINKED`, recommendations are calculated for individual member
    #   accounts only.
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
    #   The lookback period that's used to generate the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   You can filter your recommendations by Account ID with the
    #   `LINKED_ACCOUNT` dimension. To filter your recommendations by
    #   Account ID, specify `Key` as `LINKED_ACCOUNT` and `Value` as the
    #   comma-separated Acount ID(s) that you want to see Savings Plans
    #   purchase recommendations for.
    #
    #   For GetSavingsPlansPurchaseRecommendation, the `Filter` doesn't
    #   include `CostCategories` or `Tags`. It only includes `Dimensions`.
    #   With `Dimensions`, `Key` must be `LINKED_ACCOUNT` and `Value` can be
    #   a single Account ID or multiple comma-separated Account IDs that you
    #   want to see Savings Plans Purchase Recommendations for. `AND` and
    #   `OR` operators are not supported.
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansPurchaseRecommendationRequest AWS API Documentation
    #
    class GetSavingsPlansPurchaseRecommendationRequest < Struct.new(
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :account_scope,
      :next_page_token,
      :page_size,
      :lookback_period_in_days,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   Information that regards this specific recommendation set.
    #   @return [Types::SavingsPlansPurchaseRecommendationMetadata]
    #
    # @!attribute [rw] savings_plans_purchase_recommendation
    #   Contains your request parameters, Savings Plan Recommendations
    #   Summary, and Details.
    #   @return [Types::SavingsPlansPurchaseRecommendation]
    #
    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. Amazon Web
    #   Services provides the token when the response from a previous call
    #   has more results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansPurchaseRecommendationResponse AWS API Documentation
    #
    class GetSavingsPlansPurchaseRecommendationResponse < Struct.new(
      :metadata,
      :savings_plans_purchase_recommendation,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] data_type
    #   The data type.
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
    # @!attribute [rw] sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `UtilizationPercentage`
    #
    #   * `TotalCommitment`
    #
    #   * `UsedCommitment`
    #
    #   * `UnusedCommitment`
    #
    #   * `NetSavings`
    #
    #   * `AmortizedRecurringCommitment`
    #
    #   * `AmortizedUpfrontCommitment`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and
    #   `DESCENDING`.
    #   @return [Types::SortDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilizationDetailsRequest AWS API Documentation
    #
    class GetSavingsPlansUtilizationDetailsRequest < Struct.new(
      :time_period,
      :filter,
      :data_type,
      :next_token,
      :max_results,
      :sort_by)
      SENSITIVE = []
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
    #   The time period of the request.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] sort_by
    #   The value that you want to sort the data by.
    #
    #   The following values are supported for `Key`:
    #
    #   * `UtilizationPercentage`
    #
    #   * `TotalCommitment`
    #
    #   * `UsedCommitment`
    #
    #   * `UnusedCommitment`
    #
    #   * `NetSavings`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and
    #   `DESCENDING`.
    #   @return [Types::SortDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetSavingsPlansUtilizationRequest AWS API Documentation
    #
    class GetSavingsPlansUtilizationRequest < Struct.new(
      :time_period,
      :granularity,
      :filter,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] savings_plans_utilizations_by_time
    #   The amount of cost/commitment that you used your Savings Plans. You
    #   can use it to specify date ranges.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] filter
    #   Use `Expression` to filter in various Cost Explorer APIs.
    #
    #   Not all `Expression` types are supported in each API. Refer to the
    #   documentation for each specific API to see what is supported.
    #
    #   There are two patterns:
    #
    #   * Simple dimension values.
    #
    #     * There are three types of simple dimension values:
    #       `CostCategories`, `Tags`, and `Dimensions`.
    #
    #       * Specify the `CostCategories` field to define a filter that
    #         acts on Cost Categories.
    #
    #       * Specify the `Tags` field to define a filter that acts on Cost
    #         Allocation Tags.
    #
    #       * Specify the `Dimensions` field to define a filter that acts on
    #         the [ `DimensionValues` ][1].
    #
    #     * For each filter type, you can set the dimension name and values
    #       for the filters that you plan to use.
    #
    #       * For example, you can filter for `REGION==us-east-1 OR
    #         REGION==us-west-1`. For `GetRightsizingRecommendation`, the
    #         Region is a full name (for example, `REGION==US East (N.
    #         Virginia)`.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "REGION", "Values": [ "us-east-1",
    #         “us-west-1” ] \} \}`
    #
    #       * As shown in the previous example, lists of dimension values
    #         are combined with `OR` when applying the filter.
    #
    #     * You can also set different match options to further control how
    #       the filter behaves. Not all APIs support match options. Refer to
    #       the documentation for each specific API to see what is
    #       supported.
    #
    #       * For example, you can filter for linked account names that
    #         start with “a”.
    #
    #       * The corresponding `Expression` for this example is as follows:
    #         `\{ "Dimensions": \{ "Key": "LINKED_ACCOUNT_NAME",
    #         "MatchOptions": [ "STARTS_WITH" ], "Values": [ "a" ] \} \}`
    #
    #   * Compound `Expression` types with logical operations.
    #
    #     * You can use multiple `Expression` types and the logical
    #       operators `AND/OR/NOT` to create a list of one or more
    #       `Expression` objects. By doing this, you can filter by more
    #       advanced options.
    #
    #     * For example, you can filter by `((REGION == us-east-1 OR REGION
    #       == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #       DataTransfer)`.
    #
    #     * The corresponding `Expression` for this example is as follows:
    #       `\{ "And": [ \{"Or": [ \{"Dimensions": \{ "Key": "REGION",
    #       "Values": [ "us-east-1", "us-west-1" ] \}\}, \{"Tags": \{ "Key":
    #       "TagName", "Values": ["Value1"] \} \} ]\}, \{"Not":
    #       \{"Dimensions": \{ "Key": "USAGE_TYPE", "Values":
    #       ["DataTransfer"] \}\}\} ] \} `
    #
    #     <note markdown="1"> Because each `Expression` can have only one operator, the service
    #     returns an error if more than one is specified. The following
    #     example shows an `Expression` object that creates an error: ` \{
    #     "And": [ ... ], "Dimensions": \{ "Key": "USAGE_TYPE", "Values": [
    #     "DataTransfer" ] \} \} `
    #
    #      The following is an example of the corresponding error message:
    #     `"Expression has more than one roots. Only one root operator is
    #     allowed for each expression: And, Or, Not, Dimensions, Tags,
    #     CostCategories"`
    #
    #      </note>
    #
    #   <note markdown="1"> For the `GetRightsizingRecommendation` action, a combination of OR
    #   and NOT isn't supported. OR isn't supported between different
    #   dimensions, or dimensions and tags. NOT operators aren't supported.
    #   Dimensions are also limited to `LINKED_ACCOUNT`, `REGION`, or
    #   `RIGHTSIZING_TYPE`.
    #
    #    For the `GetReservationPurchaseRecommendation` action, only NOT is
    #   supported. AND and OR aren't supported. Dimensions are limited to
    #   `LINKED_ACCOUNT`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html
    #   @return [Types::Expression]
    #
    # @!attribute [rw] sort_by
    #   The value that you want to sort the data by.
    #
    #   The key represents cost and usage metrics. The following values are
    #   supported:
    #
    #   * `BlendedCost`
    #
    #   * `UnblendedCost`
    #
    #   * `AmortizedCost`
    #
    #   * `NetAmortizedCost`
    #
    #   * `NetUnblendedCost`
    #
    #   * `UsageQuantity`
    #
    #   * `NormalizedUsageAmount`
    #
    #   The supported values for `SortOrder` are `ASCENDING` and
    #   `DESCENDING`.
    #
    #   When you use `SortBy`, `NextPageToken` and `SearchString` aren't
    #   supported.
    #   @return [Array<Types::SortDefinition>]
    #
    # @!attribute [rw] max_results
    #   This field is only used when SortBy is provided in the request. The
    #   maximum number of objects that are returned for this request. If
    #   MaxResults isn't specified with SortBy, the request returns 1000
    #   results as the default value for this parameter.
    #
    #   For `GetTags`, MaxResults has an upper quota of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetTagsRequest AWS API Documentation
    #
    class GetTagsRequest < Struct.new(
      :search_string,
      :time_period,
      :tag_key,
      :filter,
      :sort_by,
      :max_results,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_page_token
    #   The token for the next set of retrievable results. Amazon Web
    #   Services provides the token when the response from a previous call
    #   has more results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that match your request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] return_size
    #   The number of query results that Amazon Web Services returns at a
    #   time.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_period
    #   The start and end dates of the period that you want to retrieve
    #   usage forecast for. The start date is included in the period, but
    #   the end date isn't included in the period. For example, if `start`
    #   is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage
    #   data is retrieved from `2017-01-01` up to and including `2017-04-30`
    #   but not including `2017-05-01`. The start date must be equal to or
    #   later than the current date to avoid a validation error.
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
    #   The filters that you want to use to filter your forecast. The
    #   `GetUsageForecast` API supports filtering by the following
    #   dimensions:
    #
    #   * `AZ`
    #
    #   * `INSTANCE_TYPE`
    #
    #   * `LINKED_ACCOUNT`
    #
    #   * `LINKED_ACCOUNT_NAME`
    #
    #   * `OPERATION`
    #
    #   * `PURCHASE_TYPE`
    #
    #   * `REGION`
    #
    #   * `SERVICE`
    #
    #   * `USAGE_TYPE`
    #
    #   * `USAGE_TYPE_GROUP`
    #
    #   * `RECORD_TYPE`
    #
    #   * `OPERATING_SYSTEM`
    #
    #   * `TENANCY`
    #
    #   * `SCOPE`
    #
    #   * `PLATFORM`
    #
    #   * `SUBSCRIPTION_ID`
    #
    #   * `LEGAL_ENTITY_NAME`
    #
    #   * `DEPLOYMENT_OPTION`
    #
    #   * `DATABASE_ENGINE`
    #
    #   * `INSTANCE_TYPE_FAMILY`
    #
    #   * `BILLING_ENTITY`
    #
    #   * `RESERVATION_ID`
    #
    #   * `SAVINGS_PLAN_ARN`
    #   @return [Types::Expression]
    #
    # @!attribute [rw] prediction_interval_level
    #   Amazon Web Services Cost Explorer always returns the mean forecast
    #   as a single point. You can request a prediction interval around the
    #   mean by specifying a confidence level. The higher the confidence
    #   level, the more confident Cost Explorer is about the actual value
    #   falling in the prediction interval. Higher confidence levels result
    #   in wider prediction intervals.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a group when you specify a group by criteria or in the
    # response to a query with a specific grouping.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The dollar value of the anomaly.
    #
    # @!attribute [rw] max_impact
    #   The maximum dollar value that's observed for an anomaly.
    #   @return [Float]
    #
    # @!attribute [rw] total_impact
    #   The cumulative dollar difference between the total actual spend and
    #   total expected spend. It is calculated as `TotalActualSpend -
    #   TotalExpectedSpend`.
    #   @return [Float]
    #
    # @!attribute [rw] total_actual_spend
    #   The cumulative dollar amount that was actually spent during the
    #   anomaly.
    #   @return [Float]
    #
    # @!attribute [rw] total_expected_spend
    #   The cumulative dollar amount that was expected to be spent during
    #   the anomaly. It is calculated using advanced machine learning models
    #   to determine the typical spending pattern based on historical data
    #   for a customer.
    #   @return [Float]
    #
    # @!attribute [rw] total_impact_percentage
    #   The cumulative percentage difference between the total actual spend
    #   and total expected spend. It is calculated as `(TotalImpact /
    #   TotalExpectedSpend) * 100`. When `TotalExpectedSpend` is zero, this
    #   field is omitted. Expected spend can be zero in situations such as
    #   when you start to use a service for the first time.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Impact AWS API Documentation
    #
    class Impact < Struct.new(
      :max_impact,
      :total_impact,
      :total_actual_spend,
      :total_expected_spend,
      :total_impact_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the instances that Amazon Web Services recommends that
    # you purchase.
    #
    # @!attribute [rw] ec2_instance_details
    #   The Amazon EC2 instances that Amazon Web Services recommends that
    #   you purchase.
    #   @return [Types::EC2InstanceDetails]
    #
    # @!attribute [rw] rds_instance_details
    #   The Amazon RDS instances that Amazon Web Services recommends that
    #   you purchase.
    #   @return [Types::RDSInstanceDetails]
    #
    # @!attribute [rw] redshift_instance_details
    #   The Amazon Redshift instances that Amazon Web Services recommends
    #   that you purchase.
    #   @return [Types::RedshiftInstanceDetails]
    #
    # @!attribute [rw] elasticache_instance_details
    #   The ElastiCache instances that Amazon Web Services recommends that
    #   you purchase.
    #   @return [Types::ElastiCacheInstanceDetails]
    #
    # @!attribute [rw] es_instance_details
    #   The Amazon OpenSearch Service instances that Amazon Web Services
    #   recommends that you purchase.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of cost allocation tag keys that are returned for this
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of cost allocation tag keys that are returned for this
    #   request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of `CostAllocationTag` object that are returned for this
    #   request. The `AWSGenerated` type tags are tags that Amazon Web
    #   Services defines and applies to support Amazon Web Services
    #   resources for cost allocation purposes. The `UserDefined` type tags
    #   are tags that you define, create, and apply to resources.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that are returned for this request. By
    #   default, the request returns 100 results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListCostAllocationTagsRequest AWS API Documentation
    #
    class ListCostAllocationTagsRequest < Struct.new(
      :status,
      :tag_keys,
      :type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_allocation_tags
    #   A list of cost allocation tags that includes the detailed metadata
    #   for each one.
    #   @return [Array<Types::CostAllocationTag>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListCostAllocationTagsResponse AWS API Documentation
    #
    class ListCostAllocationTagsResponse < Struct.new(
      :cost_allocation_tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] effective_on
    #   The date when the Cost Category was effective.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of entries a paginated response contains.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListCostCategoryDefinitionsRequest AWS API Documentation
    #
    class ListCostCategoryDefinitionsRequest < Struct.new(
      :effective_on,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_references
    #   A reference to a Cost Category that contains enough information to
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generation_status
    #   The status of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_ids
    #   The IDs for each specific recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] page_size
    #   The number of recommendations that you want returned in a single
    #   response object.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListSavingsPlansPurchaseRecommendationGenerationRequest AWS API Documentation
    #
    class ListSavingsPlansPurchaseRecommendationGenerationRequest < Struct.new(
      :generation_status,
      :recommendation_ids,
      :page_size,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generation_summary_list
    #   The list of historical recommendation generations.
    #   @return [Array<Types::GenerationSummary>]
    #
    # @!attribute [rw] next_page_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListSavingsPlansPurchaseRecommendationGenerationResponse AWS API Documentation
    #
    class ListSavingsPlansPurchaseRecommendationGenerationResponse < Struct.new(
      :generation_summary_list,
      :next_page_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For a list of
    #   supported resources, see [ResourceTag][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_tags
    #   A list of tag key value pairs that are associated with the resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for the modification recommendation.
    #
    # @!attribute [rw] target_instances
    #   Determines whether this instance type is the Amazon Web Services
    #   default recommendation.
    #   @return [Array<Types::TargetInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ModifyRecommendationDetail AWS API Documentation
    #
    class ModifyRecommendationDetail < Struct.new(
      :target_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network field that contains a list of network metrics that are
    # associated with the current instance.
    #
    # @!attribute [rw] network_in_bytes_per_second
    #   The network inbound throughput utilization measured in Bytes per
    #   second (Bps).
    #   @return [String]
    #
    # @!attribute [rw] network_out_bytes_per_second
    #   The network outbound throughput utilization measured in Bytes per
    #   second (Bps).
    #   @return [String]
    #
    # @!attribute [rw] network_packets_in_per_second
    #   The network inbound packets that are measured in packets per second.
    #   @return [String]
    #
    # @!attribute [rw] network_packets_out_per_second
    #   The network outbound packets that are measured in packets per
    #   second.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/NetworkResourceUtilization AWS API Documentation
    #
    class NetworkResourceUtilization < Struct.new(
      :network_in_bytes_per_second,
      :network_out_bytes_per_second,
      :network_packets_in_per_second,
      :network_packets_out_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_id
    #   A cost anomaly ID.
    #   @return [String]
    #
    # @!attribute [rw] feedback
    #   Describes whether the cost anomaly was a planned activity or you
    #   considered it an anomaly.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ProvideAnomalyFeedbackRequest AWS API Documentation
    #
    class ProvideAnomalyFeedbackRequest < Struct.new(
      :anomaly_id,
      :feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_id
    #   The ID of the modified cost anomaly.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ProvideAnomalyFeedbackResponse AWS API Documentation
    #
    class ProvideAnomalyFeedbackResponse < Struct.new(
      :anomaly_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Amazon RDS instances that Amazon Web Services
    # recommends that you purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the recommended reservation.
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
    #   Determines whether the recommendation is for a reservation in a
    #   single Availability Zone or a reservation with a backup in a second
    #   Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model that the recommended reservation supports.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current-generation
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommended reservation is size flexible.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Amazon Redshift instances that Amazon Web Services
    # recommends that you purchase.
    #
    # @!attribute [rw] family
    #   The instance family of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of node that Amazon Web Services recommends.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the recommended reservation.
    #   @return [String]
    #
    # @!attribute [rw] current_generation
    #   Determines whether the recommendation is for a current-generation
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_flex_eligible
    #   Determines whether the recommended reservation is size flexible.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated numbers for your reservation usage.
    #
    # @!attribute [rw] utilization_percentage
    #   The percentage of reservation time that you used.
    #   @return [String]
    #
    # @!attribute [rw] utilization_percentage_in_units
    #   The percentage of Amazon EC2 reservation time that you used. It's
    #   converted to normalized units. Normalized units are available only
    #   for Amazon EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] purchased_hours
    #   How many reservation hours that you purchased.
    #   @return [String]
    #
    # @!attribute [rw] purchased_units
    #   The number of Amazon EC2 reservation hours that you purchased. It's
    #   converted to normalized units. Normalized units are available only
    #   for Amazon EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] total_actual_hours
    #   The total number of reservation hours that you used.
    #   @return [String]
    #
    # @!attribute [rw] total_actual_units
    #   The total number of Amazon EC2 reservation hours that you used.
    #   It's converted to normalized units. Normalized units are available
    #   only for Amazon EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] unused_hours
    #   The number of reservation hours that you didn't use.
    #   @return [String]
    #
    # @!attribute [rw] unused_units
    #   The number of Amazon EC2 reservation hours that you didn't use.
    #   It's converted to normalized units. Normalized units are available
    #   only for Amazon EC2 usage after November 11, 2017.
    #   @return [String]
    #
    # @!attribute [rw] on_demand_cost_of_ri_hours_used
    #   How much your reservation costs if charged On-Demand rates.
    #   @return [String]
    #
    # @!attribute [rw] net_ri_savings
    #   How much you saved due to purchasing and utilizing reservation.
    #   Amazon Web Services calculates this by subtracting
    #   `TotalAmortizedFee` from `OnDemandCostOfRIHoursUsed`.
    #   @return [String]
    #
    # @!attribute [rw] total_potential_ri_savings
    #   How much you might save if you use your entire reservation.
    #   @return [String]
    #
    # @!attribute [rw] amortized_upfront_fee
    #   The upfront cost of your reservation. It's amortized over the
    #   reservation period.
    #   @return [String]
    #
    # @!attribute [rw] amortized_recurring_fee
    #   The monthly cost of your reservation. It's amortized over the
    #   reservation period.
    #   @return [String]
    #
    # @!attribute [rw] total_amortized_fee
    #   The total cost of your reservation. It's amortized over the
    #   reservation period.
    #   @return [String]
    #
    # @!attribute [rw] ri_cost_for_unused_hours
    #   The cost of unused hours for your reservation.
    #   @return [String]
    #
    # @!attribute [rw] realized_savings
    #   The realized savings because of purchasing and using a reservation.
    #   @return [String]
    #
    # @!attribute [rw] unrealized_savings
    #   The unrealized savings because of purchasing and using a
    #   reservation.
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
      :total_amortized_fee,
      :ri_cost_for_unused_hours,
      :realized_savings,
      :unrealized_savings)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A specific reservation that Amazon Web Services recommends for
    # purchase.
    #
    # @!attribute [rw] account_scope
    #   The account scope that Amazon Web Services recommends that you
    #   purchase this instance for. For example, you can purchase this
    #   reservation for an entire organization in Amazon Web Services
    #   Organizations.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   How many days of previous usage that Amazon Web Services considers
    #   when making this recommendation.
    #   @return [String]
    #
    # @!attribute [rw] term_in_years
    #   The term of the reservation that you want recommendations for, in
    #   years.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the reservation (for example, `AllUpfront` or
    #   `NoUpfront`).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about your recommended reservation purchase.
    #
    # @!attribute [rw] account_id
    #   The account that this Reserved Instance (RI) recommendation is for.
    #   @return [String]
    #
    # @!attribute [rw] instance_details
    #   Details about the instances that Amazon Web Services recommends that
    #   you purchase.
    #   @return [Types::InstanceDetails]
    #
    # @!attribute [rw] recommended_number_of_instances_to_purchase
    #   The number of instances that Amazon Web Services recommends that you
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] recommended_normalized_units_to_purchase
    #   The number of normalized units that Amazon Web Services recommends
    #   that you purchase.
    #   @return [String]
    #
    # @!attribute [rw] minimum_number_of_instances_used_per_hour
    #   The minimum number of instances that you used in an hour during the
    #   historical period. Amazon Web Services uses this to calculate your
    #   recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] minimum_normalized_units_used_per_hour
    #   The minimum number of normalized units that you used in an hour
    #   during the historical period. Amazon Web Services uses this to
    #   calculate your recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] maximum_number_of_instances_used_per_hour
    #   The maximum number of instances that you used in an hour during the
    #   historical period. Amazon Web Services uses this to calculate your
    #   recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] maximum_normalized_units_used_per_hour
    #   The maximum number of normalized units that you used in an hour
    #   during the historical period. Amazon Web Services uses this to
    #   calculate your recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] average_number_of_instances_used_per_hour
    #   The average number of instances that you used in an hour during the
    #   historical period. Amazon Web Services uses this to calculate your
    #   recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] average_normalized_units_used_per_hour
    #   The average number of normalized units that you used in an hour
    #   during the historical period. Amazon Web Services uses this to
    #   calculate your recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] average_utilization
    #   The average utilization of your instances. Amazon Web Services uses
    #   this to calculate your recommended reservation purchases.
    #   @return [String]
    #
    # @!attribute [rw] estimated_break_even_in_months
    #   How long Amazon Web Services estimates that it takes for this
    #   instance to start saving you money, in months.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that Amazon Web Services used to calculate the
    #   costs for this instance.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_amount
    #   How much Amazon Web Services estimates that this specific
    #   recommendation might save you in a month.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_percentage
    #   How much Amazon Web Services estimates that this specific
    #   recommendation might save you in a month, as a percentage of your
    #   overall costs.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_on_demand_cost
    #   How much Amazon Web Services estimates that you spend on On-Demand
    #   Instances in a month.
    #   @return [String]
    #
    # @!attribute [rw] estimated_reservation_cost_for_lookback_period
    #   How much Amazon Web Services estimates that you might spend for all
    #   usage during the specified historical period if you had a
    #   reservation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about this specific recommendation, such as the timestamp
    # for when Amazon Web Services made a specific recommendation.
    #
    # @!attribute [rw] recommendation_id
    #   The ID for this specific recommendation.
    #   @return [String]
    #
    # @!attribute [rw] generation_timestamp
    #   The timestamp for when Amazon Web Services made this recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ReservationPurchaseRecommendationMetadata AWS API Documentation
    #
    class ReservationPurchaseRecommendationMetadata < Struct.new(
      :recommendation_id,
      :generation_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary about this recommendation, such as the currency code, the
    # amount that Amazon Web Services estimates that you could save, and the
    # total amount of reservation to purchase.
    #
    # @!attribute [rw] total_estimated_monthly_savings_amount
    #   The total amount that Amazon Web Services estimates that this
    #   recommendation could save you in a month.
    #   @return [String]
    #
    # @!attribute [rw] total_estimated_monthly_savings_percentage
    #   The total amount that Amazon Web Services estimates that this
    #   recommendation could save you in a month, as a percentage of your
    #   costs.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for the resource.
    #
    # @!attribute [rw] ec2_resource_details
    #   Details for the Amazon EC2 resource.
    #   @return [Types::EC2ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :ec2_resource_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified ARN in the request doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag structure that contains a tag key and value.
    #
    # <note markdown="1"> Tagging is supported only for the following Cost Explorer resource
    # types: [ `AnomalyMonitor` ][1], [ `AnomalySubscription` ][2], [
    # `CostCategory` ][3].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html
    # [2]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html
    # [3]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html
    #
    # @!attribute [rw] key
    #   The key that's associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that's associated with the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource utilization of current resource.
    #
    # @!attribute [rw] ec2_resource_utilization
    #   The utilization of current Amazon EC2 instance.
    #   @return [Types::EC2ResourceUtilization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResourceUtilization AWS API Documentation
    #
    class ResourceUtilization < Struct.new(
      :ec2_resource_utilization)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result that's associated with a time period.
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
    #   Determines whether the result is estimated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ResultByTime AWS API Documentation
    #
    class ResultByTime < Struct.new(
      :time_period,
      :total,
      :groups,
      :estimated)
      SENSITIVE = []
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
    #   A recommendation to either terminate or modify the resource.
    #   @return [String]
    #
    # @!attribute [rw] modify_recommendation_detail
    #   The details for the modification recommendations.
    #   @return [Types::ModifyRecommendationDetail]
    #
    # @!attribute [rw] terminate_recommendation_detail
    #   The details for termination recommendations.
    #   @return [Types::TerminateRecommendationDetail]
    #
    # @!attribute [rw] finding_reason_codes
    #   The list of possible reasons why the recommendation is generated,
    #   such as under- or over-utilization of specific metrics (for example,
    #   CPU, Memory, Network).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RightsizingRecommendation AWS API Documentation
    #
    class RightsizingRecommendation < Struct.new(
      :account_id,
      :current_instance,
      :rightsizing_type,
      :modify_recommendation_detail,
      :terminate_recommendation_detail,
      :finding_reason_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can use `RightsizingRecommendationConfiguration` to customize
    # recommendations across two attributes. You can choose to view
    # recommendations for instances within the same instance families or
    # across different instance families. You can also choose to view your
    # estimated savings that are associated with recommendations with
    # consideration of existing Savings Plans or Reserved Instance (RI)
    # benefits, or neither.
    #
    # @!attribute [rw] recommendation_target
    #   The option to see recommendations within the same instance family or
    #   recommendations for instances across other families. The default
    #   value is `SAME_INSTANCE_FAMILY`.
    #   @return [String]
    #
    # @!attribute [rw] benefits_considered
    #   The option to consider RI or Savings Plans discount benefits in your
    #   savings calculation. The default value is `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RightsizingRecommendationConfiguration AWS API Documentation
    #
    class RightsizingRecommendationConfiguration < Struct.new(
      :recommendation_target,
      :benefits_considered)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for this recommendation set.
    #
    # @!attribute [rw] recommendation_id
    #   The ID for this specific recommendation.
    #   @return [String]
    #
    # @!attribute [rw] generation_timestamp
    #   The timestamp for when Amazon Web Services made this recommendation.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The number of days of previous usage that Amazon Web Services
    #   considers when making this recommendation.
    #   @return [String]
    #
    # @!attribute [rw] additional_metadata
    #   Additional metadata that might be applicable to the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RightsizingRecommendationMetadata AWS API Documentation
    #
    class RightsizingRecommendationMetadata < Struct.new(
      :recommendation_id,
      :generation_timestamp,
      :lookback_period_in_days,
      :additional_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of rightsizing recommendations
    #
    # @!attribute [rw] total_recommendation_count
    #   The total number of instance recommendations.
    #   @return [String]
    #
    # @!attribute [rw] estimated_total_monthly_savings_amount
    #   The estimated total savings resulting from modifications, on a
    #   monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] savings_currency_code
    #   The currency code that Amazon Web Services used to calculate the
    #   savings.
    #   @return [String]
    #
    # @!attribute [rw] savings_percentage
    #   The savings percentage based on the recommended modifications. It's
    #   relative to the total On-Demand costs that are associated with these
    #   instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RightsizingRecommendationSummary AWS API Documentation
    #
    class RightsizingRecommendationSummary < Struct.new(
      :total_recommendation_count,
      :estimated_total_monthly_savings_amount,
      :savings_currency_code,
      :savings_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The combination of Amazon Web Service, linked account, linked account
    # name, Region, and usage type where a cost anomaly is observed. The
    # linked account name will only be available when the account name can
    # be identified.
    #
    # @!attribute [rw] service
    #   The Amazon Web Service name that's associated with the cost
    #   anomaly.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region that's associated with the cost
    #   anomaly.
    #   @return [String]
    #
    # @!attribute [rw] linked_account
    #   The member account value that's associated with the cost anomaly.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The `UsageType` value that's associated with the cost anomaly.
    #   @return [String]
    #
    # @!attribute [rw] linked_account_name
    #   The member account name value that's associated with the cost
    #   anomaly.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/RootCause AWS API Documentation
    #
    class RootCause < Struct.new(
      :service,
      :region,
      :linked_account,
      :usage_type,
      :linked_account_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of Savings Plans eligible usage that's covered by Savings
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
    #   The time period of the request.
    #   @return [Types::DateInterval]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansCoverage AWS API Documentation
    #
    class SavingsPlansCoverage < Struct.new(
      :attributes,
      :coverage,
      :time_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specific coverage percentage, On-Demand costs, and spend covered by
    # Savings Plans, and total Savings Plans costs for an account.
    #
    # @!attribute [rw] spend_covered_by_savings_plans
    #   The amount of your Amazon Web Services usage that's covered by a
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
    #   The percentage of your existing Savings Plans covered usage, divided
    #   by all of your eligible Savings Plans usage in an account (or set of
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The attribute details on a specific Savings Plan.
    #
    # @!attribute [rw] region
    #   A collection of Amazon Web Services resources in a geographic area.
    #   Each Amazon Web Services Region is isolated and independent of the
    #   other Regions.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   A group of instance types that Savings Plans applies to.
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   The unique ID that's used to distinguish Savings Plans from one
    #   another.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansDetails AWS API Documentation
    #
    class SavingsPlansDetails < Struct.new(
      :region,
      :instance_family,
      :offering_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains your request parameters, Savings Plan Recommendations
    # Summary, and Details.
    #
    # @!attribute [rw] account_scope
    #   The account scope that you want your recommendations for. Amazon Web
    #   Services calculates recommendations that include the management
    #   account and member accounts if the value is set to `PAYER`. If the
    #   value is `LINKED`, recommendations are calculated for individual
    #   member accounts only.
    #   @return [String]
    #
    # @!attribute [rw] savings_plans_type
    #   The requested Savings Plans recommendation type.
    #   @return [String]
    #
    # @!attribute [rw] term_in_years
    #   The Savings Plans recommendation term in years. It's used to
    #   generate the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option that's used to generate the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] lookback_period_in_days
    #   The lookback period in days that's used to generate the
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] savings_plans_purchase_recommendation_details
    #   Details for the Savings Plans that we recommend that you purchase to
    #   cover existing Savings Plans eligible workloads.
    #   @return [Array<Types::SavingsPlansPurchaseRecommendationDetail>]
    #
    # @!attribute [rw] savings_plans_purchase_recommendation_summary
    #   Summary metrics for your Savings Plans Recommendations.
    #   @return [Types::SavingsPlansPurchaseRecommendationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansPurchaseRecommendation AWS API Documentation
    #
    class SavingsPlansPurchaseRecommendation < Struct.new(
      :account_scope,
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :lookback_period_in_days,
      :savings_plans_purchase_recommendation_details,
      :savings_plans_purchase_recommendation_summary)
      SENSITIVE = []
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
    #   The estimated return on investment that's based on the recommended
    #   Savings Plans that you purchased. This is calculated as
    #   `estimatedSavingsAmount`/ `estimatedSPCost`*100.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that Amazon Web Services used to generate the
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
    #   The estimated On-Demand costs you expect with no additional
    #   commitment, based on your usage of the selected time period and the
    #   Savings Plans you own.
    #   @return [String]
    #
    # @!attribute [rw] estimated_savings_amount
    #   The estimated savings amount that's based on the recommended
    #   Savings Plans over the length of the lookback period.
    #   @return [String]
    #
    # @!attribute [rw] estimated_savings_percentage
    #   The estimated savings percentage relative to the total cost of
    #   applicable On-Demand usage over the lookback period.
    #   @return [String]
    #
    # @!attribute [rw] hourly_commitment_to_purchase
    #   The recommended hourly commitment level for the Savings Plans type
    #   and the configuration that's based on the usage during the lookback
    #   period.
    #   @return [String]
    #
    # @!attribute [rw] estimated_average_utilization
    #   The estimated utilization of the recommended Savings Plans.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_amount
    #   The estimated monthly savings amount based on the recommended
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata about your Savings Plans Purchase Recommendations.
    #
    # @!attribute [rw] recommendation_id
    #   The unique identifier for the recommendation set.
    #   @return [String]
    #
    # @!attribute [rw] generation_timestamp
    #   The timestamp that shows when the recommendations were generated.
    #   @return [String]
    #
    # @!attribute [rw] additional_metadata
    #   Additional metadata that might be applicable to the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SavingsPlansPurchaseRecommendationMetadata AWS API Documentation
    #
    class SavingsPlansPurchaseRecommendationMetadata < Struct.new(
      :recommendation_id,
      :generation_timestamp,
      :additional_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary metrics for your Savings Plans Purchase Recommendations.
    #
    # @!attribute [rw] estimated_roi
    #   The estimated return on investment that's based on the recommended
    #   Savings Plans and estimated savings.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that Amazon Web Services used to generate the
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
    #   The recommended hourly commitment that's based on the
    #   recommendation parameters.
    #   @return [String]
    #
    # @!attribute [rw] estimated_savings_percentage
    #   The estimated savings relative to the total cost of On-Demand usage,
    #   over the lookback period. This is calculated as
    #   `estimatedSavingsAmount`/ `CurrentOnDemandSpend`*100.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings_amount
    #   The estimated monthly savings amount that's based on the
    #   recommended Savings Plans purchase.
    #   @return [String]
    #
    # @!attribute [rw] estimated_on_demand_cost_with_current_commitment
    #   The estimated On-Demand costs you expect with no additional
    #   commitment. It's based on your usage of the selected time period
    #   and the Savings Plans you own.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of savings that you're accumulating, against the public
    # On-Demand rate of the usage accrued in an account.
    #
    # @!attribute [rw] net_savings
    #   The savings amount that you're accumulating for the usage that's
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The measurement of how well you're using your existing Savings Plans.
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
    #   The amount of your Savings Plans commitment that wasn't consumed
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
      SENSITIVE = []
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
    #   The amount that's saved by using existing Savings Plans. Savings
    #   returns both net savings from Savings Plans and also the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of Savings Plans utilization (in hours).
    #
    # @!attribute [rw] time_period
    #   The time period of the request.
    #   @return [Types::DateInterval]
    #
    # @!attribute [rw] utilization
    #   A ratio of your effectiveness of using existing Savings Plans to
    #   apply to workloads that are Savings Plans eligible.
    #   @return [Types::SavingsPlansUtilization]
    #
    # @!attribute [rw] savings
    #   The amount that's saved by using existing Savings Plans. Savings
    #   returns both net savings from Savings Plans and also the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A single daily or monthly Savings Plans utilization rate and details
    # for your account. A management account in an organization have access
    # to member accounts. You can use `GetDimensionValues` to determine the
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
    #   both net savings from savings plans and also the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit on the number of resources you can create,
    # or exceeded the size of an individual resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hardware specifications for the service that you want recommendations
    # for.
    #
    # @!attribute [rw] ec2_specification
    #   The Amazon EC2 hardware specifications that you want Amazon Web
    #   Services to provide recommendations for.
    #   @return [Types::EC2Specification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/ServiceSpecification AWS API Documentation
    #
    class ServiceSpecification < Struct.new(
      :ec2_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for how to sort the data.
    #
    # @!attribute [rw] key
    #   The key that's used to sort the data.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order that's used to sort the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/SortDefinition AWS API Documentation
    #
    class SortDefinition < Struct.new(
      :key,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/StartSavingsPlansPurchaseRecommendationGenerationRequest AWS API Documentation
    #
    class StartSavingsPlansPurchaseRecommendationGenerationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] recommendation_id
    #   The ID for this specific recommendation.
    #   @return [String]
    #
    # @!attribute [rw] generation_started_time
    #   The start time of the recommendation generation.
    #   @return [String]
    #
    # @!attribute [rw] estimated_completion_time
    #   The estimated time for when the recommendation generation will
    #   complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/StartSavingsPlansPurchaseRecommendationGenerationResponse AWS API Documentation
    #
    class StartSavingsPlansPurchaseRecommendationGenerationResponse < Struct.new(
      :recommendation_id,
      :generation_started_time,
      :estimated_completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recipient of `AnomalySubscription` notifications.
    #
    # @!attribute [rw] address
    #   The email address or SNS Amazon Resource Name (ARN). This depends on
    #   the `Type`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The notification delivery channel.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates if the subscriber accepts the notifications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/Subscriber AWS API Documentation
    #
    class Subscriber < Struct.new(
      :address,
      :type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For a list of
    #   supported resources, see [ResourceTag][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   A list of tag key-value pairs to be added to the resource.
    #
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource. The following restrictions apply to resource tags:
    #
    #   * Although the maximum number of array members is 200, you can
    #     assign a maximum of 50 user-tags to one resource. The remaining
    #     are reserved for Amazon Web Services use
    #
    #   * The maximum length of a key is 128 characters
    #
    #   * The maximum length of a value is 256 characters
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`
    #
    #   * Keys and values are case sensitive
    #
    #   * Keys and values are trimmed for any leading or trailing
    #     whitespaces
    #
    #   * Don’t use `aws:` as a prefix for your keys. This prefix is
    #     reserved for Amazon Web Services use
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The values that are available for a tag.
    #
    # If `Values` and `Key` aren't specified, the `ABSENT` `MatchOption` is
    # applied to all tags. That is, it's filtered on resources with no
    # tags.
    #
    # If `Key` is provided and `Values` isn't specified, the `ABSENT`
    # `MatchOption` is applied to the tag `Key` only. That is, it's
    # filtered on resources without the given tag key.
    #
    # @!attribute [rw] key
    #   The key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The specific value of the tag.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_options
    #   The match options that you can use to filter your results.
    #   `MatchOptions` is only applicable for actions related to Cost
    #   Category. The default values for `MatchOptions` are `EQUALS` and
    #   `CASE_SENSITIVE`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TagValues AWS API Documentation
    #
    class TagValues < Struct.new(
      :key,
      :values,
      :match_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on recommended instance.
    #
    # @!attribute [rw] estimated_monthly_cost
    #   The expected cost to operate this instance type on a monthly basis.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated savings that result from modification, on a monthly
    #   basis.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency code that Amazon Web Services used to calculate the
    #   costs for this instance.
    #   @return [String]
    #
    # @!attribute [rw] default_target_instance
    #   Determines whether this recommendation is the defaulted Amazon Web
    #   Services recommendation.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_details
    #   Details on the target instance type.
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] expected_resource_utilization
    #   The expected utilization metrics for target instance type.
    #   @return [Types::ResourceUtilization]
    #
    # @!attribute [rw] platform_differences
    #   Explains the actions that you might need to take to successfully
    #   migrate your workloads from the current instance type to the
    #   recommended instance type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TargetInstance AWS API Documentation
    #
    class TargetInstance < Struct.new(
      :estimated_monthly_cost,
      :estimated_monthly_savings,
      :currency_code,
      :default_target_instance,
      :resource_details,
      :expected_resource_utilization,
      :platform_differences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on termination recommendation.
    #
    # @!attribute [rw] estimated_monthly_savings
    #   The estimated savings that result from modification, on a monthly
    #   basis.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Can occur if you specify a number of tags for a resource greater than
    # the maximum 50 user tags per resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters cost anomalies based on the total impact.
    #
    # @!attribute [rw] numeric_operator
    #   The comparing value that's used in the filter.
    #   @return [String]
    #
    # @!attribute [rw] start_value
    #   The lower bound dollar value that's used in the filter.
    #   @return [Float]
    #
    # @!attribute [rw] end_value
    #   The upper bound dollar value that's used in the filter.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/TotalImpactFilter AWS API Documentation
    #
    class TotalImpactFilter < Struct.new(
      :numeric_operator,
      :start_value,
      :end_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cost anomaly monitor does not exist for the account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UnknownMonitorException AWS API Documentation
    #
    class UnknownMonitorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cost anomaly subscription does not exist for the account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UnknownSubscriptionException AWS API Documentation
    #
    class UnknownSubscriptionException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For a list of
    #   supported resources, see [ResourceTag][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_keys
    #   A list of tag keys associated with tags that need to be removed from
    #   the resource. If you specify a tag key that doesn't exist, it's
    #   ignored. Although the maximum number of array members is 200,
    #   user-tag maximum is 50. The remaining are reserved for Amazon Web
    #   Services use.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_arn
    #   Cost anomaly monitor Amazon Resource Names (ARNs).
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The new name for the cost anomaly monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateAnomalyMonitorRequest AWS API Documentation
    #
    class UpdateAnomalyMonitorRequest < Struct.new(
      :monitor_arn,
      :monitor_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   A cost anomaly monitor ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateAnomalyMonitorResponse AWS API Documentation
    #
    class UpdateAnomalyMonitorResponse < Struct.new(
      :monitor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_arn
    #   A cost anomaly subscription Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   (deprecated)
    #
    #   The update to the threshold value for receiving notifications.
    #
    #   This field has been deprecated. To update a threshold, use
    #   ThresholdExpression. Continued use of Threshold will be treated as
    #   shorthand syntax for a ThresholdExpression.
    #   @return [Float]
    #
    # @!attribute [rw] frequency
    #   The update to the frequency value that subscribers receive
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] monitor_arn_list
    #   A list of cost anomaly monitor ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subscribers
    #   The update to the subscriber list.
    #   @return [Array<Types::Subscriber>]
    #
    # @!attribute [rw] subscription_name
    #   The new name of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] threshold_expression
    #   The update to the [Expression][1] object used to specify the
    #   anomalies that you want to generate alerts for. This supports
    #   dimensions and nested expressions. The supported dimensions are
    #   `ANOMALY_TOTAL_IMPACT_ABSOLUTE` and
    #   `ANOMALY_TOTAL_IMPACT_PERCENTAGE`. The supported nested expression
    #   types are `AND` and `OR`. The match option `GREATER_THAN_OR_EQUAL`
    #   is required. Values must be numbers between 0 and 10,000,000,000.
    #
    #   The following are examples of valid ThresholdExpressions:
    #
    #   * Absolute threshold: `\{ "Dimensions": \{ "Key":
    #     "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}`
    #
    #   * Percentage threshold: `\{ "Dimensions": \{ "Key":
    #     "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}`
    #
    #   * `AND` two thresholds together: `\{ "And": [ \{ "Dimensions": \{
    #     "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}, \{
    #     "Dimensions": \{ "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #     "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ]
    #     \} \} ] \}`
    #
    #   * `OR` two thresholds together: `\{ "Or": [ \{ "Dimensions": \{
    #     "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #     "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] \} \}, \{
    #     "Dimensions": \{ "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #     "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ]
    #     \} \} ] \}`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #   @return [Types::Expression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateAnomalySubscriptionRequest AWS API Documentation
    #
    class UpdateAnomalySubscriptionRequest < Struct.new(
      :subscription_arn,
      :threshold,
      :frequency,
      :monitor_arn_list,
      :subscribers,
      :subscription_name,
      :threshold_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_arn
    #   A cost anomaly subscription ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateAnomalySubscriptionResponse AWS API Documentation
    #
    class UpdateAnomalySubscriptionResponse < Struct.new(
      :subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gives a detailed description of the result of an action. It's on each
    # cost allocation tag entry in the request.
    #
    # @!attribute [rw] tag_key
    #   The key for the cost allocation tag.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   An error code representing why the action failed on this entry.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message explaining why the action failed on this entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostAllocationTagsStatusError AWS API Documentation
    #
    class UpdateCostAllocationTagsStatusError < Struct.new(
      :tag_key,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_allocation_tags_status
    #   The list of `CostAllocationTagStatusEntry` objects that are used to
    #   update cost allocation tags status for this request.
    #   @return [Array<Types::CostAllocationTagStatusEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostAllocationTagsStatusRequest AWS API Documentation
    #
    class UpdateCostAllocationTagsStatusRequest < Struct.new(
      :cost_allocation_tags_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of `UpdateCostAllocationTagsStatusError` objects with error
    #   details about each cost allocation tag that can't be updated. If
    #   there's no failure, an empty array returns.
    #   @return [Array<Types::UpdateCostAllocationTagsStatusError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostAllocationTagsStatusResponse AWS API Documentation
    #
    class UpdateCostAllocationTagsStatusResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date. It can only be a billing
    #   start date (first day of the month). If the date isn't provided,
    #   it's the first day of the current month. Dates can't be before the
    #   previous twelve months, or in the future.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule schema version in this particular Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The `Expression` object used to categorize costs. For more
    #   information, see [CostCategoryRule ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html
    #   @return [Array<Types::CostCategoryRule>]
    #
    # @!attribute [rw] default_value
    #   The default value for the cost category.
    #   @return [String]
    #
    # @!attribute [rw] split_charge_rules
    #   The split charge rules used to allocate your charges between your
    #   Cost Category values.
    #   @return [Array<Types::CostCategorySplitChargeRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostCategoryDefinitionRequest AWS API Documentation
    #
    class UpdateCostCategoryDefinitionRequest < Struct.new(
      :cost_category_arn,
      :effective_start,
      :rule_version,
      :rules,
      :default_value,
      :split_charge_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cost_category_arn
    #   The unique identifier for your Cost Category.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   The Cost Category's effective start date. It can only be a billing
    #   start date (first day of the month).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/UpdateCostCategoryDefinitionResponse AWS API Documentation
    #
    class UpdateCostCategoryDefinitionResponse < Struct.new(
      :cost_category_arn,
      :effective_start)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

# frozen_string_literal: true

# This is generated code!

module Aws::CostExplorer
  # This module contains the types returned by client operations.
  module Types

    # <p>Details about the analysis.</p>
    # @!attribute savings_plans_purchase_analysis_details
    #   <p>Details about the Savings Plans purchase analysis.</p>
    #   @return [Types::SavingsPlansPurchaseAnalysisDetails]
    class AnalysisDetails < Struct.new(
      nil,
      :savings_plans_purchase_analysis_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested analysis can't be found.</p>
    # @!attribute message
    #   @return [String]
    class AnalysisNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the analysis.</p>
    # @!attribute estimated_completion_time
    #   <p>The estimated time for when the analysis will complete.</p>
    #   @return [String]
    # @!attribute analysis_completion_time
    #   <p>The completion time of the analysis.</p>
    #   @return [String]
    # @!attribute analysis_started_time
    #   <p>The start time of the analysis.</p>
    #   @return [String]
    # @!attribute analysis_status
    #   <p>The status of the analysis.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code used for the analysis.</p>
    #   @return [String]
    # @!attribute analysis_id
    #   <p>The analysis ID that's associated with the commitment purchase analysis.</p>
    #   @return [String]
    # @!attribute commitment_purchase_analysis_configuration
    #   <p>The configuration for the commitment purchase analysis.</p>
    #   @return [Types::CommitmentPurchaseAnalysisConfiguration]
    class AnalysisSummary < Struct.new(
      nil,
      :estimated_completion_time,
      :analysis_completion_time,
      :analysis_started_time,
      :analysis_status,
      :error_code,
      :analysis_id,
      :commitment_purchase_analysis_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unusual cost pattern. This consists of the detailed metadata and the current status
    #             of the anomaly object. </p>
    # @!attribute anomaly_id
    #   <p>The unique identifier for the anomaly. </p>
    #   @return [String]
    # @!attribute anomaly_start_date
    #   <p>The first day the anomaly is detected. </p>
    #   @return [String]
    # @!attribute anomaly_end_date
    #   <p>The last day the anomaly is detected. </p>
    #   @return [String]
    # @!attribute dimension_value
    #   <p>The dimension for the anomaly (for example, an Amazon Web Services service in a service
    #               monitor). </p>
    #   @return [String]
    # @!attribute root_causes
    #   <p>The list of identified root causes for the anomaly. </p>
    #   @return [Array<Types::RootCause>]
    # @!attribute anomaly_score
    #   <p>The latest and maximum score for the anomaly. </p>
    #   @return [Types::AnomalyScore]
    # @!attribute impact
    #   <p>The dollar impact for the anomaly. </p>
    #   @return [Types::Impact]
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) for the cost monitor that generated this anomaly.
    #           </p>
    #   @return [String]
    # @!attribute feedback
    #   <p>The feedback value. </p>
    #   @return [String]
    class Anomaly < Struct.new(
      nil,
      :anomaly_id,
      :anomaly_start_date,
      :anomaly_end_date,
      :dimension_value,
      :root_causes,
      :anomaly_score,
      :impact,
      :monitor_arn,
      :feedback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The time period for an anomaly. </p>
    # @!attribute start_date
    #   <p>The first date an anomaly was observed. </p>
    #   @return [String]
    # @!attribute end_date
    #   <p>The last date an anomaly was observed. </p>
    #   @return [String]
    class AnomalyDateInterval < Struct.new(
      nil,
      :start_date,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This object continuously inspects your account's cost data for anomalies. It's based
    #             on <code>MonitorType</code> and <code>MonitorSpecification</code>. The content consists
    #             of detailed metadata and the current status of the monitor object. </p>
    # @!attribute monitor_arn
    #   <p>The Amazon Resource Name (ARN) value. </p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor. </p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the monitor was created. </p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The date when the monitor was last updated. </p>
    #   @return [String]
    # @!attribute last_evaluated_date
    #   <p>The date when the monitor last evaluated for anomalies. </p>
    #   @return [String]
    # @!attribute monitor_type
    #   <p>The type of the monitor. </p>
    #            <p>Set this to <code>DIMENSIONAL</code> for an Amazon Web Services managed monitor.
    #               Amazon Web Services managed monitors automatically track up to the top 5,000 values by
    #               cost within a dimension of your choosing. Each dimension value is evaluated
    #               independently. If you start incurring cost in a new value of your chosen dimension, it
    #               will automatically be analyzed by an Amazon Web Services managed monitor.</p>
    #            <p>Set this to <code>CUSTOM</code> for a customer managed monitor. Customer managed
    #               monitors let you select specific dimension values that get monitored in aggregate.
    #           </p>
    #            <p>For more information about monitor types, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/getting-started-ad.html#monitor-type-def">Monitor
    #               types</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #   @return [String]
    # @!attribute monitor_dimension
    #   <p>For customer managed monitors, do not specify this field.</p>
    #            <p>For Amazon Web Services managed monitors, this field controls which cost dimension is
    #               automatically analyzed by the monitor. For <code>TAG</code> and <code>COST_CATEGORY
    #               </code> dimensions, you must also specify MonitorSpecification to configure the specific
    #               tag or cost category key to analyze.</p>
    #   @return [String]
    # @!attribute monitor_specification
    #   <p>An <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
    #               object used to control what costs the monitor analyzes for anomalies.</p>
    #            <p>For Amazon Web Services managed monitors:</p>
    #            <ul>
    #               <li>
    #                  <p>If MonitorDimension is <code>SERVICE</code> or <code>LINKED_ACCOUNT</code>, do
    #                       not specify this field</p>
    #               </li>
    #               <li>
    #                  <p>If MonitorDimension is <code>TAG</code>, set this field to <code>{ "Tags": {
    #                           "Key": "your tag key" } }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>If MonitorDimension is <code>COST_CATEGORY</code>, set this field to <code>{
    #                           "CostCategories": { "Key": "your cost category key" } }</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For customer managed monitors:</p>
    #            <ul>
    #               <li>
    #                  <p>To track linked accounts, set this field to <code>{ "Dimensions": { "Key":
    #                           "LINKED_ACCOUNT", "Values": [ "your list of up to 10 account IDs" ] } }
    #                           </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>To track cost allocation tags, set this field to <code>{ "Tags": { "Key":
    #                           "your tag key", "Values": [ "your list of up to 10 tag values" ] } }
    #                           </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>To track cost categories, set this field to<code>{ "CostCategories": { "Key":
    #                           "your cost category key", "Values": [ "your cost category value" ] } }
    #                           </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::Expression]
    # @!attribute dimensional_value_count
    #   <p>The value for evaluated dimensions. </p>
    #   @return [Integer]
    class AnomalyMonitor < Struct.new(
      nil,
      :monitor_arn,
      :monitor_name,
      :creation_date,
      :last_updated_date,
      :last_evaluated_date,
      :monitor_type,
      :monitor_dimension,
      :monitor_specification,
      :dimensional_value_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dimensional_value_count] = 0 unless options.key?(:dimensional_value_count)
        super
      end
    end

    # <p>Quantifies the anomaly. The higher score means that it's more anomalous. </p>
    # @!attribute max_score
    #   <p>The maximum score that's observed during the <code>AnomalyDateInterval</code>. </p>
    #   @return [Float]
    # @!attribute current_score
    #   <p>The last observed score. </p>
    #   @return [Float]
    class AnomalyScore < Struct.new(
      nil,
      :max_score,
      :current_score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_score] = 0 unless options.key?(:max_score)
        options[:current_score] = 0 unless options.key?(:current_score)
        super
      end
    end

    # <p>An <code>AnomalySubscription</code> resource (also referred to as an alert
    #             subscription) sends notifications about specific anomalies that meet an alerting
    #             criteria defined by you.</p>
    #          <p>You can specify the frequency of the alerts and the subscribers to notify.</p>
    #          <p>Anomaly subscriptions can be associated with one or more <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html">
    #                <code>AnomalyMonitor</code>
    #             </a>  resources, and they only send
    #             notifications about anomalies detected by those associated monitors. You can also
    #             configure a threshold to further control which anomalies are included in the
    #             notifications.</p>
    #          <p>Anomalies that don’t exceed the chosen threshold and therefore don’t trigger
    #             notifications from an anomaly subscription will still be available on the console and
    #             from the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetAnomalies.html">
    #                <code>GetAnomalies</code>
    #             </a> API.</p>
    # @!attribute subscription_arn
    #   <p>The <code>AnomalySubscription</code> Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Your unique account identifier. </p>
    #   @return [String]
    # @!attribute monitor_arn_list
    #   <p>A list of cost anomaly monitors. </p>
    #   @return [Array<String>]
    # @!attribute subscribers
    #   <p>A list of subscribers to notify. </p>
    #   @return [Array<Types::Subscriber>]
    # @!attribute threshold
    #   <p>(deprecated)</p>
    #            <p>An absolute dollar value that must be exceeded by the anomaly's total impact (see
    #                   <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Impact.html">Impact</a> for
    #               more details) for an anomaly notification to be generated.</p>
    #            <p>This field has been deprecated. To specify a threshold, use ThresholdExpression.
    #               Continued use of Threshold will be treated as shorthand syntax for a
    #               ThresholdExpression.</p>
    #            <p>One of Threshold or ThresholdExpression is required for this resource. You cannot
    #               specify both.</p>
    #   @deprecated
    #     Threshold has been deprecated in favor of ThresholdExpression
    #   @return [Float]
    # @!attribute frequency
    #   <p>The frequency that anomaly notifications are sent. Notifications are sent either over
    #               email (for DAILY and WEEKLY frequencies) or SNS (for IMMEDIATE frequency). For more
    #               information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ad-SNS.html">Creating an Amazon SNS topic for
    #                   anomaly notifications</a>.</p>
    #   @return [String]
    # @!attribute subscription_name
    #   <p>The name for the subscription. </p>
    #   @return [String]
    # @!attribute threshold_expression
    #   <p>An <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
    #               object used to specify the anomalies that you want to generate alerts for. This supports
    #               dimensions and nested expressions. The supported dimensions are
    #                   <code>ANOMALY_TOTAL_IMPACT_ABSOLUTE</code> and
    #                   <code>ANOMALY_TOTAL_IMPACT_PERCENTAGE</code>, corresponding to an anomaly’s
    #               TotalImpact and TotalImpactPercentage, respectively (see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Impact.html">Impact</a> for
    #               more details). The supported nested expression types are <code>AND</code> and
    #                   <code>OR</code>. The match option <code>GREATER_THAN_OR_EQUAL</code> is required.
    #               Values must be numbers between 0 and 10,000,000,000 in string format.</p>
    #            <p>One of Threshold or ThresholdExpression is required for this resource. You cannot
    #               specify both.</p>
    #            <p>The following are examples of valid ThresholdExpressions:</p>
    #            <ul>
    #               <li>
    #                  <p>Absolute threshold: <code>{ "Dimensions": { "Key":
    #                           "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL"
    #                           ], "Values": [ "100" ] } }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Percentage threshold: <code>{ "Dimensions": { "Key":
    #                           "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL"
    #                           ], "Values": [ "100" ] } }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AND</code> two thresholds together: <code>{ "And": [ { "Dimensions": {
    #                           "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #                           "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }, { "Dimensions": { "Key":
    #                           "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL"
    #                           ], "Values": [ "100" ] } } ] }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OR</code> two thresholds together: <code>{ "Or": [ { "Dimensions": {
    #                           "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
    #                           "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }, { "Dimensions": { "Key":
    #                           "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL"
    #                           ], "Values": [ "100" ] } } ] }</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::Expression]
    class AnomalySubscription < Struct.new(
      nil,
      :subscription_arn,
      :account_id,
      :monitor_arn_list,
      :subscribers,
      :threshold,
      :frequency,
      :subscription_name,
      :threshold_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             A request to backfill is already in progress. Once the previous request is complete, you can create another request.
    #         </p>
    # @!attribute message
    #   @return [String]
    class BackfillLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested report expired. Update the date interval and try again.</p>
    # @!attribute message
    #   @return [String]
    class BillExpirationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The billing view status must be <code>HEALTHY</code> to perform this action. Try again when the status is <code>HEALTHY</code>.
    #         </p>
    # @!attribute message
    #   @return [String]
    class BillingViewHealthStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the commitment purchase analysis.</p>
    # @!attribute savings_plans_purchase_analysis_configuration
    #   <p>The configuration for the Savings Plans purchase analysis.</p>
    #   @return [Types::SavingsPlansPurchaseAnalysisConfiguration]
    class CommitmentPurchaseAnalysisConfiguration < Struct.new(
      nil,
      :savings_plans_purchase_analysis_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains cost or usage metric values for comparing two time periods. Each value
    #             includes amounts for the baseline and comparison time periods, their difference, and the
    #             unit of measurement.</p>
    # @!attribute baseline_time_period_amount
    #   <p>The numeric value for the baseline time period measurement.</p>
    #   @return [String]
    # @!attribute comparison_time_period_amount
    #   <p>The numeric value for the comparison time period measurement.</p>
    #   @return [String]
    # @!attribute difference
    #   <p>The calculated difference between <code>ComparisonTimePeriodAmount</code> and
    #                   <code>BaselineTimePeriodAmount</code>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of measurement applicable to all numeric values in this comparison.</p>
    #   @return [String]
    class ComparisonMetricValue < Struct.new(
      nil,
      :baseline_time_period_amount,
      :comparison_time_period_amount,
      :difference,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cost allocation tag structure. This includes detailed metadata for the
    #                 <code>CostAllocationTag</code> object. </p>
    # @!attribute tag_key
    #   <p>The key for the cost allocation tag. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of cost allocation tag. You can use <code>AWSGenerated</code> or
    #                   <code>UserDefined</code> type tags. <code>AWSGenerated</code> type tags are tags
    #               that Amazon Web Services defines and applies to support Amazon Web Services resources for
    #               cost allocation purposes. <code>UserDefined</code> type tags are tags that you define,
    #               create, and apply to resources. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a cost allocation tag. </p>
    #   @return [String]
    # @!attribute last_updated_date
    #   <p>The last date that the tag was either activated or deactivated.</p>
    #   @return [String]
    # @!attribute last_used_date
    #   <p>The last month that the tag was used on an Amazon Web Services resource.</p>
    #   @return [String]
    class CostAllocationTag < Struct.new(
      nil,
      :tag_key,
      :type,
      :status,
      :last_updated_date,
      :last_used_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The cost allocation tag backfill request structure that contains metadata and details of a certain backfill.</p>
    # @!attribute backfill_from
    #   <p>
    #               The date the backfill starts from.
    #           </p>
    #   @return [String]
    # @!attribute requested_at
    #   <p>
    #               The time when the backfill was requested.
    #           </p>
    #   @return [String]
    # @!attribute completed_at
    #   <p>
    #               The backfill completion time.
    #           </p>
    #   @return [String]
    # @!attribute backfill_status
    #   <p>
    #               The status of the cost allocation tag backfill request.
    #           </p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>
    #               The time when the backfill status was last updated.
    #           </p>
    #   @return [String]
    class CostAllocationTagBackfillRequest < Struct.new(
      nil,
      :backfill_from,
      :requested_at,
      :completed_at,
      :backfill_status,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cost allocation tag status. The status of a key can either be active or inactive.
    #         </p>
    # @!attribute tag_key
    #   <p>The key for the cost allocation tag. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a cost allocation tag. </p>
    #   @return [String]
    class CostAllocationTagStatusEntry < Struct.new(
      nil,
      :tag_key,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a comparison of cost and usage metrics between two time periods.</p>
    # @!attribute cost_and_usage_selector
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute metrics
    #   <p>A mapping of metric names to their comparison values.</p>
    #   @return [Hash<String, Types::ComparisonMetricValue>]
    class CostAndUsageComparison < Struct.new(
      nil,
      :cost_and_usage_selector,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure of Cost Categories. This includes detailed metadata and the set of rules
    #             for the <code>CostCategory</code> object.</p>
    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category. </p>
    #   @return [String]
    # @!attribute effective_start
    #   <p>The effective start date of your cost category.</p>
    #   @return [String]
    # @!attribute effective_end
    #   <p>The effective end date of your cost category.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of the cost category.</p>
    #   @return [String]
    # @!attribute rule_version
    #   <p>The rule schema version in this particular cost category.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The rules are processed in order. If there are multiple rules that match the line
    #               item, then the first rule to match is used to determine that cost category value.
    #           </p>
    #   @return [Array<Types::CostCategoryRule>]
    # @!attribute split_charge_rules
    #   <p> The split charge rules that are used to allocate your charges between your cost category values. </p>
    #   @return [Array<Types::CostCategorySplitChargeRule>]
    # @!attribute processing_status
    #   <p>The list of processing statuses for Cost Management products for a specific cost
    #               category. </p>
    #   @return [Array<Types::CostCategoryProcessingStatus>]
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #   @return [String]
    class CostCategory < Struct.new(
      nil,
      :cost_category_arn,
      :effective_start,
      :effective_end,
      :name,
      :rule_version,
      :rules,
      :split_charge_rules,
      :processing_status,
      :default_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When you create or update a cost category, you can define the
    #                 <code>CostCategoryRule</code> rule type as <code>INHERITED_VALUE</code>. This rule
    #             type adds the flexibility to define a rule that dynamically inherits the cost category
    #             value from the dimension value that's defined by
    #                 <code>CostCategoryInheritedValueDimension</code>. For example, suppose that you want
    #             to dynamically group costs that are based on the value of a specific tag key. First,
    #             choose an inherited value rule type, and then choose the tag dimension and specify the
    #             tag key to use.</p>
    # @!attribute dimension_name
    #   <p>The name of the dimension that's used to group costs.</p>
    #            <p>If you specify <code>LINKED_ACCOUNT_NAME</code>, the cost category value is based on
    #               account name. If you specify <code>TAG</code>, the cost category value is based on the
    #               value of the specified tag key.</p>
    #   @return [String]
    # @!attribute dimension_key
    #   <p>The key to extract cost category values.</p>
    #   @return [String]
    class CostCategoryInheritedValueDimension < Struct.new(
      nil,
      :dimension_name,
      :dimension_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of processing statuses for Cost Management products for a specific cost
    #             category. </p>
    # @!attribute component
    #   <p>The Cost Management product name of the applied status. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The process status for a specific cost category. </p>
    #   @return [String]
    class CostCategoryProcessingStatus < Struct.new(
      nil,
      :component,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a cost category containing only enough information to identify the Cost
    #             Category.</p>
    #          <p>You can use this information to retrieve the full cost category information using
    #                 <code>DescribeCostCategory</code>.</p>
    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of the cost category.</p>
    #   @return [String]
    # @!attribute effective_start
    #   <p>The cost category's effective start date.</p>
    #   @return [String]
    # @!attribute effective_end
    #   <p>The cost category's effective end date.</p>
    #   @return [String]
    # @!attribute number_of_rules
    #   <p>The number of rules that are associated with a specific cost category. </p>
    #   @return [Integer]
    # @!attribute processing_status
    #   <p>The list of processing statuses for Cost Management products for a specific cost
    #               category. </p>
    #   @return [Array<Types::CostCategoryProcessingStatus>]
    # @!attribute values
    #   <p>A list of unique cost category values in a specific cost category. </p>
    #   @return [Array<String>]
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #   @return [String]
    # @!attribute supported_resource_types
    #   <p>
    #               The resource types supported by a specific cost category.
    #           </p>
    #   @return [Array<String>]
    class CostCategoryReference < Struct.new(
      nil,
      :cost_category_arn,
      :name,
      :effective_start,
      :effective_end,
      :number_of_rules,
      :processing_status,
      :values,
      :default_value,
      :supported_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_rules] = 0 unless options.key?(:number_of_rules)
        super
      end
    end

    # <p>A reference to a cost category association that contains information on an associated resource.
    #         </p>
    # @!attribute resource_arn
    #   <p>
    #               The unique identifier for an associated resource.
    #           </p>
    #   @return [String]
    # @!attribute cost_category_name
    #   <p>The unique name of the cost category.</p>
    #   @return [String]
    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category.
    #           </p>
    #   @return [String]
    class CostCategoryResourceAssociation < Struct.new(
      nil,
      :resource_arn,
      :cost_category_name,
      :cost_category_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Rules are processed in order. If there are multiple rules that match the line item,
    #             then the first rule to match is used to determine that cost category value.</p>
    # @!attribute value
    #   <p>The
    #               default value for the cost category.</p>
    #   @return [String]
    # @!attribute rule
    #   <p>An <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
    #               object used to categorize costs. This supports dimensions, tags, and nested expressions.
    #               Currently the only dimensions supported are <code>LINKED_ACCOUNT</code>,
    #
    #               <code>SERVICE_CODE</code>, <code>RECORD_TYPE</code>, <code>LINKED_ACCOUNT_NAME</code>, <code>REGION</code>, and <code>USAGE_TYPE</code>.</p>
    #            <p>
    #               <code>RECORD_TYPE</code> is a dimension used for Cost Explorer APIs, and is also
    #               supported for cost category expressions. This dimension uses different terms, depending
    #               on whether you're using the console or API/JSON editor. For a detailed comparison, see
    #                   <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-cost-categories.html#cost-categories-terms">Term Comparisons</a> in the <i>Billing and Cost Management User
    #                   Guide</i>.</p>
    #   @return [Types::Expression]
    # @!attribute inherited_value
    #   <p>The value the line item is categorized as if the line item contains the matched
    #               dimension.</p>
    #   @return [Types::CostCategoryInheritedValueDimension]
    # @!attribute type
    #   <p>You can define the <code>CostCategoryRule</code> rule type as either
    #                   <code>REGULAR</code> or <code>INHERITED_VALUE</code>. The
    #                   <code>INHERITED_VALUE</code> rule type adds the flexibility to define a rule that
    #               dynamically inherits the cost category value. This value is from the dimension value
    #               that's defined by <code>CostCategoryInheritedValueDimension</code>. For example, suppose
    #               that you want to costs to be dynamically grouped based on the value of a specific tag
    #               key. First, choose an inherited value rule type, and then choose the tag dimension and
    #               specify the tag key to use.</p>
    #   @return [String]
    class CostCategoryRule < Struct.new(
      nil,
      :value,
      :rule,
      :inherited_value,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use the split charge rule to split the cost of one cost category value across several
    #             other target values. </p>
    # @!attribute source
    #   <p>The cost category value that you want to split. That value can't be used as a source
    #               or a target in other split charge rules. To indicate uncategorized costs, you can use an
    #               empty string as the source.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The cost category values that you want to split costs across. These values can't be
    #               used as a source in other split charge rules. </p>
    #   @return [Array<String>]
    # @!attribute method
    #   <p>The method that's used to define how to split your source costs across your targets. </p>
    #            <p>
    #               <code>Proportional</code> - Allocates charges across your targets based on the
    #               proportional weighted cost of each target.</p>
    #            <p>
    #               <code>Fixed</code> - Allocates charges across your targets based on your defined
    #               allocation percentage.</p>
    #            <p>><code>Even</code> - Allocates costs evenly across all targets.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for a split charge method. This is only required for the
    #                   <code>FIXED</code> method. </p>
    #   @return [Array<Types::CostCategorySplitChargeRuleParameter>]
    class CostCategorySplitChargeRule < Struct.new(
      nil,
      :source,
      :targets,
      :method,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for a split charge method. </p>
    # @!attribute type
    #   <p>The parameter type. </p>
    #   @return [String]
    # @!attribute values
    #   <p>The parameter values. </p>
    #   @return [Array<String>]
    class CostCategorySplitChargeRuleParameter < Struct.new(
      nil,
      :type,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Cost Categories values used for filtering the costs.</p>
    #          <p>If <code>Values</code> and <code>Key</code> are not specified, the <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to all Cost Categories. That is, it filters on
    #             resources that aren't mapped to any Cost Categories.</p>
    #          <p>If <code>Values</code> is provided and <code>Key</code> isn't specified, the
    #                 <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to the Cost Categories <code>Key</code> only. That
    #             is, it filters on resources without the given Cost Categories key.</p>
    # @!attribute key
    #   <p>The unique name of the cost category.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The specific value of the cost category.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results. MatchOptions is only
    #               applicable for actions related to cost category. The default values for
    #                   <code>MatchOptions</code> is <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.
    #           </p>
    #   @return [Array<String>]
    class CostCategoryValues < Struct.new(
      nil,
      :key,
      :values,
      :match_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of cost drivers and their associated metrics for cost
    #             comparison analysis.</p>
    # @!attribute cost_selector
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute metrics
    #   <p>A mapping of metric names to their comparison values.</p>
    #   @return [Hash<String, Types::ComparisonMetricValue>]
    # @!attribute cost_drivers
    #   <p>An array of cost drivers, each representing a cost difference between the baseline and
    #               comparison time periods. Each entry also includes a metric delta (for example, usage
    #               change) that contributed to the cost variance, along with the identifier and type of
    #               change.</p>
    #   @return [Array<Types::CostDriver>]
    class CostComparisonDriver < Struct.new(
      nil,
      :cost_selector,
      :metrics,
      :cost_drivers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents factors that contribute to cost variations between the baseline and
    #             comparison time periods, including the type of driver, an identifier of the driver, and
    #             associated metrics.</p>
    # @!attribute type
    #   <p>The category or classification of the cost driver.</p>
    #            <p>Values include: BUNDLED_DISCOUNT, CREDIT, OUT_OF_CYCLE_CHARGE, REFUND,
    #               RECURRING_RESERVATION_FEE, RESERVATION_USAGE, RI_VOLUME_DISCOUNT, SAVINGS_PLAN_USAGE,
    #               SAVINGS_PLAN_RECURRING_FEE, SUPPORT_FEE, TAX, UPFRONT_RESERVATION_FEE, USAGE_CHANGE,
    #               COMMITMENT</p>
    #   @return [String]
    # @!attribute name
    #   <p>The specific identifier of the cost driver.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>A mapping of metric names to their comparison values, measuring the impact of this
    #               cost driver.</p>
    #   @return [Hash<String, Types::ComparisonMetricValue>]
    class CostDriver < Struct.new(
      nil,
      :type,
      :name,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of instance usage that a reservation covered.</p>
    # @!attribute coverage_hours
    #   <p>The amount of instance usage that the reservation covered, in hours.</p>
    #   @return [Types::CoverageHours]
    # @!attribute coverage_normalized_units
    #   <p>The amount of instance usage that the reservation covered, in normalized units.</p>
    #   @return [Types::CoverageNormalizedUnits]
    # @!attribute coverage_cost
    #   <p>The amount of cost that the reservation covered.</p>
    #   @return [Types::CoverageCost]
    class Coverage < Struct.new(
      nil,
      :coverage_hours,
      :coverage_normalized_units,
      :coverage_cost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reservation coverage for a specified period, in hours.</p>
    # @!attribute time_period
    #   <p>The period that this coverage was used over.</p>
    #   @return [Types::DateInterval]
    # @!attribute groups
    #   <p>The groups of instances that the reservation covered.</p>
    #   @return [Array<Types::ReservationCoverageGroup>]
    # @!attribute total
    #   <p>The total reservation coverage, in hours.</p>
    #   @return [Types::Coverage]
    class CoverageByTime < Struct.new(
      nil,
      :time_period,
      :groups,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>How much it costs to run an instance.</p>
    # @!attribute on_demand_cost
    #   <p>How much an On-Demand Instance costs.</p>
    #   @return [String]
    class CoverageCost < Struct.new(
      nil,
      :on_demand_cost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>How long a running instance either used a reservation or was On-Demand.</p>
    # @!attribute on_demand_hours
    #   <p>The number of instance running hours that On-Demand Instances covered.</p>
    #   @return [String]
    # @!attribute reserved_hours
    #   <p>The number of instance running hours that reservations covered.</p>
    #   @return [String]
    # @!attribute total_running_hours
    #   <p>The total instance usage, in hours.</p>
    #   @return [String]
    # @!attribute coverage_hours_percentage
    #   <p>The percentage of instance hours that a reservation covered.</p>
    #   @return [String]
    class CoverageHours < Struct.new(
      nil,
      :on_demand_hours,
      :reserved_hours,
      :total_running_hours,
      :coverage_hours_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of instance usage, in normalized units. You can use normalized units to see
    #             your EC2 usage for multiple sizes of instances in a uniform way. For example, suppose
    #             that you run an xlarge instance and a 2xlarge instance. If you run both instances for
    #             the same amount of time, the 2xlarge instance uses twice as much of your reservation as
    #             the xlarge instance, even though both instances show only one instance-hour. When you
    #             use normalized units instead of instance-hours, the xlarge instance used 8 normalized
    #             units, and the 2xlarge instance used 16 normalized units.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a>
    #             in the <i>Amazon Elastic Compute Cloud User Guide for Linux
    #             Instances</i>.</p>
    # @!attribute on_demand_normalized_units
    #   <p>The number of normalized units that are covered by On-Demand Instances instead of a
    #               reservation.</p>
    #   @return [String]
    # @!attribute reserved_normalized_units
    #   <p>The number of normalized units that a reservation covers.</p>
    #   @return [String]
    # @!attribute total_running_normalized_units
    #   <p>The total number of normalized units that you used.</p>
    #   @return [String]
    # @!attribute coverage_normalized_units_percentage
    #   <p>The percentage of your used instance normalized units that a reservation
    #               covers.</p>
    #   @return [String]
    class CoverageNormalizedUnits < Struct.new(
      nil,
      :on_demand_normalized_units,
      :reserved_normalized_units,
      :total_running_normalized_units,
      :coverage_normalized_units_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_monitor
    #   <p>The cost anomaly detection monitor object that you want to create.</p>
    #   @return [Types::AnomalyMonitor]
    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html">
    #                  <code>AnomalyMonitor</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>monitor</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ResourceTag>]
    class CreateAnomalyMonitorRequest < Struct.new(
      nil,
      :anomaly_monitor,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The unique identifier of your newly created cost anomaly detection monitor.</p>
    #   @return [String]
    class CreateAnomalyMonitorResponse < Struct.new(
      nil,
      :monitor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_subscription
    #   <p>The cost anomaly subscription object that you want to create. </p>
    #   @return [Types::AnomalySubscription]
    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html">
    #                  <code>AnomalySubscription</code>
    #               </a>. You can use resource tags to control access to
    #         your <code>subscription</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ResourceTag>]
    class CreateAnomalySubscriptionRequest < Struct.new(
      nil,
      :anomaly_subscription,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_arn
    #   <p>The unique identifier of your newly created cost anomaly subscription. </p>
    #   @return [String]
    class CreateAnomalySubscriptionResponse < Struct.new(
      nil,
      :subscription_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique name of the cost category.</p>
    #   @return [String]
    # @!attribute effective_start
    #   <p>The cost category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future.</p>
    #   @return [String]
    # @!attribute rule_version
    #   <p>The rule schema version in this particular cost category.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The cost category rules used to categorize costs. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule</a>.</p>
    #   @return [Array<Types::CostCategoryRule>]
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #   @return [String]
    # @!attribute split_charge_rules
    #   <p> The split charge rules used to allocate your charges between your cost category values.
    #       </p>
    #   @return [Array<Types::CostCategorySplitChargeRule>]
    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html">
    #                  <code>CostCategory</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>cost category</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ResourceTag>]
    class CreateCostCategoryDefinitionRequest < Struct.new(
      nil,
      :name,
      :effective_start,
      :rule_version,
      :rules,
      :default_value,
      :split_charge_rules,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your newly created cost category. </p>
    #   @return [String]
    # @!attribute effective_start
    #   <p>The cost category's effective start date. It can only be a billing start date (first day of the month).</p>
    #   @return [String]
    class CreateCostCategoryDefinitionResponse < Struct.new(
      nil,
      :cost_category_arn,
      :effective_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Context about the current instance.</p>
    # @!attribute resource_id
    #   <p>Resource ID of the current instance.</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The name that you given an instance. This field shows as blank if you haven't given
    #               the instance a name.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Cost allocation resource tags that are applied to the instance.</p>
    #   @return [Array<Types::TagValues>]
    # @!attribute resource_details
    #   <p>Details about the resource and utilization.</p>
    #   @return [Types::ResourceDetails]
    # @!attribute resource_utilization
    #   <p>Utilization information of the current instance during the lookback period.</p>
    #   @return [Types::ResourceUtilization]
    # @!attribute reservation_covered_hours_in_lookback_period
    #   <p>The number of hours during the lookback period that's covered by reservations.</p>
    #   @return [String]
    # @!attribute savings_plans_covered_hours_in_lookback_period
    #   <p>The number of hours during the lookback period that's covered by Savings Plans.</p>
    #   @return [String]
    # @!attribute on_demand_hours_in_lookback_period
    #   <p>The number of hours during the lookback period that's billed at On-Demand
    #               rates.</p>
    #   @return [String]
    # @!attribute total_running_hours_in_lookback_period
    #   <p>The total number of hours that the instance ran during the lookback period.</p>
    #   @return [String]
    # @!attribute monthly_cost
    #   <p>The current On-Demand cost of operating this instance on a monthly basis.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #   @return [String]
    class CurrentInstance < Struct.new(
      nil,
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
      :currency_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested data is unavailable.</p>
    # @!attribute message
    #   @return [String]
    class DataUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The time period of the request. </p>
    # @!attribute start
    #   <p>The beginning of the time period. The start date is inclusive. For example, if
    #                   <code>start</code> is <code>2017-01-01</code>, Amazon Web Services retrieves cost and
    #               usage data starting at <code>2017-01-01</code> up to the end date. The start date must
    #               be equal to or no later than the current date to avoid a validation error.</p>
    #   @return [String]
    # @!attribute end
    #   <p>The end of the time period. The end date is exclusive. For example, if
    #                   <code>end</code> is <code>2017-05-01</code>, Amazon Web Services retrieves cost and
    #               usage data from the start date up to, but not including, <code>2017-05-01</code>.</p>
    #   @return [String]
    class DateInterval < Struct.new(
      nil,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The unique identifier of the cost anomaly monitor that you want to delete. </p>
    #   @return [String]
    class DeleteAnomalyMonitorRequest < Struct.new(
      nil,
      :monitor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAnomalyMonitorResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_arn
    #   <p>The unique identifier of the cost anomaly subscription that you want to delete. </p>
    #   @return [String]
    class DeleteAnomalySubscriptionRequest < Struct.new(
      nil,
      :subscription_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAnomalySubscriptionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category. </p>
    #   @return [String]
    class DeleteCostCategoryDefinitionRequest < Struct.new(
      nil,
      :cost_category_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category. </p>
    #   @return [String]
    # @!attribute effective_end
    #   <p>The effective end date of the cost category as a result of deleting it. No costs after
    #         this date is categorized by the deleted cost category. </p>
    #   @return [String]
    class DeleteCostCategoryDefinitionResponse < Struct.new(
      nil,
      :cost_category_arn,
      :effective_end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category. </p>
    #   @return [String]
    # @!attribute effective_on
    #   <p>The date when the cost category was effective. </p>
    #   @return [String]
    class DescribeCostCategoryDefinitionRequest < Struct.new(
      nil,
      :cost_category_arn,
      :effective_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category
    #   <p>The structure of Cost Categories. This includes detailed metadata and the set of rules
    #               for the <code>CostCategory</code> object.</p>
    #   @return [Types::CostCategory]
    class DescribeCostCategoryDefinitionResponse < Struct.new(
      nil,
      :cost_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata that you can use to filter and group your results. You can use
    #                 <code>GetDimensionValues</code> to find specific values.</p>
    # @!attribute key
    #   <p>The names of the metadata types that you can use to filter and group your results. For
    #               example, <code>AZ</code> returns a list of Availability Zones.</p>
    #            <p>Not all dimensions are supported in each API. Refer to the documentation for each
    #               specific API to see what is supported.</p>
    #            <p>
    #               <code>LINKED_ACCOUNT_NAME</code> and <code>SERVICE_CODE</code> can only be used in
    #                   <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule</a>.</p>
    #            <p>
    #               <code>ANOMALY_TOTAL_IMPACT_ABSOLUTE</code> and
    #                   <code>ANOMALY_TOTAL_IMPACT_PERCENTAGE</code> can only be used in <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html">AnomalySubscriptions</a>.</p>
    #            <p>Use <code>PRODUCT_ATTRIBUTE</code> only as the <code>Dimension</code> in
    #                   <code>GetDimensionValues</code>. To filter or group by product attributes, use the
    #                   <code>ProductAttributes</code> field of <code>Expression</code> or the
    #                   <code>PRODUCT_ATTRIBUTE</code> group type.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The metadata values that you can use to filter and group your results. You can use
    #                   <code>GetDimensionValues</code> to find specific values.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results.</p>
    #            <p>
    #               <code>MatchOptions</code> is only applicable for actions related to cost category and
    #               Anomaly Subscriptions. Refer to the documentation for each specific API to see what is
    #               supported.</p>
    #            <p>The default values for <code>MatchOptions</code> are <code>EQUALS</code> and
    #                   <code>CASE_SENSITIVE</code>.</p>
    #   @return [Array<String>]
    class DimensionValues < Struct.new(
      nil,
      :key,
      :values,
      :match_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata of a specific type that you can use to filter and group your results. You
    #             can use <code>GetDimensionValues</code> to find specific values.</p>
    # @!attribute value
    #   <p>The value of a dimension with a specific attribute.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attribute that applies to a specific <code>Dimension</code>.</p>
    #   @return [Hash<String, String>]
    class DimensionValuesWithAttributes < Struct.new(
      nil,
      :value,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field that contains a list of disk (local storage) metrics that are associated
    #             with the current instance. </p>
    # @!attribute disk_read_ops_per_second
    #   <p>The maximum number of read operations per second. </p>
    #   @return [String]
    # @!attribute disk_write_ops_per_second
    #   <p>The maximum number of write operations per second. </p>
    #   @return [String]
    # @!attribute disk_read_bytes_per_second
    #   <p>The maximum read throughput operations per second. </p>
    #   @return [String]
    # @!attribute disk_write_bytes_per_second
    #   <p>The maximum write throughput operations per second. </p>
    #   @return [String]
    class DiskResourceUtilization < Struct.new(
      nil,
      :disk_read_ops_per_second,
      :disk_write_ops_per_second,
      :disk_read_bytes_per_second,
      :disk_write_bytes_per_second,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DynamoDB reservations that Amazon Web Services recommends that you purchase.</p>
    # @!attribute capacity_units
    #   <p>The capacity unit of the recommended reservation.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #   @return [String]
    class DynamoDBCapacityDetails < Struct.new(
      nil,
      :capacity_units,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The EBS field that contains a list of EBS metrics that are associated with the current
    #             instance. </p>
    # @!attribute ebs_read_ops_per_second
    #   <p>The maximum number of read operations per second. </p>
    #   @return [String]
    # @!attribute ebs_write_ops_per_second
    #   <p>The maximum number of write operations per second. </p>
    #   @return [String]
    # @!attribute ebs_read_bytes_per_second
    #   <p>The maximum size of read operations per second </p>
    #   @return [String]
    # @!attribute ebs_write_bytes_per_second
    #   <p>The maximum size of write operations per second. </p>
    #   @return [String]
    class EBSResourceUtilization < Struct.new(
      nil,
      :ebs_read_ops_per_second,
      :ebs_write_ops_per_second,
      :ebs_read_bytes_per_second,
      :ebs_write_bytes_per_second,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Amazon EC2 reservations that Amazon Web Services recommends that you
    #             purchase.</p>
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the recommended reservation.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the recommended reservation. The platform is the specific combination
    #               of operating system, license model, and software on an instance.</p>
    #   @return [String]
    # @!attribute tenancy
    #   <p>Determines whether the recommended reservation is dedicated or shared.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance. </p>
    #   @return [Boolean]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #   @return [Boolean]
    class EC2InstanceDetails < Struct.new(
      nil,
      :family,
      :instance_type,
      :region,
      :availability_zone,
      :platform,
      :tenancy,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_generation] = false unless options.key?(:current_generation)
        options[:size_flex_eligible] = false unless options.key?(:size_flex_eligible)
        super
      end
    end

    # <p>Details on the Amazon EC2 Resource.</p>
    # @!attribute hourly_on_demand_rate
    #   <p>The hourly public On-Demand rate for the instance type.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of Amazon Web Services instance.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the Amazon Web Services instance. The platform is the specific
    #               combination of operating system, license model, and software on an instance.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the instance.</p>
    #   @return [String]
    # @!attribute sku
    #   <p>The SKU of the product.</p>
    #   @return [String]
    # @!attribute memory
    #   <p>The memory capacity of the Amazon Web Services instance.</p>
    #   @return [String]
    # @!attribute network_performance
    #   <p>The network performance capacity of the Amazon Web Services instance.</p>
    #   @return [String]
    # @!attribute storage
    #   <p>The disk storage of the Amazon Web Services instance. This doesn't include EBS
    #               storage.</p>
    #   @return [String]
    # @!attribute vcpu
    #   <p>The number of VCPU cores in the Amazon Web Services instance type.</p>
    #   @return [String]
    class EC2ResourceDetails < Struct.new(
      nil,
      :hourly_on_demand_rate,
      :instance_type,
      :platform,
      :region,
      :sku,
      :memory,
      :network_performance,
      :storage,
      :vcpu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Utilization metrics for the instance. </p>
    # @!attribute max_cpu_utilization_percentage
    #   <p>The maximum observed or expected CPU utilization of the instance.</p>
    #   @return [String]
    # @!attribute max_memory_utilization_percentage
    #   <p>The maximum observed or expected memory utilization of the instance.</p>
    #   @return [String]
    # @!attribute max_storage_utilization_percentage
    #   <p>The maximum observed or expected storage utilization of the instance. This doesn't
    #               include EBS storage.</p>
    #   @return [String]
    # @!attribute ebs_resource_utilization
    #   <p>The EBS field that contains a list of EBS metrics that are associated with the current
    #               instance. </p>
    #   @return [Types::EBSResourceUtilization]
    # @!attribute disk_resource_utilization
    #   <p>The field that contains a list of disk (local storage) metrics that are associated
    #               with the current instance. </p>
    #   @return [Types::DiskResourceUtilization]
    # @!attribute network_resource_utilization
    #   <p>The network field that contains a list of network metrics that are associated with the
    #               current instance. </p>
    #   @return [Types::NetworkResourceUtilization]
    class EC2ResourceUtilization < Struct.new(
      nil,
      :max_cpu_utilization_percentage,
      :max_memory_utilization_percentage,
      :max_storage_utilization_percentage,
      :ebs_resource_utilization,
      :disk_resource_utilization,
      :network_resource_utilization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon EC2 hardware specifications that you want Amazon Web Services to provide
    #             recommendations for.</p>
    # @!attribute offering_class
    #   <p>Indicates whether you want a recommendation for standard or convertible
    #               reservations.</p>
    #   @return [String]
    class EC2Specification < Struct.new(
      nil,
      :offering_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Amazon OpenSearch Service reservations that Amazon Web Services
    #             recommends that you purchase.</p>
    # @!attribute instance_class
    #   <p>The class of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute instance_size
    #   <p>The size of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance.</p>
    #   @return [Boolean]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #   @return [Boolean]
    class ESInstanceDetails < Struct.new(
      nil,
      :instance_class,
      :instance_size,
      :region,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_generation] = false unless options.key?(:current_generation)
        options[:size_flex_eligible] = false unless options.key?(:size_flex_eligible)
        super
      end
    end

    # <p>Details about the Amazon ElastiCache reservations that Amazon Web Services recommends
    #             that you purchase.</p>
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The type of node that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #   @return [String]
    # @!attribute product_description
    #   <p>The description of the recommended reservation.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [Boolean]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #   @return [Boolean]
    class ElastiCacheInstanceDetails < Struct.new(
      nil,
      :family,
      :node_type,
      :region,
      :product_description,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_generation] = false unless options.key?(:current_generation)
        options[:size_flex_eligible] = false unless options.key?(:size_flex_eligible)
        super
      end
    end

    # <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #          <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #             documentation for each specific API to see what is supported.</p>
    #          <p>There are two patterns:</p>
    #          <ul>
    #             <li>
    #                <p>Simple dimension values.</p>
    #                <ul>
    #                   <li>
    #                      <p>There are four types of simple dimension values:
    #                                 <code>CostCategories</code>, <code>Tags</code>,
    #                                 <code>Dimensions</code>, and
    #                             <code>ProductAttributes</code>.</p>
    #                      <ul>
    #                         <li>
    #                            <p>Specify the <code>CostCategories</code> field to define a
    #                                     filter that acts on Cost Categories.</p>
    #                         </li>
    #                         <li>
    #                            <p>Specify the <code>Tags</code> field to define a filter that
    #                                     acts on Cost Allocation Tags.</p>
    #                         </li>
    #                         <li>
    #                            <p>Specify the <code>Dimensions</code> field to define a filter
    #                                     that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                  <code>DimensionValues</code>
    #                               </a>.</p>
    #                         </li>
    #                         <li>
    #                            <p>Specify the <code>ProductAttributes</code> field to define a
    #                                     filter that acts on the product attributes of supported
    #                                     services, such as Amazon Bedrock. Only
    #                                         <code>GetCostAndUsage</code>,
    #                                         <code>GetCostAndUsageWithResources</code>,
    #                                         <code>GetDimensionValues</code> (in the
    #                                         <code>COST_AND_USAGE</code> context),
    #                                         <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                     support <code>ProductAttributes</code>. For the supported
    #                                     services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                  <code>ProductAttributeValues</code>
    #                               </a>.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>For each filter type, you can set the dimension name and values for
    #                             the filters that you plan to use.</p>
    #                      <ul>
    #                         <li>
    #                            <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                         REGION==us-west-1</code>. For
    #                                         <code>GetRightsizingRecommendation</code>, the Region is a
    #                                     full name (for example, <code>REGION==US East (N.
    #                                         Virginia)</code>.</p>
    #                         </li>
    #                         <li>
    #                            <p>The corresponding <code>Expression</code> for this example is
    #                                     as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                         "us-east-1", "us-west-1" ] } }</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>As shown in the previous example, lists of dimension values
    #                                     are combined with <code>OR</code> when applying the
    #                                     filter.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>You can also set different match options to further control how the
    #                             filter behaves. Not all APIs support match options. Refer to the
    #                             documentation for each specific API to see what is supported.</p>
    #                      <ul>
    #                         <li>
    #                            <p>For example, you can filter for linked account names that
    #                                     start with "a".</p>
    #                         </li>
    #                         <li>
    #                            <p>The corresponding <code>Expression</code> for this example is
    #                                     as follows: <code>{ "Dimensions": { "Key":
    #                                         "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                         "Values": [ "a" ] } }</code>
    #                            </p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Compound <code>Expression</code> types with logical operations.</p>
    #                <ul>
    #                   <li>
    #                      <p>You can use multiple <code>Expression</code> types and the logical
    #                             operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                 <code>Expression</code> objects. By doing this, you can filter by
    #                             more advanced options.</p>
    #                   </li>
    #                   <li>
    #                      <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                 == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                 DataTransfer)</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>The corresponding <code>Expression</code> for this example is as
    #                             follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                 "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                 "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                 "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                             </code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <note>
    #                   <p>Because each <code>Expression</code> can have only one operator, the
    #                         service returns an error if more than one is specified. The following
    #                         example shows an <code>Expression</code> object that creates an error:
    #                             <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                             [ "DataTransfer" ] } } </code>
    #                   </p>
    #                   <p>The following is an example of the corresponding error message:
    #                             <code>"Expression has more than one roots. Only one root operator is
    #                             allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                             CostCategories"</code>
    #                   </p>
    #                </note>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                 NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                 and tags. NOT operators aren't supported. Dimensions are also limited to
    #                     <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                     <code>RIGHTSIZING_TYPE</code>.</p>
    #             <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                 supported. AND and OR aren't supported. Dimensions are limited to
    #                     <code>LINKED_ACCOUNT</code>.</p>
    #          </note>
    # @!attribute or
    #   <p>Return results that match either <code>Dimension</code> object.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute and
    #   <p>Return results that match both <code>Dimension</code> objects.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute not
    #   <p>Return results that don't match a <code>Dimension</code> object.</p>
    #   @return [Types::Expression]
    # @!attribute dimensions
    #   <p>The specific <code>Dimension</code> to use for <code>Expression</code>.</p>
    #   @return [Types::DimensionValues]
    # @!attribute tags
    #   <p>The specific <code>Tag</code> to use for <code>Expression</code>.</p>
    #   @return [Types::TagValues]
    # @!attribute cost_categories
    #   <p>The filter that's based on <code>CostCategory</code> values.</p>
    #   @return [Types::CostCategoryValues]
    # @!attribute product_attributes
    #   <p>The filter that's based on <code>ProductAttributeValues</code>. Use it to filter the
    #               costs of supported services, such as Amazon Bedrock, by product attributes. The following
    #               operations support this filter: <code>GetCostAndUsage</code>,
    #                   <code>GetCostAndUsageWithResources</code>, <code>GetDimensionValues</code> (in the
    #                   <code>COST_AND_USAGE</code> context), <code>GetTags</code>, and
    #                   <code>GetCostCategories</code>. For the supported services and keys, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                  <code>ProductAttributeValues</code>
    #               </a>.</p>
    #   @return [Types::ProductAttributeValues]
    class Expression < Struct.new(
      nil,
      :or,
      :and,
      :not,
      :dimensions,
      :tags,
      :cost_categories,
      :product_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The forecast that's created for your query.</p>
    # @!attribute time_period
    #   <p>The period of time that the forecast covers.</p>
    #   @return [Types::DateInterval]
    # @!attribute mean_value
    #   <p>The mean value of the forecast.</p>
    #   @return [String]
    # @!attribute prediction_interval_lower_bound
    #   <p>The lower limit for the prediction interval. </p>
    #   @return [String]
    # @!attribute prediction_interval_upper_bound
    #   <p>The upper limit for the prediction interval. </p>
    #   @return [String]
    class ForecastResult < Struct.new(
      nil,
      :time_period,
      :mean_value,
      :prediction_interval_lower_bound,
      :prediction_interval_upper_bound,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to generate a recommendation or analysis is already in progress.</p>
    # @!attribute message
    #   @return [String]
    class GenerationExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the Savings Plans recommendation generation.</p>
    # @!attribute recommendation_id
    #   <p>Indicates the ID for this specific recommendation.</p>
    #   @return [String]
    # @!attribute generation_status
    #   <p>Indicates whether the recommendation generation succeeded, is processing, or
    #               failed.</p>
    #   @return [String]
    # @!attribute generation_started_time
    #   <p>Indicates the start time of the recommendation generation.</p>
    #   @return [String]
    # @!attribute generation_completion_time
    #   <p>Indicates the completion time of the recommendation generation.</p>
    #   @return [String]
    # @!attribute estimated_completion_time
    #   <p>Indicates the estimated time for when the recommendation generation will
    #               complete.</p>
    #   @return [String]
    class GenerationSummary < Struct.new(
      nil,
      :recommendation_id,
      :generation_status,
      :generation_started_time,
      :generation_completion_time,
      :estimated_completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>Retrieves all of the cost anomalies detected for a specific cost anomaly monitor Amazon
    #         Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute date_interval
    #   <p>Assigns the start and end dates for retrieving cost anomalies. The returned anomaly object
    #         will have an <code>AnomalyEndDate</code> in the specified time range. </p>
    #   @return [Types::AnomalyDateInterval]
    # @!attribute feedback
    #   <p>Filters anomaly results by the feedback field on the anomaly object. </p>
    #   @return [String]
    # @!attribute total_impact
    #   <p>Filters anomaly results by the total impact field on the anomaly object. For example, you
    #         can filter anomalies <code>GREATER_THAN 200.00</code> to retrieve anomalies, with an estimated
    #         dollar impact greater than 200. </p>
    #   @return [Types::TotalImpactFilter]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of entries a paginated response contains. </p>
    #   @return [Integer]
    class GetAnomaliesRequest < Struct.new(
      nil,
      :monitor_arn,
      :date_interval,
      :feedback,
      :total_impact,
      :next_page_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomalies
    #   <p>A list of cost anomalies. </p>
    #   @return [Array<Types::Anomaly>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    class GetAnomaliesResponse < Struct.new(
      nil,
      :anomalies,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    #   @return [Array<String>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of entries that a paginated response contains. </p>
    #   @return [Integer]
    class GetAnomalyMonitorsRequest < Struct.new(
      nil,
      :monitor_arn_list,
      :next_page_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_monitors
    #   <p>A list of cost anomaly monitors that includes the detailed metadata for each monitor.
    #       </p>
    #   @return [Array<Types::AnomalyMonitor>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    class GetAnomalyMonitorsResponse < Struct.new(
      nil,
      :anomaly_monitors,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_arn_list
    #   <p>A list of cost anomaly subscription ARNs. </p>
    #   @return [Array<String>]
    # @!attribute monitor_arn
    #   <p>Cost anomaly monitor ARNs. </p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of entries a paginated response contains. </p>
    #   @return [Integer]
    class GetAnomalySubscriptionsRequest < Struct.new(
      nil,
      :subscription_arn_list,
      :monitor_arn,
      :next_page_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_subscriptions
    #   <p>A list of cost anomaly subscriptions that includes the detailed metadata for each one.
    #       </p>
    #   @return [Array<Types::AnomalySubscription>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    class GetAnomalySubscriptionsResponse < Struct.new(
      nil,
      :anomaly_subscriptions,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute granularity
    #   <p>How granular you want the data to be. You can enable data at hourly or daily
    #         granularity.</p>
    #   @return [String]
    # @!attribute services
    #   <p>The service metadata for the service or services you want to query. If not specified, all
    #         elements are returned.</p>
    #   @return [Array<String>]
    # @!attribute approximation_dimension
    #   <p>The service to evaluate for the usage records. You can choose resource-level data at daily
    #         granularity, or hourly granularity with or without resource-level data.</p>
    #   @return [String]
    class GetApproximateUsageRecordsRequest < Struct.new(
      nil,
      :granularity,
      :services,
      :approximation_dimension,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute services
    #   <p>The service metadata for the service or services in the response.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute total_records
    #   <p>The total number of usage records for all services in the services list.</p>
    #   @return [Integer]
    # @!attribute lookback_period
    #   <p>The lookback period that's used for the estimation.</p>
    #   @return [Types::DateInterval]
    class GetApproximateUsageRecordsResponse < Struct.new(
      nil,
      :services,
      :total_records,
      :lookback_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_records] = 0 unless options.key?(:total_records)
        super
      end
    end

    # @!attribute analysis_id
    #   <p>The analysis ID that's associated with the commitment purchase analysis.</p>
    #   @return [String]
    class GetCommitmentPurchaseAnalysisRequest < Struct.new(
      nil,
      :analysis_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute estimated_completion_time
    #   <p>The estimated time for when the analysis will complete.</p>
    #   @return [String]
    # @!attribute analysis_completion_time
    #   <p>The completion time of the analysis.</p>
    #   @return [String]
    # @!attribute analysis_started_time
    #   <p>The start time of the analysis.</p>
    #   @return [String]
    # @!attribute analysis_id
    #   <p>The analysis ID that's associated with the commitment purchase analysis.</p>
    #   @return [String]
    # @!attribute analysis_status
    #   <p>The status of the analysis.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code used for the analysis.</p>
    #   @return [String]
    # @!attribute analysis_details
    #   <p>Details about the analysis.</p>
    #   @return [Types::AnalysisDetails]
    # @!attribute commitment_purchase_analysis_configuration
    #   <p>The configuration for the commitment purchase analysis.</p>
    #   @return [Types::CommitmentPurchaseAnalysisConfiguration]
    class GetCommitmentPurchaseAnalysisResponse < Struct.new(
      nil,
      :estimated_completion_time,
      :analysis_completion_time,
      :analysis_started_time,
      :analysis_id,
      :analysis_status,
      :error_code,
      :analysis_details,
      :commitment_purchase_analysis_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute baseline_time_period
    #   <p>The reference time period for comparison. This time period serves as the baseline against
    #         which other cost and usage data will be compared. The interval must start and end on the first
    #         day of a month, with a duration of exactly one month.</p>
    #   @return [Types::DateInterval]
    # @!attribute comparison_time_period
    #   <p>The comparison time period for analysis. This time period's cost and usage data will be
    #         compared against the baseline time period. The interval must start and end on the first day of
    #         a month, with a duration of exactly one month.</p>
    #   @return [Types::DateInterval]
    # @!attribute metric_for_comparison
    #   <p>The cost and usage metric to compare. Valid values are <code>AmortizedCost</code>,
    #           <code>BlendedCost</code>, <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute group_by
    #   <p>You can group results using the attributes <code>DIMENSION</code>, <code>TAG</code>, and
    #           <code>COST_CATEGORY</code>. </p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for the request.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of paginated results.</p>
    #   @return [String]
    class GetCostAndUsageComparisonsRequest < Struct.new(
      nil,
      :billing_view_arn,
      :baseline_time_period,
      :comparison_time_period,
      :metric_for_comparison,
      :filter,
      :group_by,
      :max_results,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_and_usage_comparisons
    #   <p>An array of comparison results showing cost and usage metrics between
    #           <code>BaselineTimePeriod</code> and <code>ComparisonTimePeriod</code>.</p>
    #   @return [Array<Types::CostAndUsageComparison>]
    # @!attribute total_cost_and_usage
    #   <p>A summary of the total cost and usage, comparing amounts between
    #           <code>BaselineTimePeriod</code> and <code>ComparisonTimePeriod</code> and their differences.
    #         This total represents the aggregate total across all paginated results, if the response spans
    #         multiple pages.</p>
    #   @return [Hash<String, Types::ComparisonMetricValue>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of paginated results.</p>
    #   @return [String]
    class GetCostAndUsageComparisonsResponse < Struct.new(
      nil,
      :cost_and_usage_comparisons,
      :total_cost_and_usage,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>Sets the start date and end date for retrieving Amazon Web Services costs. The start
    #         date is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #   @return [Types::DateInterval]
    # @!attribute granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code> or
    #           <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set, the
    #         response object doesn't include the <code>Granularity</code>, either <code>MONTHLY</code> or
    #           <code>DAILY</code>, or <code>HOURLY</code>. </p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify
    #           <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated
    #         with that account's usage of that service. You can nest <code>Expression</code> objects to
    #         define any combination of dimension filters. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are
    #           <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code>,
    #           <code>Tags</code>, and <code>ProductAttributes</code> are <code>EQUALS</code>,
    #           <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code>
    #         and <code>CASE_SENSITIVE</code>.</p>
    #            <p>You can filter by product attributes with or without grouping by them. If you filter or
    #         group by product attributes, the results include only the costs of supported services, and a
    #           <code>SERVICE</code> filter is optional. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">ProductAttributeValues</a>.</p>
    #            <p>If you include a <code>SERVICE</code> filter, it must apply to the whole request: combine it with other filters by using <code>And</code>, and include it in every branch of an <code>Or</code>. A <code>SERVICE</code> filter inside <code>Not</code> doesn't meet this requirement, and the request fails with a <code>ValidationException</code>.</p>
    #   @return [Types::Expression]
    # @!attribute metrics
    #   <p>Which metrics are returned in the query. For more information about blended and
    #         unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #           appear on some line items in my bill?</a>. </p>
    #            <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>,
    #           <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>. </p>
    #            <note>
    #               <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking into account the units. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hours and GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #            </note>
    #            <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsage</code> requests.</p>
    #   @return [Array<String>]
    # @!attribute group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups, either
    #         dimensions, tag keys, cost categories, product attributes, or any two group by
    #         types.</p>
    #            <p>Valid values for the <code>DIMENSION</code> type are <code>AZ</code>,
    #           <code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>, <code>INVOICING_ENTITY</code>,
    #           <code>LINKED_ACCOUNT</code>, <code>OPERATION</code>, <code>PLATFORM</code>,
    #           <code>PURCHASE_TYPE</code>, <code>SERVICE</code>, <code>TENANCY</code>,
    #           <code>RECORD_TYPE</code>, and <code>USAGE_TYPE</code>.</p>
    #            <p>When you group by the <code>TAG</code> type and include a valid tag key, you get all
    #         tag values, including empty strings.</p>
    #            <p>To group by the <code>PRODUCT_ATTRIBUTE</code> type, set <code>Key</code> to a
    #         product attribute key, such as <code>model</code>. For the keys of each supported service, see
    #         <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">ProductAttributeValues</a>. The results include only the costs of supported services, and if you have no
    #         such costs, the response contains no groups.</p>
    #            <p>In the response, each group key has the format <code>key$value</code>, for example,
    #           <code>model$Claude Sonnet 5</code>. Costs that have no value for the key are in the group
    #           <code>key$</code>, for example, <code>model$</code>. Remove the <code>key$</code> prefix
    #         before you use a value in a <code>ProductAttributes</code> filter. Keys are case-sensitive: if
    #         you group by a key that doesn't exist, such as <code>Model</code>, all of your costs of
    #         supported services are in the group <code>Model$</code>.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetCostAndUsageRequest < Struct.new(
      nil,
      :time_period,
      :granularity,
      :filter,
      :metrics,
      :group_by,
      :billing_view_arn,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute group_definitions
    #   <p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code>
    #         parameters in the request.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute results_by_time
    #   <p>The time period that's covered by the results in the response.</p>
    #   @return [Array<Types::ResultByTime>]
    # @!attribute dimension_value_attributes
    #   <p>The attributes that apply to a specific dimension value. For example, if the value is a
    #         linked account, the attribute is that account name.</p>
    #   @return [Array<Types::DimensionValuesWithAttributes>]
    class GetCostAndUsageResponse < Struct.new(
      nil,
      :next_page_token,
      :group_definitions,
      :results_by_time,
      :dimension_value_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>Sets the start and end dates for retrieving Amazon Web Services costs. The range must
    #         be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date
    #         is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #   @return [Types::DateInterval]
    # @!attribute granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code>,
    #           <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set, the
    #         response object doesn't include the <code>Granularity</code>, <code>MONTHLY</code>,
    #           <code>DAILY</code>, or <code>HOURLY</code>. </p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify
    #           <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated
    #         with that account's usage of that service. You can nest <code>Expression</code> objects to
    #         define any combination of dimension filters. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #            <p>The <code>GetCostAndUsageWithResources</code> operation requires that you either group
    #         by or filter by a <code>ResourceId</code>. It requires the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
    #               <code>"SERVICE = Amazon Elastic Compute Cloud - Compute"</code> in the filter.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are
    #           <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code>,
    #           <code>Tags</code>, and <code>ProductAttributes</code> are <code>EQUALS</code>,
    #           <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code>
    #         and <code>CASE_SENSITIVE</code>.</p>
    #            <p>If you filter or group by product attributes, the <code>SERVICE</code> filter rules are
    #         the same as for <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetCostAndUsage.html">GetCostAndUsage</a>.</p>
    #   @return [Types::Expression]
    # @!attribute metrics
    #   <p>Which metrics are returned in the query. For more information about blended and
    #         unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #           appear on some line items in my bill?</a>. </p>
    #            <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>,
    #           <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>. </p>
    #            <note>
    #               <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking the units into account. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hour or GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #            </note>
    #            <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsageWithResources</code>
    #         requests.</p>
    #   @return [Array<String>]
    # @!attribute group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups:
    #           <code>DIMENSION</code>, <code>TAG</code>, <code>COST_CATEGORY</code>, and
    #           <code>PRODUCT_ATTRIBUTE</code>.</p>
    #            <p>
    #               <code>PRODUCT_ATTRIBUTE</code> groups work the same way as in <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetCostAndUsage.html">GetCostAndUsage</a>. A
    #           <code>PRODUCT_ATTRIBUTE</code> group or a <code>ProductAttributes</code> filter doesn't meet
    #         the requirement to group by or filter by a <code>ResourceId</code>.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetCostAndUsageWithResourcesRequest < Struct.new(
      nil,
      :time_period,
      :granularity,
      :filter,
      :metrics,
      :group_by,
      :billing_view_arn,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute group_definitions
    #   <p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code>
    #         parameters in the request.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute results_by_time
    #   <p>The time period that's covered by the results in the response.</p>
    #   @return [Array<Types::ResultByTime>]
    # @!attribute dimension_value_attributes
    #   <p>The attributes that apply to a specific dimension value. For example, if the value is a
    #         linked account, the attribute is that account name.</p>
    #   @return [Array<Types::DimensionValuesWithAttributes>]
    class GetCostAndUsageWithResourcesResponse < Struct.new(
      nil,
      :next_page_token,
      :group_definitions,
      :results_by_time,
      :dimension_value_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_string
    #   <p>The value that you want to search the filter values for.</p>
    #            <p>If you don't specify a <code>CostCategoryName</code>, <code>SearchString</code> is used to
    #         filter cost category names that match the <code>SearchString</code> pattern. If you specify a
    #           <code>CostCategoryName</code>, <code>SearchString</code> is used to filter cost category
    #         values that match the <code>SearchString</code> pattern.</p>
    #   @return [String]
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #   @return [Types::DateInterval]
    # @!attribute cost_category_name
    #   <p>The unique name of the cost category.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute sort_by
    #   <p>The value that you sort the data by.</p>
    #            <p>The key represents the cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported key values for the <code>SortOrder</code> value are <code>ASCENDING</code>
    #         and <code>DESCENDING</code>.</p>
    #            <p>When you use the <code>SortBy</code> value, the <code>NextPageToken</code> and
    #           <code>SearchString</code> key values aren't supported.</p>
    #   @return [Array<Types::SortDefinition>]
    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>This field is only used when the <code>SortBy</code> value is provided in the
    #         request.</p>
    #            <p>The maximum number of objects that are returned for this request. If
    #           <code>MaxResults</code> isn't specified with the <code>SortBy</code> value, the request
    #         returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetCostCategories</code>, MaxResults has an upper quota of 1000.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>If the number of objects that are still available for retrieval exceeds the quota, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of
    #         objects, provide the NextPageToken from the previous call in your next request.</p>
    #   @return [String]
    class GetCostCategoriesRequest < Struct.new(
      nil,
      :search_string,
      :time_period,
      :cost_category_name,
      :filter,
      :sort_by,
      :billing_view_arn,
      :max_results,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_page_token
    #   <p>If the number of objects that are still available for retrieval exceeds the quota, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of
    #         objects, provide the marker from the prior call in your next request.</p>
    #   @return [String]
    # @!attribute cost_category_names
    #   <p>The names of the cost categories.</p>
    #   @return [Array<String>]
    # @!attribute cost_category_values
    #   <p>The cost category values.</p>
    #            <p>If the <code>CostCategoryName</code> key isn't specified in the request, the
    #           <code>CostCategoryValues</code> fields aren't returned. </p>
    #   @return [Array<String>]
    # @!attribute return_size
    #   <p>The number of objects that are returned.</p>
    #   @return [Integer]
    # @!attribute total_size
    #   <p>The total number of objects.</p>
    #   @return [Integer]
    class GetCostCategoriesResponse < Struct.new(
      nil,
      :next_page_token,
      :cost_category_names,
      :cost_category_values,
      :return_size,
      :total_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute baseline_time_period
    #   <p>The reference time period for comparison. This time period serves as the baseline against
    #         which other cost and usage data will be compared. The interval must start and end on the first
    #         day of a month, with a duration of exactly one month.</p>
    #   @return [Types::DateInterval]
    # @!attribute comparison_time_period
    #   <p>The comparison time period for analysis. This time period's cost and usage data will be
    #         compared against the baseline time period. The interval must start and end on the first day of
    #         a month, with a duration of exactly one month.</p>
    #   @return [Types::DateInterval]
    # @!attribute metric_for_comparison
    #   <p>The cost and usage metric to compare. Valid values are <code>AmortizedCost</code>,
    #           <code>BlendedCost</code>, <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute group_by
    #   <p>You can group results using the attributes <code>DIMENSION</code>, <code>TAG</code>, and
    #           <code>COST_CATEGORY</code>. Note that <code>SERVICE</code> and <code>USAGE_TYPE</code>
    #         dimensions are automatically included in the cost comparison drivers analysis.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for the request.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of paginated results.</p>
    #   @return [String]
    class GetCostComparisonDriversRequest < Struct.new(
      nil,
      :billing_view_arn,
      :baseline_time_period,
      :comparison_time_period,
      :metric_for_comparison,
      :filter,
      :group_by,
      :max_results,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_comparison_drivers
    #   <p>An array of comparison results showing factors that drive significant cost differences
    #         between <code>BaselineTimePeriod</code> and <code>ComparisonTimePeriod</code>.</p>
    #   @return [Array<Types::CostComparisonDriver>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of paginated results.</p>
    #   @return [String]
    class GetCostComparisonDriversResponse < Struct.new(
      nil,
      :cost_comparison_drivers,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>The period of time that you want the forecast to cover. The start date must be equal to or
    #         no later than the current date to avoid a validation error.</p>
    #   @return [Types::DateInterval]
    # @!attribute metric
    #   <p>Which metric Cost Explorer uses to create your forecast. For more information about
    #         blended and unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #           appear on some line items in my bill?</a>. </p>
    #            <p>Valid values for a <code>GetCostForecast</code> call are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>AMORTIZED_COST</p>
    #               </li>
    #               <li>
    #                  <p>BLENDED_COST</p>
    #               </li>
    #               <li>
    #                  <p>NET_AMORTIZED_COST</p>
    #               </li>
    #               <li>
    #                  <p>NET_UNBLENDED_COST</p>
    #               </li>
    #               <li>
    #                  <p>UNBLENDED_COST</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code>
    #         forecasts or 18 months of <code>MONTHLY</code> forecasts.</p>
    #            <p>The <code>GetCostForecast</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The filters that you want to use to filter your forecast. The
    #           <code>GetCostForecast</code> API supports filtering by the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::Expression]
    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute prediction_interval_level
    #   <p>Cost Explorer always returns the mean forecast as a single point. You can request a
    #         prediction interval around the mean by specifying a confidence level. The higher the
    #         confidence level, the more confident Cost Explorer is about the actual value falling in the
    #         prediction interval. Higher confidence levels result in wider prediction intervals.</p>
    #   @return [Integer]
    class GetCostForecastRequest < Struct.new(
      nil,
      :time_period,
      :metric,
      :granularity,
      :filter,
      :billing_view_arn,
      :prediction_interval_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute total
    #   <p>How much you are forecasted to spend over the forecast period, in <code>USD</code>.</p>
    #   @return [Types::MetricValue]
    # @!attribute forecast_results_by_time
    #   <p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a list
    #         of days. For <code>MONTHLY</code> forecasts, this is a list of months.</p>
    #   @return [Array<Types::ForecastResult>]
    class GetCostForecastResponse < Struct.new(
      nil,
      :total,
      :forecast_results_by_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_string
    #   <p>The value that you want to search the filter values for.</p>
    #   @return [String]
    # @!attribute time_period
    #   <p>The start date and end date for retrieving the dimension values. The start date is
    #         inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #   @return [Types::DateInterval]
    # @!attribute dimension
    #   <p>The name of the dimension. Each <code>Dimension</code> is available for a different
    #           <code>Context</code>. For more information, see <code>Context</code>.
    #           <code>LINK_ACCOUNT_NAME</code> and <code>SERVICE_CODE</code> can only be used in <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/AAPI_CostCategoryRule.html">CostCategoryRule</a>. </p>
    #            <p>
    #               <code>PRODUCT_ATTRIBUTE</code> returns the product attribute keys that are available for
    #         your costs of supported services, or the values of the key that you specify in
    #           <code>DimensionKey</code>. <code>PRODUCT_ATTRIBUTE</code> is supported only in the
    #           <code>COST_AND_USAGE</code> context.</p>
    #   @return [String]
    # @!attribute dimension_key
    #   <p>The product attribute key to return values for, such as <code>model</code>. If you omit
    #           <code>DimensionKey</code> or set it to an empty string, the response lists the product
    #         attribute keys that are available for your costs of supported services instead. For the
    #         supported services, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">ProductAttributeValues</a>.</p>
    #            <p>If you specify a key, the response lists the values of that key. If some of your costs
    #         have no value for the key, the response includes an empty-string value. Keys are
    #         case-sensitive, and a key that doesn't exist returns no values other than an empty
    #         string.</p>
    #            <p>You can specify <code>DimensionKey</code> only when <code>Dimension</code> is
    #           <code>PRODUCT_ATTRIBUTE</code>. If you also specify <code>SortBy</code>,
    #           <code>DimensionKey</code> is required. As a result, you can't list product attribute keys when
    #         you use <code>SortBy</code>.</p>
    #   @return [String]
    # @!attribute context
    #   <p>The context for the call to <code>GetDimensionValues</code>. This can be
    #           <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>. The default value is
    #           <code>COST_AND_USAGE</code>. If the context is set to <code>RESERVATIONS</code>, the
    #         resulting dimension values can be used in the <code>GetReservationUtilization</code>
    #         operation. If the context is set to <code>COST_AND_USAGE</code>, the resulting dimension
    #         values can be used in the <code>GetCostAndUsage</code> operation.</p>
    #            <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>BILLING_ENTITY - The Amazon Web Services seller that your account is with. Possible
    #             values are the following:</p>
    #                  <p>- Amazon Web Services(Amazon Web Services): The entity that sells Amazon Web Services services.</p>
    #                  <p>- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian entity that's an acting
    #             reseller for Amazon Web Services services in India.</p>
    #                  <p>- Amazon Web Services Marketplace: The entity that supports the sale of solutions that are built on
    #               Amazon Web Services by third-party software providers.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments.
    #             Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are
    #             Aurora or MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
    #               <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - A family of instance types optimized to fit different use
    #             cases. Examples are <code>Compute Optimized</code> (for example, <code>C4</code>,
    #               <code>C5</code>, <code>C6g</code>, and <code>C7g</code>), <code>Memory
    #               Optimization</code> (for example, <code>R4</code>, <code>R5n</code>, <code>R5b</code>,
    #             and <code>R6g</code>).</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY - The name of the entity that issues the Amazon Web Services
    #             invoice.</p>
    #               </li>
    #               <li>
    #                  <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services
    #             services, such as Amazon Web Services.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and
    #               <code>CreateBucket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>PRODUCT_ATTRIBUTE - The product attributes of supported services, such as the model
    #             provider or the model for Amazon Bedrock.</p>
    #               </li>
    #               <li>
    #                  <p>PURCHASE_TYPE - The reservation type of the purchase that this usage is related to.
    #             Examples include On-Demand Instances and Standard Reserved Instances.</p>
    #               </li>
    #               <li>
    #                  <p>RESERVATION_ID - The unique identifier for an Amazon Web Services Reservation
    #             Instance.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute).</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response
    #             for the <code>GetDimensionValues</code> operation includes a unit attribute. Examples
    #             include GB and Hrs.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2:
    #             CloudWatch – Alarms. The response for this operation includes a unit attribute.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>RECORD_TYPE - The different types of charges such as Reserved Instance (RI) fees,
    #             usage costs, tax refunds, and credits.</p>
    #               </li>
    #               <li>
    #                  <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in
    #             feature only available for last 14 days for EC2-Compute Service.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>RESERVATIONS</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments.
    #             Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
    #               <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are
    #             regional or a single Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance
    #             (RI).</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
    #               </li>
    #               <li>
    #                  <p>PAYMENT_OPTION - The payment option for the given Savings Plans (for example, All
    #             Upfront)</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - The family of instances (For example,
    #             <code>m5</code>)</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for the <code>SortOrder</code> key are <code>ASCENDING</code> or
    #           <code>DESCENDING</code>.</p>
    #            <p>When you specify a <code>SortBy</code> paramater, the context must be
    #           <code>COST_AND_USAGE</code>. Further, when using <code>SortBy</code>,
    #           <code>NextPageToken</code> and <code>SearchString</code> aren't supported.</p>
    #   @return [Array<Types::SortDefinition>]
    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetDimensionValues</code>, MaxResults has an upper limit of 1000.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetDimensionValuesRequest < Struct.new(
      nil,
      :search_string,
      :time_period,
      :dimension,
      :dimension_key,
      :context,
      :filter,
      :sort_by,
      :billing_view_arn,
      :max_results,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dimension_values
    #   <p>The filters that you used to filter your request. Some dimensions are available only
    #         for a specific context.</p>
    #            <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are
    #             Aurora or MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
    #               <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services
    #             services, such as Amazon Web Services.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and
    #               <code>CreateBucket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is
    #             related. Examples include On-Demand Instances and Standard Reserved Instances.</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response
    #             for the <code>GetDimensionValues</code> operation includes a unit attribute. Examples
    #             include GB and Hrs.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2:
    #             CloudWatch – Alarms. The response for this operation includes a unit attribute.</p>
    #               </li>
    #               <li>
    #                  <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax
    #             refunds, and credits.</p>
    #               </li>
    #               <li>
    #                  <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in
    #             feature only available for last 14 days for EC2-Compute Service. You can opt-in by
    #             enabling <code>Hourly</code> and <code>Resource Level Data</code> in Cost Management Console preferences.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>RESERVATIONS</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments.
    #             Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
    #               <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are
    #             regional or a single Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance
    #             (RI).</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
    #               </li>
    #               <li>
    #                  <p>PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All
    #             Upfront)</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - The family of instances (For example,
    #             <code>m5</code>)</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::DimensionValuesWithAttributes>]
    # @!attribute return_size
    #   <p>The number of results that Amazon Web Services returned at one time.</p>
    #   @return [Integer]
    # @!attribute total_size
    #   <p>The total number of search results.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetDimensionValuesResponse < Struct.new(
      nil,
      :dimension_values,
      :return_size,
      :total_size,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can use the following request parameters to query for how much of your instance
    #       usage a reservation covered.</p>
    # @!attribute time_period
    #   <p>The start and end dates of the period that you want to retrieve data about reservation
    #         coverage for. You can retrieve data for a maximum of 13 months: the last 12 months and the
    #         current month. The start date is inclusive, but the end date is exclusive. For example, if
    #           <code>start</code> is <code>2017-01-01</code> and <code>end</code> is
    #           <code>2017-05-01</code>, then the cost and usage data is retrieved from
    #           <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including
    #           <code>2017-05-01</code>. </p>
    #   @return [Types::DateInterval]
    # @!attribute group_by
    #   <p>You can group the data by the following attributes:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute granularity
    #   <p>The granularity of the Amazon Web Services cost data for the reservation. Valid values
    #         are <code>MONTHLY</code> and <code>DAILY</code>.</p>
    #            <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If
    #           <code>Granularity</code> isn't set, the response object doesn't include
    #           <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p>
    #            <p>The <code>GetReservationCoverage</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filters utilization data by dimensions. You can filter by the following
    #         dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #               </li>
    #               <li>
    #                  <p>TAG</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetReservationCoverage</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension. You can
    #         nest only one level deep. If there are multiple values for a dimension, they are OR'd
    #         together.</p>
    #            <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to
    #         EC2.</p>
    #            <p>Cost category is also supported.</p>
    #   @return [Types::Expression]
    # @!attribute metrics
    #   <p>The measurement that you want your reservation coverage reported in.</p>
    #            <p>Valid values are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>. You can use
    #         multiple values in a request.</p>
    #   @return [Array<String>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value by which you want to sort the data.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageHoursPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageNormalizedUnitsPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Time</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or
    #           <code>DESCENDING</code>.</p>
    #   @return [Types::SortDefinition]
    # @!attribute max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class GetReservationCoverageRequest < Struct.new(
      nil,
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      :next_page_token,
      :sort_by,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute coverages_by_time
    #   <p>The amount of time that your reservations covered.</p>
    #   @return [Array<Types::CoverageByTime>]
    # @!attribute total
    #   <p>The total amount of instance usage that a reservation covered.</p>
    #   @return [Types::Coverage]
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetReservationCoverageResponse < Struct.new(
      nil,
      :coverages_by_time,
      :total,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID that's associated with the recommendation. </p>
    #   @return [String]
    # @!attribute service
    #   <p>The specific service that you want recommendations for.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services
    #         calculates recommendations including the management account and member accounts if the value
    #         is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are
    #         calculated for individual member accounts only.</p>
    #   @return [String]
    # @!attribute lookback_period_in_days
    #   <p>The number of previous days that you want Amazon Web Services to consider when it
    #         calculates your recommendations.</p>
    #   @return [String]
    # @!attribute term_in_years
    #   <p>The reservation term that you want recommendations for.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The reservation purchase option that you want recommendations for.</p>
    #   @return [String]
    # @!attribute service_specification
    #   <p>The hardware specifications for the service instances that you want recommendations
    #         for, such as standard or convertible Amazon EC2 instances.</p>
    #   @return [Types::ServiceSpecification]
    # @!attribute page_size
    #   <p>The number of recommendations that you want returned in a single response
    #         object.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to
    #         retrieve.</p>
    #   @return [String]
    class GetReservationPurchaseRecommendationRequest < Struct.new(
      nil,
      :account_id,
      :service,
      :filter,
      :account_scope,
      :lookback_period_in_days,
      :term_in_years,
      :payment_option,
      :service_specification,
      :page_size,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>Information about this specific recommendation call, such as the time stamp for when
    #         Cost Explorer generated this recommendation.</p>
    #   @return [Types::ReservationPurchaseRecommendationMetadata]
    # @!attribute recommendations
    #   <p>Recommendations for reservations to purchase.</p>
    #   @return [Array<Types::ReservationPurchaseRecommendation>]
    # @!attribute next_page_token
    #   <p>The pagination token for the next set of retrievable results.</p>
    #   @return [String]
    class GetReservationPurchaseRecommendationResponse < Struct.new(
      nil,
      :metadata,
      :recommendations,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>Sets the start and end dates for retrieving Reserved Instance (RI) utilization. The
    #         start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
    #   @return [Types::DateInterval]
    # @!attribute group_by
    #   <p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is included.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute granularity
    #   <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If
    #           <code>Granularity</code> isn't set, the response object doesn't include
    #           <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>. If both
    #           <code>GroupBy</code> and <code>Granularity</code> aren't set,
    #           <code>GetReservationUtilization</code> defaults to <code>DAILY</code>.</p>
    #            <p>The <code>GetReservationUtilization</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filters utilization data by dimensions. You can filter by the following
    #         dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #                  <note>
    #                     <p>If  not specified, the <code>SERVICE</code> filter defaults to Amazon Elastic
    #               Compute Cloud - Compute. Supported values for <code>SERVICE</code> are Amazon Elastic
    #               Compute Cloud - Compute, Amazon Relational Database Service, Amazon ElastiCache, Amazon
    #               Redshift, and Amazon Elasticsearch Service. The value for the <code>SERVICE</code>
    #               filter should not exceed "1".</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>SCOPE</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetReservationUtilization</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension, and
    #         nesting is supported up to only one level deep. If there are multiple values for a dimension,
    #         they are OR'd together.</p>
    #   @return [Types::Expression]
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentageInUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCostOfRIHoursUsed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalPotentialRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalAmortizedFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RICostForUnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RealizedSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnrealizedSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #   @return [Types::SortDefinition]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class GetReservationUtilizationRequest < Struct.new(
      nil,
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :sort_by,
      :next_page_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute utilizations_by_time
    #   <p>The amount of time that you used your Reserved Instances (RIs).</p>
    #   @return [Array<Types::UtilizationByTime>]
    # @!attribute total
    #   <p>The total amount of time that you used your Reserved Instances (RIs).</p>
    #   @return [Types::ReservationAggregates]
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetReservationUtilizationResponse < Struct.new(
      nil,
      :utilizations_by_time,
      :total,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute configuration
    #   <p>You can use Configuration to customize recommendations across two attributes. You can
    #         choose to view recommendations for instances within the same instance families or across
    #         different instance families. You can also choose to view your estimated savings that are
    #         associated with recommendations with consideration of existing Savings Plans or RI benefits,
    #         or neither. </p>
    #   @return [Types::RightsizingRecommendationConfiguration]
    # @!attribute service
    #   <p>The specific service that you want recommendations for. The only valid value for
    #           <code>GetRightsizingRecommendation</code> is "<code>AmazonEC2</code>".</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to
    #         retrieve.</p>
    #   @return [String]
    class GetRightsizingRecommendationRequest < Struct.new(
      nil,
      :filter,
      :configuration,
      :service,
      :page_size,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>Information regarding this specific recommendation set.</p>
    #   @return [Types::RightsizingRecommendationMetadata]
    # @!attribute summary
    #   <p>Summary of this recommendation set.</p>
    #   @return [Types::RightsizingRecommendationSummary]
    # @!attribute rightsizing_recommendations
    #   <p>Recommendations to rightsize resources.</p>
    #   @return [Array<Types::RightsizingRecommendation>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>You can use Configuration to customize recommendations across two attributes. You can
    #         choose to view recommendations for instances within the same instance families or across
    #         different instance families. You can also choose to view your estimated savings that are
    #         associated with recommendations with consideration of existing Savings Plans or RI benefits,
    #         or neither. </p>
    #   @return [Types::RightsizingRecommendationConfiguration]
    class GetRightsizingRecommendationResponse < Struct.new(
      nil,
      :metadata,
      :summary,
      :rightsizing_recommendations,
      :next_page_token,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_detail_id
    #   <p>The ID that is associated with the Savings Plan recommendation.</p>
    #   @return [String]
    class GetSavingsPlanPurchaseRecommendationDetailsRequest < Struct.new(
      nil,
      :recommendation_detail_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_detail_id
    #   <p>The ID that is associated with the Savings Plan recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_detail_data
    #   <p>Contains detailed information about a specific Savings Plan recommendation.</p>
    #   @return [Types::RecommendationDetailData]
    class GetSavingsPlanPurchaseRecommendationDetailsResponse < Struct.new(
      nil,
      :recommendation_detail_id,
      :recommendation_detail_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be
    #         within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and
    #         before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #   @return [Types::DateInterval]
    # @!attribute group_by
    #   <p>You can group the data using the attributes <code>INSTANCE_FAMILY</code>,
    #           <code>REGION</code>, or <code>SERVICE</code>.</p>
    #   @return [Array<Types::GroupDefinition>]
    # @!attribute granularity
    #   <p>The granularity of the Amazon Web Services cost data for your Savings Plans.
    #           <code>Granularity</code> can't be set if <code>GroupBy</code> is set.</p>
    #            <p>The <code>GetSavingsPlansCoverage</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans
    #         usage with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansCoverage</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension. If there
    #         are multiple values for a dimension, they are OR'd together.</p>
    #            <p>Cost category is also supported.</p>
    #   @return [Types::Expression]
    # @!attribute metrics
    #   <p>The measurement that you want your Savings Plans coverage reported in. The only valid
    #         value is <code>SpendCoveredBySavingsPlans</code>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a
    #         minimum value of <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SpendCoveredBySavingsPlan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoveragePercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceFamily</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Service</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #   @return [Types::SortDefinition]
    class GetSavingsPlansCoverageRequest < Struct.new(
      nil,
      :time_period,
      :group_by,
      :granularity,
      :filter,
      :metrics,
      :next_token,
      :max_results,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plans_coverages
    #   <p>The amount of spend that your Savings Plans covered.</p>
    #   @return [Array<Types::SavingsPlansCoverage>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetSavingsPlansCoverageResponse < Struct.new(
      nil,
      :savings_plans_coverages,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plans_type
    #   <p>The Savings Plans recommendation type that's requested.</p>
    #   @return [String]
    # @!attribute term_in_years
    #   <p>The savings plan recommendation term that's used to generate these recommendations.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option that's used to generate these recommendations.</p>
    #   @return [String]
    # @!attribute account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services calculates
    #         recommendations including the management account and member accounts if the value is set to
    #           <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for
    #         individual member accounts only.</p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #   @return [Integer]
    # @!attribute lookback_period_in_days
    #   <p>The lookback period that's used to generate the recommendation.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>You can filter your recommendations by Account ID with the <code>LINKED_ACCOUNT</code>
    #         dimension. To filter your recommendations by Account ID, specify <code>Key</code> as
    #           <code>LINKED_ACCOUNT</code> and <code>Value</code> as the comma-separated Acount ID(s) that
    #         you want to see Savings Plans purchase recommendations for.</p>
    #            <p>For GetSavingsPlansPurchaseRecommendation, the <code>Filter</code> doesn't include
    #           <code>CostCategories</code> or <code>Tags</code>. It only includes <code>Dimensions</code>.
    #         With <code>Dimensions</code>, <code>Key</code> must be <code>LINKED_ACCOUNT</code> and
    #           <code>Value</code> can be a single Account ID or multiple comma-separated Account IDs that
    #         you want to see Savings Plans Purchase Recommendations for. <code>AND</code> and
    #           <code>OR</code> operators are not supported.</p>
    #   @return [Types::Expression]
    class GetSavingsPlansPurchaseRecommendationRequest < Struct.new(
      nil,
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :account_scope,
      :next_page_token,
      :page_size,
      :lookback_period_in_days,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>Information that regards this specific recommendation set.</p>
    #   @return [Types::SavingsPlansPurchaseRecommendationMetadata]
    # @!attribute savings_plans_purchase_recommendation
    #   <p>Contains your request parameters, Savings Plan Recommendations Summary, and
    #         Details.</p>
    #   @return [Types::SavingsPlansPurchaseRecommendation]
    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetSavingsPlansPurchaseRecommendationResponse < Struct.new(
      nil,
      :metadata,
      :savings_plans_purchase_recommendation,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be
    #         within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and
    #         before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #   @return [Types::DateInterval]
    # @!attribute filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You
    #         can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilizationDetails</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    #   @return [Types::Expression]
    # @!attribute data_type
    #   <p>The data type.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a
    #         minimum value of <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontCommitment</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #   @return [Types::SortDefinition]
    class GetSavingsPlansUtilizationDetailsRequest < Struct.new(
      nil,
      :time_period,
      :filter,
      :data_type,
      :next_token,
      :max_results,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plans_utilization_details
    #   <p>Retrieves a single daily or monthly Savings Plans utilization rate and details for your
    #         account.</p>
    #   @return [Array<Types::SavingsPlansUtilizationDetail>]
    # @!attribute total
    #   <p>The total Savings Plans utilization, regardless of time period.</p>
    #   @return [Types::SavingsPlansUtilizationAggregates]
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #   @return [Types::DateInterval]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetSavingsPlansUtilizationDetailsResponse < Struct.new(
      nil,
      :savings_plans_utilization_details,
      :total,
      :time_period,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be
    #         within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and
    #         before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #   @return [Types::DateInterval]
    # @!attribute granularity
    #   <p>The granularity of the Amazon Web Services utillization data for your Savings
    #         Plans.</p>
    #            <p>The <code>GetSavingsPlansUtilization</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You
    #         can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLANS_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilization</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    #   @return [Types::Expression]
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #   @return [Types::SortDefinition]
    class GetSavingsPlansUtilizationRequest < Struct.new(
      nil,
      :time_period,
      :granularity,
      :filter,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute savings_plans_utilizations_by_time
    #   <p>The amount of cost/commitment that you used your Savings Plans. You can use it to specify
    #         date ranges.</p>
    #   @return [Array<Types::SavingsPlansUtilizationByTime>]
    # @!attribute total
    #   <p>The total amount of cost/commitment that you used your Savings Plans, regardless of date
    #         ranges.</p>
    #   @return [Types::SavingsPlansUtilizationAggregates]
    class GetSavingsPlansUtilizationResponse < Struct.new(
      nil,
      :savings_plans_utilizations_by_time,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_string
    #   <p>The value that you want to search for.</p>
    #   @return [String]
    # @!attribute time_period
    #   <p>The start and end dates for retrieving the dimension values. The start date is
    #         inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #   @return [Types::DateInterval]
    # @!attribute tag_key
    #   <p>The key of the tag that you want to return values for.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are four types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>,
    #                                   <code>Dimensions</code>, and
    #                               <code>ProductAttributes</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>ProductAttributes</code> field to define a
    #                                       filter that acts on the product attributes of supported
    #                                       services, such as Amazon Bedrock. Only
    #                                           <code>GetCostAndUsage</code>,
    #                                           <code>GetCostAndUsageWithResources</code>,
    #                                           <code>GetDimensionValues</code> (in the
    #                                           <code>COST_AND_USAGE</code> context),
    #                                           <code>GetTags</code>, and <code>GetCostCategories</code>
    #                                       support <code>ProductAttributes</code>. For the supported
    #                                       services, keys and <code>SERVICE</code> filter rules, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                                    <code>ProductAttributeValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    #   @return [Types::Expression]
    # @!attribute sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #            <p>When you use <code>SortBy</code>, <code>NextPageToken</code> and <code>SearchString</code>
    #         aren't supported.</p>
    #   @return [Array<Types::SortDefinition>]
    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetTags</code>, MaxResults has an upper quota of 1000.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    class GetTagsRequest < Struct.new(
      nil,
      :search_string,
      :time_period,
      :tag_key,
      :filter,
      :sort_by,
      :billing_view_arn,
      :max_results,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_page_token
    #   <p>The token for the next set of retrievable results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that match your request.</p>
    #   @return [Array<String>]
    # @!attribute return_size
    #   <p>The number of query results that Amazon Web Services returns at a time.</p>
    #   @return [Integer]
    # @!attribute total_size
    #   <p>The total number of query results.</p>
    #   @return [Integer]
    class GetTagsResponse < Struct.new(
      nil,
      :next_page_token,
      :tags,
      :return_size,
      :total_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_period
    #   <p>The start and end dates of the period that you want to retrieve usage forecast for. The
    #         start date is included in the period, but the end date isn't included in the period. For
    #         example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is
    #           <code>2017-05-01</code>, then the cost and usage data is retrieved from
    #           <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including
    #           <code>2017-05-01</code>. The start date must be equal to or later than the current date to
    #         avoid a validation error.</p>
    #   @return [Types::DateInterval]
    # @!attribute metric
    #   <p>Which metric Cost Explorer uses to create your forecast.</p>
    #            <p>Valid values for a <code>GetUsageForecast</code> call are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>USAGE_QUANTITY</p>
    #               </li>
    #               <li>
    #                  <p>NORMALIZED_USAGE_AMOUNT</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code>
    #         forecasts or 18 months of <code>MONTHLY</code> forecasts.</p>
    #            <p>The <code>GetUsageForecast</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The filters that you want to use to filter your forecast. The
    #           <code>GetUsageForecast</code> API supports filtering by the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::Expression]
    # @!attribute billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    #   @return [String]
    # @!attribute prediction_interval_level
    #   <p>Amazon Web Services Cost Explorer always returns the mean forecast as a single point.
    #         You can request a prediction interval around the mean by specifying a confidence level. The
    #         higher the confidence level, the more confident Cost Explorer is about the actual value
    #         falling in the prediction interval. Higher confidence levels result in wider prediction
    #         intervals.</p>
    #   @return [Integer]
    class GetUsageForecastRequest < Struct.new(
      nil,
      :time_period,
      :metric,
      :granularity,
      :filter,
      :billing_view_arn,
      :prediction_interval_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute total
    #   <p>How much you're forecasted to use over the forecast period.</p>
    #   @return [Types::MetricValue]
    # @!attribute forecast_results_by_time
    #   <p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a
    #         list of days. For <code>MONTHLY</code> forecasts, this is a list of months.</p>
    #   @return [Array<Types::ForecastResult>]
    class GetUsageForecastResponse < Struct.new(
      nil,
      :total,
      :forecast_results_by_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One level of grouped data in the results.</p>
    # @!attribute keys
    #   <p>The keys that are included in this group.</p>
    #   @return [Array<String>]
    # @!attribute metrics
    #   <p>The metrics that are included in this group.</p>
    #   @return [Hash<String, Types::MetricValue>]
    class Group < Struct.new(
      nil,
      :keys,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a group when you specify a group by criteria or in the response to a query
    #             with a specific grouping.</p>
    # @!attribute type
    #   <p>The string that represents the type of group.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The string that represents a key for a specified group.</p>
    #   @return [String]
    class GroupDefinition < Struct.new(
      nil,
      :type,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The dollar value of the anomaly. </p>
    # @!attribute max_impact
    #   <p>The maximum dollar value that's observed for an anomaly.</p>
    #   @return [Float]
    # @!attribute total_impact
    #   <p>The cumulative dollar difference between the total actual spend and total expected
    #               spend. It is calculated as <code>TotalActualSpend - TotalExpectedSpend</code>.</p>
    #   @return [Float]
    # @!attribute total_actual_spend
    #   <p>The cumulative dollar amount that was actually spent during the anomaly.</p>
    #   @return [Float]
    # @!attribute total_expected_spend
    #   <p>The cumulative dollar amount that was expected to be spent during the anomaly. It is
    #               calculated using advanced machine learning models to determine the typical spending
    #               pattern based on historical data for a customer.</p>
    #   @return [Float]
    # @!attribute total_impact_percentage
    #   <p>The cumulative percentage difference between the total actual spend and total expected
    #               spend. It is calculated as <code>(TotalImpact / TotalExpectedSpend) * 100</code>. When
    #                   <code>TotalExpectedSpend</code> is zero, this field is omitted. Expected spend can
    #               be zero in situations such as when you start to use a service for the first time.</p>
    #   @return [Float]
    class Impact < Struct.new(
      nil,
      :max_impact,
      :total_impact,
      :total_actual_spend,
      :total_expected_spend,
      :total_impact_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_impact] = 0 unless options.key?(:max_impact)
        options[:total_impact] = 0 unless options.key?(:total_impact)
        super
      end
    end

    # <p>Details about the reservations that Amazon Web Services recommends that you
    #             purchase.</p>
    # @!attribute ec2_instance_details
    #   <p>The Amazon EC2 reservations that Amazon Web Services recommends that you
    #               purchase.</p>
    #   @return [Types::EC2InstanceDetails]
    # @!attribute rds_instance_details
    #   <p>The Amazon RDS reservations that Amazon Web Services recommends that you
    #               purchase.</p>
    #   @return [Types::RDSInstanceDetails]
    # @!attribute redshift_instance_details
    #   <p>The Amazon Redshift reservations that Amazon Web Services recommends that you
    #               purchase.</p>
    #   @return [Types::RedshiftInstanceDetails]
    # @!attribute elasti_cache_instance_details
    #   <p>The ElastiCache reservations that Amazon Web Services recommends that you
    #               purchase.</p>
    #   @return [Types::ElastiCacheInstanceDetails]
    # @!attribute es_instance_details
    #   <p>The Amazon OpenSearch Service reservations that Amazon Web Services recommends that you
    #               purchase.</p>
    #   @return [Types::ESInstanceDetails]
    # @!attribute memory_db_instance_details
    #   <p>The MemoryDB reservations that Amazon Web Services recommends that you purchase.</p>
    #   @return [Types::MemoryDBInstanceDetails]
    class InstanceDetails < Struct.new(
      nil,
      :ec2_instance_details,
      :rds_instance_details,
      :redshift_instance_details,
      :elasti_cache_instance_details,
      :es_instance_details,
      :memory_db_instance_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pagination token is invalid. Try again without a pagination token.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You made too many calls in a short period of time. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_status
    #   <p>The status of the analysis.</p>
    #   @return [String]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of analyses that you want returned in a single response object.</p>
    #   @return [Integer]
    # @!attribute analysis_ids
    #   <p>The analysis IDs associated with the commitment purchase analyses.</p>
    #   @return [Array<String>]
    class ListCommitmentPurchaseAnalysesRequest < Struct.new(
      nil,
      :analysis_status,
      :next_page_token,
      :page_size,
      :analysis_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_summary_list
    #   <p>The list of analyses.</p>
    #   @return [Array<Types::AnalysisSummary>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListCommitmentPurchaseAnalysesResponse < Struct.new(
      nil,
      :analysis_summary_list,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #         The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of objects that are returned for this request.
    #       </p>
    #   @return [Integer]
    class ListCostAllocationTagBackfillHistoryRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backfill_requests
    #   <p>
    #         The list of historical cost allocation tag backfill requests.
    #       </p>
    #   @return [Array<Types::CostAllocationTagBackfillRequest>]
    # @!attribute next_token
    #   <p>
    #         The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
    #       </p>
    #   @return [String]
    class ListCostAllocationTagBackfillHistoryResponse < Struct.new(
      nil,
      :backfill_requests,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of cost allocation tag keys that are returned for this request. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of cost allocation tag keys that are returned for this request. </p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of <code>CostAllocationTag</code> object that are returned for this request. The
    #           <code>AWSGenerated</code> type tags are tags that Amazon Web Services defines and applies to
    #         support Amazon Web Services resources for cost allocation purposes. The
    #           <code>UserDefined</code> type tags are tags that you define, create, and apply to resources.
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that are returned for this request. By default, the request
    #         returns 100 results. </p>
    #   @return [Integer]
    class ListCostAllocationTagsRequest < Struct.new(
      nil,
      :status,
      :tag_keys,
      :type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_allocation_tags
    #   <p>A list of cost allocation tags that includes the detailed metadata for each one. </p>
    #   @return [Array<Types::CostAllocationTag>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    class ListCostAllocationTagsResponse < Struct.new(
      nil,
      :cost_allocation_tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute effective_on
    #   <p>The date when the cost category was effective. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of entries a paginated response contains. </p>
    #   @return [Integer]
    # @!attribute supported_resource_types
    #   <p>
    #         Filter cost category definitions that are supported by given resource types based on the latest version. If the filter is present, the result only includes Cost Categories that supports input resource type. If the filter isn't provided, no filtering is applied. The valid values are <code>billing:rispgroupsharing</code>, <code>billing:billingview</code>, and <code>billing:creditsharing</code>.
    #       </p>
    #   @return [Array<String>]
    class ListCostCategoryDefinitionsRequest < Struct.new(
      nil,
      :effective_on,
      :next_token,
      :max_results,
      :supported_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_references
    #   <p>A reference to a cost category that contains enough information to identify the Cost
    #         Category. </p>
    #   @return [Array<Types::CostCategoryReference>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #   @return [String]
    class ListCostCategoryDefinitionsResponse < Struct.new(
      nil,
      :cost_category_references,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #         The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The number of entries a paginated response contains.
    #       </p>
    #   @return [Integer]
    class ListCostCategoryResourceAssociationsRequest < Struct.new(
      nil,
      :cost_category_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_resource_associations
    #   <p>
    #         A reference to a cost category association that contains information on an associated resource.
    #       </p>
    #   @return [Array<Types::CostCategoryResourceAssociation>]
    # @!attribute next_token
    #   <p>
    #         The token to retrieve the next set of results.  Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
    #       </p>
    #   @return [String]
    class ListCostCategoryResourceAssociationsResponse < Struct.new(
      nil,
      :cost_category_resource_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generation_status
    #   <p>The status of the recommendation generation.</p>
    #   @return [String]
    # @!attribute recommendation_ids
    #   <p>The IDs for each specific recommendation.</p>
    #   @return [Array<String>]
    # @!attribute page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListSavingsPlansPurchaseRecommendationGenerationRequest < Struct.new(
      nil,
      :generation_status,
      :recommendation_ids,
      :page_size,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generation_summary_list
    #   <p>The list of historical recommendation generations.</p>
    #   @return [Array<Types::GenerationSummary>]
    # @!attribute next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListSavingsPlansPurchaseRecommendationGenerationResponse < Struct.new(
      nil,
      :generation_summary_list,
      :next_page_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p>A list of tag key value pairs that are associated with the resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the MemoryDB reservations that Amazon Web Services recommends that you
    #             purchase.</p>
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type of the recommended reservation.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current generation instance.</p>
    #   @return [Boolean]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #   @return [Boolean]
    class MemoryDBInstanceDetails < Struct.new(
      nil,
      :family,
      :node_type,
      :region,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_generation] = false unless options.key?(:current_generation)
        options[:size_flex_eligible] = false unless options.key?(:size_flex_eligible)
        super
      end
    end

    # <p>The aggregated value for a metric.</p>
    # @!attribute amount
    #   <p>The actual number that represents the metric.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit that the metric is given in.</p>
    #   @return [String]
    class MetricValue < Struct.new(
      nil,
      :amount,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for the modification recommendation.</p>
    # @!attribute target_instances
    #   <p>Determines whether this instance type is the Amazon Web Services default
    #               recommendation.</p>
    #   @return [Array<Types::TargetInstance>]
    class ModifyRecommendationDetail < Struct.new(
      nil,
      :target_instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The network field that contains a list of network metrics that are associated with the
    #             current instance. </p>
    # @!attribute network_in_bytes_per_second
    #   <p>The network inbound throughput utilization measured in Bytes per second (Bps). </p>
    #   @return [String]
    # @!attribute network_out_bytes_per_second
    #   <p>The network outbound throughput utilization measured in Bytes per second (Bps).
    #           </p>
    #   @return [String]
    # @!attribute network_packets_in_per_second
    #   <p>The network inbound packets that are measured in packets per second. </p>
    #   @return [String]
    # @!attribute network_packets_out_per_second
    #   <p>The network outbound packets that are measured in packets per second. </p>
    #   @return [String]
    class NetworkResourceUtilization < Struct.new(
      nil,
      :network_in_bytes_per_second,
      :network_out_bytes_per_second,
      :network_packets_in_per_second,
      :network_packets_out_per_second,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The product attribute values that you can use to filter the costs of supported services.
    #             Currently, Amazon Bedrock is the only supported service.</p>
    #          <p>The following product attribute keys are available for each supported service:</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Bedrock</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>provider</code> - The model provider, such as
    #                                 <code>Anthropic</code>, <code>Cohere</code>, or
    #                             <code>OpenAI</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>model</code> - The model, such as <code>Claude Sonnet 5</code> or
    #                                 <code>Claude Haiku 4.5</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>inferenceType</code> - The type of inference usage, such as
    #                                 <code>Input tokens</code> or <code>Output tokens</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>feature</code> - The feature that was used, such as
    #                                 <code>On-demand Inference</code> or <code>Reranker</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>The following operations support product attributes: <code>GetCostAndUsage</code>,
    #                 <code>GetCostAndUsageWithResources</code>, <code>GetDimensionValues</code> (in the
    #                 <code>COST_AND_USAGE</code> context), <code>GetTags</code>, and
    #                 <code>GetCostCategories</code>.</p>
    #          <p>Product attribute data is available for time periods that start on or after September 1,
    #             2026. Requests for earlier time periods that use product attributes fail with a
    #                 <code>DataUnavailableException</code>.</p>
    #          <p>The <code>SERVICE</code> filter rules for product attributes depend on the
    #             operation:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>GetCostAndUsage</code> and <code>GetCostAndUsageWithResources</code> -
    #                     Optional.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>GetDimensionValues</code> - Required when the filter includes
    #                         <code>ProductAttributes</code>, for any <code>Dimension</code>. Otherwise,
    #                     optional.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>GetTags</code> and <code>GetCostCategories</code> - Required when the
    #                     filter includes <code>ProductAttributes</code>.</p>
    #             </li>
    #          </ul>
    #          <p>A <code>SERVICE</code> filter must contain only supported services, or the request
    #             fails with a <code>ValidationException</code>. Service names are matched exactly. To list
    #             them, use <code>GetDimensionValues</code> with <code>Dimension</code> set to
    #                 <code>SERVICE</code> and the same <code>TimePeriod</code>, for example with
    #                 <code>SearchString</code> set to <code>Bedrock</code>.</p>
    #          <p>The costs of a supported service can appear under multiple service names. When the
    #                 <code>SERVICE</code> filter is optional, omit it so that your results include all of
    #             those costs.</p>
    #          <p>For example, the following <code>Expression</code> filters for the costs of one
    #             model: <code>{ "ProductAttributes": { "Key": "model", "Values": [
    #                 "Claude Sonnet 5" ], "MatchOptions": [ "EQUALS" ] } }</code>
    #          </p>
    # @!attribute key
    #   <p>The name of the product attribute, such as <code>model</code>. The keys that are
    #               available depend on the service. For the keys of each supported service, see
    #                   <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ProductAttributeValues.html">
    #                  <code>ProductAttributeValues</code>
    #               </a>.</p>
    #            <p>Keys are case-sensitive. A key that doesn't exist doesn't return an error:
    #                   <code>EQUALS</code> matches no costs, and <code>ABSENT</code> matches all costs of
    #               supported services.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The specific values of the product attribute, such as <code>Claude Sonnet 5</code> for
    #               the <code>model</code> key. Values are matched exactly, including case. To list the values
    #               of a key, use <code>GetDimensionValues</code> with <code>Dimension</code> set to
    #                   <code>PRODUCT_ATTRIBUTE</code> and <code>DimensionKey</code> set to the key.</p>
    #            <p>To match costs that have no value for the key, set <code>MatchOptions</code> to
    #                   <code>ABSENT</code> and omit <code>Values</code>. Otherwise, <code>Values</code> is
    #               required.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQUALS</code> - Matches the values that you specify.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABSENT</code> - Matches costs that have no value for the key. Omit
    #                           <code>Values</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CASE_SENSITIVE</code> - Use only with <code>EQUALS</code>. Values are
    #                       always matched case-sensitively.</p>
    #               </li>
    #            </ul>
    #            <p>Default values are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #   @return [Array<String>]
    class ProductAttributeValues < Struct.new(
      nil,
      :key,
      :values,
      :match_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_id
    #   <p>A cost anomaly ID. </p>
    #   @return [String]
    # @!attribute feedback
    #   <p>Describes whether the cost anomaly was a planned activity or you considered it an anomaly.
    #       </p>
    #   @return [String]
    class ProvideAnomalyFeedbackRequest < Struct.new(
      nil,
      :anomaly_id,
      :feedback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_id
    #   <p>The ID of the modified cost anomaly. </p>
    #   @return [String]
    class ProvideAnomalyFeedbackResponse < Struct.new(
      nil,
      :anomaly_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Amazon RDS reservations that Amazon Web Services recommends that you
    #             purchase.</p>
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #   @return [String]
    # @!attribute database_engine
    #   <p>The database engine that the recommended reservation supports.</p>
    #   @return [String]
    # @!attribute database_edition
    #   <p>The database edition that the recommended reservation supports.</p>
    #   @return [String]
    # @!attribute deployment_option
    #   <p>Determines whether the recommendation is for a reservation in a single Availability
    #               Zone or a reservation with a backup in a second Availability Zone.</p>
    #   @return [String]
    # @!attribute license_model
    #   <p>The license model that the recommended reservation supports.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance. </p>
    #   @return [Boolean]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #   @return [Boolean]
    # @!attribute deployment_model
    #   <p>Determines whether the recommendation is for a reservation for RDS Custom.</p>
    #   @return [String]
    class RDSInstanceDetails < Struct.new(
      nil,
      :family,
      :instance_type,
      :region,
      :database_engine,
      :database_edition,
      :deployment_option,
      :license_model,
      :current_generation,
      :size_flex_eligible,
      :deployment_model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_generation] = false unless options.key?(:current_generation)
        options[:size_flex_eligible] = false unless options.key?(:size_flex_eligible)
        super
      end
    end

    # <p>The details and metrics for the given recommendation.</p>
    # @!attribute account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services
    #               calculates recommendations including the management account and member accounts if the
    #               value is set to PAYER. If the value is LINKED, recommendations are calculated for
    #               individual member accounts only.</p>
    #   @return [String]
    # @!attribute lookback_period_in_days
    #   <p>How many days of previous usage that Amazon Web Services considers when making this
    #               recommendation.</p>
    #   @return [String]
    # @!attribute savings_plans_type
    #   <p>The requested Savings Plan recommendation type.</p>
    #   @return [String]
    # @!attribute term_in_years
    #   <p>The term of the commitment in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the commitment (for example, All Upfront or No Upfront).</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AccountID that the recommendation is generated for.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to generate the recommendation and
    #               present potential savings.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the recommended Savings Plan.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The region the recommendation is generated for.</p>
    #   @return [String]
    # @!attribute offering_id
    #   <p>The unique ID that's used to distinguish Savings Plans from one another.</p>
    #   @return [String]
    # @!attribute generation_timestamp
    #   <p>The period of time that you want the usage and costs for.</p>
    #   @return [String]
    # @!attribute latest_usage_timestamp
    #   <p>The period of time that you want the usage and costs for.</p>
    #   @return [String]
    # @!attribute current_average_hourly_on_demand_spend
    #   <p>The average value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #   @return [String]
    # @!attribute current_maximum_hourly_on_demand_spend
    #   <p>The highest value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #   @return [String]
    # @!attribute current_minimum_hourly_on_demand_spend
    #   <p>The lowest value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #   @return [String]
    # @!attribute estimated_average_utilization
    #   <p>The estimated utilization of the recommended Savings Plan.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings_amount
    #   <p>The estimated monthly savings amount based on the recommended Savings Plan.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost
    #   <p>The remaining On-Demand cost estimated to not be covered by the recommended Savings
    #               Plan, over the length of the lookback period.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost_with_current_commitment
    #   <p>The estimated On-Demand costs you expect with no additional commitment, based on your
    #               usage of the selected time period and the Savings Plan you own.</p>
    #   @return [String]
    # @!attribute estimated_roi
    #   <p>The estimated return on investment that's based on the recommended Savings Plan that
    #               you purchased. This is calculated as estimatedSavingsAmount/estimatedSPCost*100.</p>
    #   @return [String]
    # @!attribute estimated_sp_cost
    #   <p>The cost of the recommended Savings Plan over the length of the lookback
    #               period.</p>
    #   @return [String]
    # @!attribute estimated_savings_amount
    #   <p>The estimated savings amount that's based on the recommended Savings Plan over the
    #               length of the lookback period.</p>
    #   @return [String]
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings percentage relative to the total cost of applicable On-Demand
    #               usage over the lookback period.</p>
    #   @return [String]
    # @!attribute existing_hourly_commitment
    #   <p>The existing hourly commitment for the Savings Plan type.</p>
    #   @return [String]
    # @!attribute hourly_commitment_to_purchase
    #   <p>The recommended hourly commitment level for the Savings Plan type and the
    #               configuration that's based on the usage during the lookback period.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>The upfront cost of the recommended Savings Plan, based on the selected payment
    #               option.</p>
    #   @return [String]
    # @!attribute current_average_coverage
    #   <p>The average value of hourly coverage over the lookback period.</p>
    #   @return [String]
    # @!attribute estimated_average_coverage
    #   <p>The estimated coverage of the recommended Savings Plan.</p>
    #   @return [String]
    # @!attribute metrics_over_lookback_period
    #   <p>The related hourly cost, coverage, and utilization metrics over the lookback
    #               period.</p>
    #   @return [Array<Types::RecommendationDetailHourlyMetrics>]
    class RecommendationDetailData < Struct.new(
      nil,
      :account_scope,
      :lookback_period_in_days,
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :account_id,
      :currency_code,
      :instance_family,
      :region,
      :offering_id,
      :generation_timestamp,
      :latest_usage_timestamp,
      :current_average_hourly_on_demand_spend,
      :current_maximum_hourly_on_demand_spend,
      :current_minimum_hourly_on_demand_spend,
      :estimated_average_utilization,
      :estimated_monthly_savings_amount,
      :estimated_on_demand_cost,
      :estimated_on_demand_cost_with_current_commitment,
      :estimated_roi,
      :estimated_sp_cost,
      :estimated_savings_amount,
      :estimated_savings_percentage,
      :existing_hourly_commitment,
      :hourly_commitment_to_purchase,
      :upfront_cost,
      :current_average_coverage,
      :estimated_average_coverage,
      :metrics_over_lookback_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the hourly metrics for the given recommendation over the lookback period.
    #         </p>
    # @!attribute start_time
    #   <p>The period of time that you want the usage and costs for.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost
    #   <p>The remaining On-Demand cost estimated to not be covered by the recommended Savings
    #               Plan, over the length of the lookback period.</p>
    #   @return [String]
    # @!attribute current_coverage
    #   <p>The current amount of Savings Plans eligible usage that the Savings Plan
    #               covered.</p>
    #   @return [String]
    # @!attribute estimated_coverage
    #   <p>The estimated coverage amount based on the recommended Savings Plan.</p>
    #   @return [String]
    # @!attribute estimated_new_commitment_utilization
    #   <p>The estimated utilization for the recommended Savings Plan.</p>
    #   @return [String]
    class RecommendationDetailHourlyMetrics < Struct.new(
      nil,
      :start_time,
      :estimated_on_demand_cost,
      :current_coverage,
      :estimated_coverage,
      :estimated_new_commitment_utilization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Amazon Redshift reservations that Amazon Web Services recommends that
    #             you purchase.</p>
    # @!attribute family
    #   <p>The instance family of the recommended reservation.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The type of node that Amazon Web Services recommends.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region of the recommended reservation.</p>
    #   @return [String]
    # @!attribute current_generation
    #   <p>Determines whether the recommendation is for a current-generation instance.</p>
    #   @return [Boolean]
    # @!attribute size_flex_eligible
    #   <p>Determines whether the recommended reservation is size flexible.</p>
    #   @return [Boolean]
    class RedshiftInstanceDetails < Struct.new(
      nil,
      :family,
      :node_type,
      :region,
      :current_generation,
      :size_flex_eligible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:current_generation] = false unless options.key?(:current_generation)
        options[:size_flex_eligible] = false unless options.key?(:size_flex_eligible)
        super
      end
    end

    # <p>Your request parameters changed between pages. Try again with the old parameters or
    #             without a pagination token.</p>
    # @!attribute message
    #   @return [String]
    class RequestChangedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The aggregated numbers for your reservation usage.</p>
    # @!attribute utilization_percentage
    #   <p>The percentage of reservation time that you used.</p>
    #   @return [String]
    # @!attribute utilization_percentage_in_units
    #   <p>The percentage of Amazon EC2 reservation time that you used. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #   @return [String]
    # @!attribute purchased_hours
    #   <p>How many reservation hours that you purchased.</p>
    #   @return [String]
    # @!attribute purchased_units
    #   <p>The number of Amazon EC2 reservation hours that you purchased. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #   @return [String]
    # @!attribute total_actual_hours
    #   <p>The total number of reservation hours that you used.</p>
    #   @return [String]
    # @!attribute total_actual_units
    #   <p>The total number of Amazon EC2 reservation hours that you used. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #   @return [String]
    # @!attribute unused_hours
    #   <p>The number of reservation hours that you didn't use.</p>
    #   @return [String]
    # @!attribute unused_units
    #   <p>The number of Amazon EC2 reservation hours that you didn't use. It's converted to
    #               normalized units. Normalized units are available only for Amazon EC2 usage after
    #               November 11, 2017.</p>
    #   @return [String]
    # @!attribute on_demand_cost_of_ri_hours_used
    #   <p>How much your reservation costs if charged On-Demand rates.</p>
    #   @return [String]
    # @!attribute net_ri_savings
    #   <p>How much you saved due to purchasing and utilizing reservation. Amazon Web Services
    #               calculates this by subtracting <code>TotalAmortizedFee</code> from
    #                   <code>OnDemandCostOfRIHoursUsed</code>.</p>
    #   @return [String]
    # @!attribute total_potential_ri_savings
    #   <p>How much you might save if you use your entire reservation.</p>
    #   @return [String]
    # @!attribute amortized_upfront_fee
    #   <p>The upfront cost of your reservation. It's amortized over the reservation
    #               period.</p>
    #   @return [String]
    # @!attribute amortized_recurring_fee
    #   <p>The monthly cost of your reservation. It's amortized over the reservation
    #               period.</p>
    #   @return [String]
    # @!attribute total_amortized_fee
    #   <p>The total cost of your reservation. It's amortized over the reservation period.</p>
    #   @return [String]
    # @!attribute ri_cost_for_unused_hours
    #   <p>The cost of unused hours for your reservation.</p>
    #   @return [String]
    # @!attribute realized_savings
    #   <p>The realized savings because of purchasing and using a reservation.</p>
    #   @return [String]
    # @!attribute unrealized_savings
    #   <p>The unrealized savings because of purchasing and using a reservation.</p>
    #   @return [String]
    class ReservationAggregates < Struct.new(
      nil,
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
      :unrealized_savings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A group of reservations that share a set of attributes.</p>
    # @!attribute attributes
    #   <p>The attributes for this group of reservations.</p>
    #   @return [Hash<String, String>]
    # @!attribute coverage
    #   <p>How much instance usage this group of reservations covered.</p>
    #   @return [Types::Coverage]
    class ReservationCoverageGroup < Struct.new(
      nil,
      :attributes,
      :coverage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specific reservation that Amazon Web Services recommends for purchase.</p>
    # @!attribute account_scope
    #   <p>The account scope that Amazon Web Services recommends that you purchase this instance
    #               for. For example, you can purchase this reservation for an entire organization in
    #                   Amazon Web Services Organizations.</p>
    #   @return [String]
    # @!attribute lookback_period_in_days
    #   <p>How many days of previous usage that Amazon Web Services considers when making this
    #               recommendation.</p>
    #   @return [String]
    # @!attribute term_in_years
    #   <p>The term of the reservation that you want recommendations for, in years.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option for the reservation (for example, <code>AllUpfront</code> or
    #                   <code>NoUpfront</code>).</p>
    #   @return [String]
    # @!attribute service_specification
    #   <p>Hardware specifications for the service that you want recommendations for.</p>
    #   @return [Types::ServiceSpecification]
    # @!attribute recommendation_details
    #   <p>Details about the recommended purchases.</p>
    #   @return [Array<Types::ReservationPurchaseRecommendationDetail>]
    # @!attribute recommendation_summary
    #   <p>A summary about the recommended purchase.</p>
    #   @return [Types::ReservationPurchaseRecommendationSummary]
    class ReservationPurchaseRecommendation < Struct.new(
      nil,
      :account_scope,
      :lookback_period_in_days,
      :term_in_years,
      :payment_option,
      :service_specification,
      :recommendation_details,
      :recommendation_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about your recommended reservation purchase.</p>
    # @!attribute account_id
    #   <p>The account that this Reserved Instance (RI) recommendation is for.</p>
    #   @return [String]
    # @!attribute instance_details
    #   <p>Details about the reservations that Amazon Web Services recommends that you
    #               purchase.</p>
    #   @return [Types::InstanceDetails]
    # @!attribute recommended_number_of_instances_to_purchase
    #   <p>The number of instances that Amazon Web Services recommends that you purchase.</p>
    #   @return [String]
    # @!attribute recommended_normalized_units_to_purchase
    #   <p>The number of normalized units that Amazon Web Services recommends that you
    #               purchase.</p>
    #   @return [String]
    # @!attribute minimum_number_of_instances_used_per_hour
    #   <p>The minimum number of instances that you used in an hour during the historical period.
    #                   Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #   @return [String]
    # @!attribute minimum_normalized_units_used_per_hour
    #   <p>The minimum number of normalized units that you used in an hour during the historical
    #               period. Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #   @return [String]
    # @!attribute maximum_number_of_instances_used_per_hour
    #   <p>The maximum number of instances that you used in an hour during the historical period.
    #                   Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #   @return [String]
    # @!attribute maximum_normalized_units_used_per_hour
    #   <p>The maximum number of normalized units that you used in an hour during the historical
    #               period. Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #   @return [String]
    # @!attribute average_number_of_instances_used_per_hour
    #   <p>The average number of instances that you used in an hour during the historical period.
    #                   Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #   @return [String]
    # @!attribute average_normalized_units_used_per_hour
    #   <p>The average number of normalized units that you used in an hour during the historical
    #               period. Amazon Web Services uses this to calculate your recommended reservation
    #               purchases.</p>
    #   @return [String]
    # @!attribute average_utilization
    #   <p>The average utilization of your instances. Amazon Web Services uses this to calculate
    #               your recommended reservation purchases.</p>
    #   @return [String]
    # @!attribute estimated_break_even_in_months
    #   <p>How long Amazon Web Services estimates that it takes for this instance to start saving
    #               you money, in months.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings_amount
    #   <p>How much Amazon Web Services estimates that this specific recommendation might save you
    #               in a month.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings_percentage
    #   <p>How much Amazon Web Services estimates that this specific recommendation might save you
    #               in a month, as a percentage of your overall costs.</p>
    #   @return [String]
    # @!attribute estimated_monthly_on_demand_cost
    #   <p>How much Amazon Web Services estimates that you spend on On-Demand Instances in a
    #               month.</p>
    #   @return [String]
    # @!attribute estimated_reservation_cost_for_lookback_period
    #   <p>How much Amazon Web Services estimates that you might spend for all usage during the
    #               specified historical period if you had a reservation.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>How much purchasing this instance costs you upfront.</p>
    #   @return [String]
    # @!attribute recurring_standard_monthly_cost
    #   <p>How much purchasing this instance costs you on a monthly basis.</p>
    #   @return [String]
    # @!attribute reserved_capacity_details
    #   <p>Details about the reservations that Amazon Web Services recommends that you
    #
    #               purchase.</p>
    #   @return [Types::ReservedCapacityDetails]
    # @!attribute recommended_number_of_capacity_units_to_purchase
    #   <p>The number of reserved capacity units that Amazon Web Services recommends that you
    #
    #               purchase.</p>
    #   @return [String]
    # @!attribute minimum_number_of_capacity_units_used_per_hour
    #   <p>The minimum number of provisioned capacity units that you used in an hour during the
    #
    #               historical period. Amazon Web Services uses this to calculate your recommended
    #
    #               reservation purchases.</p>
    #   @return [String]
    # @!attribute maximum_number_of_capacity_units_used_per_hour
    #   <p>The maximum number of provisioned capacity units that you used in an hour during the
    #
    #               historical period. Amazon Web Services uses this to calculate your recommended
    #
    #               reservation purchases.</p>
    #   @return [String]
    # @!attribute average_number_of_capacity_units_used_per_hour
    #   <p>The average number of provisioned capacity units that you used in an hour during the
    #
    #               historical period. Amazon Web Services uses this to calculate your recommended
    #
    #               reservation purchases.</p>
    #   @return [String]
    class ReservationPurchaseRecommendationDetail < Struct.new(
      nil,
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
      :recurring_standard_monthly_cost,
      :reserved_capacity_details,
      :recommended_number_of_capacity_units_to_purchase,
      :minimum_number_of_capacity_units_used_per_hour,
      :maximum_number_of_capacity_units_used_per_hour,
      :average_number_of_capacity_units_used_per_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a recommendation, such as the timestamp for when Amazon Web Services
    #             made a specific recommendation.</p>
    # @!attribute recommendation_id
    #   <p>The ID for the recommendation.</p>
    #   @return [String]
    # @!attribute generation_timestamp
    #   <p>The timestamp for when Amazon Web Services made the recommendation.</p>
    #   @return [String]
    # @!attribute additional_metadata
    #   <p>Additional metadata that might be applicable to the recommendation.</p>
    #   @return [String]
    class ReservationPurchaseRecommendationMetadata < Struct.new(
      nil,
      :recommendation_id,
      :generation_timestamp,
      :additional_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary about this recommendation, such as the currency code, the amount that
    #                 Amazon Web Services estimates that you could save, and the total amount of
    #             reservation to purchase.</p>
    # @!attribute total_estimated_monthly_savings_amount
    #   <p>The total amount that Amazon Web Services estimates that this recommendation could save
    #               you in a month.</p>
    #   @return [String]
    # @!attribute total_estimated_monthly_savings_percentage
    #   <p>The total amount that Amazon Web Services estimates that this recommendation could save
    #               you in a month, as a percentage of your costs.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code used for this recommendation.</p>
    #   @return [String]
    class ReservationPurchaseRecommendationSummary < Struct.new(
      nil,
      :total_estimated_monthly_savings_amount,
      :total_estimated_monthly_savings_percentage,
      :currency_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A group of reservations that share a set of attributes.</p>
    # @!attribute key
    #   <p>The key for a specific reservation attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a specific reservation attribute.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attributes for this group of reservations.</p>
    #   @return [Hash<String, String>]
    # @!attribute utilization
    #   <p>How much you used this group of reservations.</p>
    #   @return [Types::ReservationAggregates]
    class ReservationUtilizationGroup < Struct.new(
      nil,
      :key,
      :value,
      :attributes,
      :utilization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the reservations that Amazon Web Services recommends that you
    #
    #             purchase.</p>
    # @!attribute dynamo_db_capacity_details
    #   <p>The DynamoDB reservations that Amazon Web Services recommends that you purchase.</p>
    #   @return [Types::DynamoDBCapacityDetails]
    class ReservedCapacityDetails < Struct.new(
      nil,
      :dynamo_db_capacity_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for the resource.</p>
    # @!attribute ec2_resource_details
    #   <p>Details for the Amazon EC2 resource.</p>
    #   @return [Types::EC2ResourceDetails]
    class ResourceDetails < Struct.new(
      nil,
      :ec2_resource_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified ARN in the request doesn't exist. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag structure that contains a tag key and value. </p>
    #          <note>
    #             <p>Tagging is supported only for the following Cost Explorer resource types:
    #                     <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html">
    #                   <code>AnomalyMonitor</code>
    #                </a>, <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html">
    #                   <code>AnomalySubscription</code>
    #                </a>, <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html">
    #                   <code>CostCategory</code>
    #                </a>.</p>
    #          </note>
    # @!attribute key
    #   <p>The key that's associated with the tag. </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that's associated with the tag. </p>
    #   @return [String]
    class ResourceTag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource utilization of current resource. </p>
    # @!attribute ec2_resource_utilization
    #   <p>The utilization of current Amazon EC2 instance. </p>
    #   @return [Types::EC2ResourceUtilization]
    class ResourceUtilization < Struct.new(
      nil,
      :ec2_resource_utilization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result that's associated with a time period.</p>
    # @!attribute time_period
    #   <p>The time period that the result covers.</p>
    #   @return [Types::DateInterval]
    # @!attribute total
    #   <p>The total amount of cost or usage accrued during the time period.</p>
    #   @return [Hash<String, Types::MetricValue>]
    # @!attribute groups
    #   <p>The groups that this time period includes.</p>
    #   @return [Array<Types::Group>]
    # @!attribute estimated
    #   <p>Determines whether the result is estimated.</p>
    #   @return [Boolean]
    class ResultByTime < Struct.new(
      nil,
      :time_period,
      :total,
      :groups,
      :estimated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:estimated] = false unless options.key?(:estimated)
        super
      end
    end

    # <p>Recommendations to rightsize resources.</p>
    # @!attribute account_id
    #   <p>The account that this recommendation is for.</p>
    #   @return [String]
    # @!attribute current_instance
    #   <p>Context
    #               regarding the current instance.</p>
    #   @return [Types::CurrentInstance]
    # @!attribute rightsizing_type
    #   <p>A recommendation to either terminate or modify the resource.</p>
    #   @return [String]
    # @!attribute modify_recommendation_detail
    #   <p>The details for the modification recommendations. </p>
    #   @return [Types::ModifyRecommendationDetail]
    # @!attribute terminate_recommendation_detail
    #   <p>The details for termination recommendations.</p>
    #   @return [Types::TerminateRecommendationDetail]
    # @!attribute finding_reason_codes
    #   <p>The list of possible reasons why the recommendation is generated, such as under- or
    #               over-utilization of specific metrics (for example, CPU, Memory, Network). </p>
    #   @return [Array<String>]
    class RightsizingRecommendation < Struct.new(
      nil,
      :account_id,
      :current_instance,
      :rightsizing_type,
      :modify_recommendation_detail,
      :terminate_recommendation_detail,
      :finding_reason_codes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can use <code>RightsizingRecommendationConfiguration</code> to customize
    #             recommendations across two attributes. You can choose to view recommendations for
    #             instances within the same instance families or across different instance families. You
    #             can also choose to view your estimated savings that are associated with recommendations
    #             with consideration of existing Savings Plans or Reserved Instance (RI) benefits, or
    #             neither. </p>
    # @!attribute recommendation_target
    #   <p>The option to see recommendations within the same instance family or recommendations
    #               for instances across other families. The default value is
    #                   <code>SAME_INSTANCE_FAMILY</code>. </p>
    #   @return [String]
    # @!attribute benefits_considered
    #   <p>The option to consider RI or Savings Plans discount benefits in your savings
    #               calculation. The default value is <code>TRUE</code>. </p>
    #   @return [Boolean]
    class RightsizingRecommendationConfiguration < Struct.new(
      nil,
      :recommendation_target,
      :benefits_considered,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:benefits_considered] = false unless options.key?(:benefits_considered)
        super
      end
    end

    # <p>Metadata for a recommendation set.</p>
    # @!attribute recommendation_id
    #   <p>The ID for the recommendation.</p>
    #   @return [String]
    # @!attribute generation_timestamp
    #   <p>The timestamp for when Amazon Web Services made the recommendation.</p>
    #   @return [String]
    # @!attribute lookback_period_in_days
    #   <p>The number of days of previous usage that Amazon Web Services considers when making the
    #               recommendation.</p>
    #   @return [String]
    # @!attribute additional_metadata
    #   <p>Additional metadata that might be applicable to the recommendation.</p>
    #   @return [String]
    class RightsizingRecommendationMetadata < Struct.new(
      nil,
      :recommendation_id,
      :generation_timestamp,
      :lookback_period_in_days,
      :additional_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of rightsizing recommendations </p>
    # @!attribute total_recommendation_count
    #   <p>The total number of instance recommendations.</p>
    #   @return [String]
    # @!attribute estimated_total_monthly_savings_amount
    #   <p>The estimated total savings resulting from modifications, on a monthly basis.</p>
    #   @return [String]
    # @!attribute savings_currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the savings.</p>
    #   @return [String]
    # @!attribute savings_percentage
    #   <p> The savings percentage based on the recommended modifications. It's relative to the
    #               total On-Demand costs that are associated with these instances.</p>
    #   @return [String]
    class RightsizingRecommendationSummary < Struct.new(
      nil,
      :total_recommendation_count,
      :estimated_total_monthly_savings_amount,
      :savings_currency_code,
      :savings_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The combination of Amazon Web Services service, linked account, linked account name,
    #             Region, and usage type where a cost anomaly is observed, along with the dollar and
    #             percentage amount of the anomaly impact. The linked account name will only be available
    #             when the account name can be identified.</p>
    # @!attribute service
    #   <p>The Amazon Web Services service name that's associated with the cost anomaly. </p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region that's associated with the cost anomaly. </p>
    #   @return [String]
    # @!attribute linked_account
    #   <p>The member account value that's associated with the cost anomaly. </p>
    #   @return [String]
    # @!attribute linked_account_name
    #   <p>The member account name value that's associated with the cost anomaly.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The <code>UsageType</code> value that's associated with the cost anomaly. </p>
    #   @return [String]
    # @!attribute impact
    #   <p>The dollar impact for the root cause.</p>
    #   @return [Types::RootCauseImpact]
    class RootCause < Struct.new(
      nil,
      :service,
      :region,
      :linked_account,
      :linked_account_name,
      :usage_type,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The dollar value of the root cause.</p>
    # @!attribute contribution
    #   <p>The dollar amount that this root cause contributed to the anomaly's
    #               TotalImpact.</p>
    #   @return [Float]
    class RootCauseImpact < Struct.new(
      nil,
      :contribution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:contribution] = 0 unless options.key?(:contribution)
        super
      end
    end

    # <p>The Savings Plans commitment details.</p>
    # @!attribute payment_option
    #   <p>The payment option for the Savings Plans commitment.</p>
    #   @return [String]
    # @!attribute savings_plans_type
    #   <p>The Savings Plans type.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region associated with the Savings Plans commitment.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>The instance family of the Savings Plans commitment.</p>
    #   @return [String]
    # @!attribute term_in_years
    #   <p>The term that you want the Savings Plans commitment for.</p>
    #   @return [String]
    # @!attribute savings_plans_commitment
    #   <p>The Savings Plans commitment.</p>
    #   @return [Float]
    # @!attribute offering_id
    #   <p>The unique ID that's used to distinguish Savings Plans commitments from one
    #               another.</p>
    #   @return [String]
    class SavingsPlans < Struct.new(
      nil,
      :payment_option,
      :savings_plans_type,
      :region,
      :instance_family,
      :term_in_years,
      :savings_plans_commitment,
      :offering_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amortized amount of Savings Plans purchased in a specific account during a
    #             specific time interval.</p>
    # @!attribute amortized_recurring_commitment
    #   <p>The amortized amount of your Savings Plans commitment that was purchased with either a
    #                   <code>Partial</code> or a <code>NoUpfront</code>.</p>
    #   @return [String]
    # @!attribute amortized_upfront_commitment
    #   <p>The amortized amount of your Savings Plans commitment that was purchased with an
    #                   <code>Upfront</code> or <code>PartialUpfront</code> Savings Plans.</p>
    #   @return [String]
    # @!attribute total_amortized_commitment
    #   <p>The total amortized amount of your Savings Plans commitment, regardless of your
    #               Savings Plans purchase method. </p>
    #   @return [String]
    class SavingsPlansAmortizedCommitment < Struct.new(
      nil,
      :amortized_recurring_commitment,
      :amortized_upfront_commitment,
      :total_amortized_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of Savings Plans eligible usage that's covered by Savings Plans. All
    #             calculations consider the On-Demand equivalent of your Savings Plans usage.</p>
    # @!attribute attributes
    #   <p>The attribute that applies to a specific <code>Dimension</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute coverage
    #   <p>The amount of Savings Plans eligible usage that the Savings Plans covered.</p>
    #   @return [Types::SavingsPlansCoverageData]
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #   @return [Types::DateInterval]
    class SavingsPlansCoverage < Struct.new(
      nil,
      :attributes,
      :coverage,
      :time_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specific coverage percentage, On-Demand costs, and spend covered by Savings Plans, and
    #             total Savings Plans costs for an account.</p>
    # @!attribute spend_covered_by_savings_plans
    #   <p>The amount of your Amazon Web Services usage that's covered by a Savings Plans.</p>
    #   @return [String]
    # @!attribute on_demand_cost
    #   <p>The cost of your Amazon Web Services usage at the public On-Demand rate.</p>
    #   @return [String]
    # @!attribute total_cost
    #   <p>The total cost of your Amazon Web Services usage, regardless of your purchase
    #               option.</p>
    #   @return [String]
    # @!attribute coverage_percentage
    #   <p>The percentage of your existing Savings Plans covered usage, divided by all of your
    #               eligible Savings Plans usage in an account (or set of accounts).</p>
    #   @return [String]
    class SavingsPlansCoverageData < Struct.new(
      nil,
      :spend_covered_by_savings_plans,
      :on_demand_cost,
      :total_cost,
      :coverage_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attribute details on a specific Savings Plan.</p>
    # @!attribute region
    #   <p>A collection of Amazon Web Services resources in a geographic area. Each Amazon Web Services Region is isolated and independent of the other Regions.</p>
    #   @return [String]
    # @!attribute instance_family
    #   <p>A group of instance types that Savings Plans applies to.</p>
    #   @return [String]
    # @!attribute offering_id
    #   <p>The unique ID that's used to distinguish Savings Plans from one another.</p>
    #   @return [String]
    class SavingsPlansDetails < Struct.new(
      nil,
      :region,
      :instance_family,
      :offering_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the Savings Plans purchase analysis.</p>
    # @!attribute account_scope
    #   <p>The account scope that you want your analysis for.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account that the analysis is for.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis.</p>
    #   @return [String]
    # @!attribute savings_plans_to_add
    #   <p>Savings Plans to include in the analysis.</p>
    #   @return [Array<Types::SavingsPlans>]
    # @!attribute savings_plans_to_exclude
    #   <p>Savings Plans to exclude from the analysis.</p>
    #   @return [Array<String>]
    # @!attribute look_back_time_period
    #   <p>The time period associated with the analysis.</p>
    #   @return [Types::DateInterval]
    # @!attribute savings_plans_target_coverage
    #   <p>Specifies the target Savings Plans coverage as a percentage from <code>10</code> to
    #               <code>100</code>. This field is required when <code>AnalysisType</code> is
    #               <code>TARGET_AVERAGE_COVERAGE</code>. It defines the target average hourly coverage
    #               that the recommended Savings Plans commitment should achieve over the lookback
    #               period.</p>
    #   @return [Integer]
    class SavingsPlansPurchaseAnalysisConfiguration < Struct.new(
      nil,
      :account_scope,
      :account_id,
      :analysis_type,
      :savings_plans_to_add,
      :savings_plans_to_exclude,
      :look_back_time_period,
      :savings_plans_target_coverage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Savings Plans purchase analysis.</p>
    # @!attribute currency_code
    #   <p>The currency code used for the analysis.</p>
    #   @return [String]
    # @!attribute lookback_period_in_hours
    #   <p>The lookback period in hours that's used to generate the analysis.</p>
    #   @return [String]
    # @!attribute current_average_coverage
    #   <p>The average value of hourly coverage over the lookback period.</p>
    #   @return [String]
    # @!attribute current_average_hourly_on_demand_spend
    #   <p>The average value of hourly On-Demand spend over the lookback period.</p>
    #   @return [String]
    # @!attribute current_maximum_hourly_on_demand_spend
    #   <p>The highest value of hourly On-Demand spend over the lookback period.</p>
    #   @return [String]
    # @!attribute current_minimum_hourly_on_demand_spend
    #   <p>The lowest value of hourly On-Demand spend over the lookback period.</p>
    #   @return [String]
    # @!attribute current_on_demand_spend
    #   <p>The current total On-Demand spend over the lookback period.</p>
    #   @return [String]
    # @!attribute existing_hourly_commitment
    #   <p>The existing hourly commitment for the Savings Plan type.</p>
    #   @return [String]
    # @!attribute hourly_commitment_to_purchase
    #   <p>The recommended or custom hourly commitment.</p>
    #   @return [String]
    # @!attribute estimated_average_coverage
    #   <p>The estimated coverage of the Savings Plan.</p>
    #   @return [String]
    # @!attribute estimated_average_utilization
    #   <p>The estimated utilization of the Savings Plan.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings_amount
    #   <p>The estimated monthly savings amount based on the Savings Plan.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost
    #   <p>The remaining On-Demand cost estimated to not be covered by the Savings Plan over the
    #               length of the lookback period.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost_with_current_commitment
    #   <p>The estimated On-Demand cost you expect with no additional commitment based on your
    #               usage of the selected time period and the Savings Plan you own.</p>
    #   @return [String]
    # @!attribute estimated_roi
    #   <p>The estimated return on investment that's based on the Savings Plan and estimated
    #               savings. This is calculated as estimatedSavingsAmount/estimatedSPCost*100.</p>
    #   @return [String]
    # @!attribute estimated_savings_amount
    #   <p>The estimated savings amount that's based on the Savings Plan over the length of the
    #               lookback period.</p>
    #   @return [String]
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings percentage relative to the total cost over the cost calculation
    #               lookback period.</p>
    #   @return [String]
    # @!attribute estimated_commitment_cost
    #   <p>The estimated cost of the Savings Plan over the length of the lookback period.</p>
    #   @return [String]
    # @!attribute latest_usage_timestamp
    #   <p>The date and time of the last hour that went into the analysis.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>The upfront cost of the Savings Plan based on the selected payment option.</p>
    #   @return [String]
    # @!attribute additional_metadata
    #   <p>Additional metadata that might be applicable to the commitment.</p>
    #   @return [String]
    # @!attribute metrics_over_lookback_period
    #   <p>The related hourly cost, coverage, and utilization metrics over the lookback
    #               period.</p>
    #   @return [Array<Types::RecommendationDetailHourlyMetrics>]
    class SavingsPlansPurchaseAnalysisDetails < Struct.new(
      nil,
      :currency_code,
      :lookback_period_in_hours,
      :current_average_coverage,
      :current_average_hourly_on_demand_spend,
      :current_maximum_hourly_on_demand_spend,
      :current_minimum_hourly_on_demand_spend,
      :current_on_demand_spend,
      :existing_hourly_commitment,
      :hourly_commitment_to_purchase,
      :estimated_average_coverage,
      :estimated_average_utilization,
      :estimated_monthly_savings_amount,
      :estimated_on_demand_cost,
      :estimated_on_demand_cost_with_current_commitment,
      :estimated_roi,
      :estimated_savings_amount,
      :estimated_savings_percentage,
      :estimated_commitment_cost,
      :latest_usage_timestamp,
      :upfront_cost,
      :additional_metadata,
      :metrics_over_lookback_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains your request parameters, Savings Plan Recommendations Summary, and
    #             Details.</p>
    # @!attribute account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services
    #               calculates recommendations that include the management account and member accounts if
    #               the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>,
    #               recommendations are calculated for individual member accounts only.</p>
    #   @return [String]
    # @!attribute savings_plans_type
    #   <p>The requested Savings Plans recommendation type.</p>
    #   @return [String]
    # @!attribute term_in_years
    #   <p>The Savings Plans recommendation term in years. It's used to generate the
    #               recommendation.</p>
    #   @return [String]
    # @!attribute payment_option
    #   <p>The payment option that's used to generate the recommendation.</p>
    #   @return [String]
    # @!attribute lookback_period_in_days
    #   <p>The lookback period in days that's used to generate the recommendation.</p>
    #   @return [String]
    # @!attribute savings_plans_purchase_recommendation_details
    #   <p>Details for the Savings Plans that we recommend that you purchase to cover existing
    #               Savings Plans eligible workloads.</p>
    #   @return [Array<Types::SavingsPlansPurchaseRecommendationDetail>]
    # @!attribute savings_plans_purchase_recommendation_summary
    #   <p>Summary metrics for your Savings Plans Recommendations. </p>
    #   @return [Types::SavingsPlansPurchaseRecommendationSummary]
    class SavingsPlansPurchaseRecommendation < Struct.new(
      nil,
      :account_scope,
      :savings_plans_type,
      :term_in_years,
      :payment_option,
      :lookback_period_in_days,
      :savings_plans_purchase_recommendation_details,
      :savings_plans_purchase_recommendation_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for your recommended Savings Plans.</p>
    # @!attribute savings_plans_details
    #   <p>Details for your recommended Savings Plans.</p>
    #   @return [Types::SavingsPlansDetails]
    # @!attribute account_id
    #   <p>The <code>AccountID</code> the recommendation is generated for.</p>
    #   @return [String]
    # @!attribute upfront_cost
    #   <p>The upfront cost of the recommended Savings Plans, based on the selected payment
    #               option.</p>
    #   @return [String]
    # @!attribute estimated_roi
    #   <p>The estimated return on investment that's based on the recommended Savings Plans that
    #               you purchased. This is calculated as <code>estimatedSavingsAmount</code>/
    #                   <code>estimatedSPCost</code>*100.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to generate the recommendations and
    #               present potential savings.</p>
    #   @return [String]
    # @!attribute estimated_sp_cost
    #   <p>The cost of the recommended Savings Plans over the length of the lookback
    #               period.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost
    #   <p>The remaining On-Demand cost estimated to not be covered by the recommended Savings
    #               Plans, over the length of the lookback period.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost_with_current_commitment
    #   <p> The estimated On-Demand costs you expect with no additional commitment, based on your
    #               usage of the selected time period and the Savings Plans you own. </p>
    #   @return [String]
    # @!attribute estimated_savings_amount
    #   <p>The estimated savings amount that's based on the recommended Savings Plans over the
    #               length of the lookback period.</p>
    #   @return [String]
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings percentage relative to the total cost of applicable On-Demand
    #               usage over the lookback period.</p>
    #   @return [String]
    # @!attribute hourly_commitment_to_purchase
    #   <p>The recommended hourly commitment level for the Savings Plans type and the
    #               configuration that's based on the usage during the lookback period.</p>
    #   @return [String]
    # @!attribute estimated_average_utilization
    #   <p>The estimated utilization of the recommended Savings Plans.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings_amount
    #   <p>The estimated monthly savings amount based on the recommended Savings Plans.</p>
    #   @return [String]
    # @!attribute current_minimum_hourly_on_demand_spend
    #   <p>The lowest value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #   @return [String]
    # @!attribute current_maximum_hourly_on_demand_spend
    #   <p>The highest value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #   @return [String]
    # @!attribute current_average_hourly_on_demand_spend
    #   <p>The average value of hourly On-Demand spend over the lookback period of the applicable
    #               usage type.</p>
    #   @return [String]
    # @!attribute recommendation_detail_id
    #   <p>Contains detailed information about a specific Savings Plan recommendation.</p>
    #   @return [String]
    class SavingsPlansPurchaseRecommendationDetail < Struct.new(
      nil,
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
      :current_average_hourly_on_demand_spend,
      :recommendation_detail_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata about your Savings Plans Purchase Recommendations.</p>
    # @!attribute recommendation_id
    #   <p>The unique identifier for the recommendation set.</p>
    #   @return [String]
    # @!attribute generation_timestamp
    #   <p>The timestamp that shows when the recommendations were generated.</p>
    #   @return [String]
    # @!attribute additional_metadata
    #   <p>Additional metadata that might be applicable to the recommendation.</p>
    #   @return [String]
    class SavingsPlansPurchaseRecommendationMetadata < Struct.new(
      nil,
      :recommendation_id,
      :generation_timestamp,
      :additional_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary metrics for your Savings Plans Purchase Recommendations.</p>
    # @!attribute estimated_roi
    #   <p>The estimated return on investment that's based on the recommended Savings Plans and
    #               estimated savings.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to generate the recommendations and
    #               present potential savings.</p>
    #   @return [String]
    # @!attribute estimated_total_cost
    #   <p>The estimated total cost of the usage after purchasing the recommended Savings Plans.
    #               This is a sum of the cost of Savings Plans during this term, and the remaining On-Demand
    #               usage.</p>
    #   @return [String]
    # @!attribute current_on_demand_spend
    #   <p>The current total on demand spend of the applicable usage types over the lookback
    #               period.</p>
    #   @return [String]
    # @!attribute estimated_savings_amount
    #   <p>The estimated total savings over the lookback period, based on the purchase of the
    #               recommended Savings Plans.</p>
    #   @return [String]
    # @!attribute total_recommendation_count
    #   <p>The aggregate number of Savings Plans recommendations that exist for your
    #               account.</p>
    #   @return [String]
    # @!attribute daily_commitment_to_purchase
    #   <p>The recommended Savings Plans cost on a daily (24 hourly) basis.</p>
    #   @return [String]
    # @!attribute hourly_commitment_to_purchase
    #   <p>The recommended hourly commitment that's based on the recommendation
    #               parameters.</p>
    #   @return [String]
    # @!attribute estimated_savings_percentage
    #   <p>The estimated savings relative to the total cost of On-Demand usage, over the lookback
    #               period. This is calculated as <code>estimatedSavingsAmount</code>/
    #                   <code>CurrentOnDemandSpend</code>*100.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings_amount
    #   <p>The estimated monthly savings amount that's based on the recommended Savings Plans
    #               purchase.</p>
    #   @return [String]
    # @!attribute estimated_on_demand_cost_with_current_commitment
    #   <p>The estimated On-Demand costs you expect with no additional commitment. It's based on
    #               your usage of the selected time period and the Savings Plans you own. </p>
    #   @return [String]
    class SavingsPlansPurchaseRecommendationSummary < Struct.new(
      nil,
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
      :estimated_on_demand_cost_with_current_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of savings that you're accumulating, against the public On-Demand rate of
    #             the usage accrued in an account.</p>
    # @!attribute net_savings
    #   <p>The savings amount that you're accumulating for the usage that's covered by a Savings
    #               Plans, when compared to the On-Demand equivalent of the same usage.</p>
    #   @return [String]
    # @!attribute on_demand_cost_equivalent
    #   <p>How much the amount that the usage would have cost if it was accrued at the On-Demand
    #               rate.</p>
    #   @return [String]
    class SavingsPlansSavings < Struct.new(
      nil,
      :net_savings,
      :on_demand_cost_equivalent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The measurement of how well you're using your existing Savings Plans.</p>
    # @!attribute total_commitment
    #   <p>The total amount of Savings Plans commitment that's been purchased in an account (or
    #               set of accounts).</p>
    #   @return [String]
    # @!attribute used_commitment
    #   <p>The amount of your Savings Plans commitment that was consumed from Savings Plans
    #               eligible usage in a specific period.</p>
    #   @return [String]
    # @!attribute unused_commitment
    #   <p>The amount of your Savings Plans commitment that wasn't consumed from Savings Plans
    #               eligible usage in a specific period.</p>
    #   @return [String]
    # @!attribute utilization_percentage
    #   <p>The amount of <code>UsedCommitment</code> divided by the <code>TotalCommitment</code>
    #               for your Savings Plans.</p>
    #   @return [String]
    class SavingsPlansUtilization < Struct.new(
      nil,
      :total_commitment,
      :used_commitment,
      :unused_commitment,
      :utilization_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The aggregated utilization metrics for your Savings Plans usage.</p>
    # @!attribute utilization
    #   <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
    #               that are Savings Plans eligible.</p>
    #   @return [Types::SavingsPlansUtilization]
    # @!attribute savings
    #   <p>The amount that's saved by using existing Savings Plans. Savings returns both net
    #               savings from Savings Plans and also the <code>onDemandCostEquivalent</code> of the
    #               Savings Plans when considering the utilization rate.</p>
    #   @return [Types::SavingsPlansSavings]
    # @!attribute amortized_commitment
    #   <p>The total amortized commitment for a Savings Plans. This includes the sum of the
    #               upfront and recurring Savings Plans fees.</p>
    #   @return [Types::SavingsPlansAmortizedCommitment]
    class SavingsPlansUtilizationAggregates < Struct.new(
      nil,
      :utilization,
      :savings,
      :amortized_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of Savings Plans utilization (in hours).</p>
    # @!attribute time_period
    #   <p>The time period of the request. </p>
    #   @return [Types::DateInterval]
    # @!attribute utilization
    #   <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
    #               that are Savings Plans eligible.</p>
    #   @return [Types::SavingsPlansUtilization]
    # @!attribute savings
    #   <p>The amount that's saved by using existing Savings Plans. Savings returns both net
    #               savings from Savings Plans and also the <code>onDemandCostEquivalent</code> of the
    #               Savings Plans when considering the utilization rate.</p>
    #   @return [Types::SavingsPlansSavings]
    # @!attribute amortized_commitment
    #   <p>The total amortized commitment for a Savings Plans. This includes the sum of the
    #               upfront and recurring Savings Plans fees.</p>
    #   @return [Types::SavingsPlansAmortizedCommitment]
    class SavingsPlansUtilizationByTime < Struct.new(
      nil,
      :time_period,
      :utilization,
      :savings,
      :amortized_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single daily or monthly Savings Plans utilization rate and details for your account.
    #             A management account in an organization have access to member accounts. You can use
    #                 <code>GetDimensionValues</code> to determine the possible dimension values. </p>
    # @!attribute savings_plan_arn
    #   <p>The unique Amazon Resource Name (ARN) for a particular Savings Plan.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attribute that applies to a specific <code>Dimension</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute utilization
    #   <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
    #               that are Savings Plans eligible.</p>
    #   @return [Types::SavingsPlansUtilization]
    # @!attribute savings
    #   <p>The amount saved by using existing Savings Plans. Savings returns both net savings
    #               from savings plans and also the <code>onDemandCostEquivalent</code> of the Savings Plans
    #               when considering the utilization rate.</p>
    #   @return [Types::SavingsPlansSavings]
    # @!attribute amortized_commitment
    #   <p>The total amortized commitment for a Savings Plans. Includes the sum of the upfront
    #               and recurring Savings Plans fees.</p>
    #   @return [Types::SavingsPlansAmortizedCommitment]
    class SavingsPlansUtilizationDetail < Struct.new(
      nil,
      :savings_plan_arn,
      :attributes,
      :utilization,
      :savings,
      :amortized_commitment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> You've reached the limit on the number of resources you can create, or exceeded the
    #             size of an individual resource. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Hardware specifications for the service that you want recommendations for.</p>
    # @!attribute ec2_specification
    #   <p>The Amazon EC2 hardware specifications that you want Amazon Web Services to provide
    #               recommendations for.</p>
    #   @return [Types::EC2Specification]
    class ServiceSpecification < Struct.new(
      nil,
      :ec2_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for how to sort the data.</p>
    # @!attribute key
    #   <p>The key that's used to sort the data.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order that's used to sort the data.</p>
    #   @return [String]
    class SortDefinition < Struct.new(
      nil,
      :key,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commitment_purchase_analysis_configuration
    #   <p>The configuration for the commitment purchase analysis.</p>
    #   @return [Types::CommitmentPurchaseAnalysisConfiguration]
    class StartCommitmentPurchaseAnalysisRequest < Struct.new(
      nil,
      :commitment_purchase_analysis_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_id
    #   <p>The analysis ID that's associated with the commitment purchase analysis.</p>
    #   @return [String]
    # @!attribute analysis_started_time
    #   <p>The start time of the analysis.</p>
    #   @return [String]
    # @!attribute estimated_completion_time
    #   <p>The estimated time for when the analysis will complete.</p>
    #   @return [String]
    class StartCommitmentPurchaseAnalysisResponse < Struct.new(
      nil,
      :analysis_id,
      :analysis_started_time,
      :estimated_completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backfill_from
    #   <p>
    #         The date you want the backfill to start from. The date can only be a first day of the month (a billing start date). Dates can't precede the previous twelve months, or in the future.</p>
    #   @return [String]
    class StartCostAllocationTagBackfillRequest < Struct.new(
      nil,
      :backfill_from,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backfill_request
    #   <p>
    #         An object containing detailed metadata of your new backfill request.
    #       </p>
    #   @return [Types::CostAllocationTagBackfillRequest]
    class StartCostAllocationTagBackfillResponse < Struct.new(
      nil,
      :backfill_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartSavingsPlansPurchaseRecommendationGenerationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The ID for this specific recommendation.</p>
    #   @return [String]
    # @!attribute generation_started_time
    #   <p>The start time of the recommendation generation.</p>
    #   @return [String]
    # @!attribute estimated_completion_time
    #   <p>The estimated time for when the recommendation generation will complete.</p>
    #   @return [String]
    class StartSavingsPlansPurchaseRecommendationGenerationResponse < Struct.new(
      nil,
      :recommendation_id,
      :generation_started_time,
      :estimated_completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The recipient of <code>AnomalySubscription</code> notifications. </p>
    # @!attribute address
    #   <p>The email address or SNS Amazon Resource Name (ARN). This depends on the
    #                   <code>Type</code>. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The notification delivery channel. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates if the subscriber accepts the notifications. </p>
    #   @return [String]
    class Subscriber < Struct.new(
      nil,
      :address,
      :type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.
    #       </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p> A list of tag key-value pairs to be added to the resource.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ResourceTag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The values that are available for a tag.</p>
    #          <p>If <code>Values</code> and <code>Key</code> aren't specified, the <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to all tags. That is, it's filtered on resources
    #             with no tags.</p>
    #          <p>If <code>Key</code> is provided and <code>Values</code> isn't specified, the
    #                 <code>ABSENT</code>
    #             <code>MatchOption</code> is applied to the tag <code>Key</code> only. That is, it's
    #             filtered on resources without the given tag key.</p>
    # @!attribute key
    #   <p>The key for the tag.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The specific value of the tag.</p>
    #   @return [Array<String>]
    # @!attribute match_options
    #   <p>The match options that you can use to filter your results. <code>MatchOptions</code>
    #               is only applicable for actions related to cost category. The default values for
    #                   <code>MatchOptions</code> are <code>EQUALS</code> and
    #               <code>CASE_SENSITIVE</code>.</p>
    #   @return [Array<String>]
    class TagValues < Struct.new(
      nil,
      :key,
      :values,
      :match_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details on recommended instance.</p>
    # @!attribute estimated_monthly_cost
    #   <p>The expected cost to operate this instance type on a monthly basis.</p>
    #   @return [String]
    # @!attribute estimated_monthly_savings
    #   <p>The estimated savings that result from modification, on a monthly basis.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #   @return [String]
    # @!attribute default_target_instance
    #   <p>Determines whether this recommendation is the defaulted Amazon Web Services
    #               recommendation.</p>
    #   @return [Boolean]
    # @!attribute resource_details
    #   <p>Details on the target instance type. </p>
    #   @return [Types::ResourceDetails]
    # @!attribute expected_resource_utilization
    #   <p>The expected utilization metrics for target instance type.</p>
    #   @return [Types::ResourceUtilization]
    # @!attribute platform_differences
    #   <p>Explains the actions that you might need to take to successfully migrate your
    #               workloads from the current instance type to the recommended instance type. </p>
    #   @return [Array<String>]
    class TargetInstance < Struct.new(
      nil,
      :estimated_monthly_cost,
      :estimated_monthly_savings,
      :currency_code,
      :default_target_instance,
      :resource_details,
      :expected_resource_utilization,
      :platform_differences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_target_instance] = false unless options.key?(:default_target_instance)
        super
      end
    end

    # <p>Details on termination recommendation. </p>
    # @!attribute estimated_monthly_savings
    #   <p>The estimated savings that result from modification, on a monthly basis.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The currency code that Amazon Web Services used to calculate the costs for this
    #               instance.</p>
    #   @return [String]
    class TerminateRecommendationDetail < Struct.new(
      nil,
      :estimated_monthly_savings,
      :currency_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Can occur if you specify a number of tags for a resource greater than the maximum 50
    #             user tags per resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters cost anomalies based on the total impact. </p>
    # @!attribute numeric_operator
    #   <p>The comparing value that's used in the filter. </p>
    #   @return [String]
    # @!attribute start_value
    #   <p>The lower bound dollar value that's used in the filter. </p>
    #   @return [Float]
    # @!attribute end_value
    #   <p>The upper bound dollar value that's used in the filter. </p>
    #   @return [Float]
    class TotalImpactFilter < Struct.new(
      nil,
      :numeric_operator,
      :start_value,
      :end_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_value] = 0 unless options.key?(:start_value)
        options[:end_value] = 0 unless options.key?(:end_value)
        super
      end
    end

    # <p>The cost anomaly monitor does not exist for the account. </p>
    # @!attribute message
    #   @return [String]
    class UnknownMonitorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cost anomaly subscription does not exist for the account. </p>
    # @!attribute message
    #   @return [String]
    class UnknownSubscriptionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cost Explorer was unable to identify the usage unit. Provide
    #                 <code>UsageType/UsageTypeGroup</code> filter selections that contain matching units,
    #             for example: <code>hours</code>.</p>
    # @!attribute message
    #   @return [String]
    class UnresolvableUsageUnitException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.
    #       </p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p>A list of tag keys associated with tags that need to be removed from the resource. If you
    #         specify a tag key that doesn't exist, it's ignored. Although the maximum number of array
    #         members is 200, user-tag maximum is 50. The remaining are reserved for Amazon Web Services use.
    #       </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :resource_tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>Cost anomaly monitor Amazon Resource Names (ARNs). </p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The new name for the cost anomaly monitor. </p>
    #   @return [String]
    class UpdateAnomalyMonitorRequest < Struct.new(
      nil,
      :monitor_arn,
      :monitor_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>A cost anomaly monitor ARN. </p>
    #   @return [String]
    class UpdateAnomalyMonitorResponse < Struct.new(
      nil,
      :monitor_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_arn
    #   <p>A cost anomaly subscription Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute threshold
    #   <p>(deprecated)</p>
    #            <p>The update to the threshold value for receiving notifications. </p>
    #            <p>This field has been deprecated. To update a threshold, use ThresholdExpression. Continued
    #         use of Threshold will be treated as shorthand syntax for a ThresholdExpression.</p>
    #            <p>You can specify either Threshold or ThresholdExpression, but not both.</p>
    #   @deprecated
    #     Threshold has been deprecated in favor of ThresholdExpression
    #   @return [Float]
    # @!attribute frequency
    #   <p>The update to the frequency value that subscribers receive notifications. </p>
    #   @return [String]
    # @!attribute monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    #   @return [Array<String>]
    # @!attribute subscribers
    #   <p>The update to the subscriber list. </p>
    #   @return [Array<Types::Subscriber>]
    # @!attribute subscription_name
    #   <p>The new name of the subscription. </p>
    #   @return [String]
    # @!attribute threshold_expression
    #   <p>The update to the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         used to specify the anomalies that you want to generate alerts for. This supports dimensions
    #         and nested expressions. The supported dimensions are
    #           <code>ANOMALY_TOTAL_IMPACT_ABSOLUTE</code> and <code>ANOMALY_TOTAL_IMPACT_PERCENTAGE</code>,
    #         corresponding to an anomaly’s TotalImpact and TotalImpactPercentage, respectively (see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Impact.html">Impact</a> for more details). The supported nested expression types are
    #           <code>AND</code> and <code>OR</code>. The match option <code>GREATER_THAN_OR_EQUAL</code> is
    #         required. Values must be numbers between 0 and 10,000,000,000 in string format.</p>
    #            <p>You can specify either Threshold or ThresholdExpression, but not both.</p>
    #            <p>The following are examples of valid ThresholdExpressions:</p>
    #            <ul>
    #               <li>
    #                  <p>Absolute threshold: <code>{ "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
    #               "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Percentage threshold: <code>{ "Dimensions": { "Key":
    #               "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ],
    #               "Values": [ "100" ] } }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AND</code> two thresholds together: <code>{ "And": [ { "Dimensions": { "Key":
    #               "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values":
    #               [ "100" ] } }, { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #               "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OR</code> two thresholds together: <code>{ "Or": [ { "Dimensions": { "Key":
    #               "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values":
    #               [ "100" ] } }, { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #               "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::Expression]
    class UpdateAnomalySubscriptionRequest < Struct.new(
      nil,
      :subscription_arn,
      :threshold,
      :frequency,
      :monitor_arn_list,
      :subscribers,
      :subscription_name,
      :threshold_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_arn
    #   <p>A cost anomaly subscription ARN. </p>
    #   @return [String]
    class UpdateAnomalySubscriptionResponse < Struct.new(
      nil,
      :subscription_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gives a detailed description of the result of an action. It's on each cost allocation
    #             tag entry in the request. </p>
    # @!attribute tag_key
    #   <p>The key for the cost allocation tag. </p>
    #   @return [String]
    # @!attribute code
    #   <p>An error code representing why the action failed on this entry. </p>
    #   @return [String]
    # @!attribute message
    #   <p>A message explaining why the action failed on this entry. </p>
    #   @return [String]
    class UpdateCostAllocationTagsStatusError < Struct.new(
      nil,
      :tag_key,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_allocation_tags_status
    #   <p>The list of <code>CostAllocationTagStatusEntry</code> objects that are used to update cost
    #         allocation tags status for this request. </p>
    #   @return [Array<Types::CostAllocationTagStatusEntry>]
    class UpdateCostAllocationTagsStatusRequest < Struct.new(
      nil,
      :cost_allocation_tags_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of <code>UpdateCostAllocationTagsStatusError</code> objects with error details
    #         about each cost allocation tag that can't be updated. If there's no failure, an empty array
    #         returns. </p>
    #   @return [Array<Types::UpdateCostAllocationTagsStatusError>]
    class UpdateCostAllocationTagsStatusResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category.</p>
    #   @return [String]
    # @!attribute effective_start
    #   <p>The cost category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future.</p>
    #   @return [String]
    # @!attribute rule_version
    #   <p>The rule schema version in this particular cost category.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The <code>Expression</code> object used to categorize costs. For more information, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule
    #         </a>. </p>
    #   @return [Array<Types::CostCategoryRule>]
    # @!attribute default_value
    #   <p>The
    #               default value for the cost category.</p>
    #   @return [String]
    # @!attribute split_charge_rules
    #   <p> The split charge rules used to allocate your charges between your cost category values.
    #       </p>
    #   @return [Array<Types::CostCategorySplitChargeRule>]
    class UpdateCostCategoryDefinitionRequest < Struct.new(
      nil,
      :cost_category_arn,
      :effective_start,
      :rule_version,
      :rules,
      :default_value,
      :split_charge_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cost_category_arn
    #   <p>The unique identifier for your cost category. </p>
    #   @return [String]
    # @!attribute effective_start
    #   <p>The cost category's effective start date. It can only be a billing start date (first day of the month).</p>
    #   @return [String]
    class UpdateCostCategoryDefinitionResponse < Struct.new(
      nil,
      :cost_category_arn,
      :effective_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of utilization, in hours.</p>
    # @!attribute time_period
    #   <p>The period of time that this utilization was used for.</p>
    #   @return [Types::DateInterval]
    # @!attribute groups
    #   <p>The groups that this utilization result uses.</p>
    #   @return [Array<Types::ReservationUtilizationGroup>]
    # @!attribute total
    #   <p>The total number of reservation hours that were used.</p>
    #   @return [Types::ReservationAggregates]
    class UtilizationByTime < Struct.new(
      nil,
      :time_period,
      :groups,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

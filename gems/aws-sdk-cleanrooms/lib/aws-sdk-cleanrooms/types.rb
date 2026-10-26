# frozen_string_literal: true

# This is generated code!

module Aws::CleanRooms
  # This module contains the types returned by client operations.
  module Types

    # <p>Controls and tracks usage limits for associated configured tables within a collaboration across queries and job. Supports both period-based budgets that can renew (daily, weekly, or monthly) and fixed lifetime budgets. Contains the resource ARN, remaining budget information, and up to two budget configurations (period-based and lifetime). By default, table usage is unlimited unless a budget is configured.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the access budget resource.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Detailed budget information including time bounds, remaining budget, and refresh settings.</p>
    #   @return [Array<Types::AccessBudgetDetails>]
    # @!attribute aggregate_remaining_budget
    #   <p>The total remaining budget across all budget parameters, showing the lower value between the per-period budget and lifetime budget for this access budget. For individual parameter budgets, see <code>remainingBudget</code>.</p>
    #   @return [Integer]
    class AccessBudget < Struct.new(
      nil,
      :resource_arn,
      :details,
      :aggregate_remaining_budget,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about an access budget including time bounds, budget allocation, and configuration settings.</p>
    # @!attribute start_time
    #   <p>The start time for the access budget period.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the access budget period.</p>
    #   @return [Time]
    # @!attribute remaining_budget
    #   <p>The remaining budget amount available for use within this access budget.</p>
    #   @return [Integer]
    # @!attribute budget
    #   <p>The total budget allocation amount for this access budget.</p>
    #   @return [Integer]
    # @!attribute budget_type
    #   <p>Specifies the time period for limiting table usage in queries and jobs. For calendar-based periods, the budget can renew if auto refresh is enabled. For lifetime budgets, the limit applies to the total usage throughout the collaboration. Valid values are:</p> <p> <code>CALENDAR_DAY</code> - Limit table usage per day.</p> <p> <code>CALENDAR_WEEK</code> - Limit table usage per week.</p> <p> <code>CALENDAR_MONTH</code> - Limit table usage per month.</p> <p> <code>LIFETIME</code> - Limit total table usage for the collaboration duration.</p>
    #   @return [String]
    # @!attribute auto_refresh
    #   <p>Indicates whether the budget automatically refreshes for each time period specified in <code>budgetType</code>. Valid values are:</p> <p> <code>ENABLED</code> - The budget refreshes automatically at the start of each period.</p> <p> <code>DISABLED</code> - The budget must be refreshed manually.</p> <p> <code>NULL</code> - The value is null when <code>budgetType</code> is set to <code>LIFETIME</code>.</p>
    #   @return [String]
    class AccessBudgetDetails < Struct.new(
      nil,
      :start_time,
      :end_time,
      :remaining_budget,
      :budget,
      :budget_type,
      :auto_refresh,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for privacy budget templates that support access budgets functionality, enabling enhanced budget management capabilities.</p>
    # @!attribute budget_parameters
    #   <p>An array of budget parameters that define the access budget configuration for the privacy template.</p>
    #   @return [Array<Types::BudgetParameter>]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource associated with this privacy budget template.</p>
    #   @return [String]
    class AccessBudgetsPrivacyTemplateParametersInput < Struct.new(
      nil,
      :budget_parameters,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output parameters for privacy budget templates with access budgets support, containing the configured budget information.</p>
    # @!attribute budget_parameters
    #   <p>An array of budget parameters returned from the access budget configuration.</p>
    #   @return [Array<Types::BudgetParameter>]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource associated with this privacy budget template.</p>
    #   @return [String]
    class AccessBudgetsPrivacyTemplateParametersOutput < Struct.new(
      nil,
      :budget_parameters,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Update parameters for privacy budget templates with access budgets functionality, allowing modification of existing budget configurations.</p>
    # @!attribute budget_parameters
    #   <p>Updated array of budget parameters for the access budget configuration.</p>
    #   @return [Array<Types::BudgetParameter>]
    class AccessBudgetsPrivacyTemplateUpdateParameters < Struct.new(
      nil,
      :budget_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Caller does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A reason code for the exception.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Column in configured table that can be used in aggregate function in query.</p>
    # @!attribute column_names
    #   <p>Column names in configured table of aggregate columns.</p>
    #   @return [Array<String>]
    # @!attribute function
    #   <p>Aggregation function that can be applied to aggregate column in query.</p>
    #   @return [String]
    class AggregateColumn < Struct.new(
      nil,
      :column_names,
      :function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Constraint on query output removing output rows that do not meet a minimum number of distinct values of a specified column.</p>
    # @!attribute column_name
    #   <p>Column in aggregation constraint for which there must be a minimum number of distinct values in an output row for it to be in the query output.</p>
    #   @return [String]
    # @!attribute minimum
    #   <p>The minimum number of distinct values that an output row must be an aggregation of. Minimum threshold of distinct values for a specified column that must exist in an output row for it to be in the query output.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of aggregation the constraint allows. The only valid value is currently `COUNT_DISTINCT`.</p>
    #   @return [String]
    class AggregationConstraint < Struct.new(
      nil,
      :column_name,
      :minimum,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum number of distinct identities that each query output group must represent.</p>
    # @!attribute identity_columns
    #   <p>The identity column, such as <code>user_id</code>, whose distinct values Clean Rooms counts to enforce minimum aggregation thresholds. Currently, you can specify only one column, and its data type must be string, varchar, or char.</p>
    #   @return [Array<String>]
    # @!attribute minimum_identity_count
    #   <p>The minimum number of distinct identities that each query output group must represent. This threshold applies to all output columns in the table. To override this threshold for a specific column, use <code>outputColumnThresholds</code>.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of aggregation that the threshold enforces. Currently, the only supported value is <code>COUNT_DISTINCT</code>, which counts the distinct values in the identity column.</p>
    #   @return [String]
    # @!attribute output_column_thresholds
    #   <p>The per-column overrides of <code>minimumIdentityCount</code>. An output column without an override uses <code>minimumIdentityCount</code>.</p>
    #   @return [Array<Types::OutputColumnThreshold>]
    # @!attribute allowed_aggregate_expression_type
    #   <p>Specifies whether a query can aggregate a transformed column. This applies to the arguments of both aggregate and window functions. Valid values are:</p> <p> <code>COLUMNS_ONLY</code> – A query can aggregate only a direct column reference, such as <code>SUM(amount)</code>, or a constant. Clean Rooms rejects a query that transforms a column and then aggregates it, such as <code>SUM(amount * 2)</code> or <code>SUM(ROUND(amount))</code>.</p> <p> <code>ANY_EXPRESSION</code> – A query can aggregate any expression. This includes arithmetic, such as <code>SUM(price * quantity)</code>; a cast, such as <code>SUM(CAST(amount AS DECIMAL))</code>; a nested function call, such as <code>SUM(COALESCE(amount, 0))</code>; and a conditional, such as <code>SUM(CASE WHEN region = 'EU' THEN amount ELSE 0 END)</code>.</p>
    #   @return [String]
    class AggregationThreshold < Struct.new(
      nil,
      :identity_columns,
      :minimum_identity_count,
      :type,
      :output_column_thresholds,
      :allowed_aggregate_expression_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An export of the redacted Apache Spark logs for a protected query.</p>
    # @!attribute analysis_log_export_id
    #   <p>The unique identifier of the analysis log export.</p>
    #   @return [String]
    # @!attribute analysis_id
    #   <p>The unique identifier of the protected query that the analysis logs were exported for.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis that the logs were exported for. Currently, only <code>PROTECTED_QUERY</code> is supported.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique identifier of the membership that the analysis log export belongs to.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the analysis log export. Possible values are:</p> <ul> <li> <p> <code>IN_PROGRESS</code> – The export is currently running.</p> </li> <li> <p> <code>SUCCESS</code> – The export completed successfully.</p> </li> <li> <p> <code>FAILED</code> – The export failed. See the <code>error</code> field for details.</p> </li> </ul>
    #   @return [String]
    # @!attribute result_configuration
    #   <p>Contains the details needed to write the exported analysis logs.</p>
    #   @return [Types::AnalysisLogExportResultConfiguration]
    # @!attribute create_time
    #   <p>The time the analysis log export was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the analysis log export was last updated.</p>
    #   @return [Time]
    # @!attribute error
    #   <p>The analysis log export error. This is present only when the export <code>status</code> is <code>FAILED</code>.</p>
    #   @return [Types::AnalysisLogExportError]
    class AnalysisLogExport < Struct.new(
      nil,
      :analysis_log_export_id,
      :analysis_id,
      :analysis_type,
      :membership_id,
      :status,
      :result_configuration,
      :create_time,
      :update_time,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The analysis log export error.</p>
    # @!attribute code
    #   <p>The error code for the analysis log export.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message for the analysis log export error.</p>
    #   @return [String]
    class AnalysisLogExportError < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration details for analysis log export output.</p>
    # @!attribute s3
    #   <p>Required configuration for an analysis log export with an <code>s3</code> output type.</p>
    #   @return [Types::AnalysisLogExportS3OutputConfiguration]
    class AnalysisLogExportOutputConfiguration < Struct.new(
      nil,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for analysis log export results.</p>
    # @!attribute output_configuration
    #   <p>The configuration for analysis log export results.</p>
    #   @return [Types::AnalysisLogExportOutputConfiguration]
    class AnalysisLogExportResultConfiguration < Struct.new(
      nil,
      :output_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains output information for an analysis log export with an S3 output type.</p> <p>The exported logs are written under the bucket and key prefix that you specify. The path includes the collaboration ID, the protected query ID, and the analysis log export ID. Because the path includes the export ID, exporting the same query more than once doesn't overwrite the logs from an earlier export.</p> <note> <p>The exported logs are encrypted using the default encryption configuration of the destination bucket. Clean Rooms doesn't accept a KMS key for log export. To encrypt the exported logs with a customer managed key, configure the bucket's default encryption to use that key before you export.</p> </note>
    # @!attribute bucket
    #   <p>The S3 bucket that the exported analysis logs are written to. The bucket must be in the same Amazon Web Services Region as the collaboration.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The S3 key prefix under which the exported analysis logs are written.</p> <p>Only one export can be in progress at a time for a given query and destination. To export the same query twice at once, use a different key prefix for the second export.</p>
    #   @return [String]
    class AnalysisLogExportS3OutputConfiguration < Struct.new(
      nil,
      :bucket,
      :key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of an analysis log export, including its identifier, status, analysis type, and creation time. Returned by <code>ListAnalysisLogExports</code>.</p>
    # @!attribute analysis_log_export_id
    #   <p>The unique identifier of the analysis log export.</p>
    #   @return [String]
    # @!attribute analysis_id
    #   <p>The unique identifier of the protected query that the analysis logs were exported for.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis that the logs were exported for. Currently, only <code>PROTECTED_QUERY</code> is supported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the analysis log export. Possible values are:</p> <ul> <li> <p> <code>IN_PROGRESS</code> – The export is currently running.</p> </li> <li> <p> <code>SUCCESS</code> – The export completed successfully.</p> </li> <li> <p> <code>FAILED</code> – The export failed.</p> </li> </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the analysis log export was created.</p>
    #   @return [Time]
    class AnalysisLogExportSummary < Struct.new(
      nil,
      :analysis_log_export_id,
      :analysis_id,
      :analysis_type,
      :status,
      :create_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional. The member who can query can provide this placeholder for a literal data value in an analysis template.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the parameter. The name must use only alphanumeric or underscore (_) characters.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of parameter.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>Optional. The default value that is applied in the analysis template. The member who can query can override this value in the query editor.</p>
    #   @return [String]
    class AnalysisParameter < Struct.new(
      nil,
      :name,
      :type,
      :default_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specification about how data from the configured table can be used in a query.</p>
    # @!attribute collaboration_id
    #   <p>The unique ID for the associated collaboration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of analysis rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the analysis rule.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the analysis rule was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the analysis rule was last updated.</p>
    #   @return [Time]
    # @!attribute policy
    #   <p>A policy that describes the associated data usage limitations.</p>
    #   @return [Types::AnalysisRulePolicy]
    # @!attribute collaboration_policy
    #   <p> Controls on the query specifications that can be run on an associated configured table.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    # @!attribute consolidated_policy
    #   <p> The consolidated policy for the analysis rule.</p>
    #   @return [Types::ConsolidatedPolicy]
    class AnalysisRule < Struct.new(
      nil,
      :collaboration_id,
      :type,
      :name,
      :create_time,
      :update_time,
      :policy,
      :collaboration_policy,
      :consolidated_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of analysis rule that enables query structure and specified queries that produce aggregate statistics.</p>
    # @!attribute aggregate_columns
    #   <p>The columns that query runners are allowed to use in aggregation queries.</p>
    #   @return [Array<Types::AggregateColumn>]
    # @!attribute join_columns
    #   <p>Columns in configured table that can be used in join statements and/or as aggregate columns. They can never be outputted directly.</p>
    #   @return [Array<String>]
    # @!attribute join_required
    #   <p>Control that requires member who runs query to do a join with their configured table and/or other configured table in query.</p>
    #   @return [String]
    # @!attribute allowed_join_operators
    #   <p>Which logical operators (if any) are to be used in an INNER JOIN match condition. Default is <code>AND</code>.</p>
    #   @return [Array<String>]
    # @!attribute dimension_columns
    #   <p>The columns that query runners are allowed to select, group by, or filter by.</p>
    #   @return [Array<String>]
    # @!attribute scalar_functions
    #   <p>Set of scalar functions that are allowed to be used on dimension columns and the output of aggregation of metrics.</p>
    #   @return [Array<String>]
    # @!attribute output_constraints
    #   <p>Columns that must meet a specific threshold value (after an aggregation function is applied to it) for each output row to be returned.</p>
    #   @return [Array<Types::AggregationConstraint>]
    # @!attribute additional_analyses
    #   <p> An indicator as to whether additional analyses (such as Clean Rooms ML) can be applied to the output of the direct query. </p> <p>The <code>additionalAnalyses</code> parameter is currently supported for the list analysis rule (<code>AnalysisRuleList</code>) and the custom analysis rule (<code>AnalysisRuleCustom</code>).</p>
    #   @return [String]
    class AnalysisRuleAggregation < Struct.new(
      nil,
      :aggregate_columns,
      :join_columns,
      :join_required,
      :allowed_join_operators,
      :dimension_columns,
      :scalar_functions,
      :output_constraints,
      :additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of analysis rule that enables the table owner to approve custom SQL queries on their configured tables. It supports differential privacy, minimum aggregation thresholds, and comparison controls.</p>
    # @!attribute allowed_analyses
    #   <p>The ARN of the analysis templates that are allowed by the custom analysis rule.</p>
    #   @return [Array<String>]
    # @!attribute allowed_analysis_providers
    #   <p>The IDs of the Amazon Web Services accounts that are allowed to query by the custom analysis rule. Required when <code>allowedAnalyses</code> is <code>ANY_QUERY</code>.</p>
    #   @return [Array<String>]
    # @!attribute additional_analyses
    #   <p> An indicator as to whether additional analyses (such as Clean Rooms ML) can be applied to the output of the direct query.</p>
    #   @return [String]
    # @!attribute disallowed_output_columns
    #   <p> A list of columns that aren't allowed to be shown in the query output.</p>
    #   @return [Array<String>]
    # @!attribute differential_privacy
    #   <p>The differential privacy configuration.</p>
    #   @return [Types::DifferentialPrivacyConfiguration]
    # @!attribute aggregation_thresholds
    #   <p>The aggregation thresholds that each query output group must satisfy. Clean Rooms filters out any group that represents fewer than the specified number of distinct identities. You can specify at most one threshold. You can't use aggregation thresholds with differential privacy, or when <code>allowedAnalyses</code> allows only jobs.</p>
    #   @return [Array<Types::AggregationThreshold>]
    # @!attribute comparison_controls
    #   <p>The controls that restrict how a query can compare the columns in the configured table. You can't use comparison controls with differential privacy, or when <code>allowedAnalyses</code> allows only jobs.</p>
    #   @return [Types::ComparisonControls]
    # @!attribute allowed_result_receivers
    #   <p>The list of Amazon Web Services account IDs that are allowed to receive results from queries run on the configured table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p>The list of allowed additional analyses for the custom analysis rule.</p>
    #   @return [Array<String>]
    class AnalysisRuleCustom < Struct.new(
      nil,
      :allowed_analyses,
      :allowed_analysis_providers,
      :additional_analyses,
      :disallowed_output_columns,
      :differential_privacy,
      :aggregation_thresholds,
      :comparison_controls,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines details for the analysis rule ID mapping table.</p>
    # @!attribute join_columns
    #   <p>The columns that query runners are allowed to use in an INNER JOIN statement.</p>
    #   @return [Array<String>]
    # @!attribute query_constraints
    #   <p>The query constraints of the analysis rule ID mapping table.</p>
    #   @return [Array<Types::QueryConstraint>]
    # @!attribute dimension_columns
    #   <p>The columns that query runners are allowed to select, group by, or filter by.</p>
    #   @return [Array<String>]
    class AnalysisRuleIdMappingTable < Struct.new(
      nil,
      :join_columns,
      :query_constraints,
      :dimension_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A type of analysis rule that enables row-level analysis.</p>
    # @!attribute join_columns
    #   <p>Columns that can be used to join a configured table with the table of the member who can query and other members' configured tables.</p>
    #   @return [Array<String>]
    # @!attribute allowed_join_operators
    #   <p>The logical operators (if any) that are to be used in an INNER JOIN match condition. Default is <code>AND</code>.</p>
    #   @return [Array<String>]
    # @!attribute list_columns
    #   <p>Columns that can be listed in the output.</p>
    #   @return [Array<String>]
    # @!attribute additional_analyses
    #   <p> An indicator as to whether additional analyses (such as Clean Rooms ML) can be applied to the output of the direct query.</p>
    #   @return [String]
    class AnalysisRuleList < Struct.new(
      nil,
      :join_columns,
      :allowed_join_operators,
      :list_columns,
      :additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls on the query specifications that can be run on configured table.</p>
    # @!attribute v1
    #   <p>Controls on the query specifications that can be run on configured table.</p>
    #   @return [Types::AnalysisRulePolicyV1]
    class AnalysisRulePolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class V1 < AnalysisRulePolicy; end
      class Unknown < AnalysisRulePolicy; end
    end

    # <p>Controls on the query specifications that can be run on configured table.</p>
    # @!attribute list
    #   <p>Analysis rule type that enables only list queries on a configured table.</p>
    #   @return [Types::AnalysisRuleList]
    # @!attribute aggregation
    #   <p>Analysis rule type that enables only aggregation queries on a configured table.</p>
    #   @return [Types::AnalysisRuleAggregation]
    # @!attribute custom
    #   <p>Analysis rule type that enables custom SQL queries on a configured table.</p>
    #   @return [Types::AnalysisRuleCustom]
    # @!attribute id_mapping_table
    #   <p>The ID mapping table.</p>
    #   @return [Types::AnalysisRuleIdMappingTable]
    class AnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :id_mapping_table,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class List < AnalysisRulePolicyV1; end
      class Aggregation < AnalysisRulePolicyV1; end
      class Custom < AnalysisRulePolicyV1; end
      class IdMappingTable < AnalysisRulePolicyV1; end
      class Unknown < AnalysisRulePolicyV1; end
    end

    # <p>A relation within an analysis.</p>
    # @!attribute referenced_tables
    #   <p>The tables referenced in the analysis schema.</p>
    #   @return [Array<String>]
    class AnalysisSchema < Struct.new(
      nil,
      :referenced_tables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that defines the body of the analysis template.</p>
    # @!attribute text
    #   <p>The query text.</p>
    #   @return [String]
    # @!attribute artifacts
    #   <p> The artifacts of the analysis source.</p>
    #   @return [Types::AnalysisTemplateArtifacts]
    class AnalysisSource < Struct.new(
      :text,
      :artifacts,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < AnalysisSource; end
      class Artifacts < AnalysisSource; end
      class Unknown < AnalysisSource; end
    end

    # <p>The analysis source metadata.</p>
    # @!attribute artifacts
    #   <p> The artifacts of the analysis source metadata.</p>
    #   @return [Types::AnalysisTemplateArtifactMetadata]
    class AnalysisSourceMetadata < Struct.new(
      :artifacts,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Artifacts < AnalysisSourceMetadata; end
      class Unknown < AnalysisSourceMetadata; end
    end

    # <p>The analysis template.</p>
    # @!attribute id
    #   <p>The identifier for the analysis template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the analysis template.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique ID for the associated collaboration of the analysis template.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the analysis template’s associated collaboration.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The identifier of a member who created the analysis template.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the member who created the analysis template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the analysis template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the analysis template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the analysis template was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time that the analysis template was last updated.</p>
    #   @return [Time]
    # @!attribute schema
    #   <p>The entire schema object.</p>
    #   @return [Types::AnalysisSchema]
    # @!attribute format
    #   <p>The format of the analysis template.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the analysis template.</p>
    #   @return [Types::AnalysisSource]
    # @!attribute source_metadata
    #   <p> The source metadata for the analysis template.</p>
    #   @return [Types::AnalysisSourceMetadata]
    # @!attribute analysis_parameters
    #   <p>The parameters of the analysis template.</p>
    #   @return [Array<Types::AnalysisParameter>]
    # @!attribute validations
    #   <p>Information about the validations performed on the analysis template.</p>
    #   @return [Array<Types::AnalysisTemplateValidationStatusDetail>]
    # @!attribute error_message_configuration
    #   <p>The configuration that specifies the level of detail in error messages returned by analyses using this template. When set to <code>DETAILED</code>, error messages include more information to help troubleshoot issues with PySpark jobs. Detailed error messages may expose underlying data, including sensitive information. Recommended for faster troubleshooting in development and testing environments.</p>
    #   @return [Types::ErrorMessageConfiguration]
    # @!attribute synthetic_data_parameters
    #   <p>The parameters used to generate synthetic data for this analysis template.</p>
    #   @return [Types::SyntheticDataParameters]
    class AnalysisTemplate < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :membership_id,
      :membership_arn,
      :description,
      :name,
      :create_time,
      :update_time,
      :schema,
      :format,
      :source,
      :source_metadata,
      :analysis_parameters,
      :validations,
      :error_message_configuration,
      :synthetic_data_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The analysis template artifact.</p>
    # @!attribute location
    #   <p> The artifact location.</p>
    #   @return [Types::S3Location]
    class AnalysisTemplateArtifact < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The analysis template artifact metadata.</p>
    # @!attribute entry_point_hash
    #   <p> The hash of the entry point for the analysis template artifact metadata.</p>
    #   @return [Types::Hash]
    # @!attribute additional_artifact_hashes
    #   <p> Additional artifact hashes for the analysis template.</p>
    #   @return [Array<Types::Hash>]
    class AnalysisTemplateArtifactMetadata < Struct.new(
      nil,
      :entry_point_hash,
      :additional_artifact_hashes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The analysis template artifacts.</p>
    # @!attribute entry_point
    #   <p> The entry point for the analysis template artifacts.</p>
    #   @return [Types::AnalysisTemplateArtifact]
    # @!attribute additional_artifacts
    #   <p> Additional artifacts for the analysis template.</p>
    #   @return [Array<Types::AnalysisTemplateArtifact>]
    # @!attribute role_arn
    #   <p> The role ARN for the analysis template artifacts.</p>
    #   @return [String]
    class AnalysisTemplateArtifacts < Struct.new(
      nil,
      :entry_point,
      :additional_artifacts,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata of the analysis template.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the analysis template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the analysis template summary was created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The identifier of the analysis template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the analysis template. </p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time that the analysis template summary was last updated.</p>
    #   @return [Time]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the member who created the analysis template.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the analysis template summary’s associated collaboration.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>A unique identifier for the collaboration that the analysis template summary belongs to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the analysis template.</p>
    #   @return [String]
    # @!attribute is_synthetic_data
    #   <p>Indicates if this analysis template summary generated synthetic data.</p>
    #   @return [Boolean]
    class AnalysisTemplateSummary < Struct.new(
      nil,
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :membership_arn,
      :membership_id,
      :collaboration_arn,
      :collaboration_id,
      :description,
      :is_synthetic_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status details of the analysis template validation. Clean Rooms Differential Privacy uses a general-purpose query structure to support complex SQL queries and validates whether an analysis template fits that general-purpose query structure. Validation is performed when analysis templates are created and fetched. Because analysis templates are immutable by design, we recommend that you create analysis templates after you associate the configured tables with their analysis rule to your collaboration.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/clean-rooms/latest/userguide/analysis-rules-custom.html#custom-diff-privacy">https://docs.aws.amazon.com/clean-rooms/latest/userguide/analysis-rules-custom.html#custom-diff-privacy</a>.</p>
    # @!attribute type
    #   <p>The type of validation that was performed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the validation.</p>
    #   @return [String]
    # @!attribute reasons
    #   <p>The reasons for the validation results.</p>
    #   @return [Array<Types::AnalysisTemplateValidationStatusReason>]
    class AnalysisTemplateValidationStatusDetail < Struct.new(
      nil,
      :type,
      :status,
      :reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The reasons for the validation results.</p>
    # @!attribute message
    #   <p>The validation message.</p>
    #   @return [String]
    class AnalysisTemplateValidationStatusReason < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about the approval state of a given member in the collaboration for a given collaboration change request.</p>
    # @!attribute status
    #   <p>The approval status of a member's vote on the change request. Valid values are PENDING (if they haven't voted), APPROVED, or DENIED.</p>
    #   @return [String]
    class ApprovalStatusDetails < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A reference to a table within Athena.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region where the Athena table is located. This parameter is required to uniquely identify and access tables across different Regions.</p>
    #   @return [String]
    # @!attribute work_group
    #   <p> The workgroup of the Athena table reference.</p>
    #   @return [String]
    # @!attribute output_location
    #   <p> The output location for the Athena table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p> The database name.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p> The table reference.</p>
    #   @return [String]
    # @!attribute catalog_name
    #   <p> The catalog name.</p>
    #   @return [String]
    class AthenaTableReference < Struct.new(
      nil,
      :region,
      :work_group,
      :output_location,
      :database_name,
      :table_name,
      :catalog_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of errors thrown by the call to retrieve multiple analysis templates within a collaboration by their identifiers.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the analysis template.</p>
    #   @return [String]
    # @!attribute code
    #   <p>An error code for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of why the call failed.</p>
    #   @return [String]
    class BatchGetCollaborationAnalysisTemplateError < Struct.new(
      nil,
      :arn,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute analysis_template_arns
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    #   @return [Array<String>]
    class BatchGetCollaborationAnalysisTemplateOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :analysis_template_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_analysis_templates
    #   <p>The retrieved list of analysis templates within a collaboration.</p>
    #   @return [Array<Types::CollaborationAnalysisTemplate>]
    # @!attribute errors
    #   <p>Error reasons for collaboration analysis templates that could not be retrieved. One error is returned for every collaboration analysis template that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetCollaborationAnalysisTemplateError>]
    class BatchGetCollaborationAnalysisTemplateOperationOutput < Struct.new(
      nil,
      :collaboration_analysis_templates,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that describes why a schema could not be fetched.</p>
    # @!attribute name
    #   <p>An error name for the error.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The analysis rule type.</p>
    #   @return [String]
    # @!attribute code
    #   <p>An error code for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of why the call failed.</p>
    #   @return [String]
    class BatchGetSchemaAnalysisRuleError < Struct.new(
      nil,
      :name,
      :type,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the schema analysis rule.</p>
    #   @return [String]
    # @!attribute schema_analysis_rule_requests
    #   <p>The information that's necessary to retrieve a schema analysis rule.</p>
    #   @return [Array<Types::SchemaAnalysisRuleRequest>]
    class BatchGetSchemaAnalysisRuleInput < Struct.new(
      nil,
      :collaboration_identifier,
      :schema_analysis_rule_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rules
    #   <p>The retrieved list of analysis rules.</p>
    #   @return [Array<Types::AnalysisRule>]
    # @!attribute errors
    #   <p>Error reasons for schemas that could not be retrieved. One error is returned for every schema that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetSchemaAnalysisRuleError>]
    class BatchGetSchemaAnalysisRuleOutput < Struct.new(
      nil,
      :analysis_rules,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error describing why a schema could not be fetched.</p>
    # @!attribute name
    #   <p>An error name for the error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>An error code for the error. </p>
    #   @return [String]
    # @!attribute message
    #   <p>An error message for the error.</p>
    #   @return [String]
    class BatchGetSchemaError < Struct.new(
      nil,
      :name,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schemas belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute names
    #   <p>The names for the schema objects to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetSchemaOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schemas
    #   <p>The retrieved list of schemas.</p>
    #   @return [Array<Types::Schema>]
    # @!attribute errors
    #   <p>Error reasons for schemas that could not be retrieved. One error is returned for every schema that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetSchemaError>]
    class BatchGetSchemaOperationOutput < Struct.new(
      nil,
      :schemas,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information related to the utilization of resources that have been billed or charged for in a given context, such as a protected job.</p>
    # @!attribute units
    #   <p> The number of Clean Rooms Processing Unit (CRPU) hours that have been billed.</p>
    #   @return [Float]
    class BilledJobResourceUtilization < Struct.new(
      nil,
      :units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information related to the utilization of resources that have been billed or charged for in a given context, such as a protected query.</p>
    # @!attribute units
    #   <p> The number of Clean Rooms Processing Unit (CRPU) hours that have been billed.</p>
    #   @return [Float]
    class BilledResourceUtilization < Struct.new(
      nil,
      :units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Individual budget parameter configuration that defines specific budget allocation settings for access budgets.</p>
    # @!attribute type
    #   <p>The type of budget parameter being configured.</p>
    #   @return [String]
    # @!attribute budget
    #   <p>The budget allocation amount for this specific parameter.</p>
    #   @return [Integer]
    # @!attribute auto_refresh
    #   <p>Whether this individual budget parameter automatically refreshes when the budget period resets.</p>
    #   @return [String]
    class BudgetParameter < Struct.new(
      nil,
      :type,
      :budget,
      :auto_refresh,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single change within a collaboration change request, containing the change identifier and specification.</p>
    # @!attribute specification_type
    #   <p>The type of specification for this change.</p>
    #   @return [String]
    # @!attribute specification
    #   <p>The specification details for this change.</p>
    #   @return [Types::ChangeSpecification]
    # @!attribute types
    #   <p>The list of change types that were applied.</p>
    #   @return [Array<String>]
    class Change < Struct.new(
      nil,
      :specification_type,
      :specification,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a change to apply to a collaboration.</p>
    # @!attribute specification_type
    #   <p>The type of specification for the change. Currently supports <code>MEMBER</code> for member-related changes.</p>
    #   @return [String]
    # @!attribute specification
    #   <p>The specification details for the change. The structure depends on the specification type.</p>
    #   @return [Types::ChangeSpecification]
    class ChangeInput < Struct.new(
      nil,
      :specification_type,
      :specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union that contains the specification details for different types of changes.</p>
    # @!attribute member
    #   <p>The member change specification when the change type is <code>MEMBER</code>.</p>
    #   @return [Types::MemberChangeSpecification]
    # @!attribute collaboration
    #   <p>The collaboration configuration changes being requested. Currently, this only supports modifying which change types are auto-approved for the collaboration.</p>
    #   @return [Types::CollaborationChangeSpecification]
    class ChangeSpecification < Struct.new(
      :member,
      :collaboration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Member < ChangeSpecification; end
      class Collaboration < ChangeSpecification; end
      class Unknown < ChangeSpecification; end
    end

    # <p>Contains information about a child resource of a given resource in a collaboration.</p>
    # @!attribute resource_id
    #   <p>The unique identifier of the child resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the child resource.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the child resource.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the member who owns the child resource.</p>
    #   @return [String]
    # @!attribute resource_status
    #   <p>The current status of the child resource.</p>
    #   @return [String]
    class ChildResource < Struct.new(
      nil,
      :resource_id,
      :resource_type,
      :resource_name,
      :owner_account_id,
      :resource_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The multi-party data share environment. The collaboration contains metadata about its purpose and participants.</p>
    # @!attribute id
    #   <p>The unique ID for the collaboration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique ARN for the collaboration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A human-readable identifier provided by the collaboration owner. Display names are not unique.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the collaboration provided by the collaboration owner.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute creator_display_name
    #   <p>A display name of the collaboration creator.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the collaboration was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the collaboration metadata was last updated.</p>
    #   @return [Time]
    # @!attribute member_status
    #   <p>The status of a member in a collaboration.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique ID for your membership within the collaboration.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The unique ARN for your membership within the collaboration.</p>
    #   @return [String]
    # @!attribute data_encryption_metadata
    #   <p>The settings for client-side encryption for cryptographic computing.</p>
    #   @return [Types::DataEncryptionMetadata]
    # @!attribute query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the collaboration.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute job_log_status
    #   <p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute analytics_engine
    #   <p> The analytics engine for the collaboration.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>
    #   @return [String]
    # @!attribute auto_approved_change_types
    #   <p>The types of change requests that are automatically approved for this collaboration.</p>
    #   @return [Array<String>]
    # @!attribute allowed_result_regions
    #   <p>The Amazon Web Services Regions where collaboration query results can be stored. Returns the list of Region identifiers that were specified when the collaboration was created. This list is used to enforce regional storage policies and compliance requirements.</p>
    #   @return [Array<String>]
    # @!attribute is_metrics_enabled
    #   <p>An indicator as to whether metrics are enabled for the collaboration.</p> <p>When <code>true</code>, collaboration members can opt in to Amazon CloudWatch metrics for their membership queries.</p>
    #   @return [Boolean]
    class Collaboration < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :creator_account_id,
      :creator_display_name,
      :create_time,
      :update_time,
      :member_status,
      :membership_id,
      :membership_arn,
      :data_encryption_metadata,
      :query_log_status,
      :job_log_status,
      :analytics_engine,
      :auto_approved_change_types,
      :allowed_result_regions,
      :is_metrics_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The analysis template within a collaboration.</p>
    # @!attribute id
    #   <p>The identifier of the analysis template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the analysis template.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the analysis template’s associated collaboration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the analysis template.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the analysis template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the analysis template within a collaboration was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time that the analysis template in the collaboration was last updated.</p>
    #   @return [Time]
    # @!attribute schema
    #   <p>The entire schema object.</p>
    #   @return [Types::AnalysisSchema]
    # @!attribute format
    #   <p>The format of the analysis template in the collaboration.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the analysis template within a collaboration.</p>
    #   @return [Types::AnalysisSource]
    # @!attribute source_metadata
    #   <p> The source metadata for the collaboration analysis template.</p>
    #   @return [Types::AnalysisSourceMetadata]
    # @!attribute analysis_parameters
    #   <p>The analysis parameters that have been specified in the analysis template.</p>
    #   @return [Array<Types::AnalysisParameter>]
    # @!attribute validations
    #   <p>The validations that were performed.</p>
    #   @return [Array<Types::AnalysisTemplateValidationStatusDetail>]
    # @!attribute error_message_configuration
    #   <p>The configuration that specifies the level of detail in error messages returned by analyses using this template. When set to <code>DETAILED</code>, error messages include more information to help troubleshoot issues with PySpark jobs. Detailed error messages may expose underlying data, including sensitive information. Recommended for faster troubleshooting in development and testing environments.</p>
    #   @return [Types::ErrorMessageConfiguration]
    # @!attribute synthetic_data_parameters
    #   <p>The synthetic data generation parameters configured for this collaboration analysis template.</p>
    #   @return [Types::SyntheticDataParameters]
    class CollaborationAnalysisTemplate < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :description,
      :creator_account_id,
      :name,
      :create_time,
      :update_time,
      :schema,
      :format,
      :source,
      :source_metadata,
      :analysis_parameters,
      :validations,
      :error_message_configuration,
      :synthetic_data_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata of the analysis template within a collaboration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the analysis template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the summary of the analysis template in a collaboration was created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The identifier of the analysis template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the analysis template.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time that the summary of the analysis template in the collaboration was last updated.</p>
    #   @return [Time]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the analysis template’s associated collaboration.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the analysis template.</p>
    #   @return [String]
    # @!attribute is_synthetic_data
    #   <p>Indicates if this collaboration analysis template uses synthetic data generation.</p>
    #   @return [Boolean]
    class CollaborationAnalysisTemplateSummary < Struct.new(
      nil,
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :collaboration_arn,
      :collaboration_id,
      :creator_account_id,
      :description,
      :is_synthetic_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a request to modify a collaboration. Change requests enable structured modifications to collaborations after they have been created.</p>
    # @!attribute id
    #   <p>The unique identifier for the change request.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier for the collaboration being modified.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the change request was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time when the change request was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the change request. Valid values are <code>PENDING</code>, <code>APPROVED</code>, <code>DENIED</code>, <code>COMMITTED</code>, and <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute is_auto_approved
    #   <p>Whether the change request was automatically approved based on the collaboration's auto-approval settings.</p>
    #   @return [Boolean]
    # @!attribute changes
    #   <p>The list of changes specified in this change request.</p>
    #   @return [Array<Types::Change>]
    # @!attribute approvals
    #   <p>A list of approval details from collaboration members, including approval status and multi-party approval workflow information.</p>
    #   @return [Hash<String, Types::ApprovalStatusDetails>]
    class CollaborationChangeRequest < Struct.new(
      nil,
      :id,
      :collaboration_id,
      :create_time,
      :update_time,
      :status,
      :is_auto_approved,
      :changes,
      :approvals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a collaboration change request.</p>
    # @!attribute id
    #   <p>The unique identifier for the change request.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier for the collaboration.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the change request was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time when the change request was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the change request.</p>
    #   @return [String]
    # @!attribute is_auto_approved
    #   <p>Whether the change request was automatically approved.</p>
    #   @return [Boolean]
    # @!attribute changes
    #   <p>Summary of the changes in this change request.</p>
    #   @return [Array<Types::Change>]
    # @!attribute approvals
    #   <p>Summary of approval statuses from all collaboration members for this change request.</p>
    #   @return [Hash<String, Types::ApprovalStatusDetails>]
    class CollaborationChangeRequestSummary < Struct.new(
      nil,
      :id,
      :collaboration_id,
      :create_time,
      :update_time,
      :status,
      :is_auto_approved,
      :changes,
      :approvals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the specific changes being requested for a collaboration, including configuration modifications and approval requirements.</p>
    # @!attribute auto_approved_change_types
    #   <p>Defines requested updates to properties of the collaboration. Currently, this only supports modifying which change types are auto-approved for the collaboration.</p>
    #   @return [Array<String>]
    class CollaborationChangeSpecification < Struct.new(
      nil,
      :auto_approved_change_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured audience model association within a collaboration.</p>
    # @!attribute id
    #   <p>The identifier of the configured audience model association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model association.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>A unique identifier for the collaboration that the configured audience model associations belong to. Accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the configured audience model's associated collaboration.</p>
    #   @return [String]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configure audience model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured audience model association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured audience model association.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The identifier used to reference members of the collaboration. Only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the configured audience model association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured audience model association was updated.</p>
    #   @return [Time]
    class CollaborationConfiguredAudienceModelAssociation < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :configured_audience_model_arn,
      :name,
      :description,
      :creator_account_id,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the configured audience model association in the collaboration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model association.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the configured audience model association was created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The identifier of the configured audience model association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured audience model association.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The most recent time at which the configured audience model association was updated.</p>
    #   @return [Time]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the configured audience model's associated collaboration.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>A unique identifier for the collaboration that the configured audience model associations belong to. Accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The identifier used to reference members of the collaboration. Only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured audience model association.</p>
    #   @return [String]
    class CollaborationConfiguredAudienceModelAssociationSummary < Struct.new(
      nil,
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :collaboration_arn,
      :collaboration_id,
      :creator_account_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines details for the collaboration ID namespace association.</p>
    # @!attribute id
    #   <p>The unique identifier of the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The unique identifier of the Amazon Web Services account that created the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the collaboration ID namespace association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the collaboration ID namespace was updated.</p>
    #   @return [Time]
    # @!attribute input_reference_config
    #   <p>The input reference configuration that's necessary to create the collaboration ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    # @!attribute input_reference_properties
    #   <p>The input reference properties that are needed to create the collaboration ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferenceProperties]
    # @!attribute id_mapping_config
    #   <p>The configuration settings for the ID mapping table.</p>
    #   @return [Types::IdMappingConfig]
    class CollaborationIdNamespaceAssociation < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :name,
      :description,
      :creator_account_id,
      :create_time,
      :update_time,
      :input_reference_config,
      :input_reference_properties,
      :id_mapping_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about the collaboration ID namespace association.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the collaboration ID namespace association was created.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique identifier of the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The most recent time at which the collaboration ID namespace association was updated.</p>
    #   @return [Time]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains this collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains this collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The Amazon Web Services account that created this collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute input_reference_config
    #   <p>The input reference configuration that's used to create the collaboration ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    # @!attribute name
    #   <p>The name of the collaboration ID namespace association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the collaboration ID namepsace association.</p>
    #   @return [String]
    # @!attribute input_reference_properties
    #   <p>The input reference properties that are used to create the collaboration ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferencePropertiesSummary]
    class CollaborationIdNamespaceAssociationSummary < Struct.new(
      nil,
      :arn,
      :create_time,
      :id,
      :update_time,
      :collaboration_arn,
      :collaboration_id,
      :creator_account_id,
      :input_reference_config,
      :name,
      :description,
      :input_reference_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the collaboration privacy budgets. This summary includes the collaboration information, creation information, epsilon provided, and utility in terms of aggregations.</p>
    # @!attribute id
    #   <p>The unique identifier of the collaboration privacy budget.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_id
    #   <p>The unique identifier of the collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_arn
    #   <p>The ARN of the collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that includes this privacy budget.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The ARN of the collaboration that includes this privacy budget.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The unique identifier of the account that created this privacy budget.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of privacy budget template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the privacy budget was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the privacy budget was updated.</p>
    #   @return [Time]
    # @!attribute budget
    #   <p>The includes epsilon provided and utility in terms of aggregations.</p>
    #   @return [Types::PrivacyBudget]
    class CollaborationPrivacyBudgetSummary < Struct.new(
      nil,
      :id,
      :privacy_budget_template_id,
      :privacy_budget_template_arn,
      :collaboration_id,
      :collaboration_arn,
      :creator_account_id,
      :type,
      :create_time,
      :update_time,
      :budget,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array that specifies the information for a collaboration's privacy budget template.</p>
    # @!attribute id
    #   <p>The unique identifier of the collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that includes this collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The ARN of the collaboration that includes this collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The unique identifier of the account that created this collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the collaboration privacy budget template was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the collaboration privacy budget template was updated.</p>
    #   @return [Time]
    # @!attribute privacy_budget_type
    #   <p>The type of privacy budget template.</p>
    #   @return [String]
    # @!attribute auto_refresh
    #   <p>How often the privacy budget refreshes.</p> <important> <p>If you plan to regularly bring new data into the collaboration, use <code>CALENDAR_MONTH</code> to automatically get a new privacy budget for the collaboration every calendar month. Choosing this option allows arbitrary amounts of information to be revealed about rows of the data when repeatedly queried across refreshes. Avoid choosing this if the same rows will be repeatedly queried between privacy budget refreshes.</p> </important>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the epsilon and noise parameters for the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplateParametersOutput]
    class CollaborationPrivacyBudgetTemplate < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :creator_account_id,
      :create_time,
      :update_time,
      :privacy_budget_type,
      :auto_refresh,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the collaboration's privacy budget template. This summary includes information about who created the privacy budget template and what collaborations it belongs to.</p>
    # @!attribute id
    #   <p>The unique identifier of the collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains this collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The ARN of the collaboration that contains this collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The unique identifier of the account that created this collaboration privacy budget template.</p>
    #   @return [String]
    # @!attribute privacy_budget_type
    #   <p>The type of the privacy budget template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the collaboration privacy budget template was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the collaboration privacy budget template was updated.</p>
    #   @return [Time]
    class CollaborationPrivacyBudgetTemplateSummary < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :creator_account_id,
      :privacy_budget_type,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata of the collaboration.</p>
    # @!attribute id
    #   <p>The identifier for the collaboration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the collaboration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A human-readable identifier provided by the collaboration owner. Display names are not unique.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute creator_display_name
    #   <p>The display name of the collaboration creator.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the collaboration was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the collaboration metadata was last updated.</p>
    #   @return [Time]
    # @!attribute member_status
    #   <p>The status of a member in a collaboration.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The identifier of a member in a collaboration.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The ARN of a member in a collaboration.</p>
    #   @return [String]
    # @!attribute analytics_engine
    #   <p> The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>
    #   @return [String]
    class CollaborationSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :creator_account_id,
      :creator_display_name,
      :create_time,
      :update_time,
      :member_status,
      :membership_id,
      :membership_arn,
      :analytics_engine,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A column within a schema relation, derived from the underlying table.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the column.</p>
    #   @return [String]
    class Column < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains classification information for data columns, including mappings that specify how columns should be handled during synthetic data generation and privacy analysis.</p>
    # @!attribute column_mapping
    #   <p>A mapping that defines the classification of data columns for synthetic data generation and specifies how each column should be handled during the privacy-preserving data synthesis process.</p>
    #   @return [Array<Types::SyntheticDataColumnProperties>]
    class ColumnClassificationDetails < Struct.new(
      nil,
      :column_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains column lineage information that traces a disallowed output column back to its source in a base table.</p>
    # @!attribute column
    #   <p>The name of the column in the intermediate table.</p>
    #   @return [String]
    # @!attribute source_column
    #   <p>The name of the column in the source table.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p>The name of the source table.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The unique identifier of the source table.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The type of the source table.</p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p>The Amazon Web Services account ID of the owner of the source table.</p>
    #   @return [String]
    class ColumnLineageEntry < Struct.new(
      nil,
      :column,
      :source_column,
      :source_name,
      :source_id,
      :source_type,
      :source_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how a query can compare the columns in a table, including literal comparisons and column-to-column comparisons.</p>
    # @!attribute allowed_literal_comparison_columns
    #   <p>The columns that a query can compare to literal values, for example, in a WHERE clause. Clean Rooms rejects a query that compares any other column to a literal value. Specify an empty list to block literal comparison on every column. You can't specify a column that you also use as an identity column in an aggregation threshold.</p>
    #   @return [Array<String>]
    # @!attribute allowed_column_comparison_columns
    #   <p>The columns that a query can compare to another column, for example, in a join, a WHERE clause, a GROUP BY clause, or a window function. Clean Rooms rejects a query that uses any other column in a column-to-column comparison. Specify an empty list to block column-to-column comparison on every column.</p>
    #   @return [Array<String>]
    class ComparisonControls < Struct.new(
      nil,
      :allowed_literal_comparison_columns,
      :allowed_column_comparison_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration of the compute resources for an analysis with the Spark analytics engine.</p>
    # @!attribute worker
    #   <p> The worker configuration for the compute environment.</p>
    #   @return [Types::WorkerComputeConfiguration]
    class ComputeConfiguration < Struct.new(
      :worker,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Worker < ComputeConfiguration; end
      class Unknown < ComputeConfiguration; end
    end

    # <p> The configuration details.</p>
    # @!attribute direct_analysis_configuration_details
    #   <p> The direct analysis configuration details.</p>
    #   @return [Types::DirectAnalysisConfigurationDetails]
    class ConfigurationDetails < Struct.new(
      :direct_analysis_configuration_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DirectAnalysisConfigurationDetails < ConfigurationDetails; end
      class Unknown < ConfigurationDetails; end
    end

    # <p>Details about the configured audience model association.</p>
    # @!attribute id
    #   <p>A unique identifier of the configured audience model association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model association.</p>
    #   @return [String]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that was used for this configured audience model association.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>A unique identifier for the membership that contains this configured audience model association.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership that contains this configured audience model association.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>A unique identifier of the collaboration that contains this configured audience model association.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains this configured audience model association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured audience model association.</p>
    #   @return [String]
    # @!attribute manage_resource_policies
    #   <p>When <code>TRUE</code>, indicates that the resource policy for the configured audience model resource being associated is configured for Clean Rooms to manage permissions related to the given collaboration. When <code>FALSE</code>, indicates that the configured audience model resource owner will manage permissions related to the given collaboration.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the configured audience model association.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the configured audience model association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured audience model association was updated.</p>
    #   @return [Time]
    class ConfiguredAudienceModelAssociation < Struct.new(
      nil,
      :id,
      :arn,
      :configured_audience_model_arn,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :name,
      :manage_resource_policies,
      :description,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the configured audience model association.</p>
    # @!attribute membership_id
    #   <p>A unique identifier of the membership that contains the configured audience model association.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership that contains the configured audience model association.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains the configured audience model association.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>A unique identifier of the collaboration that configured audience model is associated with.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the configured audience model association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured audience model association was updated.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>A unique identifier of the configured audience model association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured audience model association.</p>
    #   @return [String]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that was used for this configured audience model association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured audience model association.</p>
    #   @return [String]
    class ConfiguredAudienceModelAssociationSummary < Struct.new(
      nil,
      :membership_id,
      :membership_arn,
      :collaboration_arn,
      :collaboration_id,
      :create_time,
      :update_time,
      :id,
      :arn,
      :name,
      :configured_audience_model_arn,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A table that has been configured for use in a collaboration.</p>
    # @!attribute id
    #   <p>The unique ID for the configured table.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique ARN for the configured table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the configured table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the configured table.</p>
    #   @return [String]
    # @!attribute table_reference
    #   <p>The table that this configured table represents.</p>
    #   @return [Types::TableReference]
    # @!attribute create_time
    #   <p>The time the configured table was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the configured table was last updated</p>
    #   @return [Time]
    # @!attribute analysis_rule_types
    #   <p>The types of analysis rules associated with this configured table. Currently, only one analysis rule may be associated with a configured table.</p>
    #   @return [Array<String>]
    # @!attribute analysis_method
    #   <p>The analysis method for the configured table.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    #   @return [String]
    # @!attribute allowed_columns
    #   <p>The columns within the underlying Glue table that can be used within collaborations.</p>
    #   @return [Array<String>]
    # @!attribute selected_analysis_methods
    #   <p> The selected analysis methods for the configured table.</p>
    #   @return [Array<String>]
    class ConfiguredTable < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :table_reference,
      :create_time,
      :update_time,
      :analysis_rule_types,
      :analysis_method,
      :allowed_columns,
      :selected_analysis_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A configured table analysis rule, which limits how data for this table can be used.</p>
    # @!attribute configured_table_id
    #   <p>The unique ID for the configured table.</p>
    #   @return [String]
    # @!attribute configured_table_arn
    #   <p>The unique ARN for the configured table.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy that controls SQL query rules.</p>
    #   @return [Types::ConfiguredTableAnalysisRulePolicy]
    # @!attribute type
    #   <p>The type of configured table analysis rule.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the configured table analysis rule was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the configured table analysis rule was last updated.</p>
    #   @return [Time]
    class ConfiguredTableAnalysisRule < Struct.new(
      nil,
      :configured_table_id,
      :configured_table_arn,
      :policy,
      :type,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls on the query specifications that can be run on a configured table.</p>
    # @!attribute v1
    #   <p>Controls on the query specifications that can be run on a configured table.</p>
    #   @return [Types::ConfiguredTableAnalysisRulePolicyV1]
    class ConfiguredTableAnalysisRulePolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class V1 < ConfiguredTableAnalysisRulePolicy; end
      class Unknown < ConfiguredTableAnalysisRulePolicy; end
    end

    # <p>Controls on the query specifications that can be run on a configured table.</p>
    # @!attribute list
    #   <p>Analysis rule type that enables only list queries on a configured table.</p>
    #   @return [Types::AnalysisRuleList]
    # @!attribute aggregation
    #   <p>Analysis rule type that enables only aggregation queries on a configured table.</p>
    #   @return [Types::AnalysisRuleAggregation]
    # @!attribute custom
    #   <p>A type of analysis rule that enables the table owner to approve custom SQL queries on their configured tables. It supports differential privacy, minimum aggregation thresholds, and comparison controls.</p>
    #   @return [Types::AnalysisRuleCustom]
    class ConfiguredTableAnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class List < ConfiguredTableAnalysisRulePolicyV1; end
      class Aggregation < ConfiguredTableAnalysisRulePolicyV1; end
      class Custom < ConfiguredTableAnalysisRulePolicyV1; end
      class Unknown < ConfiguredTableAnalysisRulePolicyV1; end
    end

    # <p>A configured table association links a configured table to a collaboration.</p>
    # @!attribute arn
    #   <p>The unique ARN for the configured table association.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID for the configured table association.</p>
    #   @return [String]
    # @!attribute configured_table_id
    #   <p>The unique ID for the configured table that the association refers to.</p>
    #   @return [String]
    # @!attribute configured_table_arn
    #   <p>The unique ARN for the configured table that the association refers to.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique ID for the membership this configured table association belongs to.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The unique ARN for the membership this configured table association belongs to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The service will assume this role to access catalog metadata and query the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured table association, in lowercase. The table is identified by this name when running protected queries against the underlying data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the configured table association.</p>
    #   @return [String]
    # @!attribute analysis_rule_types
    #   <p> The analysis rule types for the configured table association.</p>
    #   @return [Array<String>]
    # @!attribute create_time
    #   <p>The time the configured table association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the configured table association was last updated.</p>
    #   @return [Time]
    # @!attribute child_resources
    #   <p>The child resources that depend on this configured table association.</p>
    #   @return [Array<Types::ChildResource>]
    class ConfiguredTableAssociation < Struct.new(
      nil,
      :arn,
      :id,
      :configured_table_id,
      :configured_table_arn,
      :membership_id,
      :membership_arn,
      :role_arn,
      :name,
      :description,
      :analysis_rule_types,
      :create_time,
      :update_time,
      :child_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An analysis rule for a configured table association. This analysis rule specifies how data from the table can be used within its associated collaboration. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>
    # @!attribute membership_identifier
    #   <p> The membership identifier for the configured table association analysis rule.</p>
    #   @return [String]
    # @!attribute configured_table_association_id
    #   <p> The unique identifier for the configured table association.</p>
    #   @return [String]
    # @!attribute configured_table_association_arn
    #   <p> The Amazon Resource Name (ARN) of the configured table association.</p>
    #   @return [String]
    # @!attribute policy
    #   <p> The policy of the configured table association analysis rule.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    # @!attribute type
    #   <p> The type of the configured table association analysis rule.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p> The creation time of the configured table association analysis rule.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p> The update time of the configured table association analysis rule.</p>
    #   @return [Time]
    class ConfiguredTableAssociationAnalysisRule < Struct.new(
      nil,
      :membership_identifier,
      :configured_table_association_id,
      :configured_table_association_arn,
      :policy,
      :type,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configured table association analysis rule applied to a configured table with the aggregation analysis rule.</p>
    # @!attribute allowed_result_receivers
    #   <p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p> <p>The <code>allowedAdditionalAnalyses</code> parameter is currently supported for the list analysis rule (<code>AnalysisRuleList</code>) and the custom analysis rule (<code>AnalysisRuleCustom</code>).</p>
    #   @return [Array<String>]
    class ConfiguredTableAssociationAnalysisRuleAggregation < Struct.new(
      nil,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configured table association analysis rule applied to a configured table with the custom analysis rule.</p>
    # @!attribute allowed_result_receivers
    #   <p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p>
    #   @return [Array<String>]
    class ConfiguredTableAssociationAnalysisRuleCustom < Struct.new(
      nil,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configured table association analysis rule applied to a configured table with the list analysis rule.</p>
    # @!attribute allowed_result_receivers
    #   <p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p>
    #   @return [Array<String>]
    class ConfiguredTableAssociationAnalysisRuleList < Struct.new(
      nil,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Controls on the query specifications that can be run on an associated configured table.</p>
    # @!attribute v1
    #   <p> The policy for the configured table association analysis rule.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicyV1]
    class ConfiguredTableAssociationAnalysisRulePolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class V1 < ConfiguredTableAssociationAnalysisRulePolicy; end
      class Unknown < ConfiguredTableAssociationAnalysisRulePolicy; end
    end

    # <p> Controls on the query specifications that can be run on an associated configured table.</p>
    # @!attribute list
    #   <p> Analysis rule type that enables only list queries on a configured table.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRuleList]
    # @!attribute aggregation
    #   <p> Analysis rule type that enables only aggregation queries on a configured table.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRuleAggregation]
    # @!attribute custom
    #   <p> Analysis rule type that enables the table owner to approve custom SQL queries on their configured tables. It supports differential privacy.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRuleCustom]
    class ConfiguredTableAssociationAnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class List < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Aggregation < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Custom < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Unknown < ConfiguredTableAssociationAnalysisRulePolicyV1; end
    end

    # <p>Contains the schema type properties for a configured table association.</p>
    # @!attribute configured_table_association_id
    #   <p>The unique identifier of the configured table association.</p>
    #   @return [String]
    class ConfiguredTableAssociationSchemaTypeProperties < Struct.new(
      nil,
      :configured_table_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured table association summary for the objects listed by the request.</p>
    # @!attribute configured_table_id
    #   <p>The unique configured table ID that this configured table association refers to.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique ID for the membership that the configured table association belongs to.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The unique ARN for the membership that the configured table association belongs to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured table association. The table is identified by this name when running Protected Queries against the underlying data.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the configured table association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the configured table association was last updated.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique ID for the configured table association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique ARN for the configured table association.</p>
    #   @return [String]
    # @!attribute analysis_rule_types
    #   <p>The analysis rule types that are associated with the configured table associations in this summary. </p>
    #   @return [Array<String>]
    class ConfiguredTableAssociationSummary < Struct.new(
      nil,
      :configured_table_id,
      :membership_id,
      :membership_arn,
      :name,
      :create_time,
      :update_time,
      :id,
      :arn,
      :analysis_rule_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configured table summary for the objects listed by the request.</p>
    # @!attribute id
    #   <p>The unique ID of the configured table.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique ARN of the configured table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured table.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the configured table was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the configured table was last updated.</p>
    #   @return [Time]
    # @!attribute analysis_rule_types
    #   <p>The types of analysis rules associated with this configured table.</p>
    #   @return [Array<String>]
    # @!attribute analysis_method
    #   <p>The analysis method for the configured tables. </p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    #   @return [String]
    # @!attribute selected_analysis_methods
    #   <p> The selected analysis methods for the configured table summary.</p>
    #   @return [Array<String>]
    class ConfiguredTableSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :create_time,
      :update_time,
      :analysis_rule_types,
      :analysis_method,
      :selected_analysis_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the conflicting resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the conflicting resource.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A reason code for the exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls on the analysis specifications that can be run on a configured table.</p>
    # @!attribute v1
    #   <p> The consolidated policy version 1.</p>
    #   @return [Types::ConsolidatedPolicyV1]
    class ConsolidatedPolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class V1 < ConsolidatedPolicy; end
      class Unknown < ConsolidatedPolicy; end
    end

    # <p> Controls on the analysis specifications that can be run on a configured table.</p>
    # @!attribute aggregate_columns
    #   <p> Aggregate columns in consolidated policy aggregation.</p>
    #   @return [Array<Types::AggregateColumn>]
    # @!attribute join_columns
    #   <p> The columns to join on.</p>
    #   @return [Array<String>]
    # @!attribute join_required
    #   <p> Join required</p>
    #   @return [String]
    # @!attribute allowed_join_operators
    #   <p> The allowed join operators.</p>
    #   @return [Array<String>]
    # @!attribute dimension_columns
    #   <p> The dimension columns of the consolidated policy aggregation.</p>
    #   @return [Array<String>]
    # @!attribute scalar_functions
    #   <p> The scalar functions.</p>
    #   @return [Array<String>]
    # @!attribute output_constraints
    #   <p> The output constraints of the consolidated policy aggregation.</p>
    #   @return [Array<Types::AggregationConstraint>]
    # @!attribute additional_analyses
    #   <p> Additional analyses for the consolidated policy aggregation.</p>
    #   @return [String]
    # @!attribute allowed_result_receivers
    #   <p> The allowed result receivers.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The additional analyses allowed by the consolidated policy aggregation.</p>
    #   @return [Array<String>]
    class ConsolidatedPolicyAggregation < Struct.new(
      nil,
      :aggregate_columns,
      :join_columns,
      :join_required,
      :allowed_join_operators,
      :dimension_columns,
      :scalar_functions,
      :output_constraints,
      :additional_analyses,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls on the analysis specifications that can be run on a configured table.</p>
    # @!attribute allowed_analyses
    #   <p> The allowed analyses.</p>
    #   @return [Array<String>]
    # @!attribute allowed_analysis_providers
    #   <p> The allowed analysis providers.</p>
    #   @return [Array<String>]
    # @!attribute additional_analyses
    #   <p> Additional analyses for the consolidated policy.</p>
    #   @return [String]
    # @!attribute disallowed_output_columns
    #   <p> Disallowed output columns</p>
    #   @return [Array<String>]
    # @!attribute differential_privacy
    #   <p>Specifies the unique identifier for your users.</p>
    #   @return [Types::DifferentialPrivacyConfiguration]
    # @!attribute aggregation_thresholds
    #   <p> The aggregation thresholds for the consolidated policy.</p>
    #   @return [Array<Types::AggregationThreshold>]
    # @!attribute comparison_controls
    #   <p> The comparison controls for the consolidated policy.</p>
    #   @return [Types::ComparisonControls]
    # @!attribute allowed_result_receivers
    #   <p> The allowed result receivers.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The additional analyses allowed by the consolidated policy.</p>
    #   @return [Array<String>]
    class ConsolidatedPolicyCustom < Struct.new(
      nil,
      :allowed_analyses,
      :allowed_analysis_providers,
      :additional_analyses,
      :disallowed_output_columns,
      :differential_privacy,
      :aggregation_thresholds,
      :comparison_controls,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls on the analysis specifications that can be run on a configured table.</p>
    # @!attribute join_columns
    #   <p> The columns to join on.</p>
    #   @return [Array<String>]
    # @!attribute allowed_join_operators
    #   <p> The allowed join operators in the consolidated policy list.</p>
    #   @return [Array<String>]
    # @!attribute list_columns
    #   <p> The columns in the consolidated policy list.</p>
    #   @return [Array<String>]
    # @!attribute additional_analyses
    #   <p> Additional analyses for the consolidated policy list.</p>
    #   @return [String]
    # @!attribute allowed_result_receivers
    #   <p> The allowed result receivers.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The additional analyses allowed by the consolidated policy list.</p>
    #   @return [Array<String>]
    class ConsolidatedPolicyList < Struct.new(
      nil,
      :join_columns,
      :allowed_join_operators,
      :list_columns,
      :additional_analyses,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls on the analysis specifications that can be run on a configured table.</p>
    # @!attribute list
    #   <p> The list of consolidated policies.</p>
    #   @return [Types::ConsolidatedPolicyList]
    # @!attribute aggregation
    #   <p> The aggregation setting for the consolidated policy.</p>
    #   @return [Types::ConsolidatedPolicyAggregation]
    # @!attribute custom
    #   <p> Custom policy</p>
    #   @return [Types::ConsolidatedPolicyCustom]
    class ConsolidatedPolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class List < ConsolidatedPolicyV1; end
      class Aggregation < ConsolidatedPolicyV1; end
      class Custom < ConsolidatedPolicyV1; end
      class Unknown < ConsolidatedPolicyV1; end
    end

    # @!attribute description
    #   <p>The description of the analysis template.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the analysis template.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the analysis template.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The information in the analysis template.</p>
    #   @return [Types::AnalysisSource]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute analysis_parameters
    #   <p>The parameters of the analysis template.</p>
    #   @return [Array<Types::AnalysisParameter>]
    # @!attribute schema
    #   <p>A relation within an analysis.</p>
    #   @return [Types::AnalysisSchema]
    # @!attribute error_message_configuration
    #   <p>The configuration that specifies the level of detail in error messages returned by analyses using this template. When set to <code>DETAILED</code>, error messages include more information to help troubleshoot issues with PySpark jobs. Detailed error messages may expose underlying data, including sensitive information. Recommended for faster troubleshooting in development and testing environments.</p>
    #   @return [Types::ErrorMessageConfiguration]
    # @!attribute synthetic_data_parameters
    #   <p>The parameters for generating synthetic data when running the analysis template.</p>
    #   @return [Types::SyntheticDataParameters]
    class CreateAnalysisTemplateOperationInput < Struct.new(
      nil,
      :description,
      :membership_identifier,
      :name,
      :format,
      :source,
      :tags,
      :analysis_parameters,
      :schema,
      :error_message_configuration,
      :synthetic_data_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_template
    #   <p>The analysis template.</p>
    #   @return [Types::AnalysisTemplate]
    class CreateAnalysisTemplateOperationOutput < Struct.new(
      nil,
      :analysis_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier of the collaboration that the change request is made against.</p>
    #   @return [String]
    # @!attribute changes
    #   <p>The list of changes to apply to the collaboration. Each change specifies the type of modification and the details of what should be changed.</p>
    #   @return [Array<Types::ChangeInput>]
    class CreateCollaborationChangeRequestInput < Struct.new(
      nil,
      :collaboration_identifier,
      :changes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_change_request
    #   <p>Represents a request to modify a collaboration. Change requests enable structured modifications to collaborations after they have been created.</p>
    #   @return [Types::CollaborationChangeRequest]
    class CreateCollaborationChangeRequestOutput < Struct.new(
      nil,
      :collaboration_change_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>A list of initial members, not including the creator. This list is immutable.</p>
    #   @return [Array<Types::MemberSpecification>]
    # @!attribute name
    #   <p>The display name for a collaboration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the collaboration provided by the collaboration owner.</p>
    #   @return [String]
    # @!attribute creator_member_abilities
    #   <p>The abilities granted to the collaboration creator.</p>
    #   @return [Array<String>]
    # @!attribute creator_ml_member_abilities
    #   <p>The ML abilities granted to the collaboration creator.</p>
    #   @return [Types::MLMemberAbilities]
    # @!attribute creator_display_name
    #   <p>The display name of the collaboration creator.</p>
    #   @return [String]
    # @!attribute data_encryption_metadata
    #   <p>The settings for client-side encryption with Cryptographic Computing for Clean Rooms.</p>
    #   @return [Types::DataEncryptionMetadata]
    # @!attribute query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the collaboration.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute job_log_status
    #   <p>Specifies whether job logs are enabled for this collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration; those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute creator_payment_configuration
    #   <p>The collaboration creator's payment responsibilities set by the collaboration creator. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for query compute costs, then the member who can query is the default payer.</p>
    #   @return [Types::PaymentConfiguration]
    # @!attribute analytics_engine
    #   <p> The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>
    #   @return [String]
    # @!attribute auto_approved_change_request_types
    #   <p>The types of change requests that are automatically approved for this collaboration.</p>
    #   @return [Array<String>]
    # @!attribute allowed_result_regions
    #   <p>The Amazon Web Services Regions where collaboration query results can be stored. When specified, results can only be written to these Regions. This parameter enables you to meet your compliance and data governance requirements, and implement regional data governance policies.</p>
    #   @return [Array<String>]
    # @!attribute is_metrics_enabled
    #   <p>An indicator as to whether metrics have been enabled or disabled for the collaboration.</p> <p>When <code>true</code>, collaboration members can opt in to Amazon CloudWatch metrics for their membership queries. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class CreateCollaborationOperationInput < Struct.new(
      nil,
      :members,
      :name,
      :description,
      :creator_member_abilities,
      :creator_ml_member_abilities,
      :creator_display_name,
      :data_encryption_metadata,
      :query_log_status,
      :job_log_status,
      :tags,
      :creator_payment_configuration,
      :analytics_engine,
      :auto_approved_change_request_types,
      :allowed_result_regions,
      :is_metrics_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration
    #   <p>The collaboration.</p>
    #   @return [Types::Collaboration]
    class CreateCollaborationOperationOutput < Struct.new(
      nil,
      :collaboration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The configured audience model is associated to the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute configured_audience_model_arn
    #   <p>A unique identifier for the configured audience model that you want to associate.</p>
    #   @return [String]
    # @!attribute configured_audience_model_association_name
    #   <p>The name of the configured audience model association.</p>
    #   @return [String]
    # @!attribute manage_resource_policies
    #   <p>When <code>TRUE</code>, indicates that the resource policy for the configured audience model resource being associated is configured for Clean Rooms to manage permissions related to the given collaboration. When <code>FALSE</code>, indicates that the configured audience model resource owner will manage permissions related to the given collaboration.</p> <p>Setting this to <code>TRUE</code> requires you to have permissions to create, update, and delete the resource policy for the <code>cleanrooms-ml</code> resource when you call the <a>DeleteConfiguredAudienceModelAssociation</a> resource. In addition, if you are the collaboration creator and specify <code>TRUE</code>, you must have the same permissions when you call the <a>DeleteMember</a> and <a>DeleteCollaboration</a> APIs.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>A description of the configured audience model association.</p>
    #   @return [String]
    class CreateConfiguredAudienceModelAssociationInput < Struct.new(
      nil,
      :membership_identifier,
      :configured_audience_model_arn,
      :configured_audience_model_association_name,
      :manage_resource_policies,
      :tags,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association
    #   <p>Information about the configured audience model association.</p>
    #   @return [Types::ConfiguredAudienceModelAssociation]
    class CreateConfiguredAudienceModelAssociationOutput < Struct.new(
      nil,
      :configured_audience_model_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The identifier for the configured table to create the analysis rule for. Currently accepts the configured table ID. </p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The type of analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_policy
    #   <p>The analysis rule policy that was created for the configured table.</p>
    #   @return [Types::ConfiguredTableAnalysisRulePolicy]
    class CreateConfiguredTableAnalysisRuleOperationInput < Struct.new(
      nil,
      :configured_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule that was created for the configured table.</p>
    #   @return [Types::ConfiguredTableAnalysisRule]
    class CreateConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    # @!attribute configured_table_association_identifier
    #   <p> The unique ID for the configured table association. Currently accepts the configured table association ID.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p> The type of analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_policy
    #   <p>The analysis rule policy that was created for the configured table association.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    class CreateConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    class CreateConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the configured table association. This name is used to query the underlying configured table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the configured table association.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The configured table is associated to the collaboration that this membership belongs to. Currently accepts a membership ID.</p>
    #   @return [String]
    # @!attribute configured_table_identifier
    #   <p>A unique identifier for the configured table to be associated to. Currently accepts a configured table ID.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The service will assume this role to access catalog metadata and query the table.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    class CreateConfiguredTableAssociationOperationInput < Struct.new(
      nil,
      :name,
      :description,
      :membership_identifier,
      :configured_table_identifier,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_association
    #   <p>The configured table association.</p>
    #   @return [Types::ConfiguredTableAssociation]
    class CreateConfiguredTableAssociationOperationOutput < Struct.new(
      nil,
      :configured_table_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the configured table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the configured table.</p>
    #   @return [String]
    # @!attribute table_reference
    #   <p>A reference to the table being configured.</p>
    #   @return [Types::TableReference]
    # @!attribute allowed_columns
    #   <p>The columns of the underlying table that can be used by collaborations or analysis rules.</p>
    #   @return [Array<String>]
    # @!attribute analysis_method
    #   <p>The analysis method allowed for the configured tables.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    #   @return [String]
    # @!attribute selected_analysis_methods
    #   <p> The analysis methods to enable for the configured table. When configured, you must specify at least two analysis methods.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    class CreateConfiguredTableOperationInput < Struct.new(
      nil,
      :name,
      :description,
      :table_reference,
      :allowed_columns,
      :analysis_method,
      :selected_analysis_methods,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table
    #   <p>The created configured table.</p>
    #   @return [Types::ConfiguredTable]
    class CreateConfiguredTableOperationOutput < Struct.new(
      nil,
      :configured_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the ID mapping table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the ID mapping table.</p>
    #   @return [String]
    # @!attribute input_reference_config
    #   <p>The input reference configuration needed to create the ID mapping table.</p>
    #   @return [Types::IdMappingTableInputReferenceConfig]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key. This value is used to encrypt the mapping table data that is stored by Clean Rooms.</p>
    #   @return [String]
    class CreateIdMappingTableInput < Struct.new(
      nil,
      :membership_identifier,
      :name,
      :description,
      :input_reference_config,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table
    #   <p>The ID mapping table that was created.</p>
    #   @return [Types::IdMappingTable]
    class CreateIdMappingTableOutput < Struct.new(
      nil,
      :id_mapping_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association.</p>
    #   @return [String]
    # @!attribute input_reference_config
    #   <p>The input reference configuration needed to create the ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute name
    #   <p>The name for the ID namespace association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace association.</p>
    #   @return [String]
    # @!attribute id_mapping_config
    #   <p>The configuration settings for the ID mapping table.</p>
    #   @return [Types::IdMappingConfig]
    class CreateIdNamespaceAssociationInput < Struct.new(
      nil,
      :membership_identifier,
      :input_reference_config,
      :tags,
      :name,
      :description,
      :id_mapping_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association
    #   <p>The ID namespace association that was created.</p>
    #   @return [Types::IdNamespaceAssociation]
    class CreateIdNamespaceAssociationOutput < Struct.new(
      nil,
      :id_namespace_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table for which to create the analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The type of analysis rule to create. Currently, only <code>CUSTOM</code> is supported.</p>
    #   @return [String]
    # @!attribute analysis_rule_policy
    #   <p>The analysis rule policy to apply to the intermediate table.</p>
    #   @return [Types::IntermediateTableAnalysisRulePolicy]
    class CreateIntermediateTableAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :intermediate_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule that was created for the intermediate table.</p>
    #   @return [Types::IntermediateTableAnalysisRule]
    class CreateIntermediateTableAnalysisRuleOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership where the intermediate table is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name for the intermediate table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the intermediate table.</p>
    #   @return [String]
    # @!attribute population_analysis_configuration
    #   <p>The configuration that defines the analysis used to populate the intermediate table.</p>
    #   @return [Types::PopulationAnalysisConfiguration]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed KMS key used to encrypt the intermediate table data.</p>
    #   @return [String]
    # @!attribute retention_in_days
    #   <p>The number of days to retain populated data versions.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    class CreateIntermediateTableInput < Struct.new(
      nil,
      :membership_identifier,
      :name,
      :description,
      :population_analysis_configuration,
      :kms_key_arn,
      :retention_in_days,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table
    #   <p>The intermediate table that was created.</p>
    #   @return [Types::IntermediateTable]
    class CreateIntermediateTableOutput < Struct.new(
      nil,
      :intermediate_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique ID for the associated collaboration.</p>
    #   @return [String]
    # @!attribute query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute job_log_status
    #   <p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute default_result_configuration
    #   <p>The default protected query result configuration as specified by the member who can receive results.</p>
    #   @return [Types::MembershipProtectedQueryResultConfiguration]
    # @!attribute default_job_result_configuration
    #   <p>The default job result configuration that determines how job results are protected and managed within this membership. This configuration applies to all jobs.</p>
    #   @return [Types::MembershipProtectedJobResultConfiguration]
    # @!attribute payment_configuration
    #   <p>The payment responsibilities accepted by the collaboration member.</p> <p>Not required if the collaboration member has the member ability to run queries. </p> <p>Required if the collaboration member doesn't have the member ability to run queries but is configured as a payer by the collaboration creator. </p>
    #   @return [Types::MembershipPaymentConfiguration]
    # @!attribute is_metrics_enabled
    #   <p>An indicator as to whether Amazon CloudWatch metrics have been enabled or disabled for the membership.</p> <p>Amazon CloudWatch metrics are only available when the collaboration has metrics enabled. This option can be set by collaboration members who have the ability to run queries (analysis runners) or by members who are configured as payers.</p> <p>When <code>true</code>, metrics about query execution are collected in Amazon CloudWatch. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class CreateMembershipOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :query_log_status,
      :job_log_status,
      :tags,
      :default_result_configuration,
      :default_job_result_configuration,
      :payment_configuration,
      :is_metrics_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>The membership that was created.</p>
    #   @return [Types::Membership]
    class CreateMembershipOperationOutput < Struct.new(
      nil,
      :membership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is created in the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute auto_refresh
    #   <p>How often the privacy budget refreshes.</p> <important> <p>If you plan to regularly bring new data into the collaboration, you can use <code>CALENDAR_MONTH</code> to automatically get a new privacy budget for the collaboration every calendar month. Choosing this option allows arbitrary amounts of information to be revealed about rows of the data when repeatedly queries across refreshes. Avoid choosing this if the same rows will be repeatedly queried between privacy budget refreshes.</p> </important>
    #   @return [String]
    # @!attribute privacy_budget_type
    #   <p>Specifies the type of the privacy budget template.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies your parameters for the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplateParametersInput]
    # @!attribute tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    #   @return [Hash<String, String>]
    class CreatePrivacyBudgetTemplateInput < Struct.new(
      nil,
      :membership_identifier,
      :auto_refresh,
      :privacy_budget_type,
      :parameters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_template
    #   <p>A summary of the elements in the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplate]
    class CreatePrivacyBudgetTemplateOutput < Struct.new(
      nil,
      :privacy_budget_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for client-side encryption for cryptographic computing.</p>
    # @!attribute allow_cleartext
    #   <p>Indicates whether encrypted tables can contain cleartext data (<code>TRUE</code>) or are to cryptographically process every column (<code>FALSE</code>).</p>
    #   @return [Boolean]
    # @!attribute allow_duplicates
    #   <p>Indicates whether Fingerprint columns can contain duplicate entries (<code>TRUE</code>) or are to contain only non-repeated values (<code>FALSE</code>).</p>
    #   @return [Boolean]
    # @!attribute allow_joins_on_columns_with_different_names
    #   <p>Indicates whether Fingerprint columns can be joined on any other Fingerprint column with a different name (<code>TRUE</code>) or can only be joined on Fingerprint columns of the same name (<code>FALSE</code>).</p>
    #   @return [Boolean]
    # @!attribute preserve_nulls
    #   <p>Indicates whether NULL values are to be copied as NULL to encrypted tables (<code>TRUE</code>) or cryptographically processed (<code>FALSE</code>).</p>
    #   @return [Boolean]
    class DataEncryptionMetadata < Struct.new(
      nil,
      :allow_cleartext,
      :allow_duplicates,
      :allow_joins_on_columns_with_different_names,
      :preserve_nulls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    #   @return [String]
    class DeleteAnalysisTemplateOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :analysis_template_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAnalysisTemplateOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    #   @return [String]
    class DeleteCollaborationOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCollaborationOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association_identifier
    #   <p>A unique identifier of the configured audience model association that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier of the membership that contains the audience model association that you want to delete.</p>
    #   @return [String]
    class DeleteConfiguredAudienceModelAssociationInput < Struct.new(
      nil,
      :configured_audience_model_association_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConfiguredAudienceModelAssociationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique identifier for the configured table that the analysis rule applies to. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The analysis rule type to be deleted. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    #   @return [String]
    class DeleteConfiguredTableAnalysisRuleOperationInput < Struct.new(
      nil,
      :configured_table_identifier,
      :analysis_rule_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An empty response that indicates a successful delete.</p>
    class DeleteConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    # @!attribute configured_table_association_identifier
    #   <p>The identiﬁer for the conﬁgured table association that's related to the analysis rule that you want to delete.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The type of the analysis rule that you want to delete.</p>
    #   @return [String]
    class DeleteConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_association_identifier
    #   <p>The unique ID for the configured table association to be deleted. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    class DeleteConfiguredTableAssociationOperationInput < Struct.new(
      nil,
      :configured_table_association_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConfiguredTableAssociationOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique ID for the configured table to delete.</p>
    #   @return [String]
    class DeleteConfiguredTableOperationInput < Struct.new(
      nil,
      :configured_table_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The empty output for a successful deletion.</p>
    class DeleteConfiguredTableOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to delete.</p>
    #   @return [String]
    class DeleteIdMappingTableInput < Struct.new(
      nil,
      :id_mapping_table_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIdMappingTableOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to delete.</p>
    #   @return [String]
    class DeleteIdNamespaceAssociationInput < Struct.new(
      nil,
      :id_namespace_association_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIdNamespaceAssociationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table from which to delete the analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The type of analysis rule to delete. Currently, only <code>CUSTOM</code> is supported.</p>
    #   @return [String]
    class DeleteIntermediateTableAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :intermediate_table_identifier,
      :analysis_rule_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIntermediateTableAnalysisRuleOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table to delete.</p>
    #   @return [String]
    class DeleteIntermediateTableInput < Struct.new(
      nil,
      :membership_identifier,
      :intermediate_table_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIntermediateTableOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier for the associated collaboration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the member to remove.</p>
    #   @return [String]
    class DeleteMemberOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMemberOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    class DeleteMembershipOperationInput < Struct.new(
      nil,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMembershipOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is deleted from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template. </p>
    #   @return [String]
    class DeletePrivacyBudgetTemplateInput < Struct.new(
      nil,
      :membership_identifier,
      :privacy_budget_template_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePrivacyBudgetTemplateOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the name of the column that contains the unique identifier of your users, whose privacy you want to protect.</p>
    # @!attribute name
    #   <p>The name of the column, such as user_id, that contains the unique identifier of your users, whose privacy you want to protect. If you want to turn on differential privacy for two or more tables in a collaboration, you must configure the same column as the user identifier column in both analysis rules.</p>
    #   @return [String]
    class DifferentialPrivacyColumn < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the unique identifier for your users.</p>
    # @!attribute columns
    #   <p>The name of the column (such as user_id) that contains the unique identifier of your users whose privacy you want to protect. If you want to turn on diﬀerential privacy for two or more tables in a collaboration, you must conﬁgure the same column as the user identiﬁer column in both analysis rules.</p>
    #   @return [Array<Types::DifferentialPrivacyColumn>]
    class DifferentialPrivacyConfiguration < Struct.new(
      nil,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array that contains the sensitivity parameters.</p>
    # @!attribute sensitivity_parameters
    #   <p>Provides the sensitivity parameters that you can use to better understand the total amount of noise in query results.</p>
    #   @return [Array<Types::DifferentialPrivacySensitivityParameters>]
    class DifferentialPrivacyParameters < Struct.new(
      nil,
      :sensitivity_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides an estimate of the number of aggregation functions that the member who can query can run given the epsilon and noise parameters.</p>
    # @!attribute type
    #   <p>The type of aggregation function.</p>
    #   @return [String]
    # @!attribute max_count
    #   <p>The maximum number of aggregations that the member who can query can run given the epsilon and noise parameters.</p>
    #   @return [Integer]
    class DifferentialPrivacyPreviewAggregation < Struct.new(
      nil,
      :type,
      :max_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameters that you want to preview.</p>
    # @!attribute epsilon
    #   <p>The epsilon value that you want to preview.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyPreviewParametersInput < Struct.new(
      nil,
      :epsilon,
      :users_noise_per_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configured epsilon value and the utility in terms of total aggregations, as well as the remaining aggregations available.</p>
    # @!attribute aggregations
    #   <p>This information includes the configured epsilon value and the utility in terms of total aggregations, as well as the remaining aggregations.</p>
    #   @return [Array<Types::DifferentialPrivacyPrivacyBudgetAggregation>]
    # @!attribute epsilon
    #   <p>The epsilon value that you configured.</p>
    #   @return [Integer]
    class DifferentialPrivacyPrivacyBudget < Struct.new(
      nil,
      :aggregations,
      :epsilon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the total number of aggregations, as well as the remaining aggregations.</p>
    # @!attribute type
    #   <p>The different types of aggregation functions that you can perform.</p>
    #   @return [String]
    # @!attribute max_count
    #   <p>The maximum number of aggregation functions that you can perform with the given privacy budget.</p>
    #   @return [Integer]
    # @!attribute remaining_count
    #   <p>The remaining number of aggregation functions that can be run with the available privacy budget.</p>
    #   @return [Integer]
    class DifferentialPrivacyPrivacyBudgetAggregation < Struct.new(
      nil,
      :type,
      :max_count,
      :remaining_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the number of aggregation functions that the member who can query can run given the epsilon and noise parameters.</p>
    # @!attribute aggregations
    #   <p>The number of aggregation functions that you can perform.</p>
    #   @return [Array<Types::DifferentialPrivacyPreviewAggregation>]
    class DifferentialPrivacyPrivacyImpact < Struct.new(
      nil,
      :aggregations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the sensitivity parameters.</p>
    # @!attribute aggregation_type
    #   <p>The type of aggregation function that was run.</p>
    #   @return [String]
    # @!attribute aggregation_expression
    #   <p>The aggregation expression that was run.</p>
    #   @return [String]
    # @!attribute user_contribution_limit
    #   <p>The maximum number of rows contributed by a user in a SQL query.</p>
    #   @return [Integer]
    # @!attribute min_column_value
    #   <p>The lower bound of the aggregation expression.</p>
    #   @return [Float]
    # @!attribute max_column_value
    #   <p>The upper bound of the aggregation expression.</p>
    #   @return [Float]
    class DifferentialPrivacySensitivityParameters < Struct.new(
      nil,
      :aggregation_type,
      :aggregation_expression,
      :user_contribution_limit,
      :min_column_value,
      :max_column_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameter values that you want to use for the differential privacy template.</p>
    # @!attribute epsilon
    #   <p>The epsilon value that you want to use.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyTemplateParametersInput < Struct.new(
      nil,
      :epsilon,
      :users_noise_per_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameter values that were used for the differential privacy template.</p>
    # @!attribute epsilon
    #   <p>The epsilon value that you specified.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyTemplateParametersOutput < Struct.new(
      nil,
      :epsilon,
      :users_noise_per_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameter values that you want to update in the differential privacy template.</p>
    # @!attribute epsilon
    #   <p>The updated epsilon value that you want to use.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>The updated value of noise added per query. It is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyTemplateUpdateParameters < Struct.new(
      nil,
      :epsilon,
      :users_noise_per_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The direct analysis configuration details.</p>
    # @!attribute receiver_account_ids
    #   <p> The account IDs for the member who received the results of a protected query.</p>
    #   @return [Array<String>]
    class DirectAnalysisConfigurationDetails < Struct.new(
      nil,
      :receiver_account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table to disallow.</p>
    #   @return [String]
    # @!attribute intermediate_table_name
    #   <p>The name of the intermediate table to disallow.</p>
    #   @return [String]
    # @!attribute include_descendants
    #   <p>Specifies whether to cascade the disallow action to descendant intermediate tables. Default is <code>true</code>.</p>
    #   @return [Boolean]
    class DisallowIntermediateTableInput < Struct.new(
      nil,
      :membership_identifier,
      :intermediate_table_name,
      :include_descendants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisallowIntermediateTableOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines the level of detail included in error messages returned by PySpark jobs. This configuration allows you to control the verbosity of error messages to help with troubleshooting PySpark jobs while maintaining appropriate security controls.</p>
    # @!attribute type
    #   <p>The level of detail for error messages returned by the PySpark job. When set to DETAILED, error messages include more information to help troubleshoot issues with your PySpark job.</p> <p>Because this setting may expose sensitive data, it is recommended for development and testing environments.</p>
    #   @return [String]
    class ErrorMessageConfiguration < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership that the analysis log export belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    # @!attribute analysis_log_export_identifier
    #   <p>The unique identifier of the analysis log export to retrieve.</p>
    #   @return [String]
    class GetAnalysisLogExportInput < Struct.new(
      nil,
      :membership_identifier,
      :analysis_log_export_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_log_export
    #   <p>The analysis log export processing metadata.</p>
    #   @return [Types::AnalysisLogExport]
    class GetAnalysisLogExportOutput < Struct.new(
      nil,
      :analysis_log_export,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    #   @return [String]
    class GetAnalysisTemplateOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :analysis_template_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_template
    #   <p>The analysis template.</p>
    #   @return [Types::AnalysisTemplate]
    class GetAnalysisTemplateOperationOutput < Struct.new(
      nil,
      :analysis_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute analysis_template_arn
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    #   @return [String]
    class GetCollaborationAnalysisTemplateOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :analysis_template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_analysis_template
    #   <p>The analysis template within a collaboration.</p>
    #   @return [Types::CollaborationAnalysisTemplate]
    class GetCollaborationAnalysisTemplateOperationOutput < Struct.new(
      nil,
      :collaboration_analysis_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier of the collaboration that the change request is made against.</p>
    #   @return [String]
    # @!attribute change_request_identifier
    #   <p>A unique identifier for the change request to retrieve.</p>
    #   @return [String]
    class GetCollaborationChangeRequestInput < Struct.new(
      nil,
      :collaboration_identifier,
      :change_request_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_change_request
    #   <p>The collaboration change request that was requested.</p>
    #   @return [Types::CollaborationChangeRequest]
    class GetCollaborationChangeRequestOutput < Struct.new(
      nil,
      :collaboration_change_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the configured audience model association belongs to. Accepts a collaboration ID.</p>
    #   @return [String]
    # @!attribute configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to retrieve.</p>
    #   @return [String]
    class GetCollaborationConfiguredAudienceModelAssociationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :configured_audience_model_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_configured_audience_model_association
    #   <p>The metadata of the configured audience model association.</p>
    #   @return [Types::CollaborationConfiguredAudienceModelAssociation]
    class GetCollaborationConfiguredAudienceModelAssociationOutput < Struct.new(
      nil,
      :collaboration_configured_audience_model_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    # @!attribute id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    class GetCollaborationIdNamespaceAssociationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :id_namespace_association_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_id_namespace_association
    #   <p>The ID namespace association that you requested.</p>
    #   @return [Types::CollaborationIdNamespaceAssociation]
    class GetCollaborationIdNamespaceAssociationOutput < Struct.new(
      nil,
      :collaboration_id_namespace_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    #   @return [String]
    class GetCollaborationOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration
    #   <p>The entire collaboration for this identifier.</p>
    #   @return [Types::Collaboration]
    class GetCollaborationOperationOutput < Struct.new(
      nil,
      :collaboration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for one of your collaborations.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_identifier
    #   <p>A unique identifier for one of your privacy budget templates.</p>
    #   @return [String]
    class GetCollaborationPrivacyBudgetTemplateInput < Struct.new(
      nil,
      :collaboration_identifier,
      :privacy_budget_template_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_privacy_budget_template
    #   <p>Returns the details of the privacy budget template that you requested.</p>
    #   @return [Types::CollaborationPrivacyBudgetTemplate]
    class GetCollaborationPrivacyBudgetTemplateOutput < Struct.new(
      nil,
      :collaboration_privacy_budget_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to retrieve.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership that contains the configured audience model association that you want to retrieve.</p>
    #   @return [String]
    class GetConfiguredAudienceModelAssociationInput < Struct.new(
      nil,
      :configured_audience_model_association_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association
    #   <p>Information about the configured audience model association that you requested.</p>
    #   @return [Types::ConfiguredAudienceModelAssociation]
    class GetConfiguredAudienceModelAssociationOutput < Struct.new(
      nil,
      :configured_audience_model_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique identifier for the configured table to retrieve. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The analysis rule to be retrieved. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    #   @return [String]
    class GetConfiguredTableAnalysisRuleOperationInput < Struct.new(
      nil,
      :configured_table_identifier,
      :analysis_rule_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The entire analysis rule output.</p>
    #   @return [Types::ConfiguredTableAnalysisRule]
    class GetConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    # @!attribute configured_table_association_identifier
    #   <p> The identiﬁer for the conﬁgured table association that's related to the analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p> The type of analysis rule that you want to retrieve.</p>
    #   @return [String]
    class GetConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    class GetConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_association_identifier
    #   <p>The unique ID for the configured table association to retrieve. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    class GetConfiguredTableAssociationOperationInput < Struct.new(
      nil,
      :configured_table_association_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_association
    #   <p>The entire configured table association object.</p>
    #   @return [Types::ConfiguredTableAssociation]
    class GetConfiguredTableAssociationOperationOutput < Struct.new(
      nil,
      :configured_table_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique ID for the configured table to retrieve.</p>
    #   @return [String]
    class GetConfiguredTableOperationInput < Struct.new(
      nil,
      :configured_table_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table
    #   <p>The retrieved configured table.</p>
    #   @return [Types::ConfiguredTable]
    class GetConfiguredTableOperationOutput < Struct.new(
      nil,
      :configured_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table identifier that you want to retrieve.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to retrieve.</p>
    #   @return [String]
    class GetIdMappingTableInput < Struct.new(
      nil,
      :id_mapping_table_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table
    #   <p>The ID mapping table that you requested.</p>
    #   @return [Types::IdMappingTable]
    class GetIdMappingTableOutput < Struct.new(
      nil,
      :id_mapping_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    class GetIdNamespaceAssociationInput < Struct.new(
      nil,
      :id_namespace_association_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association
    #   <p>The ID namespace association that you requested.</p>
    #   @return [Types::IdNamespaceAssociation]
    class GetIdNamespaceAssociationOutput < Struct.new(
      nil,
      :id_namespace_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table for which to retrieve the analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The type of analysis rule to retrieve. Currently, only <code>CUSTOM</code> is supported.</p>
    #   @return [String]
    class GetIntermediateTableAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :intermediate_table_identifier,
      :analysis_rule_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule for the intermediate table.</p>
    #   @return [Types::IntermediateTableAnalysisRule]
    class GetIntermediateTableAnalysisRuleOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table to retrieve.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    class GetIntermediateTableInput < Struct.new(
      nil,
      :intermediate_table_identifier,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table
    #   <p>The intermediate table retrieved.</p>
    #   @return [Types::IntermediateTable]
    class GetIntermediateTableOutput < Struct.new(
      nil,
      :intermediate_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    class GetMembershipOperationInput < Struct.new(
      nil,
      :membership_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>The membership retrieved for the provided identifier.</p>
    #   @return [Types::Membership]
    class GetMembershipOperationOutput < Struct.new(
      nil,
      :membership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template.</p>
    #   @return [String]
    class GetPrivacyBudgetTemplateInput < Struct.new(
      nil,
      :membership_identifier,
      :privacy_budget_template_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_template
    #   <p>Returns the details of the privacy budget template that you requested.</p>
    #   @return [Types::PrivacyBudgetTemplate]
    class GetPrivacyBudgetTemplateOutput < Struct.new(
      nil,
      :privacy_budget_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p> The identifier for a membership in a protected job instance.</p>
    #   @return [String]
    # @!attribute protected_job_identifier
    #   <p> The identifier for the protected job instance.</p>
    #   @return [String]
    class GetProtectedJobInput < Struct.new(
      nil,
      :membership_identifier,
      :protected_job_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protected_job
    #   <p> The protected job metadata.</p>
    #   @return [Types::ProtectedJob]
    class GetProtectedJobOutput < Struct.new(
      nil,
      :protected_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership in a protected query instance.</p>
    #   @return [String]
    # @!attribute protected_query_identifier
    #   <p>The identifier for a protected query instance.</p>
    #   @return [String]
    class GetProtectedQueryOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :protected_query_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protected_query
    #   <p>The query processing metadata.</p>
    #   @return [Types::ProtectedQuery]
    class GetProtectedQueryOperationOutput < Struct.new(
      nil,
      :protected_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the schema to retrieve the analysis rule for.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the schema analysis rule to retrieve. Schema analysis rules are uniquely identified by a combination of the collaboration, the schema name, and their type.</p>
    #   @return [String]
    class GetSchemaAnalysisRuleOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>A specification about how data from the configured table can be used.</p>
    #   @return [Types::AnalysisRule]
    class GetSchemaAnalysisRuleOperationOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the relation to retrieve the schema for.</p>
    #   @return [String]
    class GetSchemaOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema
    #   <p>The entire schema object.</p>
    #   @return [Types::Schema]
    class GetSchemaOperationOutput < Struct.new(
      nil,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a table within an Glue data catalog.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region where the Glue table is located. This parameter is required to uniquely identify and access tables across different Regions.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the Glue table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database the Glue table belongs to.</p>
    #   @return [String]
    class GlueTableReference < Struct.new(
      nil,
      :region,
      :table_name,
      :database_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Hash</p>
    # @!attribute sha256
    #   <p> The SHA-256 hash value.</p>
    #   @return [String]
    class Hash < Struct.new(
      nil,
      :sha256,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for the ID mapping table.</p>
    # @!attribute allow_use_as_dimension_column
    #   <p>An indicator as to whether you can use your column as a dimension column in the ID mapping table (<code>TRUE</code>) or not (<code>FALSE</code>).</p> <p>Default is <code>FALSE</code>.</p>
    #   @return [Boolean]
    class IdMappingConfig < Struct.new(
      nil,
      :allow_use_as_dimension_column,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_use_as_dimension_column] = false unless options.key?(:allow_use_as_dimension_column)
        super
      end
    end

    # <p>Describes information about the ID mapping table.</p>
    # @!attribute id
    #   <p>The unique identifier of the ID mapping table.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ID mapping table.</p>
    #   @return [String]
    # @!attribute input_reference_config
    #   <p>The input reference configuration for the ID mapping table.</p>
    #   @return [Types::IdMappingTableInputReferenceConfig]
    # @!attribute membership_id
    #   <p>The unique identifier of the membership resource for the ID mapping table.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership resource for the ID mapping table.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains this ID mapping table.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains this ID mapping table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID mapping table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the ID mapping table.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the ID mapping table was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the ID mapping table was updated.</p>
    #   @return [Time]
    # @!attribute input_reference_properties
    #   <p>The input reference properties for the ID mapping table.</p>
    #   @return [Types::IdMappingTableInputReferenceProperties]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.</p>
    #   @return [String]
    # @!attribute child_resources
    #   <p>The child resources that depend on this ID mapping table.</p>
    #   @return [Array<Types::ChildResource>]
    class IdMappingTable < Struct.new(
      nil,
      :id,
      :arn,
      :input_reference_config,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :description,
      :name,
      :create_time,
      :update_time,
      :input_reference_properties,
      :kms_key_arn,
      :child_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the input reference configuration for the ID mapping table.</p>
    # @!attribute input_reference_arn
    #   <p>The Amazon Resource Name (ARN) of the referenced resource in Entity Resolution. Valid values are ID mapping workflow ARNs.</p>
    #   @return [String]
    # @!attribute manage_resource_policies
    #   <p>When <code>TRUE</code>, Clean Rooms manages permissions for the ID mapping table resource. </p> <p>When <code>FALSE</code>, the resource owner manages permissions for the ID mapping table resource.</p>
    #   @return [Boolean]
    class IdMappingTableInputReferenceConfig < Struct.new(
      nil,
      :input_reference_arn,
      :manage_resource_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input reference properties for the ID mapping table.</p>
    # @!attribute id_mapping_table_input_source
    #   <p>The input source of the ID mapping table.</p>
    #   @return [Array<Types::IdMappingTableInputSource>]
    class IdMappingTableInputReferenceProperties < Struct.new(
      nil,
      :id_mapping_table_input_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input source of the ID mapping table.</p>
    # @!attribute id_namespace_association_id
    #   <p>The unique identifier of the ID namespace association.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the input source of the ID mapping table.</p>
    #   @return [String]
    class IdMappingTableInputSource < Struct.new(
      nil,
      :id_namespace_association_id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional properties that are specific to the type of the associated schema.</p>
    # @!attribute id_mapping_table_input_source
    #   <p>Defines which ID namespace associations are used to create the ID mapping table.</p>
    #   @return [Array<Types::IdMappingTableInputSource>]
    # @!attribute id_mapping_table_id
    #   <p>The unique identifier of the ID mapping table.</p>
    #   @return [String]
    class IdMappingTableSchemaTypeProperties < Struct.new(
      nil,
      :id_mapping_table_input_source,
      :id_mapping_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the ID mapping table.</p>
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains this ID mapping table.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains this ID mapping table.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique identifier of the membership resource for this ID mapping table.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership resource for this ID mapping table.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which this ID mapping table was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which this ID mapping table was updated.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique identifier of this ID mapping table.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of this ID mapping table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this ID mapping table.</p>
    #   @return [String]
    # @!attribute input_reference_config
    #   <p>The input reference configuration for the ID mapping table.</p>
    #   @return [Types::IdMappingTableInputReferenceConfig]
    # @!attribute name
    #   <p>The name of this ID mapping table.</p>
    #   @return [String]
    class IdMappingTableSummary < Struct.new(
      nil,
      :collaboration_arn,
      :collaboration_id,
      :membership_id,
      :membership_arn,
      :create_time,
      :update_time,
      :id,
      :arn,
      :description,
      :input_reference_config,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information to create the ID namespace association.</p>
    # @!attribute id
    #   <p>The unique identifier for this ID namespace association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ID namespace association.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique identifier of the membership resource for this ID namespace association.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership resource for this ID namespace association.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains this ID namespace association.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains this ID namespace association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this ID namespace association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace association.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the ID namespace association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the ID namespace association was updated.</p>
    #   @return [Time]
    # @!attribute input_reference_config
    #   <p>The input reference configuration for the ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    # @!attribute input_reference_properties
    #   <p>The input reference properties for the ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferenceProperties]
    # @!attribute id_mapping_config
    #   <p>The configuration settings for the ID mapping table.</p>
    #   @return [Types::IdMappingConfig]
    class IdNamespaceAssociation < Struct.new(
      nil,
      :id,
      :arn,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :name,
      :description,
      :create_time,
      :update_time,
      :input_reference_config,
      :input_reference_properties,
      :id_mapping_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the information for the ID namespace association input reference configuration.</p>
    # @!attribute input_reference_arn
    #   <p>The Amazon Resource Name (ARN) of the Entity Resolution resource that is being associated to the collaboration. Valid resource ARNs are from the ID namespaces that you own.</p>
    #   @return [String]
    # @!attribute manage_resource_policies
    #   <p>When <code>TRUE</code>, Clean Rooms manages permissions for the ID namespace association resource.</p> <p>When <code>FALSE</code>, the resource owner manages permissions for the ID namespace association resource.</p>
    #   @return [Boolean]
    class IdNamespaceAssociationInputReferenceConfig < Struct.new(
      nil,
      :input_reference_arn,
      :manage_resource_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the information for the ID namespace association input reference properties.</p>
    # @!attribute id_namespace_type
    #   <p>The ID namespace type for this ID namespace association.</p>
    #   @return [String]
    # @!attribute id_mapping_workflows_supported
    #   <p>Defines how ID mapping workflows are supported for this ID namespace association.</p>
    #   @return [Array<JSON>]
    class IdNamespaceAssociationInputReferenceProperties < Struct.new(
      nil,
      :id_namespace_type,
      :id_mapping_workflows_supported,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the ID namespace association input reference properties.</p>
    # @!attribute id_namespace_type
    #   <p>The ID namespace type for this ID namespace association.</p>
    #   @return [String]
    class IdNamespaceAssociationInputReferencePropertiesSummary < Struct.new(
      nil,
      :id_namespace_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the ID namespace association.</p>
    # @!attribute membership_id
    #   <p>The unique identifier of the membership resource for this ID namespace association.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership resource for this ID namespace association.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains this ID namespace association.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains this ID namespace association.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which this ID namespace association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which this ID namespace association has been updated.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique identifier of this ID namespace association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of this ID namespace association.</p>
    #   @return [String]
    # @!attribute input_reference_config
    #   <p>The input reference configuration details for this ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    # @!attribute name
    #   <p>The name of the ID namespace association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace association.</p>
    #   @return [String]
    # @!attribute input_reference_properties
    #   <p>The input reference properties for this ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociationInputReferencePropertiesSummary]
    class IdNamespaceAssociationSummary < Struct.new(
      nil,
      :membership_id,
      :membership_arn,
      :collaboration_arn,
      :collaboration_id,
      :create_time,
      :update_time,
      :id,
      :arn,
      :input_reference_config,
      :name,
      :description,
      :input_reference_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inherited additional analyses constraint and its sources from parent tables.</p>
    # @!attribute value
    #   <p>The effective additional analyses setting inherited from parent tables.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The list of parent tables that contribute to this inherited constraint.</p>
    #   @return [Array<Types::InheritedAdditionalAnalysesSource>]
    class InheritedAdditionalAnalyses < Struct.new(
      nil,
      :value,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a parent table that contributes an additional analyses constraint.</p>
    # @!attribute name
    #   <p>The name of the parent table.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the parent table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the parent table.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The additional analyses setting defined on the parent table.</p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p>The Amazon Web Services account ID of the member who owns the parent table.</p>
    #   @return [String]
    class InheritedAdditionalAnalysesSource < Struct.new(
      nil,
      :name,
      :id,
      :type,
      :value,
      :source_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inherited allowed additional analyses constraint and its sources from parent tables.</p>
    # @!attribute value
    #   <p>The effective list of allowed additional analyses inherited from parent tables.</p>
    #   @return [Array<String>]
    # @!attribute sources
    #   <p>The list of parent tables that contribute to this inherited constraint.</p>
    #   @return [Array<Types::InheritedAllowedAdditionalAnalysesSource>]
    class InheritedAllowedAdditionalAnalyses < Struct.new(
      nil,
      :value,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a parent table that contributes an allowed additional analyses constraint.</p>
    # @!attribute name
    #   <p>The name of the parent table.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the parent table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the parent table.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The allowed additional analyses defined on the parent table.</p>
    #   @return [Array<String>]
    # @!attribute source_account_id
    #   <p>The Amazon Web Services account ID of the member who owns the parent table.</p>
    #   @return [String]
    class InheritedAllowedAdditionalAnalysesSource < Struct.new(
      nil,
      :name,
      :id,
      :type,
      :value,
      :source_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inherited allowed result receivers constraint and its sources from parent tables.</p>
    # @!attribute value
    #   <p>The effective list of Amazon Web Services account IDs allowed to receive results, inherited from parent tables.</p>
    #   @return [Array<String>]
    # @!attribute sources
    #   <p>The list of parent tables that contribute to this inherited constraint.</p>
    #   @return [Array<Types::InheritedAllowedResultReceiversSource>]
    class InheritedAllowedResultReceivers < Struct.new(
      nil,
      :value,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a parent table that contributes an allowed result receivers constraint.</p>
    # @!attribute name
    #   <p>The name of the parent table.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the parent table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the parent table.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The allowed result receiver account IDs defined on the parent table.</p>
    #   @return [Array<String>]
    # @!attribute source_account_id
    #   <p>The Amazon Web Services account ID of the member who owns the parent table.</p>
    #   @return [String]
    class InheritedAllowedResultReceiversSource < Struct.new(
      nil,
      :name,
      :id,
      :type,
      :value,
      :source_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the inherited disallowed output columns constraint and the column lineage tracing each column to its source.</p>
    # @!attribute value
    #   <p>The list of column names that are disallowed from appearing in query output, inherited from parent tables.</p>
    #   @return [Array<String>]
    # @!attribute column_lineage
    #   <p>The lineage information that traces each disallowed output column back to its source in a parent table.</p>
    #   @return [Array<Types::ColumnLineageEntry>]
    class InheritedDisallowedOutputColumns < Struct.new(
      nil,
      :value,
      :column_lineage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an intermediate table in Clean Rooms. An intermediate table stores a query definition and its materialized results within a collaboration.</p>
    # @!attribute id
    #   <p>The unique identifier of the intermediate table.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the intermediate table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the intermediate table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the intermediate table.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute child_resources
    #   <p>The child resources that depend on this intermediate table.</p>
    #   @return [Array<Types::ChildResource>]
    # @!attribute create_time
    #   <p>The time the intermediate table was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the intermediate table was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the intermediate table.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the intermediate table.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the intermediate table data.</p>
    #   @return [String]
    # @!attribute population_analysis_configuration
    #   <p>The analysis configuration that defines the query used to populate the intermediate table.</p>
    #   @return [Types::PopulationAnalysisConfiguration]
    # @!attribute retention_in_days
    #   <p>The number of days that populated data is retained before expiring.</p>
    #   @return [Integer]
    # @!attribute table_dependencies
    #   <p>The list of base tables that this intermediate table depends on.</p>
    #   @return [Array<Types::IntermediateTableDependency>]
    # @!attribute intermediate_table_version
    #   <p>The details of the currently active version of the intermediate table.</p>
    #   @return [Types::IntermediateTableActiveVersion]
    # @!attribute analysis_rule_types
    #   <p>The types of analysis rules associated with the intermediate table.</p>
    #   @return [Array<String>]
    # @!attribute schema
    #   <p>The schema of the intermediate table, containing column definitions. Available after the table has been successfully populated.</p>
    #   @return [Types::IntermediateTableSchema]
    class IntermediateTable < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :membership_arn,
      :membership_id,
      :collaboration_arn,
      :collaboration_id,
      :child_resources,
      :create_time,
      :update_time,
      :status,
      :status_reason,
      :kms_key_arn,
      :population_analysis_configuration,
      :retention_in_days,
      :table_dependencies,
      :intermediate_table_version,
      :analysis_rule_types,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of the currently active version of an intermediate table.</p>
    # @!attribute version_id
    #   <p>The unique identifier of the active version.</p>
    #   @return [String]
    # @!attribute analysis_id
    #   <p>The identifier of the protected query that created this version.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis that created this version.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt this version's data.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The runtime parameters that were used when populating this version.</p>
    #   @return [Hash<String, String>]
    # @!attribute inherited_constraints
    #   <p>The privacy constraints inherited from parent tables at the time this version was populated.</p>
    #   @return [Types::IntermediateTableInheritedConstraints]
    # @!attribute expiration_time
    #   <p>The time when this version expires based on the retention period.</p>
    #   @return [Time]
    class IntermediateTableActiveVersion < Struct.new(
      nil,
      :version_id,
      :analysis_id,
      :analysis_type,
      :kms_key_arn,
      :parameters,
      :inherited_constraints,
      :expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an analysis rule for an intermediate table.</p>
    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table associated with this analysis rule.</p>
    #   @return [String]
    # @!attribute intermediate_table_arn
    #   <p>The Amazon Resource Name (ARN) of the intermediate table associated with this analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_policy
    #   <p>The policy of the analysis rule.</p>
    #   @return [Types::IntermediateTableAnalysisRulePolicy]
    # @!attribute analysis_rule_type
    #   <p>The type of the analysis rule.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the analysis rule was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the analysis rule was last updated.</p>
    #   @return [Time]
    class IntermediateTableAnalysisRule < Struct.new(
      nil,
      :intermediate_table_identifier,
      :intermediate_table_arn,
      :analysis_rule_policy,
      :analysis_rule_type,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the custom analysis rule configuration for an intermediate table.</p>
    # @!attribute allowed_analyses
    #   <p>The list of allowed analyses that can be performed on the intermediate table.</p>
    #   @return [Array<String>]
    # @!attribute additional_analyses
    #   <p>The setting that controls whether additional analyses are allowed on the intermediate table.</p>
    #   @return [String]
    # @!attribute allowed_additional_analyses
    #   <p>The list of allowed additional analyses for the intermediate table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_analysis_providers
    #   <p>The list of Amazon Web Services account IDs for the allowed analysis providers.</p>
    #   @return [Array<String>]
    # @!attribute allowed_result_receivers
    #   <p>The list of Amazon Web Services account IDs that are allowed to receive results from queries run on the intermediate table.</p>
    #   @return [Array<String>]
    # @!attribute differential_privacy
    #   <p>Specifies the unique identifier for your users.</p>
    #   @return [Types::DifferentialPrivacyConfiguration]
    # @!attribute disallowed_output_columns
    #   <p>The list of columns that are not allowed in the query output.</p>
    #   @return [Array<String>]
    # @!attribute aggregation_thresholds
    #   <p>The aggregation thresholds that each query output group must satisfy. Clean Rooms filters out any group that represents fewer than the specified number of distinct identities. You can specify at most one threshold. You can't use aggregation thresholds with differential privacy, or when <code>allowedAnalyses</code> allows only jobs.</p>
    #   @return [Array<Types::AggregationThreshold>]
    # @!attribute comparison_controls
    #   <p>The controls that restrict how a query can compare the columns in the intermediate table. You can't use comparison controls with differential privacy, or when <code>allowedAnalyses</code> allows only jobs.</p>
    #   @return [Types::ComparisonControls]
    class IntermediateTableAnalysisRuleCustom < Struct.new(
      nil,
      :allowed_analyses,
      :additional_analyses,
      :allowed_additional_analyses,
      :allowed_analysis_providers,
      :allowed_result_receivers,
      :differential_privacy,
      :disallowed_output_columns,
      :aggregation_thresholds,
      :comparison_controls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the policy for an intermediate table analysis rule.</p>
    # @!attribute v1
    #   <p>The version 1 policy for the analysis rule.</p>
    #   @return [Types::IntermediateTableAnalysisRulePolicyV1]
    class IntermediateTableAnalysisRulePolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class V1 < IntermediateTableAnalysisRulePolicy; end
      class Unknown < IntermediateTableAnalysisRulePolicy; end
    end

    # <p>Contains the version 1 policy for an intermediate table analysis rule.</p>
    # @!attribute custom
    #   <p>The custom analysis rule policy.</p>
    #   @return [Types::IntermediateTableAnalysisRuleCustom]
    class IntermediateTableAnalysisRulePolicyV1 < Struct.new(
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Custom < IntermediateTableAnalysisRulePolicyV1; end
      class Unknown < IntermediateTableAnalysisRulePolicyV1; end
    end

    # <p>Contains the name and type of a column in an intermediate table.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the column.</p>
    #   @return [String]
    class IntermediateTableColumn < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the compute configuration for an intermediate table population operation.</p>
    # @!attribute query_compute_configuration
    #   <p> The configuration of the compute resources for workers running an analysis with the Clean Rooms SQL analytics engine.</p>
    #   @return [Types::WorkerComputeConfiguration]
    class IntermediateTableComputeConfiguration < Struct.new(
      :query_compute_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class QueryComputeConfiguration < IntermediateTableComputeConfiguration; end
      class Unknown < IntermediateTableComputeConfiguration; end
    end

    # <p>Contains information about a base table that an intermediate table depends on.</p>
    # @!attribute id
    #   <p>The unique identifier of the dependency table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dependency table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the dependency table.</p>
    #   @return [String]
    # @!attribute parent_type
    #   <p>The type of dependency, either direct or indirect. A direct dependency is a table explicitly referenced in the stored query. An indirect dependency is a table referenced through another intermediate table.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The Amazon Web Services account ID of the member who owns the dependency table.</p>
    #   @return [String]
    class IntermediateTableDependency < Struct.new(
      nil,
      :id,
      :name,
      :type,
      :parent_type,
      :creator_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the privacy constraints inherited from parent tables for an intermediate table version.</p>
    # @!attribute additional_analyses
    #   <p>The inherited additional analyses constraint.</p>
    #   @return [Types::InheritedAdditionalAnalyses]
    # @!attribute allowed_additional_analyses
    #   <p>The inherited allowed additional analyses constraint.</p>
    #   @return [Types::InheritedAllowedAdditionalAnalyses]
    # @!attribute allowed_result_receivers
    #   <p>The inherited allowed result receivers constraint.</p>
    #   @return [Types::InheritedAllowedResultReceivers]
    # @!attribute disallowed_output_columns
    #   <p>The inherited disallowed output columns constraint.</p>
    #   @return [Types::InheritedDisallowedOutputColumns]
    class IntermediateTableInheritedConstraints < Struct.new(
      nil,
      :additional_analyses,
      :allowed_additional_analyses,
      :allowed_result_receivers,
      :disallowed_output_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output configuration of an intermediate table when a protected query populates it.</p>
    # @!attribute id
    #   <p>The unique identifier of the intermediate table.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the intermediate table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the intermediate table.</p>
    #   @return [String]
    class IntermediateTableOutputConfiguration < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the schema definition of an intermediate table.</p>
    # @!attribute columns
    #   <p>The list of columns in the intermediate table schema.</p>
    #   @return [Array<Types::Column>]
    class IntermediateTableSchema < Struct.new(
      nil,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the schema type properties for an intermediate table.</p>
    # @!attribute intermediate_table_id
    #   <p>The unique identifier of the intermediate table.</p>
    #   @return [String]
    class IntermediateTableSchemaTypeProperties < Struct.new(
      nil,
      :intermediate_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an intermediate table.</p>
    # @!attribute id
    #   <p>The unique identifier of the intermediate table.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the intermediate table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the intermediate table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the intermediate table.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The Amazon Resource Name (ARN) of the collaboration that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the intermediate table was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the intermediate table was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the intermediate table.</p>
    #   @return [String]
    # @!attribute retention_in_days
    #   <p>The number of days that populated data is retained before expiring.</p>
    #   @return [Integer]
    # @!attribute analysis_rule_types
    #   <p>The types of analysis rules associated with the intermediate table.</p>
    #   @return [Array<String>]
    class IntermediateTableSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :membership_arn,
      :membership_id,
      :collaboration_arn,
      :collaboration_id,
      :create_time,
      :update_time,
      :status,
      :retention_in_days,
      :analysis_rule_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a version of an intermediate table.</p>
    # @!attribute version_id
    #   <p>The unique identifier of the version.</p>
    #   @return [String]
    # @!attribute table_id
    #   <p>The unique identifier of the intermediate table that this version belongs to.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the version was created.</p>
    #   @return [Time]
    # @!attribute analysis_id
    #   <p>The identifier of the protected query that created this version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the version.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis that created this version.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt this version's data.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The time when this version expires based on the retention period.</p>
    #   @return [Time]
    class IntermediateTableVersionSummary < Struct.new(
      nil,
      :version_id,
      :table_id,
      :create_time,
      :analysis_id,
      :status,
      :analysis_type,
      :kms_key_arn,
      :expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's payment responsibilities set by the collaboration creator for query and job compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for query and job compute costs (<code>TRUE</code>) or has not configured the collaboration member to pay for query and job compute costs (<code>FALSE</code>).</p> <p>One or more members can be configured as payer candidates for query and job compute costs.</p> <p>An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can run queries and jobs.</p>
    #   @return [Boolean]
    class JobComputePaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership to list analysis log exports for. Currently accepts the membership ID.</p>
    #   @return [String]
    # @!attribute analysis_identifier
    #   <p>A filter on the unique identifier of the protected query that the analysis logs were exported for.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A filter on the status of the analysis log export.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a <code>nextToken</code> even if the <code>maxResults</code> value has not been met.</p>
    #   @return [Integer]
    class ListAnalysisLogExportsInput < Struct.new(
      nil,
      :membership_identifier,
      :analysis_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute analysis_log_exports
    #   <p>A list of analysis log exports.</p>
    #   @return [Array<Types::AnalysisLogExportSummary>]
    class ListAnalysisLogExportsOutput < Struct.new(
      nil,
      :next_token,
      :analysis_log_exports,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListAnalysisTemplatesOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute analysis_template_summaries
    #   <p>Lists analysis template metadata.</p>
    #   @return [Array<Types::AnalysisTemplateSummary>]
    class ListAnalysisTemplatesOperationOutput < Struct.new(
      nil,
      :next_token,
      :analysis_template_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListCollaborationAnalysisTemplatesOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute collaboration_analysis_template_summaries
    #   <p>The metadata of the analysis template within a collaboration.</p>
    #   @return [Array<Types::CollaborationAnalysisTemplateSummary>]
    class ListCollaborationAnalysisTemplatesOperationOutput < Struct.new(
      nil,
      :next_token,
      :collaboration_analysis_template_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier of the collaboration that the change request is made against.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A filter to only return change requests with the specified status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call.</p>
    #   @return [Integer]
    class ListCollaborationChangeRequestsInput < Struct.new(
      nil,
      :collaboration_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_change_request_summaries
    #   <p>The list of collaboration change request summaries.</p>
    #   @return [Array<Types::CollaborationChangeRequestSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListCollaborationChangeRequestsOutput < Struct.new(
      nil,
      :collaboration_change_request_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the configured audience model association belongs to. Accepts a collaboration ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListCollaborationConfiguredAudienceModelAssociationsInput < Struct.new(
      nil,
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_configured_audience_model_association_summaries
    #   <p>The metadata of the configured audience model association within a collaboration.</p>
    #   @return [Array<Types::CollaborationConfiguredAudienceModelAssociationSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListCollaborationConfiguredAudienceModelAssociationsOutput < Struct.new(
      nil,
      :collaboration_configured_audience_model_association_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the ID namespace associations that you want to retrieve.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.&gt;</p>
    #   @return [Integer]
    class ListCollaborationIdNamespaceAssociationsInput < Struct.new(
      nil,
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    # @!attribute collaboration_id_namespace_association_summaries
    #   <p>The summary information of the collaboration ID namespace associations that you requested.</p>
    #   @return [Array<Types::CollaborationIdNamespaceAssociationSummary>]
    class ListCollaborationIdNamespaceAssociationsOutput < Struct.new(
      nil,
      :next_token,
      :collaboration_id_namespace_association_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for one of your collaborations.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListCollaborationPrivacyBudgetTemplatesInput < Struct.new(
      nil,
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute collaboration_privacy_budget_template_summaries
    #   <p>An array that summarizes the collaboration privacy budget templates. The summary includes collaboration information, creation information, the privacy budget type.</p>
    #   @return [Array<Types::CollaborationPrivacyBudgetTemplateSummary>]
    class ListCollaborationPrivacyBudgetTemplatesOutput < Struct.new(
      nil,
      :next_token,
      :collaboration_privacy_budget_template_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for one of your collaborations.</p>
    #   @return [String]
    # @!attribute privacy_budget_type
    #   <p>Specifies the type of the privacy budget.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute access_budget_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Configured Table Association (ConfiguredTableAssociation) used to filter privacy budgets.</p>
    #   @return [String]
    class ListCollaborationPrivacyBudgetsInput < Struct.new(
      nil,
      :collaboration_identifier,
      :privacy_budget_type,
      :max_results,
      :next_token,
      :access_budget_resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_privacy_budget_summaries
    #   <p>Summaries of the collaboration privacy budgets.</p>
    #   @return [Array<Types::CollaborationPrivacyBudgetSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListCollaborationPrivacyBudgetsOutput < Struct.new(
      nil,
      :collaboration_privacy_budget_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    # @!attribute member_status
    #   <p>The caller's status in a collaboration.</p>
    #   @return [String]
    class ListCollaborationsOperationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :member_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute collaboration_list
    #   <p>The list of collaborations.</p>
    #   @return [Array<Types::CollaborationSummary>]
    class ListCollaborationsOperationOutput < Struct.new(
      nil,
      :next_token,
      :collaboration_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for a membership that contains the configured audience model associations that you want to retrieve.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListConfiguredAudienceModelAssociationsInput < Struct.new(
      nil,
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association_summaries
    #   <p>Summaries of the configured audience model associations that you requested.</p>
    #   @return [Array<Types::ConfiguredAudienceModelAssociationSummary>]
    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    class ListConfiguredAudienceModelAssociationsOutput < Struct.new(
      nil,
      :configured_audience_model_association_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership to list configured table associations for. Currently accepts the membership ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListConfiguredTableAssociationsOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_association_summaries
    #   <p>The retrieved list of configured table associations.</p>
    #   @return [Array<Types::ConfiguredTableAssociationSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListConfiguredTableAssociationsOperationOutput < Struct.new(
      nil,
      :configured_table_association_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListConfiguredTablesOperationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_summaries
    #   <p>The configured tables listed by the request.</p>
    #   @return [Array<Types::ConfiguredTableSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListConfiguredTablesOperationOutput < Struct.new(
      nil,
      :configured_table_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping tables that you want to view.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.</p>
    #   @return [Integer]
    class ListIdMappingTablesInput < Struct.new(
      nil,
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_summaries
    #   <p>The summary information of the ID mapping tables that you requested.</p>
    #   @return [Array<Types::IdMappingTableSummary>]
    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    class ListIdMappingTablesOutput < Struct.new(
      nil,
      :id_mapping_table_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to view.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.</p>
    #   @return [Integer]
    class ListIdNamespaceAssociationsInput < Struct.new(
      nil,
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    # @!attribute id_namespace_association_summaries
    #   <p>The summary information of the ID namespace associations that you requested.</p>
    #   @return [Array<Types::IdNamespaceAssociationSummary>]
    class ListIdNamespaceAssociationsOutput < Struct.new(
      nil,
      :next_token,
      :id_namespace_association_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table for which to list versions.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a <code>nextToken</code> even if the <code>maxResults</code> value has not been met.</p>
    #   @return [Integer]
    class ListIntermediateTableVersionsInput < Struct.new(
      nil,
      :membership_identifier,
      :intermediate_table_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table_version_summaries
    #   <p>The list of intermediate table version summaries.</p>
    #   @return [Array<Types::IntermediateTableVersionSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListIntermediateTableVersionsOutput < Struct.new(
      nil,
      :intermediate_table_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership for which to list intermediate tables.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a <code>nextToken</code> even if the <code>maxResults</code> value has not been met.</p>
    #   @return [Integer]
    class ListIntermediateTablesInput < Struct.new(
      nil,
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table_summaries
    #   <p>The list of intermediate table summaries.</p>
    #   @return [Array<Types::IntermediateTableSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListIntermediateTablesOutput < Struct.new(
      nil,
      :intermediate_table_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier of the collaboration in which the members are listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListMembersOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute member_summaries
    #   <p>The list of members returned by the ListMembers operation.</p>
    #   @return [Array<Types::MemberSummary>]
    class ListMembersOperationOutput < Struct.new(
      nil,
      :next_token,
      :member_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>A filter which will return only memberships in the specified status.</p>
    #   @return [String]
    class ListMembershipsOperationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute membership_summaries
    #   <p>The list of memberships returned from the ListMemberships operation.</p>
    #   @return [Array<Types::MembershipSummary>]
    class ListMembershipsOperationOutput < Struct.new(
      nil,
      :next_token,
      :membership_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget templates are retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListPrivacyBudgetTemplatesInput < Struct.new(
      nil,
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_summaries
    #   <p>An array that summarizes the privacy budget templates. The summary includes collaboration information, creation information, and privacy budget type.</p>
    #   @return [Array<Types::PrivacyBudgetTemplateSummary>]
    class ListPrivacyBudgetTemplatesOutput < Struct.new(
      nil,
      :next_token,
      :privacy_budget_template_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget is retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute privacy_budget_type
    #   <p>The privacy budget type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    # @!attribute access_budget_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the access budget resource to filter privacy budgets by.</p>
    #   @return [String]
    class ListPrivacyBudgetsInput < Struct.new(
      nil,
      :membership_identifier,
      :privacy_budget_type,
      :next_token,
      :max_results,
      :access_budget_resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_summaries
    #   <p>An array that summarizes the privacy budgets. The summary includes collaboration information, membership information, privacy budget template information, and privacy budget details.</p>
    #   @return [Array<Types::PrivacyBudgetSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListPrivacyBudgetsOutput < Struct.new(
      nil,
      :privacy_budget_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for the membership in the collaboration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A filter on the status of the protected job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met. </p>
    #   @return [Integer]
    class ListProtectedJobsInput < Struct.new(
      nil,
      :membership_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute protected_jobs
    #   <p>A list of protected job summaries.</p>
    #   @return [Array<Types::ProtectedJobSummary>]
    class ListProtectedJobsOutput < Struct.new(
      nil,
      :next_token,
      :protected_jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for the membership in the collaboration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A filter on the status of the protected query.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met. </p>
    #   @return [Integer]
    class ListProtectedQueriesOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute protected_queries
    #   <p>A list of protected queries.</p>
    #   @return [Array<Types::ProtectedQuerySummary>]
    class ListProtectedQueriesOperationOutput < Struct.new(
      nil,
      :next_token,
      :protected_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>
    #   @return [String]
    # @!attribute schema_type
    #   <p>If present, filter schemas by schema type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListSchemasOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :schema_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_summaries
    #   <p>The retrieved list of schemas.</p>
    #   @return [Array<Types::SchemaSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListSchemasOperationOutput < Struct.new(
      nil,
      :schema_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to list tags on.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of objects specifying each key name and value.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ML member abilities for a collaboration member.</p>
    # @!attribute custom_ml_member_abilities
    #   <p>The custom ML member abilities for a collaboration member. </p>
    #   @return [Array<String>]
    class MLMemberAbilities < Struct.new(
      nil,
      :custom_ml_member_abilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's machine learning payment responsibilities set by the collaboration creator.</p>
    # @!attribute model_training
    #   <p>The payment responsibilities accepted by the member for model training.</p>
    #   @return [Types::ModelTrainingPaymentConfig]
    # @!attribute model_inference
    #   <p>The payment responsibilities accepted by the member for model inference.</p>
    #   @return [Types::ModelInferencePaymentConfig]
    # @!attribute synthetic_data_generation
    #   <p>The payment configuration for machine learning synthetic data generation.</p>
    #   @return [Types::SyntheticDataGenerationPaymentConfig]
    class MLPaymentConfig < Struct.new(
      nil,
      :model_training,
      :model_inference,
      :synthetic_data_generation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that control the generation of synthetic data for machine learning, including privacy settings and column classification details.</p>
    # @!attribute epsilon
    #   <p>The epsilon value for differential privacy when generating synthetic data. Lower values provide stronger privacy guarantees but may reduce data utility.</p>
    #   @return [Float]
    # @!attribute max_membership_inference_attack_score
    #   <p>The maximum acceptable score for membership inference attack vulnerability. Synthetic data generation fails if the score for the resulting data exceeds this threshold.</p>
    #   @return [Float]
    # @!attribute column_classification
    #   <p>Classification details for data columns that specify how each column should be treated during synthetic data generation.</p>
    #   @return [Types::ColumnClassificationDetails]
    class MLSyntheticDataParameters < Struct.new(
      nil,
      :epsilon,
      :max_membership_inference_attack_score,
      :column_classification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies changes to collaboration membership, including adding new members with their abilities and display names.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member to add to the collaboration.</p>
    #   @return [String]
    # @!attribute member_abilities
    #   <p>The abilities granted to the collaboration member. These determine what actions the member can perform within the collaboration.</p> <note> <p>The following values are currently not supported: <code>CAN_QUERY</code> and <code>CAN_RUN_JOB</code>. </p> <p>Set the value of <code>memberAbilities</code> to <code>[]</code> to allow a member to contribute data.</p> <p>Set the value of <code>memberAbilities</code> to <code>[CAN_RECEIVE_RESULTS]</code> to allow a member to contribute data and receive results.</p> <p>Set the value of <code>memberAbilities</code> to <code>[CAN_EXPORT_QUERY_ANALYSIS_LOG]</code> so that the member can export the analysis logs for a protected query. Having this ability isn't sufficient on its own: You can export logs only for queries that you ran or paid for.</p> </note>
    #   @return [Array<String>]
    # @!attribute ml_member_abilities
    #   <p>The ML member abilities for a collaboration member.</p>
    #   @return [Types::MLMemberAbilities]
    # @!attribute payment_configuration
    #   <p>An object representing the collaboration member's payment responsibilities set by the collaboration creator.</p>
    #   @return [Types::PaymentConfiguration]
    # @!attribute display_name
    #   <p>Specifies the display name that will be shown for this member in the collaboration. While this field is required when inviting new members, it becomes optional when modifying abilities of existing collaboration members. </p>
    #   @return [String]
    class MemberChangeSpecification < Struct.new(
      nil,
      :account_id,
      :member_abilities,
      :ml_member_abilities,
      :payment_configuration,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Basic metadata used to construct a new member.</p>
    # @!attribute account_id
    #   <p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute member_abilities
    #   <p>The abilities granted to the collaboration member.</p>
    #   @return [Array<String>]
    # @!attribute ml_member_abilities
    #   <p>The ML abilities granted to the collaboration member.</p>
    #   @return [Types::MLMemberAbilities]
    # @!attribute display_name
    #   <p>The member's display name.</p>
    #   @return [String]
    # @!attribute payment_configuration
    #   <p>The collaboration member's payment responsibilities set by the collaboration creator. </p> <p>If the collaboration creator hasn't speciﬁed anyone as the member paying for query compute costs, then the member who can query is the default payer.</p>
    #   @return [Types::PaymentConfiguration]
    class MemberSpecification < Struct.new(
      nil,
      :account_id,
      :member_abilities,
      :ml_member_abilities,
      :display_name,
      :payment_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The member object listed by the request.</p>
    # @!attribute account_id
    #   <p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the member. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The member's display name.</p>
    #   @return [String]
    # @!attribute abilities
    #   <p>The abilities granted to the collaboration member.</p>
    #   @return [Array<String>]
    # @!attribute ml_abilities
    #   <p>Provides a summary of the ML abilities for the collaboration member.</p>
    #   @return [Types::MLMemberAbilities]
    # @!attribute create_time
    #   <p>The time when the member was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the member metadata was last updated.</p>
    #   @return [Time]
    # @!attribute membership_id
    #   <p>The unique ID for the member's associated membership, if present.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The unique ARN for the member's associated membership, if present.</p>
    #   @return [String]
    # @!attribute payment_configuration
    #   <p>The collaboration member's payment responsibilities set by the collaboration creator. </p>
    #   @return [Types::PaymentConfiguration]
    class MemberSummary < Struct.new(
      nil,
      :account_id,
      :status,
      :display_name,
      :abilities,
      :ml_abilities,
      :create_time,
      :update_time,
      :membership_id,
      :membership_arn,
      :payment_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The membership object.</p>
    # @!attribute id
    #   <p>The unique ID of the membership.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique ARN for the membership.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the membership's associated collaboration.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique ID for the membership's collaboration.</p>
    #   @return [String]
    # @!attribute collaboration_creator_account_id
    #   <p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute collaboration_creator_display_name
    #   <p>The display name of the collaboration creator.</p>
    #   @return [String]
    # @!attribute collaboration_name
    #   <p>The name of the membership's collaboration.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the membership was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the membership metadata was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the membership.</p>
    #   @return [String]
    # @!attribute member_abilities
    #   <p>The abilities granted to the collaboration member.</p>
    #   @return [Array<String>]
    # @!attribute ml_member_abilities
    #   <p>Specifies the ML member abilities that are granted to a collaboration member.</p>
    #   @return [Types::MLMemberAbilities]
    # @!attribute query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute job_log_status
    #   <p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute default_result_configuration
    #   <p>The default protected query result configuration as specified by the member who can receive results.</p>
    #   @return [Types::MembershipProtectedQueryResultConfiguration]
    # @!attribute default_job_result_configuration
    #   <p> The default job result configuration for the membership.</p>
    #   @return [Types::MembershipProtectedJobResultConfiguration]
    # @!attribute payment_configuration
    #   <p>The payment responsibilities accepted by the collaboration member.</p>
    #   @return [Types::MembershipPaymentConfiguration]
    # @!attribute is_metrics_enabled
    #   <p>An indicator as to whether Amazon CloudWatch metrics are enabled for the membership.</p> <p>When <code>true</code>, metrics about query execution are collected in Amazon CloudWatch.</p>
    #   @return [Boolean]
    class Membership < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_arn,
      :collaboration_id,
      :collaboration_creator_account_id,
      :collaboration_creator_display_name,
      :collaboration_name,
      :create_time,
      :update_time,
      :status,
      :member_abilities,
      :ml_member_abilities,
      :query_log_status,
      :job_log_status,
      :default_result_configuration,
      :default_job_result_configuration,
      :payment_configuration,
      :is_metrics_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the payment responsibilities accepted by the collaboration member for query and job compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for job compute costs (<code>TRUE</code>) or has not accepted to pay for query and job compute costs (<code>FALSE</code>).</p> <p>There can be one or more members who are designated as payer candidates for queries and jobs. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for query and job compute costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for query and job compute costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipJobComputePaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's machine learning payment responsibilities set by the collaboration creator.</p>
    # @!attribute model_training
    #   <p>The payment responsibilities accepted by the member for model training.</p>
    #   @return [Types::MembershipModelTrainingPaymentConfig]
    # @!attribute model_inference
    #   <p>The payment responsibilities accepted by the member for model inference.</p>
    #   @return [Types::MembershipModelInferencePaymentConfig]
    # @!attribute synthetic_data_generation
    #   <p>The payment configuration for synthetic data generation for this machine learning membership.</p>
    #   @return [Types::MembershipSyntheticDataGenerationPaymentConfig]
    class MembershipMLPaymentConfig < Struct.new(
      nil,
      :model_training,
      :model_inference,
      :synthetic_data_generation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model inference payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for model inference costs (<code>TRUE</code>) or has not accepted to pay for model inference costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for model inference costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for model inference costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for model inference costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipModelInferencePaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model training payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for model training costs (<code>TRUE</code>) or has not accepted to pay for model training costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for model training costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for model training costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for model training costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipModelTrainingPaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the payment responsibilities accepted by the collaboration member.</p>
    # @!attribute query_compute
    #   <p>The payment responsibilities accepted by the collaboration member for query compute costs.</p>
    #   @return [Types::MembershipQueryComputePaymentConfig]
    # @!attribute machine_learning
    #   <p>The payment responsibilities accepted by the collaboration member for machine learning costs.</p>
    #   @return [Types::MembershipMLPaymentConfig]
    # @!attribute job_compute
    #   <p>The payment responsibilities accepted by the collaboration member for job compute costs.</p>
    #   @return [Types::MembershipJobComputePaymentConfig]
    class MembershipPaymentConfiguration < Struct.new(
      nil,
      :query_compute,
      :machine_learning,
      :job_compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for protected job results.</p>
    # @!attribute s3
    #   <p>Contains the configuration to write the job results to S3.</p>
    #   @return [Types::ProtectedJobS3OutputConfigurationInput]
    class MembershipProtectedJobOutputConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < MembershipProtectedJobOutputConfiguration; end
      class Unknown < MembershipProtectedJobOutputConfiguration; end
    end

    # <p>Contains configurations for protected job results.</p>
    # @!attribute output_configuration
    #   <p> The output configuration for a protected job result.</p>
    #   @return [Types::MembershipProtectedJobOutputConfiguration]
    # @!attribute role_arn
    #   <p>The unique ARN for an IAM role that is used by Clean Rooms to write protected job results to the result location, given by the member who can receive results.</p>
    #   @return [String]
    class MembershipProtectedJobResultConfiguration < Struct.new(
      nil,
      :output_configuration,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for protected query results.</p>
    # @!attribute s3
    #   <p>Contains the configuration to write the query results to S3.</p>
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    class MembershipProtectedQueryOutputConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < MembershipProtectedQueryOutputConfiguration; end
      class Unknown < MembershipProtectedQueryOutputConfiguration; end
    end

    # <p>Contains configurations for protected query results.</p>
    # @!attribute output_configuration
    #   <p>Configuration for protected query results.</p>
    #   @return [Types::MembershipProtectedQueryOutputConfiguration]
    # @!attribute role_arn
    #   <p>The unique ARN for an IAM role that is used by Clean Rooms to write protected query results to the result location, given by the member who can receive results.</p>
    #   @return [String]
    class MembershipProtectedQueryResultConfiguration < Struct.new(
      nil,
      :output_configuration,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the payment responsibilities accepted by the collaboration member for query compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for query compute costs (<code>TRUE</code>) or has not accepted to pay for query compute costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for query compute costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for query compute costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for query compute costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipQueryComputePaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The membership object listed by the request.</p>
    # @!attribute id
    #   <p>The unique ID for the membership's collaboration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique ARN for the membership.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the membership's associated collaboration.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique ID for the membership's collaboration.</p>
    #   @return [String]
    # @!attribute collaboration_creator_account_id
    #   <p>The identifier of the Amazon Web Services principal that created the collaboration. Currently only supports Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute collaboration_creator_display_name
    #   <p>The display name of the collaboration creator.</p>
    #   @return [String]
    # @!attribute collaboration_name
    #   <p>The name for the membership's collaboration.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the membership was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the membership metadata was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the membership.</p>
    #   @return [String]
    # @!attribute member_abilities
    #   <p>The abilities granted to the collaboration member.</p>
    #   @return [Array<String>]
    # @!attribute ml_member_abilities
    #   <p>Provides a summary of the ML abilities for the collaboration member.</p>
    #   @return [Types::MLMemberAbilities]
    # @!attribute payment_configuration
    #   <p>The payment responsibilities accepted by the collaboration member.</p>
    #   @return [Types::MembershipPaymentConfiguration]
    class MembershipSummary < Struct.new(
      nil,
      :id,
      :arn,
      :collaboration_arn,
      :collaboration_id,
      :collaboration_creator_account_id,
      :collaboration_creator_display_name,
      :collaboration_name,
      :create_time,
      :update_time,
      :status,
      :member_abilities,
      :ml_member_abilities,
      :payment_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for payment for synthetic data generation in a membership.</p>
    # @!attribute is_responsible
    #   <p>Indicates if this membership is responsible for paying for synthetic data generation.</p>
    #   @return [Boolean]
    class MembershipSyntheticDataGenerationPaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model inference payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for model inference costs (<code>TRUE</code>) or has not configured the collaboration member to pay for model inference costs (<code>FALSE</code>).</p> <p>One or more members can be configured as payer candidates for model inference costs.</p> <p>If the collaboration creator hasn't specified anyone as the member paying for model inference costs, then the member who can query is the default payer.</p>
    #   @return [Boolean]
    class ModelInferencePaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model training payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for model training costs (<code>TRUE</code>) or has not configured the collaboration member to pay for model training costs (<code>FALSE</code>).</p> <p>One or more members can be configured as payer candidates for model training costs.</p> <p>If the collaboration creator hasn't specified anyone as the member paying for model training costs, then the member who can query is the default payer.</p>
    #   @return [Boolean]
    class ModelTrainingPaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the minimum number of distinct identities for an individual output column. This value overrides the table-wide <code>minimumIdentityCount</code> that you set in <code>AggregationThreshold</code>.</p>
    # @!attribute output_column_name
    #   <p>The name of the output column that the override applies to. You can specify each column only once.</p>
    #   @return [String]
    # @!attribute minimum_identity_count
    #   <p>The minimum number of distinct identities that each query output group must represent for this column. Specify 0 to exempt the column from the threshold, or a value of 2 or greater to enforce a threshold.</p>
    #   @return [Integer]
    class OutputColumnThreshold < Struct.new(
      nil,
      :output_column_name,
      :minimum_identity_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's payment responsibilities set by the collaboration creator.</p>
    # @!attribute query_compute
    #   <p>The collaboration member's payment responsibilities set by the collaboration creator for query compute costs.</p>
    #   @return [Types::QueryComputePaymentConfig]
    # @!attribute machine_learning
    #   <p>An object representing the collaboration member's machine learning payment responsibilities set by the collaboration creator.</p>
    #   @return [Types::MLPaymentConfig]
    # @!attribute job_compute
    #   <p> The compute configuration for the job.</p>
    #   @return [Types::JobComputePaymentConfig]
    class PaymentConfiguration < Struct.new(
      nil,
      :query_compute,
      :machine_learning,
      :job_compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to populate.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to populate.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The job type of the rule-based ID mapping job. Valid values include:</p> <p> <code>INCREMENTAL</code>: Processes only new or changed data since the last job run. This is the default job type if the ID mapping workflow was created in Entity Resolution with <code>incrementalRunConfig</code> specified.</p> <p> <code>BATCH</code>: Processes all data from the input source, regardless of previous job runs. This is the default job type if the ID mapping workflow was created in Entity Resolution but <code>incrementalRunConfig</code> wasn't specified.</p> <p> <code>DELETE_ONLY</code>: Processes only deletion requests from <code>BatchDeleteUniqueId</code>, which is set in Entity Resolution.</p> <p>For more information about <code>incrementalRunConfig</code> and <code>BatchDeleteUniqueId</code>, see the <a href="https://docs.aws.amazon.com/entityresolution/latest/apireference/Welcome.html">Entity Resolution API Reference</a>.</p>
    #   @return [String]
    class PopulateIdMappingTableInput < Struct.new(
      nil,
      :id_mapping_table_identifier,
      :membership_identifier,
      :job_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_job_id
    #   <p>The unique identifier of the mapping job that will populate the ID mapping table.</p>
    #   @return [String]
    class PopulateIdMappingTableOutput < Struct.new(
      nil,
      :id_mapping_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table to populate.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The runtime parameter values that override the defaults in the stored query.</p>
    #   @return [Hash<String, String>]
    # @!attribute compute_configuration
    #   <p>The compute configuration for the population query execution.</p>
    #   @return [Types::IntermediateTableComputeConfiguration]
    # @!attribute analysis_payer_account_id
    #   <p>The account ID of the member that pays for the analysis compute costs.</p>
    #   @return [String]
    class PopulateIntermediateTableInput < Struct.new(
      nil,
      :intermediate_table_identifier,
      :membership_identifier,
      :parameters,
      :compute_configuration,
      :analysis_payer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_id
    #   <p>The identifier for the protected query execution that populated the intermediate table.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis performed to populate the intermediate table.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The unique identifier of the version created by this population operation.</p>
    #   @return [String]
    class PopulateIntermediateTableOutput < Struct.new(
      nil,
      :analysis_id,
      :analysis_type,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration that defines the analysis used to populate an intermediate table.</p>
    # @!attribute sql_parameters
    #   <p>The SQL parameters for the population analysis, including the query string or analysis template ARN.</p>
    #   @return [Types::PopulationAnalysisSqlParameters]
    class PopulationAnalysisConfiguration < Struct.new(
      :sql_parameters,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SqlParameters < PopulationAnalysisConfiguration; end
      class Unknown < PopulationAnalysisConfiguration; end
    end

    # <p>Contains the SQL parameters used to populate an intermediate table.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute query_string
    #   <p>The SQL query string used to populate the intermediate table.</p>
    #   @return [String]
    # @!attribute analysis_template_arn
    #   <p>The Amazon Resource Name (ARN) of the analysis template to use for populating the intermediate table.</p>
    #   @return [String]
    class PopulationAnalysisSqlParameters < Struct.new(
      nil,
      :query_string,
      :analysis_template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the desired epsilon and noise parameters to preview.</p>
    #   @return [Types::PreviewPrivacyImpactParametersInput]
    class PreviewPrivacyImpactInput < Struct.new(
      nil,
      :membership_identifier,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute privacy_impact
    #   <p>An estimate of the number of aggregation functions that the member who can query can run given the epsilon and noise parameters. This does not change the privacy budget.</p>
    #   @return [Types::PrivacyImpact]
    class PreviewPrivacyImpactOutput < Struct.new(
      nil,
      :privacy_impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the updated epsilon and noise parameters to preview. The preview allows you to see how the maximum number of each type of aggregation function would change with the new parameters.</p>
    # @!attribute differential_privacy
    #   <p>An array that specifies the epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyPreviewParametersInput]
    class PreviewPrivacyImpactParametersInput < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DifferentialPrivacy < PreviewPrivacyImpactParametersInput; end
      class Unknown < PreviewPrivacyImpactParametersInput; end
    end

    # <p>The epsilon parameter value and number of each aggregation function that you can perform.</p>
    # @!attribute differential_privacy
    #   <p>An object that specifies the epsilon parameter and the utility in terms of total aggregations, as well as the remaining aggregations available.</p>
    #   @return [Types::DifferentialPrivacyPrivacyBudget]
    # @!attribute access_budget
    #   <p>Access budget information associated with this privacy budget.</p>
    #   @return [Types::AccessBudget]
    class PrivacyBudget < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudget; end
      class AccessBudget < PrivacyBudget; end
      class Unknown < PrivacyBudget; end
    end

    # <p>An array that summaries the specified privacy budget. This summary includes collaboration information, creation information, membership information, and privacy budget information.</p>
    # @!attribute id
    #   <p>The unique identifier of the privacy budget.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_id
    #   <p>The unique identifier of the privacy budget template.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_arn
    #   <p>The ARN of the privacy budget template.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the member who created the privacy budget summary.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique identifier of the collaboration that contains this privacy budget.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The ARN of the collaboration that contains this privacy budget.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of the privacy budget.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the privacy budget was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the privacy budget was updated.</p>
    #   @return [Time]
    # @!attribute budget
    #   <p>The provided privacy budget.</p>
    #   @return [Types::PrivacyBudget]
    class PrivacyBudgetSummary < Struct.new(
      nil,
      :id,
      :privacy_budget_template_id,
      :privacy_budget_template_arn,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :type,
      :create_time,
      :update_time,
      :budget,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the privacy budget template.</p>
    # @!attribute id
    #   <p>The unique identifier of the privacy budget template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the privacy budget template.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the member who created the privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique ID of the collaboration that contains this privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The ARN of the collaboration that contains this privacy budget template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the privacy budget template was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the privacy budget template was updated.</p>
    #   @return [Time]
    # @!attribute privacy_budget_type
    #   <p>Specifies the type of the privacy budget template.</p>
    #   @return [String]
    # @!attribute auto_refresh
    #   <p>How often the privacy budget refreshes.</p> <important> <p>If you plan to regularly bring new data into the collaboration, use <code>CALENDAR_MONTH</code> to automatically get a new privacy budget for the collaboration every calendar month. Choosing this option allows arbitrary amounts of information to be revealed about rows of the data when repeatedly queried across refreshes. Avoid choosing this if the same rows will be repeatedly queried between privacy budget refreshes.</p> </important>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the epsilon and noise parameters for the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplateParametersOutput]
    class PrivacyBudgetTemplate < Struct.new(
      nil,
      :id,
      :arn,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :create_time,
      :update_time,
      :privacy_budget_type,
      :auto_refresh,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameters that you want to use for the privacy budget template.</p>
    # @!attribute differential_privacy
    #   <p>An object that specifies the epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyTemplateParametersInput]
    # @!attribute access_budget
    #   <p>Access budget configuration for the privacy budget template input, enabling integration with access budget functionality.</p>
    #   @return [Types::AccessBudgetsPrivacyTemplateParametersInput]
    class PrivacyBudgetTemplateParametersInput < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateParametersInput; end
      class AccessBudget < PrivacyBudgetTemplateParametersInput; end
      class Unknown < PrivacyBudgetTemplateParametersInput; end
    end

    # <p>The epsilon and noise parameters that were used in the privacy budget template.</p>
    # @!attribute differential_privacy
    #   <p>The epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyTemplateParametersOutput]
    # @!attribute access_budget
    #   <p>Access budget configuration returned from the privacy budget template, containing the configured access budget settings.</p>
    #   @return [Types::AccessBudgetsPrivacyTemplateParametersOutput]
    class PrivacyBudgetTemplateParametersOutput < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateParametersOutput; end
      class AccessBudget < PrivacyBudgetTemplateParametersOutput; end
      class Unknown < PrivacyBudgetTemplateParametersOutput; end
    end

    # <p>A summary of the privacy budget template. The summary includes membership information, collaboration information, and creation information.</p>
    # @!attribute id
    #   <p>The unique identifier of the privacy budget template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the privacy budget template.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The Amazon Resource Name (ARN) of the member who created the privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique ID of the collaboration that contains this privacy budget template.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The ARN of the collaboration that contains this privacy budget template.</p>
    #   @return [String]
    # @!attribute privacy_budget_type
    #   <p>The type of the privacy budget template.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the privacy budget template was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the privacy budget template was updated.</p>
    #   @return [Time]
    class PrivacyBudgetTemplateSummary < Struct.new(
      nil,
      :id,
      :arn,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :privacy_budget_type,
      :create_time,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameters that you want to update in the privacy budget template.</p>
    # @!attribute differential_privacy
    #   <p>An object that specifies the new values for the epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyTemplateUpdateParameters]
    # @!attribute access_budget
    #   <p> The new access budget configuration that completely replaces the existing access budget settings in the privacy budget template.</p>
    #   @return [Types::AccessBudgetsPrivacyTemplateUpdateParameters]
    class PrivacyBudgetTemplateUpdateParameters < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateUpdateParameters; end
      class AccessBudget < PrivacyBudgetTemplateUpdateParameters; end
      class Unknown < PrivacyBudgetTemplateUpdateParameters; end
    end

    # <p>Provides an estimate of the number of aggregation functions that the member who can query can run given the epsilon and noise parameters.</p>
    # @!attribute differential_privacy
    #   <p>An object that lists the number and type of aggregation functions you can perform.</p>
    #   @return [Types::DifferentialPrivacyPrivacyImpact]
    class PrivacyImpact < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyImpact; end
      class Unknown < PrivacyImpact; end
    end

    # <p>The parameters for an Clean Rooms protected job.</p>
    # @!attribute id
    #   <p>The identifier for a protected job instance.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>he identifier for the membership.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The ARN of the membership.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p> The creation time of the protected job.</p>
    #   @return [Time]
    # @!attribute job_parameters
    #   <p> The job parameters for the protected job.</p>
    #   @return [Types::ProtectedJobParameters]
    # @!attribute status
    #   <p> The status of the protected job.</p>
    #   @return [String]
    # @!attribute result_configuration
    #   <p>Contains any details needed to write the job results.</p>
    #   @return [Types::ProtectedJobResultConfigurationOutput]
    # @!attribute statistics
    #   <p> The statistics of the protected job.</p>
    #   @return [Types::ProtectedJobStatistics]
    # @!attribute result
    #   <p> The result of the protected job.</p>
    #   @return [Types::ProtectedJobResult]
    # @!attribute error
    #   <p> The error from the protected job.</p>
    #   @return [Types::ProtectedJobError]
    # @!attribute compute_configuration
    #   <p>The compute configuration for the protected job.</p>
    #   @return [Types::ProtectedJobComputeConfiguration]
    # @!attribute job_compute_payer_account_id
    #   <p>The account ID of the member that pays for the job compute costs.</p>
    #   @return [String]
    class ProtectedJob < Struct.new(
      nil,
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :job_parameters,
      :status,
      :result_configuration,
      :statistics,
      :result,
      :error,
      :compute_configuration,
      :job_compute_payer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the compute resources for a PySpark job.</p>
    # @!attribute worker
    #   <p>The worker configuration for the compute environment.</p>
    #   @return [Types::ProtectedJobWorkerComputeConfiguration]
    class ProtectedJobComputeConfiguration < Struct.new(
      :worker,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Worker < ProtectedJobComputeConfiguration; end
      class Unknown < ProtectedJobComputeConfiguration; end
    end

    # <p>The protected job configuration details.</p>
    # @!attribute direct_analysis_configuration_details
    #   <p>The details needed to configure the direct analysis.</p>
    #   @return [Types::ProtectedJobDirectAnalysisConfigurationDetails]
    class ProtectedJobConfigurationDetails < Struct.new(
      :direct_analysis_configuration_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DirectAnalysisConfigurationDetails < ProtectedJobConfigurationDetails; end
      class Unknown < ProtectedJobConfigurationDetails; end
    end

    # <p>The protected job direct analysis configuration details.</p>
    # @!attribute receiver_account_ids
    #   <p> The receiver account IDs.</p>
    #   @return [Array<String>]
    class ProtectedJobDirectAnalysisConfigurationDetails < Struct.new(
      nil,
      :receiver_account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The protected job error.</p>
    # @!attribute message
    #   <p> The message for the protected job error.</p>
    #   @return [String]
    # @!attribute code
    #   <p> The error code for the protected job.</p>
    #   @return [String]
    class ProtectedJobError < Struct.new(
      nil,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The protected job member output configuration input.</p>
    # @!attribute account_id
    #   <p> The account ID.</p>
    #   @return [String]
    class ProtectedJobMemberOutputConfigurationInput < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The protected job member output configuration output.</p>
    # @!attribute account_id
    #   <p> The account ID.</p>
    #   @return [String]
    class ProtectedJobMemberOutputConfigurationOutput < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the protected job output.</p>
    # @!attribute s3
    #   <p>If present, the output for a protected job with an `S3` output type.</p>
    #   @return [Types::ProtectedJobS3Output]
    # @!attribute member_list
    #   <p>The list of member Amazon Web Services account(s) that received the results of the job. </p>
    #   @return [Array<Types::ProtectedJobSingleMemberOutput>]
    class ProtectedJobOutput < Struct.new(
      :s3,
      :member_list,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ProtectedJobOutput; end
      class MemberList < ProtectedJobOutput; end
      class Unknown < ProtectedJobOutput; end
    end

    # <p> The protected job output configuration input.</p>
    # @!attribute member
    #   <p> The member of the protected job output configuration input.</p>
    #   @return [Types::ProtectedJobMemberOutputConfigurationInput]
    class ProtectedJobOutputConfigurationInput < Struct.new(
      :member,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Member < ProtectedJobOutputConfigurationInput; end
      class Unknown < ProtectedJobOutputConfigurationInput; end
    end

    # <p> The protected job output configuration output.</p>
    # @!attribute s3
    #   <p>If present, the output for a protected job with an `S3` output type.</p>
    #   @return [Types::ProtectedJobS3OutputConfigurationOutput]
    # @!attribute member
    #   <p> The member output configuration for a protected job.</p>
    #   @return [Types::ProtectedJobMemberOutputConfigurationOutput]
    class ProtectedJobOutputConfigurationOutput < Struct.new(
      :s3,
      :member,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ProtectedJobOutputConfigurationOutput; end
      class Member < ProtectedJobOutputConfigurationOutput; end
      class Unknown < ProtectedJobOutputConfigurationOutput; end
    end

    # <p>The parameters for the protected job.</p>
    # @!attribute analysis_template_arn
    #   <p> The ARN of the analysis template.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Runtime configuration values passed to the PySpark analysis script. Parameter names and types must match those defined in the analysis template.</p>
    #   @return [Hash<String, String>]
    class ProtectedJobParameters < Struct.new(
      nil,
      :analysis_template_arn,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The protected job receiver configuration.</p>
    # @!attribute analysis_type
    #   <p> The analysis type for the protected job receiver configuration.</p>
    #   @return [String]
    # @!attribute configuration_details
    #   <p> The configuration details for the protected job receiver.</p>
    #   @return [Types::ProtectedJobConfigurationDetails]
    class ProtectedJobReceiverConfiguration < Struct.new(
      nil,
      :analysis_type,
      :configuration_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the job results.</p>
    # @!attribute output
    #   <p> The output of the protected job.</p>
    #   @return [Types::ProtectedJobOutput]
    class ProtectedJobResult < Struct.new(
      nil,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The protected job result configuration input.</p>
    # @!attribute output_configuration
    #   <p> The output configuration for a protected job result.</p>
    #   @return [Types::ProtectedJobOutputConfigurationInput]
    class ProtectedJobResultConfigurationInput < Struct.new(
      nil,
      :output_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output configuration for a protected job result.</p>
    # @!attribute output_configuration
    #   <p>The output configuration.</p>
    #   @return [Types::ProtectedJobOutputConfigurationOutput]
    class ProtectedJobResultConfigurationOutput < Struct.new(
      nil,
      :output_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains output information for protected jobs with an S3 output type.</p>
    # @!attribute location
    #   <p> The S3 location for the protected job output.</p>
    #   @return [String]
    class ProtectedJobS3Output < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains input information for protected jobs with an S3 output type.</p>
    # @!attribute bucket
    #   <p> The S3 bucket for job output.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The S3 prefix to unload the protected job results.</p>
    #   @return [String]
    class ProtectedJobS3OutputConfigurationInput < Struct.new(
      nil,
      :bucket,
      :key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The output configuration for a protected job's S3 output.</p>
    # @!attribute bucket
    #   <p> The S3 bucket for job output.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The S3 prefix to unload the protected job results.</p>
    #   @return [String]
    class ProtectedJobS3OutputConfigurationOutput < Struct.new(
      nil,
      :bucket,
      :key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the member who received the job result.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member in the collaboration who can receive results from analyses.</p>
    #   @return [String]
    class ProtectedJobSingleMemberOutput < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains statistics about the execution of the protected job.</p>
    # @!attribute total_duration_in_millis
    #   <p>The duration of the protected job, from creation until job completion, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute billed_resource_utilization
    #   <p> The billed resource utilization for the protected job.</p>
    #   @return [Types::BilledJobResourceUtilization]
    class ProtectedJobStatistics < Struct.new(
      nil,
      :total_duration_in_millis,
      :billed_resource_utilization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The protected job summary for the objects listed by the request.</p>
    # @!attribute id
    #   <p> The ID of the protected job.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique ID for the membership that initiated the protected job.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The unique ARN for the membership that initiated the protected job.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the protected job was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the protected job.</p>
    #   @return [String]
    # @!attribute receiver_configurations
    #   <p> The receiver configurations for the protected job.</p>
    #   @return [Array<Types::ProtectedJobReceiverConfiguration>]
    # @!attribute job_compute_payer_account_id
    #   <p>The account ID of the member that pays for the job compute costs.</p>
    #   @return [String]
    class ProtectedJobSummary < Struct.new(
      nil,
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :status,
      :receiver_configurations,
      :job_compute_payer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:receiver_configurations] = [] unless options.key?(:receiver_configurations)
        super
      end
    end

    # <p>The configuration of the compute resources for a PySpark job.</p>
    # @!attribute type
    #   <p>The worker compute configuration type.</p>
    #   @return [String]
    # @!attribute number
    #   <p>The number of workers for a PySpark job.</p>
    #   @return [Integer]
    # @!attribute properties
    #   <p>The configuration properties for the worker compute environment. These properties allow you to customize the compute settings for your Clean Rooms workloads.</p>
    #   @return [Types::WorkerComputeConfigurationProperties]
    class ProtectedJobWorkerComputeConfiguration < Struct.new(
      nil,
      :type,
      :number,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for an Clean Rooms protected query.</p>
    # @!attribute id
    #   <p>The identifier for a protected query instance.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The identifier for the membership.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The ARN of the membership.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the protected query was created.</p>
    #   @return [Time]
    # @!attribute sql_parameters
    #   <p>The protected query SQL parameters.</p>
    #   @return [Types::ProtectedQuerySQLParameters]
    # @!attribute status
    #   <p>The status of the query.</p>
    #   @return [String]
    # @!attribute result_configuration
    #   <p>Contains any details needed to write the query results.</p>
    #   @return [Types::ProtectedQueryResultConfiguration]
    # @!attribute statistics
    #   <p>Statistics about protected query execution.</p>
    #   @return [Types::ProtectedQueryStatistics]
    # @!attribute result
    #   <p>The result of the protected query.</p>
    #   @return [Types::ProtectedQueryResult]
    # @!attribute error
    #   <p>An error thrown by the protected query.</p>
    #   @return [Types::ProtectedQueryError]
    # @!attribute differential_privacy
    #   <p>The sensitivity parameters of the differential privacy results of the protected query.</p>
    #   @return [Types::DifferentialPrivacyParameters]
    # @!attribute compute_configuration
    #   <p> The compute configuration for the protected query.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute query_compute_payer_account_id
    #   <p>The account ID of the member that pays for the query compute costs.</p>
    #   @return [String]
    class ProtectedQuery < Struct.new(
      nil,
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :sql_parameters,
      :status,
      :result_configuration,
      :statistics,
      :result,
      :error,
      :differential_privacy,
      :compute_configuration,
      :query_compute_payer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains the output information for a protected query with a distribute output configuration.</p> <p> This output type allows query results to be distributed to multiple receivers, including S3 and collaboration members. It is only available for queries using the Spark analytics engine.</p>
    # @!attribute s3
    #   <p>Contains output information for protected queries with an S3 output type.</p>
    #   @return [Types::ProtectedQueryS3Output]
    # @!attribute member_list
    #   <p> Contains the output results for each member location specified in the distribute output configuration. Each entry provides details about the result distribution to a specific collaboration member. </p>
    #   @return [Array<Types::ProtectedQuerySingleMemberOutput>]
    class ProtectedQueryDistributeOutput < Struct.new(
      nil,
      :s3,
      :member_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies the configuration for distributing protected query results to multiple receivers, including S3 and collaboration members.</p>
    # @!attribute locations
    #   <p> A list of locations where you want to distribute the protected query results. Each location must specify either an S3 destination or a collaboration member destination.</p> <important> <p>You can't specify more than one S3 location.</p> <p>You can't specify the query runner's account as a member location.</p> <p>You must include either an S3 or member output configuration for each location, but not both.</p> </important>
    #   @return [Array<Types::ProtectedQueryDistributeOutputConfigurationLocation>]
    class ProtectedQueryDistributeOutputConfiguration < Struct.new(
      nil,
      :locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies where you'll distribute the results of your protected query. You must configure either an S3 destination or a collaboration member destination.</p>
    # @!attribute s3
    #   <p>Contains the configuration to write the query results to S3.</p>
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    # @!attribute member
    #   <p> Contains configuration details for the protected query member output.</p>
    #   @return [Types::ProtectedQueryMemberOutputConfiguration]
    class ProtectedQueryDistributeOutputConfigurationLocation < Struct.new(
      :s3,
      :member,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ProtectedQueryDistributeOutputConfigurationLocation; end
      class Member < ProtectedQueryDistributeOutputConfigurationLocation; end
      class Unknown < ProtectedQueryDistributeOutputConfigurationLocation; end
    end

    # <p>Details of errors thrown by the protected query.</p>
    # @!attribute message
    #   <p>A description of why the query failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>An error code for the error.</p>
    #   @return [String]
    class ProtectedQueryError < Struct.new(
      nil,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains configuration details for the protected query member output.</p>
    # @!attribute account_id
    #   <p>The unique identifier for the account.</p>
    #   @return [String]
    class ProtectedQueryMemberOutputConfiguration < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the protected query output.</p>
    # @!attribute s3
    #   <p>If present, the output for a protected query with an <code>S3</code> output type.</p>
    #   @return [Types::ProtectedQueryS3Output]
    # @!attribute member_list
    #   <p>The list of member Amazon Web Services account(s) that received the results of the query. </p>
    #   @return [Array<Types::ProtectedQuerySingleMemberOutput>]
    # @!attribute distribute
    #   <p>Contains output information for protected queries that use a <code>distribute</code> output type. This output type lets you send query results to multiple locations - either to S3 or to collaboration members. </p> <note> <p> You can only use the <code>distribute</code> output type with the Spark analytics engine. </p> </note>
    #   @return [Types::ProtectedQueryDistributeOutput]
    class ProtectedQueryOutput < Struct.new(
      :s3,
      :member_list,
      :distribute,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ProtectedQueryOutput; end
      class MemberList < ProtectedQueryOutput; end
      class Distribute < ProtectedQueryOutput; end
      class Unknown < ProtectedQueryOutput; end
    end

    # <p>Contains configuration details for protected query output.</p>
    # @!attribute s3
    #   <p>Required configuration for a protected query with an <code>s3</code> output type.</p>
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    # @!attribute member
    #   <p> Required configuration for a protected query with a <code>member</code> output type.</p>
    #   @return [Types::ProtectedQueryMemberOutputConfiguration]
    # @!attribute distribute
    #   <p> Required configuration for a protected query with a <code>distribute</code> output type.</p>
    #   @return [Types::ProtectedQueryDistributeOutputConfiguration]
    # @!attribute intermediate_table
    #   <p>The intermediate table output configuration, present when the protected query was triggered by a populate operation.</p>
    #   @return [Types::IntermediateTableOutputConfiguration]
    class ProtectedQueryOutputConfiguration < Struct.new(
      :s3,
      :member,
      :distribute,
      :intermediate_table,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ProtectedQueryOutputConfiguration; end
      class Member < ProtectedQueryOutputConfiguration; end
      class Distribute < ProtectedQueryOutputConfiguration; end
      class IntermediateTable < ProtectedQueryOutputConfiguration; end
      class Unknown < ProtectedQueryOutputConfiguration; end
    end

    # <p>Details about the query results.</p>
    # @!attribute output
    #   <p>The output of the protected query.</p>
    #   @return [Types::ProtectedQueryOutput]
    class ProtectedQueryResult < Struct.new(
      nil,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for protected query results.</p>
    # @!attribute output_configuration
    #   <p>Configuration for protected query results.</p>
    #   @return [Types::ProtectedQueryOutputConfiguration]
    class ProtectedQueryResultConfiguration < Struct.new(
      nil,
      :output_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains output information for protected queries with an S3 output type.</p>
    # @!attribute location
    #   <p>The S3 location of the result.</p>
    #   @return [String]
    class ProtectedQueryS3Output < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration to write the query results to S3.</p>
    # @!attribute result_format
    #   <p>Intended file format of the result.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The S3 bucket to unload the protected query results.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The S3 prefix to unload the protected query results.</p>
    #   @return [String]
    # @!attribute single_file_output
    #   <p>Indicates whether files should be output as a single file (<code>TRUE</code>) or output as multiple files (<code>FALSE</code>). This parameter is only supported for analyses with the Spark analytics engine.</p>
    #   @return [Boolean]
    class ProtectedQueryS3OutputConfiguration < Struct.new(
      nil,
      :result_format,
      :bucket,
      :key_prefix,
      :single_file_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for the SQL type Protected Query.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute query_string
    #   <p>The query string to be submitted.</p>
    #   @return [String]
    # @!attribute analysis_template_arn
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The protected query SQL parameters.</p>
    #   @return [Hash<String, String>]
    class ProtectedQuerySQLParameters < Struct.new(
      nil,
      :query_string,
      :analysis_template_arn,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the member who received the query result.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member in the collaboration who can receive results for the query.</p>
    #   @return [String]
    class ProtectedQuerySingleMemberOutput < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains statistics about the execution of the protected query.</p>
    # @!attribute total_duration_in_millis
    #   <p>The duration of the protected query, from creation until query completion, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute billed_resource_utilization
    #   <p> The billed resource utilization.</p>
    #   @return [Types::BilledResourceUtilization]
    class ProtectedQueryStatistics < Struct.new(
      nil,
      :total_duration_in_millis,
      :billed_resource_utilization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The protected query summary for the objects listed by the request.</p>
    # @!attribute id
    #   <p>The unique ID of the protected query.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique ID for the membership that initiated the protected query.</p>
    #   @return [String]
    # @!attribute membership_arn
    #   <p>The unique ARN for the membership that initiated the protected query.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the protected query was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the protected query.</p>
    #   @return [String]
    # @!attribute receiver_configurations
    #   <p> The receiver configuration.</p>
    #   @return [Array<Types::ReceiverConfiguration>]
    # @!attribute query_compute_payer_account_id
    #   <p>The account ID of the member that pays for the query compute costs.</p>
    #   @return [String]
    # @!attribute intermediate_table_configuration
    #   <p>The intermediate table configuration, present when the protected query was triggered by a populate operation.</p>
    #   @return [Types::IntermediateTableOutputConfiguration]
    class ProtectedQuerySummary < Struct.new(
      nil,
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :status,
      :receiver_configurations,
      :query_compute_payer_account_id,
      :intermediate_table_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:receiver_configurations] = [] unless options.key?(:receiver_configurations)
        super
      end
    end

    # <p>An object representing the collaboration member's payment responsibilities set by the collaboration creator for query compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for query compute costs (<code>TRUE</code>) or has not configured the collaboration member to pay for query compute costs (<code>FALSE</code>).</p> <p>One or more members can be configured as payer candidates for query compute costs.</p> <p>If the collaboration creator hasn't specified anyone as the member paying for query compute costs, then the member who can query is the default payer.</p>
    #   @return [Boolean]
    class QueryComputePaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides any necessary query constraint information.</p>
    # @!attribute require_overlap
    #   <p>An array of column names that specifies which columns are required in the JOIN statement.</p>
    #   @return [Types::QueryConstraintRequireOverlap]
    class QueryConstraint < Struct.new(
      :require_overlap,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RequireOverlap < QueryConstraint; end
      class Unknown < QueryConstraint; end
    end

    # <p>Provides the name of the columns that are required to overlap.</p>
    # @!attribute columns
    #   <p>The columns that are required to overlap.</p>
    #   @return [Array<String>]
    class QueryConstraintRequireOverlap < Struct.new(
      nil,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The receiver configuration for a protected query.</p>
    # @!attribute analysis_type
    #   <p> The type of analysis for the protected query. The results of the query can be analyzed directly (<code>DIRECT_ANALYSIS</code>) or used as input into additional analyses (<code>ADDITIONAL_ANALYSIS</code>), such as a query that is a seed for a lookalike ML model.</p>
    #   @return [String]
    # @!attribute configuration_details
    #   <p> The configuration details of the receiver configuration.</p>
    #   @return [Types::ConfigurationDetails]
    class ReceiverConfiguration < Struct.new(
      nil,
      :analysis_type,
      :configuration_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Id of the missing resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the missing resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 location.</p>
    # @!attribute bucket
    #   <p> The bucket name.</p>
    #   @return [String]
    # @!attribute key
    #   <p> The object key.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A schema is a relation within a collaboration.</p>
    # @!attribute columns
    #   <p>The columns for the relation that this schema represents.</p>
    #   @return [Array<Types::Column>]
    # @!attribute partition_keys
    #   <p>The partition keys for the dataset underlying this schema.</p>
    #   @return [Array<Types::Column>]
    # @!attribute analysis_rule_types
    #   <p>The analysis rule types that are associated with the schema. Currently, only one entry is present.</p>
    #   @return [Array<String>]
    # @!attribute analysis_method
    #   <p>The analysis method for the schema. </p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    #   @return [String]
    # @!attribute selected_analysis_methods
    #   <p> The selected analysis methods for the schema.</p>
    #   @return [Array<String>]
    # @!attribute creator_account_id
    #   <p>The unique account ID for the Amazon Web Services account that owns the schema.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the schema. The schema relation is referred to by this name when queried by a protected query.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The unique ID for the collaboration that the schema belongs to.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique Amazon Resource Name (ARN) for the collaboration that the schema belongs to.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the schema.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the schema was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the schema was updated.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of schema.</p>
    #   @return [String]
    # @!attribute schema_status_details
    #   <p>Details about the status of the schema. Currently, only one entry is present.</p>
    #   @return [Array<Types::SchemaStatusDetail>]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schema resource.</p>
    #   @return [String]
    # @!attribute schema_type_properties
    #   <p>The schema type properties.</p>
    #   @return [Types::SchemaTypeProperties]
    class Schema < Struct.new(
      nil,
      :columns,
      :partition_keys,
      :analysis_rule_types,
      :analysis_method,
      :selected_analysis_methods,
      :creator_account_id,
      :name,
      :collaboration_id,
      :collaboration_arn,
      :description,
      :create_time,
      :update_time,
      :type,
      :schema_status_details,
      :resource_arn,
      :schema_type_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:schema_status_details] = [] unless options.key?(:schema_status_details)
        super
      end
    end

    # <p>Defines the information that's necessary to retrieve an analysis rule schema. Schema analysis rules are uniquely identiﬁed by a combination of the schema name and the analysis rule type for a given collaboration.</p>
    # @!attribute name
    #   <p>The name of the analysis rule schema that you are requesting.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of analysis rule schema that you are requesting.</p>
    #   @return [String]
    class SchemaAnalysisRuleRequest < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the schema status.</p> <p>A status of <code>READY</code> means that based on the schema analysis rule, queries of the given analysis rule type are properly configured to run queries on this schema.</p>
    # @!attribute status
    #   <p>The status of the schema, indicating if it is ready to query.</p>
    #   @return [String]
    # @!attribute reasons
    #   <p>The reasons why the schema status is set to its current state.</p>
    #   @return [Array<Types::SchemaStatusReason>]
    # @!attribute analysis_rule_type
    #   <p>The analysis rule type for which the schema status has been evaluated.</p>
    #   @return [String]
    # @!attribute configurations
    #   <p>The configuration details of the schema analysis rule for the given type.</p>
    #   @return [Array<String>]
    # @!attribute analysis_type
    #   <p>The type of analysis that can be performed on the schema.</p> <p>A schema can have an <code>analysisType</code> of <code>DIRECT_ANALYSIS</code>, <code>ADDITIONAL_ANALYSIS_FOR_AUDIENCE_GENERATION</code>, or both.</p>
    #   @return [String]
    class SchemaStatusDetail < Struct.new(
      nil,
      :status,
      :reasons,
      :analysis_rule_type,
      :configurations,
      :analysis_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:analysis_type] = nil unless options.key?(:analysis_type)
        super
      end
    end

    # <p>A reason why the schema status is set to its current value.</p>
    # @!attribute code
    #   <p>The schema status reason code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An explanation of the schema status reason code.</p>
    #   @return [String]
    class SchemaStatusReason < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The schema summary for the objects listed by the request.</p>
    # @!attribute name
    #   <p>The name for the schema object.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of schema object.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The unique account ID for the Amazon Web Services account that owns the schema.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time the schema object was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The time the schema object was last updated.</p>
    #   @return [Time]
    # @!attribute collaboration_id
    #   <p>The unique ID for the collaboration that the schema belongs to.</p>
    #   @return [String]
    # @!attribute collaboration_arn
    #   <p>The unique ARN for the collaboration that the schema belongs to.</p>
    #   @return [String]
    # @!attribute analysis_rule_types
    #   <p>The types of analysis rules that are associated with this schema object.</p>
    #   @return [Array<String>]
    # @!attribute analysis_method
    #   <p>The analysis method for the associated schema.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schema summary resource.</p>
    #   @return [String]
    # @!attribute selected_analysis_methods
    #   <p> The selected analysis methods for the schema.</p>
    #   @return [Array<String>]
    class SchemaSummary < Struct.new(
      nil,
      :name,
      :type,
      :creator_account_id,
      :create_time,
      :update_time,
      :collaboration_id,
      :collaboration_arn,
      :analysis_rule_types,
      :analysis_method,
      :resource_arn,
      :selected_analysis_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the schema type properties.</p>
    # @!attribute id_mapping_table
    #   <p>The ID mapping table for the schema type properties.</p>
    #   @return [Types::IdMappingTableSchemaTypeProperties]
    # @!attribute intermediate_table
    #   <p>The schema type properties for an intermediate table.</p>
    #   @return [Types::IntermediateTableSchemaTypeProperties]
    # @!attribute configured_table_association
    #   <p>The schema type properties for a configured table association.</p>
    #   @return [Types::ConfiguredTableAssociationSchemaTypeProperties]
    class SchemaTypeProperties < Struct.new(
      :id_mapping_table,
      :intermediate_table,
      :configured_table_association,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IdMappingTable < SchemaTypeProperties; end
      class IntermediateTable < SchemaTypeProperties; end
      class ConfiguredTableAssociation < SchemaTypeProperties; end
      class Unknown < SchemaTypeProperties; end
    end

    # <p>Request denied because service quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_name
    #   <p>The name of the quota.</p>
    #   @return [String]
    # @!attribute quota_value
    #   <p>The value of the quota.</p>
    #   @return [Float]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :quota_name,
      :quota_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A reference to a table within Snowflake.</p>
    # @!attribute secret_arn
    #   <p> The secret ARN of the Snowflake table reference.</p>
    #   @return [String]
    # @!attribute account_identifier
    #   <p> The account identifier for the Snowflake table reference.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p> The name of the database the Snowflake table belongs to.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p> The name of the Snowflake table.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p> The schema name of the Snowflake table reference.</p>
    #   @return [String]
    # @!attribute table_schema
    #   <p> The schema of the Snowflake table.</p>
    #   @return [Types::SnowflakeTableSchema]
    class SnowflakeTableReference < Struct.new(
      nil,
      :secret_arn,
      :account_identifier,
      :database_name,
      :table_name,
      :schema_name,
      :table_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The schema of a Snowflake table.</p>
    # @!attribute v1
    #   <p> The schema of a Snowflake table.</p>
    #   @return [Array<Types::SnowflakeTableSchemaV1>]
    class SnowflakeTableSchema < Struct.new(
      :v1,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class V1 < SnowflakeTableSchema; end
      class Unknown < SnowflakeTableSchema; end
    end

    # <p> The Snowflake table schema.</p>
    # @!attribute column_name
    #   <p> The column name.</p>
    #   @return [String]
    # @!attribute column_type
    #   <p> The column's data type. Supported data types: <code>ARRAY</code>, <code>BIGINT</code>, <code>BOOLEAN</code>, <code>CHAR</code>, <code>DATE</code>, <code>DECIMAL</code>, <code>DOUBLE</code>, <code>DOUBLE PRECISION</code>, <code>FLOAT</code>, <code>FLOAT4</code>, <code>INT</code>, <code>INTEGER</code>, <code>MAP</code>, <code>NUMERIC</code>, <code>NUMBER</code>, <code>REAL</code>, <code>SMALLINT</code>, <code>STRING</code>, <code>TIMESTAMP</code>, <code>TIMESTAMP_LTZ</code>, <code>TIMESTAMP_NTZ</code>, <code>DATETIME</code>, <code>TINYINT</code>, <code>VARCHAR</code>, <code>TEXT</code>, <code>CHARACTER</code>.</p>
    #   @return [String]
    class SnowflakeTableSchemaV1 < Struct.new(
      nil,
      :column_name,
      :column_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership to export the analysis logs for. Currently accepts a membership ID.</p>
    #   @return [String]
    # @!attribute analysis_id
    #   <p>The unique identifier of the protected query that you want to export the analysis logs for.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis that the logs are exported for. Currently, only <code>PROTECTED_QUERY</code> is supported.</p>
    #   @return [String]
    # @!attribute result_configuration
    #   <p>The details needed to write the exported analysis logs.</p> <p>You don't need to create an IAM role for log export. Clean Rooms writes the exported logs using your own identity, so Clean Rooms writes the exported logs only where your existing permissions allow.</p>
    #   @return [Types::AnalysisLogExportResultConfiguration]
    class StartAnalysisLogExportInput < Struct.new(
      nil,
      :membership_identifier,
      :analysis_id,
      :analysis_type,
      :result_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_log_export
    #   <p>The analysis log export that was started. The <code>status</code> is <code>IN_PROGRESS</code>.</p>
    #   @return [Types::AnalysisLogExport]
    class StartAnalysisLogExportOutput < Struct.new(
      nil,
      :analysis_log_export,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p> The type of protected job to start.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership to run this job against. Currently accepts a membership ID.</p>
    #   @return [String]
    # @!attribute job_parameters
    #   <p> The job parameters.</p>
    #   @return [Types::ProtectedJobParameters]
    # @!attribute result_configuration
    #   <p>The details needed to write the job results.</p>
    #   @return [Types::ProtectedJobResultConfigurationInput]
    # @!attribute compute_configuration
    #   <p>The compute configuration for the protected job.</p>
    #   @return [Types::ProtectedJobComputeConfiguration]
    # @!attribute job_compute_payer_account_id
    #   <p>The account ID of the member that pays for the job compute costs.</p>
    #   @return [String]
    class StartProtectedJobInput < Struct.new(
      nil,
      :type,
      :membership_identifier,
      :job_parameters,
      :result_configuration,
      :compute_configuration,
      :job_compute_payer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protected_job
    #   <p> The protected job.</p>
    #   @return [Types::ProtectedJob]
    class StartProtectedJobOutput < Struct.new(
      nil,
      :protected_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of the protected query to be started.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership to run this query against. Currently accepts a membership ID.</p>
    #   @return [String]
    # @!attribute sql_parameters
    #   <p>The protected SQL query parameters.</p>
    #   @return [Types::ProtectedQuerySQLParameters]
    # @!attribute result_configuration
    #   <p>The details needed to write the query results.</p>
    #   @return [Types::ProtectedQueryResultConfiguration]
    # @!attribute compute_configuration
    #   <p> The compute configuration for the protected query.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute query_compute_payer_account_id
    #   <p>The account ID of the member that pays for the query compute costs.</p>
    #   @return [String]
    class StartProtectedQueryOperationInput < Struct.new(
      nil,
      :type,
      :membership_identifier,
      :sql_parameters,
      :result_configuration,
      :compute_configuration,
      :query_compute_payer_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protected_query
    #   <p>The protected query.</p>
    #   @return [Types::ProtectedQuery]
    class StartProtectedQueryOperationOutput < Struct.new(
      nil,
      :protected_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties that define how a specific data column should be handled during synthetic data generation, including its name, type, and role in predictive modeling.</p>
    # @!attribute column_name
    #   <p>The name of the data column as it appears in the dataset.</p>
    #   @return [String]
    # @!attribute column_type
    #   <p>The data type of the column, which determines how the synthetic data generation algorithm processes and synthesizes values for this column.</p>
    #   @return [String]
    # @!attribute is_predictive_value
    #   <p>Indicates if this column contains predictive values that should be treated as target variables in machine learning models. This affects how the synthetic data generation preserves statistical relationships.</p>
    #   @return [Boolean]
    class SyntheticDataColumnProperties < Struct.new(
      nil,
      :column_name,
      :column_type,
      :is_predictive_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Payment configuration for synthetic data generation.</p>
    # @!attribute is_responsible
    #   <p>Indicates who is responsible for paying for synthetic data generation.</p>
    #   @return [Boolean]
    class SyntheticDataGenerationPaymentConfig < Struct.new(
      nil,
      :is_responsible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters that control how synthetic data is generated, including privacy settings, column classifications, and other configuration options that affect the data synthesis process.</p>
    # @!attribute ml_synthetic_data_parameters
    #   <p>The machine learning-specific parameters for synthetic data generation.</p>
    #   @return [Types::MLSyntheticDataParameters]
    class SyntheticDataParameters < Struct.new(
      :ml_synthetic_data_parameters,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MlSyntheticDataParameters < SyntheticDataParameters; end
      class Unknown < SyntheticDataParameters; end
    end

    # <p>A pointer to the dataset that underlies this table.</p>
    # @!attribute glue
    #   <p>If present, a reference to the Glue table referred to by this table reference.</p>
    #   @return [Types::GlueTableReference]
    # @!attribute snowflake
    #   <p> If present, a reference to the Snowflake table referred to by this table reference.</p>
    #   @return [Types::SnowflakeTableReference]
    # @!attribute athena
    #   <p> If present, a reference to the Athena table referred to by this table reference.</p>
    #   @return [Types::AthenaTableReference]
    class TableReference < Struct.new(
      :glue,
      :snowflake,
      :athena,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Glue < TableReference; end
      class Snowflake < TableReference; end
      class Athena < TableReference; end
      class Unknown < TableReference; end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of objects specifying each key name and value.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to remove the tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names of tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the analysis template.</p>
    #   @return [String]
    class UpdateAnalysisTemplateOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :analysis_template_identifier,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_template
    #   <p>The analysis template.</p>
    #   @return [Types::AnalysisTemplate]
    class UpdateAnalysisTemplateOperationOutput < Struct.new(
      nil,
      :analysis_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the change request to be updated.</p>
    #   @return [String]
    # @!attribute change_request_identifier
    #   <p>The unique identifier of the specific change request to be updated within the collaboration.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to perform on the change request. Valid values include APPROVE (approve the change), DENY (reject the change), CANCEL (cancel the request), and COMMIT (commit after the request is approved).</p> <p>For change requests without automatic approval, a member in the collaboration can manually APPROVE or DENY a change request. The collaboration owner can manually CANCEL or COMMIT a change request.</p>
    #   @return [String]
    class UpdateCollaborationChangeRequestInput < Struct.new(
      nil,
      :collaboration_identifier,
      :change_request_identifier,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_change_request
    #   <p>Represents a request to modify a collaboration. Change requests enable structured modifications to collaborations after they have been created.</p>
    #   @return [Types::CollaborationChangeRequest]
    class UpdateCollaborationChangeRequestOutput < Struct.new(
      nil,
      :collaboration_change_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A human-readable identifier provided by the collaboration owner. Display names are not unique.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the collaboration.</p>
    #   @return [String]
    # @!attribute analytics_engine
    #   <p>The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>
    #   @return [String]
    class UpdateCollaborationOperationInput < Struct.new(
      nil,
      :collaboration_identifier,
      :name,
      :description,
      :analytics_engine,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute collaboration
    #   <p>The entire collaboration that has been updated.</p>
    #   @return [Types::Collaboration]
    class UpdateCollaborationOperationOutput < Struct.new(
      nil,
      :collaboration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to update.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier of the membership that contains the configured audience model association that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the configured audience model association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A new name for the configured audience model association.</p>
    #   @return [String]
    class UpdateConfiguredAudienceModelAssociationInput < Struct.new(
      nil,
      :configured_audience_model_association_identifier,
      :membership_identifier,
      :description,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association
    #   <p>Details about the configured audience model association that you updated.</p>
    #   @return [Types::ConfiguredAudienceModelAssociation]
    class UpdateConfiguredAudienceModelAssociationOutput < Struct.new(
      nil,
      :configured_audience_model_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique identifier for the configured table that the analysis rule applies to. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The analysis rule type to be updated. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    #   @return [String]
    # @!attribute analysis_rule_policy
    #   <p>The new analysis rule policy for the configured table analysis rule.</p>
    #   @return [Types::ConfiguredTableAnalysisRulePolicy]
    class UpdateConfiguredTableAnalysisRuleOperationInput < Struct.new(
      nil,
      :configured_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The entire updated analysis rule.</p>
    #   @return [Types::ConfiguredTableAnalysisRule]
    class UpdateConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    # @!attribute configured_table_association_identifier
    #   <p> The identifier for the configured table association to update.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p> The analysis rule type that you want to update.</p>
    #   @return [String]
    # @!attribute analysis_rule_policy
    #   <p> The updated analysis rule policy for the conﬁgured table association.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    class UpdateConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p> The updated analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    class UpdateConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_association_identifier
    #   <p>The unique identifier for the configured table association to update. Currently accepts the configured table association ID.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique ID for the membership that the configured table association belongs to.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the configured table association.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The service will assume this role to access catalog metadata and query the table.</p>
    #   @return [String]
    class UpdateConfiguredTableAssociationOperationInput < Struct.new(
      nil,
      :configured_table_association_identifier,
      :membership_identifier,
      :description,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_association
    #   <p>The entire updated configured table association.</p>
    #   @return [Types::ConfiguredTableAssociation]
    class UpdateConfiguredTableAssociationOperationOutput < Struct.new(
      nil,
      :configured_table_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The identifier for the configured table to update. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A new name for the configured table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the configured table.</p>
    #   @return [String]
    # @!attribute table_reference
    #   <p>A pointer to the dataset that underlies this table.</p>
    #   @return [Types::TableReference]
    # @!attribute allowed_columns
    #   <p>The columns of the underlying table that can be used by collaborations or analysis rules.</p>
    #   @return [Array<String>]
    # @!attribute analysis_method
    #   <p> The analysis method for the configured table.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    #   @return [String]
    # @!attribute selected_analysis_methods
    #   <p> The selected analysis methods for the table configuration update.</p>
    #   @return [Array<String>]
    class UpdateConfiguredTableOperationInput < Struct.new(
      nil,
      :configured_table_identifier,
      :name,
      :description,
      :table_reference,
      :allowed_columns,
      :analysis_method,
      :selected_analysis_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_table
    #   <p>The updated configured table.</p>
    #   @return [Types::ConfiguredTable]
    class UpdateConfiguredTableOperationOutput < Struct.new(
      nil,
      :configured_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to update.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the ID mapping table.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.</p>
    #   @return [String]
    class UpdateIdMappingTableInput < Struct.new(
      nil,
      :id_mapping_table_identifier,
      :membership_identifier,
      :description,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table
    #   <p>The updated ID mapping table.</p>
    #   @return [Types::IdMappingTable]
    class UpdateIdMappingTableOutput < Struct.new(
      nil,
      :id_mapping_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to update.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A new name for the ID namespace association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the ID namespace association.</p>
    #   @return [String]
    # @!attribute id_mapping_config
    #   <p>The configuration settings for the ID mapping table.</p>
    #   @return [Types::IdMappingConfig]
    class UpdateIdNamespaceAssociationInput < Struct.new(
      nil,
      :id_namespace_association_identifier,
      :membership_identifier,
      :name,
      :description,
      :id_mapping_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association
    #   <p>The updated ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociation]
    class UpdateIdNamespaceAssociationOutput < Struct.new(
      nil,
      :id_namespace_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table for which to update the analysis rule.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The type of analysis rule to update. Currently, only <code>CUSTOM</code> is supported.</p>
    #   @return [String]
    # @!attribute analysis_rule_policy
    #   <p>The updated analysis rule policy for the intermediate table.</p>
    #   @return [Types::IntermediateTableAnalysisRulePolicy]
    class UpdateIntermediateTableAnalysisRuleInput < Struct.new(
      nil,
      :membership_identifier,
      :intermediate_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The updated analysis rule for the intermediate table.</p>
    #   @return [Types::IntermediateTableAnalysisRule]
    class UpdateIntermediateTableAnalysisRuleOutput < Struct.new(
      nil,
      :analysis_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table_identifier
    #   <p>The unique identifier of the intermediate table to update.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the intermediate table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the intermediate table.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed KMS key to use for encrypting future population data.</p>
    #   @return [String]
    # @!attribute columns
    #   <p>The list of columns with updated type definitions. Only the type of existing columns can be updated.</p>
    #   @return [Array<Types::IntermediateTableColumn>]
    class UpdateIntermediateTableInput < Struct.new(
      nil,
      :intermediate_table_identifier,
      :membership_identifier,
      :description,
      :kms_key_arn,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intermediate_table
    #   <p>The updated intermediate table.</p>
    #   @return [Types::IntermediateTable]
    class UpdateIntermediateTableOutput < Struct.new(
      nil,
      :intermediate_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership.</p>
    #   @return [String]
    # @!attribute query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute job_log_status
    #   <p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute default_result_configuration
    #   <p>The default protected query result configuration as specified by the member who can receive results.</p>
    #   @return [Types::MembershipProtectedQueryResultConfiguration]
    # @!attribute default_job_result_configuration
    #   <p> The default job result configuration.</p>
    #   @return [Types::MembershipProtectedJobResultConfiguration]
    # @!attribute membership_payment_configuration
    #   <p>The payment configuration to update for the membership.</p>
    #   @return [Types::UpdateMembershipPaymentConfiguration]
    class UpdateMembershipOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :query_log_status,
      :job_log_status,
      :default_result_configuration,
      :default_job_result_configuration,
      :membership_payment_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>The membership object.</p>
    #   @return [Types::Membership]
    class UpdateMembershipOperationOutput < Struct.new(
      nil,
      :membership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the payment responsibilities to update for the membership.</p>
    # @!attribute query_compute
    #   <p>An object representing the payment responsibilities accepted by the collaboration member for query compute costs.</p>
    #   @return [Types::MembershipQueryComputePaymentConfig]
    # @!attribute machine_learning
    #   <p>An object representing the collaboration member's machine learning payment responsibilities set by the collaboration creator.</p>
    #   @return [Types::MembershipMLPaymentConfig]
    # @!attribute job_compute
    #   <p>An object representing the payment responsibilities accepted by the collaboration member for query and job compute costs.</p>
    #   @return [Types::MembershipJobComputePaymentConfig]
    class UpdateMembershipPaymentConfiguration < Struct.new(
      nil,
      :query_compute,
      :machine_learning,
      :job_compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is updated in the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template that you want to update.</p>
    #   @return [String]
    # @!attribute privacy_budget_type
    #   <p>Specifies the type of the privacy budget template.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the epsilon and noise parameters for the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplateUpdateParameters]
    class UpdatePrivacyBudgetTemplateInput < Struct.new(
      nil,
      :membership_identifier,
      :privacy_budget_template_identifier,
      :privacy_budget_type,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_template
    #   <p>Summary of the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplate]
    class UpdatePrivacyBudgetTemplateOutput < Struct.new(
      nil,
      :privacy_budget_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a member of a protected job instance.</p>
    #   @return [String]
    # @!attribute protected_job_identifier
    #   <p> The identifier of the protected job to update.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The target status of a protected job. Used to update the execution status of a currently running job.</p>
    #   @return [String]
    class UpdateProtectedJobInput < Struct.new(
      nil,
      :membership_identifier,
      :protected_job_identifier,
      :target_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protected_job
    #   <p>The protected job output.</p>
    #   @return [Types::ProtectedJob]
    class UpdateProtectedJobOutput < Struct.new(
      nil,
      :protected_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a member of a protected query instance.</p>
    #   @return [String]
    # @!attribute protected_query_identifier
    #   <p>The identifier for a protected query instance.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The target status of a query. Used to update the execution status of a currently running query.</p>
    #   @return [String]
    class UpdateProtectedQueryOperationInput < Struct.new(
      nil,
      :membership_identifier,
      :protected_query_identifier,
      :target_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protected_query
    #   <p>The protected query output.</p>
    #   @return [Types::ProtectedQuery]
    class UpdateProtectedQueryOperationOutput < Struct.new(
      nil,
      :protected_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the specified constraints.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A reason code for the exception.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>Validation errors for specific input parameters.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes validation errors for specific input parameters.</p>
    # @!attribute name
    #   <p>The name of the input parameter.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message for the input validation error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration of the compute resources for workers running an analysis with the Clean Rooms SQL analytics engine.</p>
    # @!attribute type
    #   <p> The worker compute configuration type.</p>
    #   @return [String]
    # @!attribute number
    #   <p> The number of workers.</p> <p>SQL queries support a minimum value of 2 and a maximum value of 400. </p> <p>PySpark jobs support a minimum value of 4 and a maximum value of 128.</p>
    #   @return [Integer]
    # @!attribute properties
    #   <p>The configuration properties for the worker compute environment. These properties allow you to customize the compute settings for your Clean Rooms workloads.</p>
    #   @return [Types::WorkerComputeConfigurationProperties]
    class WorkerComputeConfiguration < Struct.new(
      nil,
      :type,
      :number,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration properties that define the compute environment settings for workers in Clean Rooms. These properties enable customization of the underlying compute environment to optimize performance for your specific workloads.</p>
    # @!attribute spark
    #   <p>The Spark configuration properties for SQL and PySpark workloads. This map contains key-value pairs that configure Apache Spark settings to optimize performance for your data processing jobs. You can specify up to 50 Spark properties, with each key being 1-200 characters and each value being 0-500 characters. These properties allow you to adjust compute capacity for large datasets and complex workloads.</p>
    #   @return [Hash<String, String>]
    class WorkerComputeConfigurationProperties < Struct.new(
      :spark,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Spark < WorkerComputeConfigurationProperties; end
      class Unknown < WorkerComputeConfigurationProperties; end
    end

  end
end

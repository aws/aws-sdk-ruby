# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CleanRooms
  module Types

    # Controls and tracks usage limits for associated configured tables
    # within a collaboration across queries and job. Supports both
    # period-based budgets that can renew (daily, weekly, or monthly) and
    # fixed lifetime budgets. Contains the resource ARN, remaining budget
    # information, and up to two budget configurations (period-based and
    # lifetime). By default, table usage is unlimited unless a budget is
    # configured.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the access budget resource.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Detailed budget information including time bounds, remaining budget,
    #   and refresh settings.
    #   @return [Array<Types::AccessBudgetDetails>]
    #
    # @!attribute [rw] aggregate_remaining_budget
    #   The total remaining budget across all budget parameters, showing the
    #   lower value between the per-period budget and lifetime budget for
    #   this access budget. For individual parameter budgets, see
    #   `remainingBudget`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AccessBudget AWS API Documentation
    #
    class AccessBudget < Struct.new(
      :resource_arn,
      :details,
      :aggregate_remaining_budget)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an access budget including time bounds,
    # budget allocation, and configuration settings.
    #
    # @!attribute [rw] start_time
    #   The start time for the access budget period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for the access budget period.
    #   @return [Time]
    #
    # @!attribute [rw] remaining_budget
    #   The remaining budget amount available for use within this access
    #   budget.
    #   @return [Integer]
    #
    # @!attribute [rw] budget
    #   The total budget allocation amount for this access budget.
    #   @return [Integer]
    #
    # @!attribute [rw] budget_type
    #   Specifies the time period for limiting table usage in queries and
    #   jobs. For calendar-based periods, the budget can renew if auto
    #   refresh is enabled. For lifetime budgets, the limit applies to the
    #   total usage throughout the collaboration. Valid values are:
    #
    #   `CALENDAR_DAY` - Limit table usage per day.
    #
    #   `CALENDAR_WEEK` - Limit table usage per week.
    #
    #   `CALENDAR_MONTH` - Limit table usage per month.
    #
    #   `LIFETIME` - Limit total table usage for the collaboration duration.
    #   @return [String]
    #
    # @!attribute [rw] auto_refresh
    #   Indicates whether the budget automatically refreshes for each time
    #   period specified in `budgetType`. Valid values are:
    #
    #   `ENABLED` - The budget refreshes automatically at the start of each
    #   period.
    #
    #   `DISABLED` - The budget must be refreshed manually.
    #
    #   `NULL` - The value is null when `budgetType` is set to `LIFETIME`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AccessBudgetDetails AWS API Documentation
    #
    class AccessBudgetDetails < Struct.new(
      :start_time,
      :end_time,
      :remaining_budget,
      :budget,
      :budget_type,
      :auto_refresh)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input parameters for privacy budget templates that support access
    # budgets functionality, enabling enhanced budget management
    # capabilities.
    #
    # @!attribute [rw] budget_parameters
    #   An array of budget parameters that define the access budget
    #   configuration for the privacy template.
    #   @return [Array<Types::BudgetParameter>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource associated with this
    #   privacy budget template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AccessBudgetsPrivacyTemplateParametersInput AWS API Documentation
    #
    class AccessBudgetsPrivacyTemplateParametersInput < Struct.new(
      :budget_parameters,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output parameters for privacy budget templates with access budgets
    # support, containing the configured budget information.
    #
    # @!attribute [rw] budget_parameters
    #   An array of budget parameters returned from the access budget
    #   configuration.
    #   @return [Array<Types::BudgetParameter>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource associated with this
    #   privacy budget template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AccessBudgetsPrivacyTemplateParametersOutput AWS API Documentation
    #
    class AccessBudgetsPrivacyTemplateParametersOutput < Struct.new(
      :budget_parameters,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update parameters for privacy budget templates with access budgets
    # functionality, allowing modification of existing budget
    # configurations.
    #
    # @!attribute [rw] budget_parameters
    #   Updated array of budget parameters for the access budget
    #   configuration.
    #   @return [Array<Types::BudgetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AccessBudgetsPrivacyTemplateUpdateParameters AWS API Documentation
    #
    class AccessBudgetsPrivacyTemplateUpdateParameters < Struct.new(
      :budget_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Caller does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A reason code for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Column in configured table that can be used in aggregate function in
    # query.
    #
    # @!attribute [rw] column_names
    #   Column names in configured table of aggregate columns.
    #   @return [Array<String>]
    #
    # @!attribute [rw] function
    #   Aggregation function that can be applied to aggregate column in
    #   query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AggregateColumn AWS API Documentation
    #
    class AggregateColumn < Struct.new(
      :column_names,
      :function)
      SENSITIVE = []
      include Aws::Structure
    end

    # Constraint on query output removing output rows that do not meet a
    # minimum number of distinct values of a specified column.
    #
    # @!attribute [rw] column_name
    #   Column in aggregation constraint for which there must be a minimum
    #   number of distinct values in an output row for it to be in the query
    #   output.
    #   @return [String]
    #
    # @!attribute [rw] minimum
    #   The minimum number of distinct values that an output row must be an
    #   aggregation of. Minimum threshold of distinct values for a specified
    #   column that must exist in an output row for it to be in the query
    #   output.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of aggregation the constraint allows. The only valid value
    #   is currently `COUNT\_DISTINCT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AggregationConstraint AWS API Documentation
    #
    class AggregationConstraint < Struct.new(
      :column_name,
      :minimum,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional. The member who can query can provide this placeholder for a
    # literal data value in an analysis template.
    #
    # @!attribute [rw] name
    #   The name of the parameter. The name must use only alphanumeric,
    #   underscore (\_), or hyphen (-) characters but cannot start or end
    #   with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   Optional. The default value that is applied in the analysis
    #   template. The member who can query can override this value in the
    #   query editor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisParameter AWS API Documentation
    #
    class AnalysisParameter < Struct.new(
      :name,
      :type,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specification about how data from the configured table can be used
    # in a query.
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID for the associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the analysis rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the analysis rule was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] policy
    #   A policy that describes the associated data usage limitations.
    #   @return [Types::AnalysisRulePolicy]
    #
    # @!attribute [rw] collaboration_policy
    #   Controls on the query specifications that can be run on an
    #   associated configured table.
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    #
    # @!attribute [rw] consolidated_policy
    #   The consolidated policy for the analysis rule.
    #   @return [Types::ConsolidatedPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRule AWS API Documentation
    #
    class AnalysisRule < Struct.new(
      :collaboration_id,
      :type,
      :name,
      :create_time,
      :update_time,
      :policy,
      :collaboration_policy,
      :consolidated_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of analysis rule that enables query structure and specified
    # queries that produce aggregate statistics.
    #
    # @!attribute [rw] aggregate_columns
    #   The columns that query runners are allowed to use in aggregation
    #   queries.
    #   @return [Array<Types::AggregateColumn>]
    #
    # @!attribute [rw] join_columns
    #   Columns in configured table that can be used in join statements
    #   and/or as aggregate columns. They can never be outputted directly.
    #   @return [Array<String>]
    #
    # @!attribute [rw] join_required
    #   Control that requires member who runs query to do a join with their
    #   configured table and/or other configured table in query.
    #   @return [String]
    #
    # @!attribute [rw] allowed_join_operators
    #   Which logical operators (if any) are to be used in an INNER JOIN
    #   match condition. Default is `AND`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dimension_columns
    #   The columns that query runners are allowed to select, group by, or
    #   filter by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scalar_functions
    #   Set of scalar functions that are allowed to be used on dimension
    #   columns and the output of aggregation of metrics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_constraints
    #   Columns that must meet a specific threshold value (after an
    #   aggregation function is applied to it) for each output row to be
    #   returned.
    #   @return [Array<Types::AggregationConstraint>]
    #
    # @!attribute [rw] additional_analyses
    #   An indicator as to whether additional analyses (such as Clean Rooms
    #   ML) can be applied to the output of the direct query.
    #
    #   The `additionalAnalyses` parameter is currently supported for the
    #   list analysis rule (`AnalysisRuleList`) and the custom analysis rule
    #   (`AnalysisRuleCustom`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRuleAggregation AWS API Documentation
    #
    class AnalysisRuleAggregation < Struct.new(
      :aggregate_columns,
      :join_columns,
      :join_required,
      :allowed_join_operators,
      :dimension_columns,
      :scalar_functions,
      :output_constraints,
      :additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of analysis rule that enables the table owner to approve custom
    # SQL queries on their configured tables. It supports differential
    # privacy.
    #
    # @!attribute [rw] allowed_analyses
    #   The ARN of the analysis templates that are allowed by the custom
    #   analysis rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_analysis_providers
    #   The IDs of the Amazon Web Services accounts that are allowed to
    #   query by the custom analysis rule. Required when `allowedAnalyses`
    #   is `ANY_QUERY`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_analyses
    #   An indicator as to whether additional analyses (such as Clean Rooms
    #   ML) can be applied to the output of the direct query.
    #   @return [String]
    #
    # @!attribute [rw] disallowed_output_columns
    #   A list of columns that aren't allowed to be shown in the query
    #   output.
    #   @return [Array<String>]
    #
    # @!attribute [rw] differential_privacy
    #   The differential privacy configuration.
    #   @return [Types::DifferentialPrivacyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRuleCustom AWS API Documentation
    #
    class AnalysisRuleCustom < Struct.new(
      :allowed_analyses,
      :allowed_analysis_providers,
      :additional_analyses,
      :disallowed_output_columns,
      :differential_privacy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines details for the analysis rule ID mapping table.
    #
    # @!attribute [rw] join_columns
    #   The columns that query runners are allowed to use in an INNER JOIN
    #   statement.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_constraints
    #   The query constraints of the analysis rule ID mapping table.
    #   @return [Array<Types::QueryConstraint>]
    #
    # @!attribute [rw] dimension_columns
    #   The columns that query runners are allowed to select, group by, or
    #   filter by.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRuleIdMappingTable AWS API Documentation
    #
    class AnalysisRuleIdMappingTable < Struct.new(
      :join_columns,
      :query_constraints,
      :dimension_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of analysis rule that enables row-level analysis.
    #
    # @!attribute [rw] join_columns
    #   Columns that can be used to join a configured table with the table
    #   of the member who can query and other members' configured tables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_join_operators
    #   The logical operators (if any) that are to be used in an INNER JOIN
    #   match condition. Default is `AND`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_columns
    #   Columns that can be listed in the output.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_analyses
    #   An indicator as to whether additional analyses (such as Clean Rooms
    #   ML) can be applied to the output of the direct query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRuleList AWS API Documentation
    #
    class AnalysisRuleList < Struct.new(
      :join_columns,
      :allowed_join_operators,
      :list_columns,
      :additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the query specifications that can be run on configured
    # table.
    #
    # @note AnalysisRulePolicy is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AnalysisRulePolicy corresponding to the set member.
    #
    # @!attribute [rw] v1
    #   Controls on the query specifications that can be run on configured
    #   table.
    #   @return [Types::AnalysisRulePolicyV1]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRulePolicy AWS API Documentation
    #
    class AnalysisRulePolicy < Struct.new(
      :v1,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class V1 < AnalysisRulePolicy; end
      class Unknown < AnalysisRulePolicy; end
    end

    # Controls on the query specifications that can be run on configured
    # table.
    #
    # @note AnalysisRulePolicyV1 is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AnalysisRulePolicyV1 corresponding to the set member.
    #
    # @!attribute [rw] list
    #   Analysis rule type that enables only list queries on a configured
    #   table.
    #   @return [Types::AnalysisRuleList]
    #
    # @!attribute [rw] aggregation
    #   Analysis rule type that enables only aggregation queries on a
    #   configured table.
    #   @return [Types::AnalysisRuleAggregation]
    #
    # @!attribute [rw] custom
    #   Analysis rule type that enables custom SQL queries on a configured
    #   table.
    #   @return [Types::AnalysisRuleCustom]
    #
    # @!attribute [rw] id_mapping_table
    #   The ID mapping table.
    #   @return [Types::AnalysisRuleIdMappingTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRulePolicyV1 AWS API Documentation
    #
    class AnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :id_mapping_table,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class List < AnalysisRulePolicyV1; end
      class Aggregation < AnalysisRulePolicyV1; end
      class Custom < AnalysisRulePolicyV1; end
      class IdMappingTable < AnalysisRulePolicyV1; end
      class Unknown < AnalysisRulePolicyV1; end
    end

    # A relation within an analysis.
    #
    # @!attribute [rw] referenced_tables
    #   The tables referenced in the analysis schema.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisSchema AWS API Documentation
    #
    class AnalysisSchema < Struct.new(
      :referenced_tables)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that defines the body of the analysis template.
    #
    # @note AnalysisSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AnalysisSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AnalysisSource corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The query text.
    #   @return [String]
    #
    # @!attribute [rw] artifacts
    #   The artifacts of the analysis source.
    #   @return [Types::AnalysisTemplateArtifacts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisSource AWS API Documentation
    #
    class AnalysisSource < Struct.new(
      :text,
      :artifacts,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < AnalysisSource; end
      class Artifacts < AnalysisSource; end
      class Unknown < AnalysisSource; end
    end

    # The analysis source metadata.
    #
    # @note AnalysisSourceMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AnalysisSourceMetadata corresponding to the set member.
    #
    # @!attribute [rw] artifacts
    #   The artifacts of the analysis source metadata.
    #   @return [Types::AnalysisTemplateArtifactMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisSourceMetadata AWS API Documentation
    #
    class AnalysisSourceMetadata < Struct.new(
      :artifacts,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Artifacts < AnalysisSourceMetadata; end
      class Unknown < AnalysisSourceMetadata; end
    end

    # The analysis template.
    #
    # @!attribute [rw] id
    #   The identifier for the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID for the associated collaboration of the analysis
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the analysis template’s associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The identifier of a member who created the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the member who created the
    #   analysis template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the analysis template was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time that the analysis template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] schema
    #   The entire schema object.
    #   @return [Types::AnalysisSchema]
    #
    # @!attribute [rw] format
    #   The format of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the analysis template.
    #   @return [Types::AnalysisSource]
    #
    # @!attribute [rw] source_metadata
    #   The source metadata for the analysis template.
    #   @return [Types::AnalysisSourceMetadata]
    #
    # @!attribute [rw] analysis_parameters
    #   The parameters of the analysis template.
    #   @return [Array<Types::AnalysisParameter>]
    #
    # @!attribute [rw] validations
    #   Information about the validations performed on the analysis
    #   template.
    #   @return [Array<Types::AnalysisTemplateValidationStatusDetail>]
    #
    # @!attribute [rw] error_message_configuration
    #   The configuration that specifies the level of detail in error
    #   messages returned by analyses using this template. When set to
    #   `DETAILED`, error messages include more information to help
    #   troubleshoot issues with PySpark jobs. Detailed error messages may
    #   expose underlying data, including sensitive information. Recommended
    #   for faster troubleshooting in development and testing environments.
    #   @return [Types::ErrorMessageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisTemplate AWS API Documentation
    #
    class AnalysisTemplate < Struct.new(
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
      :error_message_configuration)
      SENSITIVE = [:analysis_parameters]
      include Aws::Structure
    end

    # The analysis template artifact.
    #
    # @!attribute [rw] location
    #   The artifact location.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisTemplateArtifact AWS API Documentation
    #
    class AnalysisTemplateArtifact < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The analysis template artifact metadata.
    #
    # @!attribute [rw] entry_point_hash
    #   The hash of the entry point for the analysis template artifact
    #   metadata.
    #   @return [Types::Hash]
    #
    # @!attribute [rw] additional_artifact_hashes
    #   Additional artifact hashes for the analysis template.
    #   @return [Array<Types::Hash>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisTemplateArtifactMetadata AWS API Documentation
    #
    class AnalysisTemplateArtifactMetadata < Struct.new(
      :entry_point_hash,
      :additional_artifact_hashes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The analysis template artifacts.
    #
    # @!attribute [rw] entry_point
    #   The entry point for the analysis template artifacts.
    #   @return [Types::AnalysisTemplateArtifact]
    #
    # @!attribute [rw] additional_artifacts
    #   Additional artifacts for the analysis template.
    #   @return [Array<Types::AnalysisTemplateArtifact>]
    #
    # @!attribute [rw] role_arn
    #   The role ARN for the analysis template artifacts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisTemplateArtifacts AWS API Documentation
    #
    class AnalysisTemplateArtifacts < Struct.new(
      :entry_point,
      :additional_artifacts,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of the analysis template.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the analysis template summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The identifier of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time that the analysis template summary was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the member who created the
    #   analysis template.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the analysis template summary’s associated
    #   collaboration.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   A unique identifier for the collaboration that the analysis template
    #   summary belongs to. Currently accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the analysis template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisTemplateSummary AWS API Documentation
    #
    class AnalysisTemplateSummary < Struct.new(
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :membership_arn,
      :membership_id,
      :collaboration_arn,
      :collaboration_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status details of the analysis template validation. Clean Rooms
    # Differential Privacy uses a general-purpose query structure to support
    # complex SQL queries and validates whether an analysis template fits
    # that general-purpose query structure. Validation is performed when
    # analysis templates are created and fetched. Because analysis templates
    # are immutable by design, we recommend that you create analysis
    # templates after you associate the configured tables with their
    # analysis rule to your collaboration.
    #
    # For more information, see
    # [https://docs.aws.amazon.com/clean-rooms/latest/userguide/analysis-rules-custom.html#custom-diff-privacy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/clean-rooms/latest/userguide/analysis-rules-custom.html#custom-diff-privacy
    #
    # @!attribute [rw] type
    #   The type of validation that was performed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the validation.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reasons for the validation results.
    #   @return [Array<Types::AnalysisTemplateValidationStatusReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisTemplateValidationStatusDetail AWS API Documentation
    #
    class AnalysisTemplateValidationStatusDetail < Struct.new(
      :type,
      :status,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reasons for the validation results.
    #
    # @!attribute [rw] message
    #   The validation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisTemplateValidationStatusReason AWS API Documentation
    #
    class AnalysisTemplateValidationStatusReason < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a table within Athena.
    #
    # @!attribute [rw] work_group
    #   The workgroup of the Athena table reference.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The output location for the Athena table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database name.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The table reference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AthenaTableReference AWS API Documentation
    #
    class AthenaTableReference < Struct.new(
      :work_group,
      :output_location,
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of errors thrown by the call to retrieve multiple analysis
    # templates within a collaboration by their identifiers.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   An error code for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of why the call failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetCollaborationAnalysisTemplateError AWS API Documentation
    #
    class BatchGetCollaborationAnalysisTemplateError < Struct.new(
      :arn,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the analysis
    #   templates belong to. Currently accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_arns
    #   The Amazon Resource Name (ARN) associated with the analysis template
    #   within a collaboration.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetCollaborationAnalysisTemplateInput AWS API Documentation
    #
    class BatchGetCollaborationAnalysisTemplateInput < Struct.new(
      :collaboration_identifier,
      :analysis_template_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_analysis_templates
    #   The retrieved list of analysis templates within a collaboration.
    #   @return [Array<Types::CollaborationAnalysisTemplate>]
    #
    # @!attribute [rw] errors
    #   Error reasons for collaboration analysis templates that could not be
    #   retrieved. One error is returned for every collaboration analysis
    #   template that could not be retrieved.
    #   @return [Array<Types::BatchGetCollaborationAnalysisTemplateError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetCollaborationAnalysisTemplateOutput AWS API Documentation
    #
    class BatchGetCollaborationAnalysisTemplateOutput < Struct.new(
      :collaboration_analysis_templates,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that describes why a schema could not be fetched.
    #
    # @!attribute [rw] name
    #   An error name for the error.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The analysis rule type.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   An error code for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of why the call failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchemaAnalysisRuleError AWS API Documentation
    #
    class BatchGetSchemaAnalysisRuleError < Struct.new(
      :name,
      :type,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The unique identifier of the collaboration that contains the schema
    #   analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] schema_analysis_rule_requests
    #   The information that's necessary to retrieve a schema analysis
    #   rule.
    #   @return [Array<Types::SchemaAnalysisRuleRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchemaAnalysisRuleInput AWS API Documentation
    #
    class BatchGetSchemaAnalysisRuleInput < Struct.new(
      :collaboration_identifier,
      :schema_analysis_rule_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rules
    #   The retrieved list of analysis rules.
    #   @return [Array<Types::AnalysisRule>]
    #
    # @!attribute [rw] errors
    #   Error reasons for schemas that could not be retrieved. One error is
    #   returned for every schema that could not be retrieved.
    #   @return [Array<Types::BatchGetSchemaAnalysisRuleError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchemaAnalysisRuleOutput AWS API Documentation
    #
    class BatchGetSchemaAnalysisRuleOutput < Struct.new(
      :analysis_rules,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error describing why a schema could not be fetched.
    #
    # @!attribute [rw] name
    #   An error name for the error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   An error code for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An error message for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchemaError AWS API Documentation
    #
    class BatchGetSchemaError < Struct.new(
      :name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the schemas belong
    #   to. Currently accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   The names for the schema objects to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchemaInput AWS API Documentation
    #
    class BatchGetSchemaInput < Struct.new(
      :collaboration_identifier,
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schemas
    #   The retrieved list of schemas.
    #   @return [Array<Types::Schema>]
    #
    # @!attribute [rw] errors
    #   Error reasons for schemas that could not be retrieved. One error is
    #   returned for every schema that could not be retrieved.
    #   @return [Array<Types::BatchGetSchemaError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BatchGetSchemaOutput AWS API Documentation
    #
    class BatchGetSchemaOutput < Struct.new(
      :schemas,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information related to the utilization of resources that have been
    # billed or charged for in a given context, such as a protected job.
    #
    # @!attribute [rw] units
    #   The number of Clean Rooms Processing Unit (CRPU) hours that have
    #   been billed.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BilledJobResourceUtilization AWS API Documentation
    #
    class BilledJobResourceUtilization < Struct.new(
      :units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information related to the utilization of resources that have been
    # billed or charged for in a given context, such as a protected query.
    #
    # @!attribute [rw] units
    #   The number of Clean Rooms Processing Unit (CRPU) hours that have
    #   been billed.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BilledResourceUtilization AWS API Documentation
    #
    class BilledResourceUtilization < Struct.new(
      :units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Individual budget parameter configuration that defines specific budget
    # allocation settings for access budgets.
    #
    # @!attribute [rw] type
    #   The type of budget parameter being configured.
    #   @return [String]
    #
    # @!attribute [rw] budget
    #   The budget allocation amount for this specific parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_refresh
    #   Whether this individual budget parameter automatically refreshes
    #   when the budget period resets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/BudgetParameter AWS API Documentation
    #
    class BudgetParameter < Struct.new(
      :type,
      :budget,
      :auto_refresh)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single change within a collaboration change request,
    # containing the change identifier and specification.
    #
    # @!attribute [rw] specification_type
    #   The type of specification for this change.
    #   @return [String]
    #
    # @!attribute [rw] specification
    #   The specification details for this change.
    #   @return [Types::ChangeSpecification]
    #
    # @!attribute [rw] types
    #   The list of change types that were applied.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/Change AWS API Documentation
    #
    class Change < Struct.new(
      :specification_type,
      :specification,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a change to apply to a collaboration.
    #
    # @!attribute [rw] specification_type
    #   The type of specification for the change. Currently supports
    #   `MEMBER` for member-related changes.
    #   @return [String]
    #
    # @!attribute [rw] specification
    #   The specification details for the change. The structure depends on
    #   the specification type.
    #   @return [Types::ChangeSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ChangeInput AWS API Documentation
    #
    class ChangeInput < Struct.new(
      :specification_type,
      :specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union that contains the specification details for different types of
    # changes.
    #
    # @note ChangeSpecification is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ChangeSpecification is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ChangeSpecification corresponding to the set member.
    #
    # @!attribute [rw] member
    #   The member change specification when the change type is `MEMBER`.
    #   @return [Types::MemberChangeSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ChangeSpecification AWS API Documentation
    #
    class ChangeSpecification < Struct.new(
      :member,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Member < ChangeSpecification; end
      class Unknown < ChangeSpecification; end
    end

    # The multi-party data share environment. The collaboration contains
    # metadata about its purpose and participants.
    #
    # @!attribute [rw] id
    #   The unique ID for the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique ARN for the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A human-readable identifier provided by the collaboration owner.
    #   Display names are not unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the collaboration provided by the collaboration
    #   owner.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The identifier used to reference members of the collaboration.
    #   Currently only supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] creator_display_name
    #   A display name of the collaboration creator.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the collaboration was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the collaboration metadata was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] member_status
    #   The status of a member in a collaboration.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique ID for your membership within the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The unique ARN for your membership within the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] data_encryption_metadata
    #   The settings for client-side encryption for cryptographic computing.
    #   @return [Types::DataEncryptionMetadata]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the collaboration.
    #
    #   When `ENABLED`, Clean Rooms logs details about queries run within
    #   this collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] job_log_status
    #   An indicator as to whether job logging has been enabled or disabled
    #   for the collaboration.
    #
    #   When `ENABLED`, Clean Rooms logs details about jobs run within this
    #   collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] analytics_engine
    #   The analytics engine for the collaboration.
    #
    #   <note markdown="1"> After July 16, 2025, the `CLEAN_ROOMS_SQL` parameter will no longer
    #   be available.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auto_approved_change_types
    #   The types of change requests that are automatically approved for
    #   this collaboration.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/Collaboration AWS API Documentation
    #
    class Collaboration < Struct.new(
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
      :auto_approved_change_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The analysis template within a collaboration.
    #
    # @!attribute [rw] id
    #   The identifier of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   A unique identifier for the collaboration that the analysis
    #   templates belong to. Currently accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the analysis template’s associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The identifier used to reference members of the collaboration.
    #   Currently only supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the analysis template within a collaboration was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time that the analysis template in the collaboration was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] schema
    #   The entire schema object.
    #   @return [Types::AnalysisSchema]
    #
    # @!attribute [rw] format
    #   The format of the analysis template in the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the analysis template within a collaboration.
    #   @return [Types::AnalysisSource]
    #
    # @!attribute [rw] source_metadata
    #   The source metadata for the collaboration analysis template.
    #   @return [Types::AnalysisSourceMetadata]
    #
    # @!attribute [rw] analysis_parameters
    #   The analysis parameters that have been specified in the analysis
    #   template.
    #   @return [Array<Types::AnalysisParameter>]
    #
    # @!attribute [rw] validations
    #   The validations that were performed.
    #   @return [Array<Types::AnalysisTemplateValidationStatusDetail>]
    #
    # @!attribute [rw] error_message_configuration
    #   The configuration that specifies the level of detail in error
    #   messages returned by analyses using this template. When set to
    #   `DETAILED`, error messages include more information to help
    #   troubleshoot issues with PySpark jobs. Detailed error messages may
    #   expose underlying data, including sensitive information. Recommended
    #   for faster troubleshooting in development and testing environments.
    #   @return [Types::ErrorMessageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationAnalysisTemplate AWS API Documentation
    #
    class CollaborationAnalysisTemplate < Struct.new(
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
      :error_message_configuration)
      SENSITIVE = [:analysis_parameters]
      include Aws::Structure
    end

    # The metadata of the analysis template within a collaboration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the summary of the analysis template in a
    #   collaboration was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The identifier of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time that the summary of the analysis template in the
    #   collaboration was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the analysis template’s associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   A unique identifier for the collaboration that the analysis
    #   templates belong to. Currently accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The identifier used to reference members of the collaboration.
    #   Currently only supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the analysis template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationAnalysisTemplateSummary AWS API Documentation
    #
    class CollaborationAnalysisTemplateSummary < Struct.new(
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :collaboration_arn,
      :collaboration_id,
      :creator_account_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to modify a collaboration. Change requests enable
    # structured modifications to collaborations after they have been
    # created.
    #
    # @!attribute [rw] id
    #   The unique identifier for the change request.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier for the collaboration being modified.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the change request was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time when the change request was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the change request. Valid values are
    #   `PENDING`, `APPROVED`, `DENIED`, `COMMITTED`, and `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] is_auto_approved
    #   Whether the change request was automatically approved based on the
    #   collaboration's auto-approval settings.
    #   @return [Boolean]
    #
    # @!attribute [rw] changes
    #   The list of changes specified in this change request.
    #   @return [Array<Types::Change>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationChangeRequest AWS API Documentation
    #
    class CollaborationChangeRequest < Struct.new(
      :id,
      :collaboration_id,
      :create_time,
      :update_time,
      :status,
      :is_auto_approved,
      :changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a collaboration change request.
    #
    # @!attribute [rw] id
    #   The unique identifier for the change request.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier for the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the change request was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time when the change request was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the change request.
    #   @return [String]
    #
    # @!attribute [rw] is_auto_approved
    #   Whether the change request was automatically approved.
    #   @return [Boolean]
    #
    # @!attribute [rw] changes
    #   Summary of the changes in this change request.
    #   @return [Array<Types::Change>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationChangeRequestSummary AWS API Documentation
    #
    class CollaborationChangeRequestSummary < Struct.new(
      :id,
      :collaboration_id,
      :create_time,
      :update_time,
      :status,
      :is_auto_approved,
      :changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured audience model association within a collaboration.
    #
    # @!attribute [rw] id
    #   The identifier of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configured audience model
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   A unique identifier for the collaboration that the configured
    #   audience model associations belong to. Accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the configured audience model's associated
    #   collaboration.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configure audience model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The identifier used to reference members of the collaboration. Only
    #   supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the configured audience model association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model
    #   association was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationConfiguredAudienceModelAssociation AWS API Documentation
    #
    class CollaborationConfiguredAudienceModelAssociation < Struct.new(
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :configured_audience_model_arn,
      :name,
      :description,
      :creator_account_id,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the configured audience model association in the
    # collaboration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configured audience model
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the configured audience model association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The identifier of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model
    #   association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the configured audience model's associated
    #   collaboration.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   A unique identifier for the collaboration that the configured
    #   audience model associations belong to. Accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The identifier used to reference members of the collaboration. Only
    #   supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationConfiguredAudienceModelAssociationSummary AWS API Documentation
    #
    class CollaborationConfiguredAudienceModelAssociationSummary < Struct.new(
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :collaboration_arn,
      :collaboration_id,
      :creator_account_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines details for the collaboration ID namespace association.
    #
    # @!attribute [rw] id
    #   The unique identifier of the collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the collaboration ID namespace
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains the
    #   collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   the collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The unique identifier of the Amazon Web Services account that
    #   created the collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the collaboration ID namespace association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the collaboration ID namespace was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration that's necessary to create the
    #   collaboration ID namespace association.
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    #
    # @!attribute [rw] input_reference_properties
    #   The input reference properties that are needed to create the
    #   collaboration ID namespace association.
    #   @return [Types::IdNamespaceAssociationInputReferenceProperties]
    #
    # @!attribute [rw] id_mapping_config
    #   The configuration settings for the ID mapping table.
    #   @return [Types::IdMappingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationIdNamespaceAssociation AWS API Documentation
    #
    class CollaborationIdNamespaceAssociation < Struct.new(
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
      :id_mapping_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about the collaboration ID namespace
    # association.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the collaboration ID namespace
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the collaboration ID namespace association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier of the collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the collaboration ID namespace
    #   association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   this collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains this
    #   collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The Amazon Web Services account that created this collaboration ID
    #   namespace association.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration that's used to create the
    #   collaboration ID namespace association.
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    #
    # @!attribute [rw] name
    #   The name of the collaboration ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the collaboration ID namepsace association.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_properties
    #   The input reference properties that are used to create the
    #   collaboration ID namespace association.
    #   @return [Types::IdNamespaceAssociationInputReferencePropertiesSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationIdNamespaceAssociationSummary AWS API Documentation
    #
    class CollaborationIdNamespaceAssociationSummary < Struct.new(
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
      :input_reference_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the collaboration privacy budgets. This summary includes
    # the collaboration information, creation information, epsilon provided,
    # and utility in terms of aggregations.
    #
    # @!attribute [rw] id
    #   The unique identifier of the collaboration privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_id
    #   The unique identifier of the collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_arn
    #   The ARN of the collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that includes this
    #   privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The ARN of the collaboration that includes this privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The unique identifier of the account that created this privacy
    #   budget.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the privacy budget was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the privacy budget was updated.
    #   @return [Time]
    #
    # @!attribute [rw] budget
    #   The includes epsilon provided and utility in terms of aggregations.
    #   @return [Types::PrivacyBudget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationPrivacyBudgetSummary AWS API Documentation
    #
    class CollaborationPrivacyBudgetSummary < Struct.new(
      :id,
      :privacy_budget_template_id,
      :privacy_budget_template_arn,
      :collaboration_id,
      :collaboration_arn,
      :creator_account_id,
      :type,
      :create_time,
      :update_time,
      :budget)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array that specifies the information for a collaboration's privacy
    # budget template.
    #
    # @!attribute [rw] id
    #   The unique identifier of the collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that includes this
    #   collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The ARN of the collaboration that includes this collaboration
    #   privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The unique identifier of the account that created this collaboration
    #   privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the collaboration privacy budget template was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the collaboration privacy budget
    #   template was updated.
    #   @return [Time]
    #
    # @!attribute [rw] privacy_budget_type
    #   The type of privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] auto_refresh
    #   How often the privacy budget refreshes.
    #
    #   If you plan to regularly bring new data into the collaboration, use
    #   `CALENDAR_MONTH` to automatically get a new privacy budget for the
    #   collaboration every calendar month. Choosing this option allows
    #   arbitrary amounts of information to be revealed about rows of the
    #   data when repeatedly queried across refreshes. Avoid choosing this
    #   if the same rows will be repeatedly queried between privacy budget
    #   refreshes.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the epsilon and noise parameters for the privacy budget
    #   template.
    #   @return [Types::PrivacyBudgetTemplateParametersOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationPrivacyBudgetTemplate AWS API Documentation
    #
    class CollaborationPrivacyBudgetTemplate < Struct.new(
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :creator_account_id,
      :create_time,
      :update_time,
      :privacy_budget_type,
      :auto_refresh,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the collaboration's privacy budget template. This
    # summary includes information about who created the privacy budget
    # template and what collaborations it belongs to.
    #
    # @!attribute [rw] id
    #   The unique identifier of the collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains this
    #   collaboration privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The ARN of the collaboration that contains this collaboration
    #   privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The unique identifier of the account that created this collaboration
    #   privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_type
    #   The type of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the collaboration privacy budget template was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the collaboration privacy budget
    #   template was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationPrivacyBudgetTemplateSummary AWS API Documentation
    #
    class CollaborationPrivacyBudgetTemplateSummary < Struct.new(
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :creator_account_id,
      :privacy_budget_type,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of the collaboration.
    #
    # @!attribute [rw] id
    #   The identifier for the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A human-readable identifier provided by the collaboration owner.
    #   Display names are not unique.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The identifier used to reference members of the collaboration.
    #   Currently only supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] creator_display_name
    #   The display name of the collaboration creator.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the collaboration was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the collaboration metadata was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] member_status
    #   The status of a member in a collaboration.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The identifier of a member in a collaboration.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The ARN of a member in a collaboration.
    #   @return [String]
    #
    # @!attribute [rw] analytics_engine
    #   The analytics engine.
    #
    #   <note markdown="1"> After July 16, 2025, the `CLEAN_ROOMS_SQL` parameter will no longer
    #   be available.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CollaborationSummary AWS API Documentation
    #
    class CollaborationSummary < Struct.new(
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
      :analytics_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # A column within a schema relation, derived from the underlying table.
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/Column AWS API Documentation
    #
    class Column < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the compute resources for an analysis with the
    # Spark analytics engine.
    #
    # @note ComputeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ComputeConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ComputeConfiguration corresponding to the set member.
    #
    # @!attribute [rw] worker
    #   The worker configuration for the compute environment.
    #   @return [Types::WorkerComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ComputeConfiguration AWS API Documentation
    #
    class ComputeConfiguration < Struct.new(
      :worker,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Worker < ComputeConfiguration; end
      class Unknown < ComputeConfiguration; end
    end

    # The configuration details.
    #
    # @note ConfigurationDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfigurationDetails corresponding to the set member.
    #
    # @!attribute [rw] direct_analysis_configuration_details
    #   The direct analysis configuration details.
    #   @return [Types::DirectAnalysisConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfigurationDetails AWS API Documentation
    #
    class ConfigurationDetails < Struct.new(
      :direct_analysis_configuration_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DirectAnalysisConfigurationDetails < ConfigurationDetails; end
      class Unknown < ConfigurationDetails; end
    end

    # Details about the configured audience model association.
    #
    # @!attribute [rw] id
    #   A unique identifier of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configured audience model
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for this configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   A unique identifier for the membership that contains this configured
    #   audience model association.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the membership that contains this
    #   configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   A unique identifier of the collaboration that contains this
    #   configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   this configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] manage_resource_policies
    #   When `TRUE`, indicates that the resource policy for the configured
    #   audience model resource being associated is configured for Clean
    #   Rooms to manage permissions related to the given collaboration. When
    #   `FALSE`, indicates that the configured audience model resource owner
    #   will manage permissions related to the given collaboration.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the configured audience model association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model
    #   association was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredAudienceModelAssociation AWS API Documentation
    #
    class ConfiguredAudienceModelAssociation < Struct.new(
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
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the configured audience model association.
    #
    # @!attribute [rw] membership_id
    #   A unique identifier of the membership that contains the configured
    #   audience model association.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the membership that contains the
    #   configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   A unique identifier of the collaboration that configured audience
    #   model is associated with.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the configured audience model association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model
    #   association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   A unique identifier of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configured audience model
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for this configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredAudienceModelAssociationSummary AWS API Documentation
    #
    class ConfiguredAudienceModelAssociationSummary < Struct.new(
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
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A table that has been configured for use in a collaboration.
    #
    # @!attribute [rw] id
    #   The unique ID for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique ARN for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] table_reference
    #   The table that this configured table represents.
    #   @return [Types::TableReference]
    #
    # @!attribute [rw] create_time
    #   The time the configured table was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the configured table was last updated
    #   @return [Time]
    #
    # @!attribute [rw] analysis_rule_types
    #   The types of analysis rules associated with this configured table.
    #   Currently, only one analysis rule may be associated with a
    #   configured table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the configured table.
    #
    #   `DIRECT_QUERY` allows SQL queries to be run directly on this table.
    #
    #   `DIRECT_JOB` allows PySpark jobs to be run directly on this table.
    #
    #   `MULTIPLE` allows both SQL queries and PySpark jobs to be run
    #   directly on this table.
    #   @return [String]
    #
    # @!attribute [rw] allowed_columns
    #   The columns within the underlying Glue table that can be utilized
    #   within collaborations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selected_analysis_methods
    #   The selected analysis methods for the configured table.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTable AWS API Documentation
    #
    class ConfiguredTable < Struct.new(
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
      :selected_analysis_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configured table analysis rule, which limits how data for this table
    # can be used.
    #
    # @!attribute [rw] configured_table_id
    #   The unique ID for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_arn
    #   The unique ARN for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy that controls SQL query rules.
    #   @return [Types::ConfiguredTableAnalysisRulePolicy]
    #
    # @!attribute [rw] type
    #   The type of configured table analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the configured table analysis rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the configured table analysis rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAnalysisRule AWS API Documentation
    #
    class ConfiguredTableAnalysisRule < Struct.new(
      :configured_table_id,
      :configured_table_arn,
      :policy,
      :type,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the query specifications that can be run on a configured
    # table.
    #
    # @note ConfiguredTableAnalysisRulePolicy is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ConfiguredTableAnalysisRulePolicy is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfiguredTableAnalysisRulePolicy corresponding to the set member.
    #
    # @!attribute [rw] v1
    #   Controls on the query specifications that can be run on a configured
    #   table.
    #   @return [Types::ConfiguredTableAnalysisRulePolicyV1]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAnalysisRulePolicy AWS API Documentation
    #
    class ConfiguredTableAnalysisRulePolicy < Struct.new(
      :v1,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class V1 < ConfiguredTableAnalysisRulePolicy; end
      class Unknown < ConfiguredTableAnalysisRulePolicy; end
    end

    # Controls on the query specifications that can be run on a configured
    # table.
    #
    # @note ConfiguredTableAnalysisRulePolicyV1 is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ConfiguredTableAnalysisRulePolicyV1 is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfiguredTableAnalysisRulePolicyV1 corresponding to the set member.
    #
    # @!attribute [rw] list
    #   Analysis rule type that enables only list queries on a configured
    #   table.
    #   @return [Types::AnalysisRuleList]
    #
    # @!attribute [rw] aggregation
    #   Analysis rule type that enables only aggregation queries on a
    #   configured table.
    #   @return [Types::AnalysisRuleAggregation]
    #
    # @!attribute [rw] custom
    #   A type of analysis rule that enables the table owner to approve
    #   custom SQL queries on their configured tables. It supports
    #   differential privacy.
    #   @return [Types::AnalysisRuleCustom]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAnalysisRulePolicyV1 AWS API Documentation
    #
    class ConfiguredTableAnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class List < ConfiguredTableAnalysisRulePolicyV1; end
      class Aggregation < ConfiguredTableAnalysisRulePolicyV1; end
      class Custom < ConfiguredTableAnalysisRulePolicyV1; end
      class Unknown < ConfiguredTableAnalysisRulePolicyV1; end
    end

    # A configured table association links a configured table to a
    # collaboration.
    #
    # @!attribute [rw] arn
    #   The unique ARN for the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID for the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_id
    #   The unique ID for the configured table that the association refers
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_arn
    #   The unique ARN for the configured table that the association refers
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique ID for the membership this configured table association
    #   belongs to.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The unique ARN for the membership this configured table association
    #   belongs to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The service will assume this role to access catalog metadata and
    #   query the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured table association, in lowercase. The
    #   table is identified by this name when running protected queries
    #   against the underlying data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_types
    #   The analysis rule types for the configured table association.
    #   @return [Array<String>]
    #
    # @!attribute [rw] create_time
    #   The time the configured table association was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the configured table association was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociation AWS API Documentation
    #
    class ConfiguredTableAssociation < Struct.new(
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
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An analysis rule for a configured table association. This analysis
    # rule specifies how data from the table can be used within its
    # associated collaboration. In the console, the
    # `ConfiguredTableAssociationAnalysisRule` is referred to as the
    # *collaboration analysis rule*.
    #
    # @!attribute [rw] membership_identifier
    #   The membership identifier for the configured table association
    #   analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_association_id
    #   The unique identifier for the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_association_arn
    #   The Amazon Resource Name (ARN) of the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy of the configured table association analysis rule.
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    #
    # @!attribute [rw] type
    #   The type of the configured table association analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The creation time of the configured table association analysis rule.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The update time of the configured table association analysis rule.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociationAnalysisRule AWS API Documentation
    #
    class ConfiguredTableAssociationAnalysisRule < Struct.new(
      :membership_identifier,
      :configured_table_association_id,
      :configured_table_association_arn,
      :policy,
      :type,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured table association analysis rule applied to a configured
    # table with the aggregation analysis rule.
    #
    # @!attribute [rw] allowed_result_receivers
    #   The list of collaboration members who are allowed to receive results
    #   of queries run with this configured table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_additional_analyses
    #   The list of resources or wildcards (ARNs) that are allowed to
    #   perform additional analysis on query output.
    #
    #   The `allowedAdditionalAnalyses` parameter is currently supported for
    #   the list analysis rule (`AnalysisRuleList`) and the custom analysis
    #   rule (`AnalysisRuleCustom`).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociationAnalysisRuleAggregation AWS API Documentation
    #
    class ConfiguredTableAssociationAnalysisRuleAggregation < Struct.new(
      :allowed_result_receivers,
      :allowed_additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured table association analysis rule applied to a configured
    # table with the custom analysis rule.
    #
    # @!attribute [rw] allowed_result_receivers
    #   The list of collaboration members who are allowed to receive results
    #   of queries run with this configured table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_additional_analyses
    #   The list of resources or wildcards (ARNs) that are allowed to
    #   perform additional analysis on query output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociationAnalysisRuleCustom AWS API Documentation
    #
    class ConfiguredTableAssociationAnalysisRuleCustom < Struct.new(
      :allowed_result_receivers,
      :allowed_additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured table association analysis rule applied to a configured
    # table with the list analysis rule.
    #
    # @!attribute [rw] allowed_result_receivers
    #   The list of collaboration members who are allowed to receive results
    #   of queries run with this configured table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_additional_analyses
    #   The list of resources or wildcards (ARNs) that are allowed to
    #   perform additional analysis on query output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociationAnalysisRuleList AWS API Documentation
    #
    class ConfiguredTableAssociationAnalysisRuleList < Struct.new(
      :allowed_result_receivers,
      :allowed_additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the query specifications that can be run on an associated
    # configured table.
    #
    # @note ConfiguredTableAssociationAnalysisRulePolicy is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ConfiguredTableAssociationAnalysisRulePolicy is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfiguredTableAssociationAnalysisRulePolicy corresponding to the set member.
    #
    # @!attribute [rw] v1
    #   The policy for the configured table association analysis rule.
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicyV1]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociationAnalysisRulePolicy AWS API Documentation
    #
    class ConfiguredTableAssociationAnalysisRulePolicy < Struct.new(
      :v1,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class V1 < ConfiguredTableAssociationAnalysisRulePolicy; end
      class Unknown < ConfiguredTableAssociationAnalysisRulePolicy; end
    end

    # Controls on the query specifications that can be run on an associated
    # configured table.
    #
    # @note ConfiguredTableAssociationAnalysisRulePolicyV1 is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ConfiguredTableAssociationAnalysisRulePolicyV1 is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfiguredTableAssociationAnalysisRulePolicyV1 corresponding to the set member.
    #
    # @!attribute [rw] list
    #   Analysis rule type that enables only list queries on a configured
    #   table.
    #   @return [Types::ConfiguredTableAssociationAnalysisRuleList]
    #
    # @!attribute [rw] aggregation
    #   Analysis rule type that enables only aggregation queries on a
    #   configured table.
    #   @return [Types::ConfiguredTableAssociationAnalysisRuleAggregation]
    #
    # @!attribute [rw] custom
    #   Analysis rule type that enables the table owner to approve custom
    #   SQL queries on their configured tables. It supports differential
    #   privacy.
    #   @return [Types::ConfiguredTableAssociationAnalysisRuleCustom]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociationAnalysisRulePolicyV1 AWS API Documentation
    #
    class ConfiguredTableAssociationAnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class List < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Aggregation < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Custom < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Unknown < ConfiguredTableAssociationAnalysisRulePolicyV1; end
    end

    # The configured table association summary for the objects listed by the
    # request.
    #
    # @!attribute [rw] configured_table_id
    #   The unique configured table ID that this configured table
    #   association refers to.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique ID for the membership that the configured table
    #   association belongs to.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The unique ARN for the membership that the configured table
    #   association belongs to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured table association. The table is
    #   identified by this name when running Protected Queries against the
    #   underlying data.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the configured table association was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the configured table association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique ID for the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique ARN for the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_types
    #   The analysis rule types that are associated with the configured
    #   table associations in this summary.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAssociationSummary AWS API Documentation
    #
    class ConfiguredTableAssociationSummary < Struct.new(
      :configured_table_id,
      :membership_id,
      :membership_arn,
      :name,
      :create_time,
      :update_time,
      :id,
      :arn,
      :analysis_rule_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured table summary for the objects listed by the request.
    #
    # @!attribute [rw] id
    #   The unique ID of the configured table.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique ARN of the configured table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured table.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the configured table was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the configured table was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] analysis_rule_types
    #   The types of analysis rules associated with this configured table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the configured tables.
    #
    #   `DIRECT_QUERY` allows SQL queries to be run directly on this table.
    #
    #   `DIRECT_JOB` allows PySpark jobs to be run directly on this table.
    #
    #   `MULTIPLE` allows both SQL queries and PySpark jobs to be run
    #   directly on this table.
    #   @return [String]
    #
    # @!attribute [rw] selected_analysis_methods
    #   The selected analysis methods for the configured table summary.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableSummary AWS API Documentation
    #
    class ConfiguredTableSummary < Struct.new(
      :id,
      :arn,
      :name,
      :create_time,
      :update_time,
      :analysis_rule_types,
      :analysis_method,
      :selected_analysis_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the conflicting resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the conflicting resource.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A reason code for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the analysis specifications that can be run on a
    # configured table.
    #
    # @note ConsolidatedPolicy is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConsolidatedPolicy corresponding to the set member.
    #
    # @!attribute [rw] v1
    #   The consolidated policy version 1.
    #   @return [Types::ConsolidatedPolicyV1]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConsolidatedPolicy AWS API Documentation
    #
    class ConsolidatedPolicy < Struct.new(
      :v1,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class V1 < ConsolidatedPolicy; end
      class Unknown < ConsolidatedPolicy; end
    end

    # Controls on the analysis specifications that can be run on a
    # configured table.
    #
    # @!attribute [rw] aggregate_columns
    #   Aggregate columns in consolidated policy aggregation.
    #   @return [Array<Types::AggregateColumn>]
    #
    # @!attribute [rw] join_columns
    #   The columns to join on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] join_required
    #   Join required
    #   @return [String]
    #
    # @!attribute [rw] allowed_join_operators
    #   The allowed join operators.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dimension_columns
    #   The dimension columns of the consolidated policy aggregation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scalar_functions
    #   The scalar functions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_constraints
    #   The output constraints of the consolidated policy aggregation.
    #   @return [Array<Types::AggregationConstraint>]
    #
    # @!attribute [rw] additional_analyses
    #   Additional analyses for the consolidated policy aggregation.
    #   @return [String]
    #
    # @!attribute [rw] allowed_result_receivers
    #   The allowed result receivers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_additional_analyses
    #   The additional analyses allowed by the consolidated policy
    #   aggregation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConsolidatedPolicyAggregation AWS API Documentation
    #
    class ConsolidatedPolicyAggregation < Struct.new(
      :aggregate_columns,
      :join_columns,
      :join_required,
      :allowed_join_operators,
      :dimension_columns,
      :scalar_functions,
      :output_constraints,
      :additional_analyses,
      :allowed_result_receivers,
      :allowed_additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the analysis specifications that can be run on a
    # configured table.
    #
    # @!attribute [rw] allowed_analyses
    #   The allowed analyses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_analysis_providers
    #   The allowed analysis providers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_analyses
    #   Additional analyses for the consolidated policy.
    #   @return [String]
    #
    # @!attribute [rw] disallowed_output_columns
    #   Disallowed output columns
    #   @return [Array<String>]
    #
    # @!attribute [rw] differential_privacy
    #   Specifies the unique identifier for your users.
    #   @return [Types::DifferentialPrivacyConfiguration]
    #
    # @!attribute [rw] allowed_result_receivers
    #   The allowed result receivers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_additional_analyses
    #   The additional analyses allowed by the consolidated policy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConsolidatedPolicyCustom AWS API Documentation
    #
    class ConsolidatedPolicyCustom < Struct.new(
      :allowed_analyses,
      :allowed_analysis_providers,
      :additional_analyses,
      :disallowed_output_columns,
      :differential_privacy,
      :allowed_result_receivers,
      :allowed_additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the analysis specifications that can be run on a
    # configured table.
    #
    # @!attribute [rw] join_columns
    #   The columns to join on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_join_operators
    #   The allowed join operators in the consolidated policy list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_columns
    #   The columns in the consolidated policy list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_analyses
    #   Additional analyses for the consolidated policy list.
    #   @return [String]
    #
    # @!attribute [rw] allowed_result_receivers
    #   The allowed result receivers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_additional_analyses
    #   The additional analyses allowed by the consolidated policy list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConsolidatedPolicyList AWS API Documentation
    #
    class ConsolidatedPolicyList < Struct.new(
      :join_columns,
      :allowed_join_operators,
      :list_columns,
      :additional_analyses,
      :allowed_result_receivers,
      :allowed_additional_analyses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the analysis specifications that can be run on a
    # configured table.
    #
    # @note ConsolidatedPolicyV1 is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConsolidatedPolicyV1 corresponding to the set member.
    #
    # @!attribute [rw] list
    #   The list of consolidated policies.
    #   @return [Types::ConsolidatedPolicyList]
    #
    # @!attribute [rw] aggregation
    #   The aggregation setting for the consolidated policy.
    #   @return [Types::ConsolidatedPolicyAggregation]
    #
    # @!attribute [rw] custom
    #   Custom policy
    #   @return [Types::ConsolidatedPolicyCustom]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConsolidatedPolicyV1 AWS API Documentation
    #
    class ConsolidatedPolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class List < ConsolidatedPolicyV1; end
      class Aggregation < ConsolidatedPolicyV1; end
      class Custom < ConsolidatedPolicyV1; end
      class Unknown < ConsolidatedPolicyV1; end
    end

    # @!attribute [rw] description
    #   The description of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the analysis template.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The information in the analysis template.
    #   @return [Types::AnalysisSource]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] analysis_parameters
    #   The parameters of the analysis template.
    #   @return [Array<Types::AnalysisParameter>]
    #
    # @!attribute [rw] schema
    #   A relation within an analysis.
    #   @return [Types::AnalysisSchema]
    #
    # @!attribute [rw] error_message_configuration
    #   The configuration that specifies the level of detail in error
    #   messages returned by analyses using this template. When set to
    #   `DETAILED`, error messages include more information to help
    #   troubleshoot issues with PySpark jobs. Detailed error messages may
    #   expose underlying data, including sensitive information. Recommended
    #   for faster troubleshooting in development and testing environments.
    #   @return [Types::ErrorMessageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateAnalysisTemplateInput AWS API Documentation
    #
    class CreateAnalysisTemplateInput < Struct.new(
      :description,
      :membership_identifier,
      :name,
      :format,
      :source,
      :tags,
      :analysis_parameters,
      :schema,
      :error_message_configuration)
      SENSITIVE = [:analysis_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] analysis_template
    #   The analysis template.
    #   @return [Types::AnalysisTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateAnalysisTemplateOutput AWS API Documentation
    #
    class CreateAnalysisTemplateOutput < Struct.new(
      :analysis_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The identifier of the collaboration that the change request is made
    #   against.
    #   @return [String]
    #
    # @!attribute [rw] changes
    #   The list of changes to apply to the collaboration. Each change
    #   specifies the type of modification and the details of what should be
    #   changed.
    #   @return [Array<Types::ChangeInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateCollaborationChangeRequestInput AWS API Documentation
    #
    class CreateCollaborationChangeRequestInput < Struct.new(
      :collaboration_identifier,
      :changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_change_request
    #   Represents a request to modify a collaboration. Change requests
    #   enable structured modifications to collaborations after they have
    #   been created.
    #   @return [Types::CollaborationChangeRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateCollaborationChangeRequestOutput AWS API Documentation
    #
    class CreateCollaborationChangeRequestOutput < Struct.new(
      :collaboration_change_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   A list of initial members, not including the creator. This list is
    #   immutable.
    #   @return [Array<Types::MemberSpecification>]
    #
    # @!attribute [rw] name
    #   The display name for a collaboration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the collaboration provided by the collaboration
    #   owner.
    #   @return [String]
    #
    # @!attribute [rw] creator_member_abilities
    #   The abilities granted to the collaboration creator.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creator_ml_member_abilities
    #   The ML abilities granted to the collaboration creator.
    #   @return [Types::MLMemberAbilities]
    #
    # @!attribute [rw] creator_display_name
    #   The display name of the collaboration creator.
    #   @return [String]
    #
    # @!attribute [rw] data_encryption_metadata
    #   The settings for client-side encryption with Cryptographic Computing
    #   for Clean Rooms.
    #   @return [Types::DataEncryptionMetadata]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the collaboration.
    #
    #   When `ENABLED`, Clean Rooms logs details about queries run within
    #   this collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] job_log_status
    #   Specifies whether job logs are enabled for this collaboration.
    #
    #   When `ENABLED`, Clean Rooms logs details about jobs run within this
    #   collaboration; those logs can be viewed in Amazon CloudWatch Logs.
    #   The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creator_payment_configuration
    #   The collaboration creator's payment responsibilities set by the
    #   collaboration creator.
    #
    #   If the collaboration creator hasn't specified anyone as the member
    #   paying for query compute costs, then the member who can query is the
    #   default payer.
    #   @return [Types::PaymentConfiguration]
    #
    # @!attribute [rw] analytics_engine
    #   The analytics engine.
    #
    #   <note markdown="1"> After July 16, 2025, the `CLEAN_ROOMS_SQL` parameter will no longer
    #   be available.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auto_approved_change_request_types
    #   The types of change requests that are automatically approved for
    #   this collaboration.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateCollaborationInput AWS API Documentation
    #
    class CreateCollaborationInput < Struct.new(
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
      :auto_approved_change_request_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration
    #   The collaboration.
    #   @return [Types::Collaboration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateCollaborationOutput AWS API Documentation
    #
    class CreateCollaborationOutput < Struct.new(
      :collaboration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The configured audience model is associated to the collaboration
    #   that this membership belongs to. Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   A unique identifier for the configured audience model that you want
    #   to associate.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_association_name
    #   The name of the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] manage_resource_policies
    #   When `TRUE`, indicates that the resource policy for the configured
    #   audience model resource being associated is configured for Clean
    #   Rooms to manage permissions related to the given collaboration. When
    #   `FALSE`, indicates that the configured audience model resource owner
    #   will manage permissions related to the given collaboration.
    #
    #   Setting this to `TRUE` requires you to have permissions to create,
    #   update, and delete the resource policy for the `cleanrooms-ml`
    #   resource when you call the DeleteConfiguredAudienceModelAssociation
    #   resource. In addition, if you are the collaboration creator and
    #   specify `TRUE`, you must have the same permissions when you call the
    #   DeleteMember and DeleteCollaboration APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   A description of the configured audience model association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredAudienceModelAssociationInput AWS API Documentation
    #
    class CreateConfiguredAudienceModelAssociationInput < Struct.new(
      :membership_identifier,
      :configured_audience_model_arn,
      :configured_audience_model_association_name,
      :manage_resource_policies,
      :tags,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_association
    #   Information about the configured audience model association.
    #   @return [Types::ConfiguredAudienceModelAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredAudienceModelAssociationOutput AWS API Documentation
    #
    class CreateConfiguredAudienceModelAssociationOutput < Struct.new(
      :configured_audience_model_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_identifier
    #   The identifier for the configured table to create the analysis rule
    #   for. Currently accepts the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The type of analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_policy
    #   The analysis rule policy that was created for the configured table.
    #   @return [Types::ConfiguredTableAnalysisRulePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAnalysisRuleInput AWS API Documentation
    #
    class CreateConfiguredTableAnalysisRuleInput < Struct.new(
      :configured_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rule
    #   The analysis rule that was created for the configured table.
    #   @return [Types::ConfiguredTableAnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAnalysisRuleOutput AWS API Documentation
    #
    class CreateConfiguredTableAnalysisRuleOutput < Struct.new(
      :analysis_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_association_identifier
    #   The unique ID for the configured table association. Currently
    #   accepts the configured table association ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The type of analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_policy
    #   The analysis rule policy that was created for the configured table
    #   association.
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAssociationAnalysisRuleInput AWS API Documentation
    #
    class CreateConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      :analysis_rule_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rule
    #   The analysis rule for the conﬁgured table association. In the
    #   console, the `ConfiguredTableAssociationAnalysisRule` is referred to
    #   as the *collaboration analysis rule*.
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAssociationAnalysisRuleOutput AWS API Documentation
    #
    class CreateConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      :analysis_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the configured table association. This name is used to
    #   query the underlying configured table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The configured table is associated to the collaboration that this
    #   membership belongs to. Currently accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_identifier
    #   A unique identifier for the configured table to be associated to.
    #   Currently accepts a configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The service will assume this role to access catalog metadata and
    #   query the table.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAssociationInput AWS API Documentation
    #
    class CreateConfiguredTableAssociationInput < Struct.new(
      :name,
      :description,
      :membership_identifier,
      :configured_table_identifier,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_association
    #   The configured table association.
    #   @return [Types::ConfiguredTableAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAssociationOutput AWS API Documentation
    #
    class CreateConfiguredTableAssociationOutput < Struct.new(
      :configured_table_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the configured table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] table_reference
    #   A reference to the table being configured.
    #   @return [Types::TableReference]
    #
    # @!attribute [rw] allowed_columns
    #   The columns of the underlying table that can be used by
    #   collaborations or analysis rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method allowed for the configured tables.
    #
    #   `DIRECT_QUERY` allows SQL queries to be run directly on this table.
    #
    #   `DIRECT_JOB` allows PySpark jobs to be run directly on this table.
    #
    #   `MULTIPLE` allows both SQL queries and PySpark jobs to be run
    #   directly on this table.
    #   @return [String]
    #
    # @!attribute [rw] selected_analysis_methods
    #   The analysis methods to enable for the configured table. When
    #   configured, you must specify at least two analysis methods.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableInput AWS API Documentation
    #
    class CreateConfiguredTableInput < Struct.new(
      :name,
      :description,
      :table_reference,
      :allowed_columns,
      :analysis_method,
      :selected_analysis_methods,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table
    #   The created configured table.
    #   @return [Types::ConfiguredTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableOutput AWS API Documentation
    #
    class CreateConfiguredTableOutput < Struct.new(
      :configured_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration needed to create the ID mapping
    #   table.
    #   @return [Types::IdMappingTableInputReferenceConfig]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.
    #   This value is used to encrypt the mapping table data that is stored
    #   by Clean Rooms.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateIdMappingTableInput AWS API Documentation
    #
    class CreateIdMappingTableInput < Struct.new(
      :membership_identifier,
      :name,
      :description,
      :input_reference_config,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_table
    #   The ID mapping table that was created.
    #   @return [Types::IdMappingTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateIdMappingTableOutput AWS API Documentation
    #
    class CreateIdMappingTableOutput < Struct.new(
      :id_mapping_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID
    #   namespace association.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration needed to create the ID namespace
    #   association.
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name for the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_config
    #   The configuration settings for the ID mapping table.
    #   @return [Types::IdMappingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateIdNamespaceAssociationInput AWS API Documentation
    #
    class CreateIdNamespaceAssociationInput < Struct.new(
      :membership_identifier,
      :input_reference_config,
      :tags,
      :name,
      :description,
      :id_mapping_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_association
    #   The ID namespace association that was created.
    #   @return [Types::IdNamespaceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateIdNamespaceAssociationOutput AWS API Documentation
    #
    class CreateIdNamespaceAssociationOutput < Struct.new(
      :id_namespace_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The unique ID for the associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the membership.
    #
    #   When `ENABLED`, Clean Rooms logs details about queries run within
    #   this collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] job_log_status
    #   An indicator as to whether job logging has been enabled or disabled
    #   for the collaboration.
    #
    #   When `ENABLED`, Clean Rooms logs details about jobs run within this
    #   collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] default_result_configuration
    #   The default protected query result configuration as specified by the
    #   member who can receive results.
    #   @return [Types::MembershipProtectedQueryResultConfiguration]
    #
    # @!attribute [rw] default_job_result_configuration
    #   The default job result configuration that determines how job results
    #   are protected and managed within this membership. This configuration
    #   applies to all jobs.
    #   @return [Types::MembershipProtectedJobResultConfiguration]
    #
    # @!attribute [rw] payment_configuration
    #   The payment responsibilities accepted by the collaboration member.
    #
    #   Not required if the collaboration member has the member ability to
    #   run queries.
    #
    #   Required if the collaboration member doesn't have the member
    #   ability to run queries but is configured as a payer by the
    #   collaboration creator.
    #   @return [Types::MembershipPaymentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateMembershipInput AWS API Documentation
    #
    class CreateMembershipInput < Struct.new(
      :collaboration_identifier,
      :query_log_status,
      :job_log_status,
      :tags,
      :default_result_configuration,
      :default_job_result_configuration,
      :payment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership
    #   The membership that was created.
    #   @return [Types::Membership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateMembershipOutput AWS API Documentation
    #
    class CreateMembershipOutput < Struct.new(
      :membership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is created in the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] auto_refresh
    #   How often the privacy budget refreshes.
    #
    #   If you plan to regularly bring new data into the collaboration, you
    #   can use `CALENDAR_MONTH` to automatically get a new privacy budget
    #   for the collaboration every calendar month. Choosing this option
    #   allows arbitrary amounts of information to be revealed about rows of
    #   the data when repeatedly queries across refreshes. Avoid choosing
    #   this if the same rows will be repeatedly queried between privacy
    #   budget refreshes.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_type
    #   Specifies the type of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies your parameters for the privacy budget template.
    #   @return [Types::PrivacyBudgetTemplateParametersInput]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreatePrivacyBudgetTemplateInput AWS API Documentation
    #
    class CreatePrivacyBudgetTemplateInput < Struct.new(
      :membership_identifier,
      :auto_refresh,
      :privacy_budget_type,
      :parameters,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] privacy_budget_template
    #   A summary of the elements in the privacy budget template.
    #   @return [Types::PrivacyBudgetTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreatePrivacyBudgetTemplateOutput AWS API Documentation
    #
    class CreatePrivacyBudgetTemplateOutput < Struct.new(
      :privacy_budget_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for client-side encryption for cryptographic computing.
    #
    # @!attribute [rw] allow_cleartext
    #   Indicates whether encrypted tables can contain cleartext data
    #   (`TRUE`) or are to cryptographically process every column (`FALSE`).
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_duplicates
    #   Indicates whether Fingerprint columns can contain duplicate entries
    #   (`TRUE`) or are to contain only non-repeated values (`FALSE`).
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_joins_on_columns_with_different_names
    #   Indicates whether Fingerprint columns can be joined on any other
    #   Fingerprint column with a different name (`TRUE`) or can only be
    #   joined on Fingerprint columns of the same name (`FALSE`).
    #   @return [Boolean]
    #
    # @!attribute [rw] preserve_nulls
    #   Indicates whether NULL values are to be copied as NULL to encrypted
    #   tables (`TRUE`) or cryptographically processed (`FALSE`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DataEncryptionMetadata AWS API Documentation
    #
    class DataEncryptionMetadata < Struct.new(
      :allow_cleartext,
      :allow_duplicates,
      :allow_joins_on_columns_with_different_names,
      :preserve_nulls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_identifier
    #   The identifier for the analysis template resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteAnalysisTemplateInput AWS API Documentation
    #
    class DeleteAnalysisTemplateInput < Struct.new(
      :membership_identifier,
      :analysis_template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteAnalysisTemplateOutput AWS API Documentation
    #
    class DeleteAnalysisTemplateOutput < Aws::EmptyStructure; end

    # @!attribute [rw] collaboration_identifier
    #   The identifier for the collaboration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteCollaborationInput AWS API Documentation
    #
    class DeleteCollaborationInput < Struct.new(
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteCollaborationOutput AWS API Documentation
    #
    class DeleteCollaborationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] configured_audience_model_association_identifier
    #   A unique identifier of the configured audience model association
    #   that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier of the membership that contains the audience
    #   model association that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredAudienceModelAssociationInput AWS API Documentation
    #
    class DeleteConfiguredAudienceModelAssociationInput < Struct.new(
      :configured_audience_model_association_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredAudienceModelAssociationOutput AWS API Documentation
    #
    class DeleteConfiguredAudienceModelAssociationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] configured_table_identifier
    #   The unique identifier for the configured table that the analysis
    #   rule applies to. Currently accepts the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The analysis rule type to be deleted. Configured table analysis
    #   rules are uniquely identified by their configured table identifier
    #   and analysis rule type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAnalysisRuleInput AWS API Documentation
    #
    class DeleteConfiguredTableAnalysisRuleInput < Struct.new(
      :configured_table_identifier,
      :analysis_rule_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty response that indicates a successful delete.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAnalysisRuleOutput AWS API Documentation
    #
    class DeleteConfiguredTableAnalysisRuleOutput < Aws::EmptyStructure; end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_association_identifier
    #   The identiﬁer for the conﬁgured table association that's related to
    #   the analysis rule that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The type of the analysis rule that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAssociationAnalysisRuleInput AWS API Documentation
    #
    class DeleteConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAssociationAnalysisRuleOutput AWS API Documentation
    #
    class DeleteConfiguredTableAssociationAnalysisRuleOutput < Aws::EmptyStructure; end

    # @!attribute [rw] configured_table_association_identifier
    #   The unique ID for the configured table association to be deleted.
    #   Currently accepts the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAssociationInput AWS API Documentation
    #
    class DeleteConfiguredTableAssociationInput < Struct.new(
      :configured_table_association_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableAssociationOutput AWS API Documentation
    #
    class DeleteConfiguredTableAssociationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] configured_table_identifier
    #   The unique ID for the configured table to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableInput AWS API Documentation
    #
    class DeleteConfiguredTableInput < Struct.new(
      :configured_table_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The empty output for a successful deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteConfiguredTableOutput AWS API Documentation
    #
    class DeleteConfiguredTableOutput < Aws::EmptyStructure; end

    # @!attribute [rw] id_mapping_table_identifier
    #   The unique identifier of the ID mapping table that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteIdMappingTableInput AWS API Documentation
    #
    class DeleteIdMappingTableInput < Struct.new(
      :id_mapping_table_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteIdMappingTableOutput AWS API Documentation
    #
    class DeleteIdMappingTableOutput < Aws::EmptyStructure; end

    # @!attribute [rw] id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID
    #   namespace association that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteIdNamespaceAssociationInput AWS API Documentation
    #
    class DeleteIdNamespaceAssociationInput < Struct.new(
      :id_namespace_association_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteIdNamespaceAssociationOutput AWS API Documentation
    #
    class DeleteIdNamespaceAssociationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] collaboration_identifier
    #   The unique identifier for the associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the member to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteMemberInput AWS API Documentation
    #
    class DeleteMemberInput < Struct.new(
      :collaboration_identifier,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteMemberOutput AWS API Documentation
    #
    class DeleteMemberOutput < Aws::EmptyStructure; end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteMembershipInput AWS API Documentation
    #
    class DeleteMembershipInput < Struct.new(
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeleteMembershipOutput AWS API Documentation
    #
    class DeleteMembershipOutput < Aws::EmptyStructure; end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is deleted from the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_identifier
    #   A unique identifier for your privacy budget template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeletePrivacyBudgetTemplateInput AWS API Documentation
    #
    class DeletePrivacyBudgetTemplateInput < Struct.new(
      :membership_identifier,
      :privacy_budget_template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DeletePrivacyBudgetTemplateOutput AWS API Documentation
    #
    class DeletePrivacyBudgetTemplateOutput < Aws::EmptyStructure; end

    # Specifies the name of the column that contains the unique identifier
    # of your users, whose privacy you want to protect.
    #
    # @!attribute [rw] name
    #   The name of the column, such as user\_id, that contains the unique
    #   identifier of your users, whose privacy you want to protect. If you
    #   want to turn on differential privacy for two or more tables in a
    #   collaboration, you must configure the same column as the user
    #   identifier column in both analysis rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyColumn AWS API Documentation
    #
    class DifferentialPrivacyColumn < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the unique identifier for your users.
    #
    # @!attribute [rw] columns
    #   The name of the column (such as user\_id) that contains the unique
    #   identifier of your users whose privacy you want to protect. If you
    #   want to turn on diﬀerential privacy for two or more tables in a
    #   collaboration, you must conﬁgure the same column as the user
    #   identiﬁer column in both analysis rules.
    #   @return [Array<Types::DifferentialPrivacyColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyConfiguration AWS API Documentation
    #
    class DifferentialPrivacyConfiguration < Struct.new(
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array that contains the sensitivity parameters.
    #
    # @!attribute [rw] sensitivity_parameters
    #   Provides the sensitivity parameters that you can use to better
    #   understand the total amount of noise in query results.
    #   @return [Array<Types::DifferentialPrivacySensitivityParameters>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyParameters AWS API Documentation
    #
    class DifferentialPrivacyParameters < Struct.new(
      :sensitivity_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides an estimate of the number of aggregation functions that the
    # member who can query can run given the epsilon and noise parameters.
    #
    # @!attribute [rw] type
    #   The type of aggregation function.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   The maximum number of aggregations that the member who can query can
    #   run given the epsilon and noise parameters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyPreviewAggregation AWS API Documentation
    #
    class DifferentialPrivacyPreviewAggregation < Struct.new(
      :type,
      :max_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The epsilon and noise parameters that you want to preview.
    #
    # @!attribute [rw] epsilon
    #   The epsilon value that you want to preview.
    #   @return [Integer]
    #
    # @!attribute [rw] users_noise_per_query
    #   Noise added per query is measured in terms of the number of users
    #   whose contributions you want to obscure. This value governs the rate
    #   at which the privacy budget is depleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyPreviewParametersInput AWS API Documentation
    #
    class DifferentialPrivacyPreviewParametersInput < Struct.new(
      :epsilon,
      :users_noise_per_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configured epsilon value and the utility in terms of
    # total aggregations, as well as the remaining aggregations available.
    #
    # @!attribute [rw] aggregations
    #   This information includes the configured epsilon value and the
    #   utility in terms of total aggregations, as well as the remaining
    #   aggregations.
    #   @return [Array<Types::DifferentialPrivacyPrivacyBudgetAggregation>]
    #
    # @!attribute [rw] epsilon
    #   The epsilon value that you configured.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyPrivacyBudget AWS API Documentation
    #
    class DifferentialPrivacyPrivacyBudget < Struct.new(
      :aggregations,
      :epsilon)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the total number of aggregations, as well as the
    # remaining aggregations.
    #
    # @!attribute [rw] type
    #   The different types of aggregation functions that you can perform.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   The maximum number of aggregation functions that you can perform
    #   with the given privacy budget.
    #   @return [Integer]
    #
    # @!attribute [rw] remaining_count
    #   The remaining number of aggregation functions that can be run with
    #   the available privacy budget.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyPrivacyBudgetAggregation AWS API Documentation
    #
    class DifferentialPrivacyPrivacyBudgetAggregation < Struct.new(
      :type,
      :max_count,
      :remaining_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the number of aggregation functions that the member
    # who can query can run given the epsilon and noise parameters.
    #
    # @!attribute [rw] aggregations
    #   The number of aggregation functions that you can perform.
    #   @return [Array<Types::DifferentialPrivacyPreviewAggregation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyPrivacyImpact AWS API Documentation
    #
    class DifferentialPrivacyPrivacyImpact < Struct.new(
      :aggregations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the sensitivity parameters.
    #
    # @!attribute [rw] aggregation_type
    #   The type of aggregation function that was run.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_expression
    #   The aggregation expression that was run.
    #   @return [String]
    #
    # @!attribute [rw] user_contribution_limit
    #   The maximum number of rows contributed by a user in a SQL query.
    #   @return [Integer]
    #
    # @!attribute [rw] min_column_value
    #   The lower bound of the aggregation expression.
    #   @return [Float]
    #
    # @!attribute [rw] max_column_value
    #   The upper bound of the aggregation expression.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacySensitivityParameters AWS API Documentation
    #
    class DifferentialPrivacySensitivityParameters < Struct.new(
      :aggregation_type,
      :aggregation_expression,
      :user_contribution_limit,
      :min_column_value,
      :max_column_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The epsilon and noise parameter values that you want to use for the
    # differential privacy template.
    #
    # @!attribute [rw] epsilon
    #   The epsilon value that you want to use.
    #   @return [Integer]
    #
    # @!attribute [rw] users_noise_per_query
    #   Noise added per query is measured in terms of the number of users
    #   whose contributions you want to obscure. This value governs the rate
    #   at which the privacy budget is depleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyTemplateParametersInput AWS API Documentation
    #
    class DifferentialPrivacyTemplateParametersInput < Struct.new(
      :epsilon,
      :users_noise_per_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The epsilon and noise parameter values that were used for the
    # differential privacy template.
    #
    # @!attribute [rw] epsilon
    #   The epsilon value that you specified.
    #   @return [Integer]
    #
    # @!attribute [rw] users_noise_per_query
    #   Noise added per query is measured in terms of the number of users
    #   whose contributions you want to obscure. This value governs the rate
    #   at which the privacy budget is depleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyTemplateParametersOutput AWS API Documentation
    #
    class DifferentialPrivacyTemplateParametersOutput < Struct.new(
      :epsilon,
      :users_noise_per_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The epsilon and noise parameter values that you want to update in the
    # differential privacy template.
    #
    # @!attribute [rw] epsilon
    #   The updated epsilon value that you want to use.
    #   @return [Integer]
    #
    # @!attribute [rw] users_noise_per_query
    #   The updated value of noise added per query. It is measured in terms
    #   of the number of users whose contributions you want to obscure. This
    #   value governs the rate at which the privacy budget is depleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DifferentialPrivacyTemplateUpdateParameters AWS API Documentation
    #
    class DifferentialPrivacyTemplateUpdateParameters < Struct.new(
      :epsilon,
      :users_noise_per_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The direct analysis configuration details.
    #
    # @!attribute [rw] receiver_account_ids
    #   The account IDs for the member who received the results of a
    #   protected query.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/DirectAnalysisConfigurationDetails AWS API Documentation
    #
    class DirectAnalysisConfigurationDetails < Struct.new(
      :receiver_account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines the level of detail included in error
    # messages returned by PySpark jobs. This configuration allows you to
    # control the verbosity of error messages to help with troubleshooting
    # PySpark jobs while maintaining appropriate security controls.
    #
    # @!attribute [rw] type
    #   The level of detail for error messages returned by the PySpark job.
    #   When set to DETAILED, error messages include more information to
    #   help troubleshoot issues with your PySpark job.
    #
    #   Because this setting may expose sensitive data, it is recommended
    #   for development and testing environments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ErrorMessageConfiguration AWS API Documentation
    #
    class ErrorMessageConfiguration < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_identifier
    #   The identifier for the analysis template resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetAnalysisTemplateInput AWS API Documentation
    #
    class GetAnalysisTemplateInput < Struct.new(
      :membership_identifier,
      :analysis_template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_template
    #   The analysis template.
    #   @return [Types::AnalysisTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetAnalysisTemplateOutput AWS API Documentation
    #
    class GetAnalysisTemplateOutput < Struct.new(
      :analysis_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the analysis
    #   templates belong to. Currently accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_arn
    #   The Amazon Resource Name (ARN) associated with the analysis template
    #   within a collaboration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationAnalysisTemplateInput AWS API Documentation
    #
    class GetCollaborationAnalysisTemplateInput < Struct.new(
      :collaboration_identifier,
      :analysis_template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_analysis_template
    #   The analysis template within a collaboration.
    #   @return [Types::CollaborationAnalysisTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationAnalysisTemplateOutput AWS API Documentation
    #
    class GetCollaborationAnalysisTemplateOutput < Struct.new(
      :collaboration_analysis_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The identifier of the collaboration that the change request is made
    #   against.
    #   @return [String]
    #
    # @!attribute [rw] change_request_identifier
    #   A unique identifier for the change request to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationChangeRequestInput AWS API Documentation
    #
    class GetCollaborationChangeRequestInput < Struct.new(
      :collaboration_identifier,
      :change_request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_change_request
    #   The collaboration change request that was requested.
    #   @return [Types::CollaborationChangeRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationChangeRequestOutput AWS API Documentation
    #
    class GetCollaborationChangeRequestOutput < Struct.new(
      :collaboration_change_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the configured
    #   audience model association belongs to. Accepts a collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_association_identifier
    #   A unique identifier for the configured audience model association
    #   that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationConfiguredAudienceModelAssociationInput AWS API Documentation
    #
    class GetCollaborationConfiguredAudienceModelAssociationInput < Struct.new(
      :collaboration_identifier,
      :configured_audience_model_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_configured_audience_model_association
    #   The metadata of the configured audience model association.
    #   @return [Types::CollaborationConfiguredAudienceModelAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationConfiguredAudienceModelAssociationOutput AWS API Documentation
    #
    class GetCollaborationConfiguredAudienceModelAssociationOutput < Struct.new(
      :collaboration_configured_audience_model_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The unique identifier of the collaboration that contains the ID
    #   namespace association that you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationIdNamespaceAssociationInput AWS API Documentation
    #
    class GetCollaborationIdNamespaceAssociationInput < Struct.new(
      :collaboration_identifier,
      :id_namespace_association_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_id_namespace_association
    #   The ID namespace association that you requested.
    #   @return [Types::CollaborationIdNamespaceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationIdNamespaceAssociationOutput AWS API Documentation
    #
    class GetCollaborationIdNamespaceAssociationOutput < Struct.new(
      :collaboration_id_namespace_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The identifier for the collaboration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationInput AWS API Documentation
    #
    class GetCollaborationInput < Struct.new(
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration
    #   The entire collaboration for this identifier.
    #   @return [Types::Collaboration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationOutput AWS API Documentation
    #
    class GetCollaborationOutput < Struct.new(
      :collaboration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for one of your collaborations.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_identifier
    #   A unique identifier for one of your privacy budget templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationPrivacyBudgetTemplateInput AWS API Documentation
    #
    class GetCollaborationPrivacyBudgetTemplateInput < Struct.new(
      :collaboration_identifier,
      :privacy_budget_template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_privacy_budget_template
    #   Returns the details of the privacy budget template that you
    #   requested.
    #   @return [Types::CollaborationPrivacyBudgetTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetCollaborationPrivacyBudgetTemplateOutput AWS API Documentation
    #
    class GetCollaborationPrivacyBudgetTemplateOutput < Struct.new(
      :collaboration_privacy_budget_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_association_identifier
    #   A unique identifier for the configured audience model association
    #   that you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership that contains the configured
    #   audience model association that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredAudienceModelAssociationInput AWS API Documentation
    #
    class GetConfiguredAudienceModelAssociationInput < Struct.new(
      :configured_audience_model_association_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_association
    #   Information about the configured audience model association that you
    #   requested.
    #   @return [Types::ConfiguredAudienceModelAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredAudienceModelAssociationOutput AWS API Documentation
    #
    class GetConfiguredAudienceModelAssociationOutput < Struct.new(
      :configured_audience_model_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_identifier
    #   The unique identifier for the configured table to retrieve.
    #   Currently accepts the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The analysis rule to be retrieved. Configured table analysis rules
    #   are uniquely identified by their configured table identifier and
    #   analysis rule type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAnalysisRuleInput AWS API Documentation
    #
    class GetConfiguredTableAnalysisRuleInput < Struct.new(
      :configured_table_identifier,
      :analysis_rule_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rule
    #   The entire analysis rule output.
    #   @return [Types::ConfiguredTableAnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAnalysisRuleOutput AWS API Documentation
    #
    class GetConfiguredTableAnalysisRuleOutput < Struct.new(
      :analysis_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_association_identifier
    #   The identiﬁer for the conﬁgured table association that's related to
    #   the analysis rule.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The type of analysis rule that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAssociationAnalysisRuleInput AWS API Documentation
    #
    class GetConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rule
    #   The analysis rule for the conﬁgured table association. In the
    #   console, the `ConfiguredTableAssociationAnalysisRule` is referred to
    #   as the *collaboration analysis rule*.
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAssociationAnalysisRuleOutput AWS API Documentation
    #
    class GetConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      :analysis_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_association_identifier
    #   The unique ID for the configured table association to retrieve.
    #   Currently accepts the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAssociationInput AWS API Documentation
    #
    class GetConfiguredTableAssociationInput < Struct.new(
      :configured_table_association_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_association
    #   The entire configured table association object.
    #   @return [Types::ConfiguredTableAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableAssociationOutput AWS API Documentation
    #
    class GetConfiguredTableAssociationOutput < Struct.new(
      :configured_table_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_identifier
    #   The unique ID for the configured table to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableInput AWS API Documentation
    #
    class GetConfiguredTableInput < Struct.new(
      :configured_table_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table
    #   The retrieved configured table.
    #   @return [Types::ConfiguredTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetConfiguredTableOutput AWS API Documentation
    #
    class GetConfiguredTableOutput < Struct.new(
      :configured_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_table_identifier
    #   The unique identifier of the ID mapping table identifier that you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetIdMappingTableInput AWS API Documentation
    #
    class GetIdMappingTableInput < Struct.new(
      :id_mapping_table_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_table
    #   The ID mapping table that you requested.
    #   @return [Types::IdMappingTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetIdMappingTableOutput AWS API Documentation
    #
    class GetIdMappingTableOutput < Struct.new(
      :id_mapping_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want
    #   to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID
    #   namespace association that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetIdNamespaceAssociationInput AWS API Documentation
    #
    class GetIdNamespaceAssociationInput < Struct.new(
      :id_namespace_association_identifier,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_association
    #   The ID namespace association that you requested.
    #   @return [Types::IdNamespaceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetIdNamespaceAssociationOutput AWS API Documentation
    #
    class GetIdNamespaceAssociationOutput < Struct.new(
      :id_namespace_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetMembershipInput AWS API Documentation
    #
    class GetMembershipInput < Struct.new(
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership
    #   The membership retrieved for the provided identifier.
    #   @return [Types::Membership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetMembershipOutput AWS API Documentation
    #
    class GetMembershipOutput < Struct.new(
      :membership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is retrieved from the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_identifier
    #   A unique identifier for your privacy budget template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetPrivacyBudgetTemplateInput AWS API Documentation
    #
    class GetPrivacyBudgetTemplateInput < Struct.new(
      :membership_identifier,
      :privacy_budget_template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] privacy_budget_template
    #   Returns the details of the privacy budget template that you
    #   requested.
    #   @return [Types::PrivacyBudgetTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetPrivacyBudgetTemplateOutput AWS API Documentation
    #
    class GetPrivacyBudgetTemplateOutput < Struct.new(
      :privacy_budget_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership in a protected job instance.
    #   @return [String]
    #
    # @!attribute [rw] protected_job_identifier
    #   The identifier for the protected job instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetProtectedJobInput AWS API Documentation
    #
    class GetProtectedJobInput < Struct.new(
      :membership_identifier,
      :protected_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protected_job
    #   The protected job metadata.
    #   @return [Types::ProtectedJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetProtectedJobOutput AWS API Documentation
    #
    class GetProtectedJobOutput < Struct.new(
      :protected_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership in a protected query instance.
    #   @return [String]
    #
    # @!attribute [rw] protected_query_identifier
    #   The identifier for a protected query instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetProtectedQueryInput AWS API Documentation
    #
    class GetProtectedQueryInput < Struct.new(
      :membership_identifier,
      :protected_query_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protected_query
    #   The query processing metadata.
    #   @return [Types::ProtectedQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetProtectedQueryOutput AWS API Documentation
    #
    class GetProtectedQueryOutput < Struct.new(
      :protected_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the schema belongs
    #   to. Currently accepts a collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schema to retrieve the analysis rule for.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the schema analysis rule to retrieve. Schema analysis
    #   rules are uniquely identified by a combination of the collaboration,
    #   the schema name, and their type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetSchemaAnalysisRuleInput AWS API Documentation
    #
    class GetSchemaAnalysisRuleInput < Struct.new(
      :collaboration_identifier,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rule
    #   A specification about how data from the configured table can be
    #   used.
    #   @return [Types::AnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetSchemaAnalysisRuleOutput AWS API Documentation
    #
    class GetSchemaAnalysisRuleOutput < Struct.new(
      :analysis_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the schema belongs
    #   to. Currently accepts a collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the relation to retrieve the schema for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetSchemaInput AWS API Documentation
    #
    class GetSchemaInput < Struct.new(
      :collaboration_identifier,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema
    #   The entire schema object.
    #   @return [Types::Schema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GetSchemaOutput AWS API Documentation
    #
    class GetSchemaOutput < Struct.new(
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a table within an Glue data catalog.
    #
    # @!attribute [rw] table_name
    #   The name of the Glue table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database the Glue table belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/GlueTableReference AWS API Documentation
    #
    class GlueTableReference < Struct.new(
      :table_name,
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hash
    #
    # @!attribute [rw] sha256
    #   The SHA-256 hash value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/Hash AWS API Documentation
    #
    class Hash < Struct.new(
      :sha256)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for the ID mapping table.
    #
    # @!attribute [rw] allow_use_as_dimension_column
    #   An indicator as to whether you can use your column as a dimension
    #   column in the ID mapping table (`TRUE`) or not (`FALSE`).
    #
    #   Default is `FALSE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdMappingConfig AWS API Documentation
    #
    class IdMappingConfig < Struct.new(
      :allow_use_as_dimension_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information about the ID mapping table.
    #
    # @!attribute [rw] id
    #   The unique identifier of the ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration for the ID mapping table.
    #   @return [Types::IdMappingTableInputReferenceConfig]
    #
    # @!attribute [rw] membership_id
    #   The unique identifier of the membership resource for the ID mapping
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the membership resource for the ID
    #   mapping table.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains this ID
    #   mapping table.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   this ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the ID mapping table was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the ID mapping table was updated.
    #   @return [Time]
    #
    # @!attribute [rw] input_reference_properties
    #   The input reference properties for the ID mapping table.
    #   @return [Types::IdMappingTableInputReferenceProperties]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdMappingTable AWS API Documentation
    #
    class IdMappingTable < Struct.new(
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
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the input reference configuration for the ID mapping table.
    #
    # @!attribute [rw] input_reference_arn
    #   The Amazon Resource Name (ARN) of the referenced resource in Entity
    #   Resolution. Valid values are ID mapping workflow ARNs.
    #   @return [String]
    #
    # @!attribute [rw] manage_resource_policies
    #   When `TRUE`, Clean Rooms manages permissions for the ID mapping
    #   table resource.
    #
    #   When `FALSE`, the resource owner manages permissions for the ID
    #   mapping table resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdMappingTableInputReferenceConfig AWS API Documentation
    #
    class IdMappingTableInputReferenceConfig < Struct.new(
      :input_reference_arn,
      :manage_resource_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input reference properties for the ID mapping table.
    #
    # @!attribute [rw] id_mapping_table_input_source
    #   The input source of the ID mapping table.
    #   @return [Array<Types::IdMappingTableInputSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdMappingTableInputReferenceProperties AWS API Documentation
    #
    class IdMappingTableInputReferenceProperties < Struct.new(
      :id_mapping_table_input_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input source of the ID mapping table.
    #
    # @!attribute [rw] id_namespace_association_id
    #   The unique identifier of the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the input source of the ID mapping table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdMappingTableInputSource AWS API Documentation
    #
    class IdMappingTableInputSource < Struct.new(
      :id_namespace_association_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional properties that are specific to the type of the associated
    # schema.
    #
    # @!attribute [rw] id_mapping_table_input_source
    #   Defines which ID namespace associations are used to create the ID
    #   mapping table.
    #   @return [Array<Types::IdMappingTableInputSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdMappingTableSchemaTypeProperties AWS API Documentation
    #
    class IdMappingTableSchemaTypeProperties < Struct.new(
      :id_mapping_table_input_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the ID mapping table.
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   this ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains this ID
    #   mapping table.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique identifier of the membership resource for this ID mapping
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the membership resource for this
    #   ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which this ID mapping table was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which this ID mapping table was updated.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier of this ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of this ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration for the ID mapping table.
    #   @return [Types::IdMappingTableInputReferenceConfig]
    #
    # @!attribute [rw] name
    #   The name of this ID mapping table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdMappingTableSummary AWS API Documentation
    #
    class IdMappingTableSummary < Struct.new(
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
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information to create the ID namespace association.
    #
    # @!attribute [rw] id
    #   The unique identifier for this ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique identifier of the membership resource for this ID
    #   namespace association.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the membership resource for this
    #   ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains this ID
    #   namespace association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   this ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the ID namespace association was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the ID namespace association was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration for the ID namespace association.
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    #
    # @!attribute [rw] input_reference_properties
    #   The input reference properties for the ID namespace association.
    #   @return [Types::IdNamespaceAssociationInputReferenceProperties]
    #
    # @!attribute [rw] id_mapping_config
    #   The configuration settings for the ID mapping table.
    #   @return [Types::IdMappingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdNamespaceAssociation AWS API Documentation
    #
    class IdNamespaceAssociation < Struct.new(
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
      :id_mapping_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the information for the ID namespace association input
    # reference configuration.
    #
    # @!attribute [rw] input_reference_arn
    #   The Amazon Resource Name (ARN) of the Entity Resolution resource
    #   that is being associated to the collaboration. Valid resource ARNs
    #   are from the ID namespaces that you own.
    #   @return [String]
    #
    # @!attribute [rw] manage_resource_policies
    #   When `TRUE`, Clean Rooms manages permissions for the ID namespace
    #   association resource.
    #
    #   When `FALSE`, the resource owner manages permissions for the ID
    #   namespace association resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdNamespaceAssociationInputReferenceConfig AWS API Documentation
    #
    class IdNamespaceAssociationInputReferenceConfig < Struct.new(
      :input_reference_arn,
      :manage_resource_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the information for the ID namespace association input
    # reference properties.
    #
    # @!attribute [rw] id_namespace_type
    #   The ID namespace type for this ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_workflows_supported
    #   Defines how ID mapping workflows are supported for this ID namespace
    #   association.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdNamespaceAssociationInputReferenceProperties AWS API Documentation
    #
    class IdNamespaceAssociationInputReferenceProperties < Struct.new(
      :id_namespace_type,
      :id_mapping_workflows_supported)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the ID namespace association input
    # reference properties.
    #
    # @!attribute [rw] id_namespace_type
    #   The ID namespace type for this ID namespace association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdNamespaceAssociationInputReferencePropertiesSummary AWS API Documentation
    #
    class IdNamespaceAssociationInputReferencePropertiesSummary < Struct.new(
      :id_namespace_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the ID namespace association.
    #
    # @!attribute [rw] membership_id
    #   The unique identifier of the membership resource for this ID
    #   namespace association.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the membership resource for this
    #   ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The Amazon Resource Name (ARN) of the collaboration that contains
    #   this ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains this ID
    #   namespace association.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which this ID namespace association was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which this ID namespace association has been
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier of this ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_config
    #   The input reference configuration details for this ID namespace
    #   association.
    #   @return [Types::IdNamespaceAssociationInputReferenceConfig]
    #
    # @!attribute [rw] name
    #   The name of the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] input_reference_properties
    #   The input reference properties for this ID namespace association.
    #   @return [Types::IdNamespaceAssociationInputReferencePropertiesSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/IdNamespaceAssociationSummary AWS API Documentation
    #
    class IdNamespaceAssociationSummary < Struct.new(
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
      :input_reference_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's payment
    # responsibilities set by the collaboration creator for query and job
    # compute costs.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration creator has configured the
    #   collaboration member to pay for query and job compute costs (`TRUE`)
    #   or has not configured the collaboration member to pay for query and
    #   job compute costs (`FALSE`).
    #
    #   Exactly one member can be configured to pay for query and job
    #   compute costs. An error is returned if the collaboration creator
    #   sets a `TRUE` value for more than one member in the collaboration.
    #
    #   An error is returned if the collaboration creator sets a `FALSE`
    #   value for the member who can run queries and jobs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/JobComputePaymentConfig AWS API Documentation
    #
    class JobComputePaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListAnalysisTemplatesInput AWS API Documentation
    #
    class ListAnalysisTemplatesInput < Struct.new(
      :membership_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_summaries
    #   Lists analysis template metadata.
    #   @return [Array<Types::AnalysisTemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListAnalysisTemplatesOutput AWS API Documentation
    #
    class ListAnalysisTemplatesOutput < Struct.new(
      :next_token,
      :analysis_template_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the analysis
    #   templates belong to. Currently accepts collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationAnalysisTemplatesInput AWS API Documentation
    #
    class ListCollaborationAnalysisTemplatesInput < Struct.new(
      :collaboration_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_analysis_template_summaries
    #   The metadata of the analysis template within a collaboration.
    #   @return [Array<Types::CollaborationAnalysisTemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationAnalysisTemplatesOutput AWS API Documentation
    #
    class ListCollaborationAnalysisTemplatesOutput < Struct.new(
      :next_token,
      :collaboration_analysis_template_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The identifier of the collaboration that the change request is made
    #   against.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A filter to only return change requests with the specified status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationChangeRequestsInput AWS API Documentation
    #
    class ListCollaborationChangeRequestsInput < Struct.new(
      :collaboration_identifier,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_change_request_summaries
    #   The list of collaboration change request summaries.
    #   @return [Array<Types::CollaborationChangeRequestSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationChangeRequestsOutput AWS API Documentation
    #
    class ListCollaborationChangeRequestsOutput < Struct.new(
      :collaboration_change_request_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the configured
    #   audience model association belongs to. Accepts a collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationConfiguredAudienceModelAssociationsInput AWS API Documentation
    #
    class ListCollaborationConfiguredAudienceModelAssociationsInput < Struct.new(
      :collaboration_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_configured_audience_model_association_summaries
    #   The metadata of the configured audience model association within a
    #   collaboration.
    #   @return [Array<Types::CollaborationConfiguredAudienceModelAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationConfiguredAudienceModelAssociationsOutput AWS API Documentation
    #
    class ListCollaborationConfiguredAudienceModelAssociationsOutput < Struct.new(
      :collaboration_configured_audience_model_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The unique identifier of the collaboration that contains the ID
    #   namespace associations that you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service may return a
    #   nextToken even if the maximum results has not been met.&gt;
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationIdNamespaceAssociationsInput AWS API Documentation
    #
    class ListCollaborationIdNamespaceAssociationsInput < Struct.new(
      :collaboration_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value provided to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id_namespace_association_summaries
    #   The summary information of the collaboration ID namespace
    #   associations that you requested.
    #   @return [Array<Types::CollaborationIdNamespaceAssociationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationIdNamespaceAssociationsOutput AWS API Documentation
    #
    class ListCollaborationIdNamespaceAssociationsOutput < Struct.new(
      :next_token,
      :collaboration_id_namespace_association_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for one of your collaborations.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationPrivacyBudgetTemplatesInput AWS API Documentation
    #
    class ListCollaborationPrivacyBudgetTemplatesInput < Struct.new(
      :collaboration_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_privacy_budget_template_summaries
    #   An array that summarizes the collaboration privacy budget templates.
    #   The summary includes collaboration information, creation
    #   information, the privacy budget type.
    #   @return [Array<Types::CollaborationPrivacyBudgetTemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationPrivacyBudgetTemplatesOutput AWS API Documentation
    #
    class ListCollaborationPrivacyBudgetTemplatesOutput < Struct.new(
      :next_token,
      :collaboration_privacy_budget_template_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for one of your collaborations.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_type
    #   Specifies the type of the privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] access_budget_resource_arn
    #   The Amazon Resource Name (ARN) of the Configured Table Association
    #   (ConfiguredTableAssociation) used to filter privacy budgets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationPrivacyBudgetsInput AWS API Documentation
    #
    class ListCollaborationPrivacyBudgetsInput < Struct.new(
      :collaboration_identifier,
      :privacy_budget_type,
      :max_results,
      :next_token,
      :access_budget_resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_privacy_budget_summaries
    #   Summaries of the collaboration privacy budgets.
    #   @return [Array<Types::CollaborationPrivacyBudgetSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationPrivacyBudgetsOutput AWS API Documentation
    #
    class ListCollaborationPrivacyBudgetsOutput < Struct.new(
      :collaboration_privacy_budget_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @!attribute [rw] member_status
    #   The caller's status in a collaboration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationsInput AWS API Documentation
    #
    class ListCollaborationsInput < Struct.new(
      :next_token,
      :max_results,
      :member_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_list
    #   The list of collaborations.
    #   @return [Array<Types::CollaborationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListCollaborationsOutput AWS API Documentation
    #
    class ListCollaborationsOutput < Struct.new(
      :next_token,
      :collaboration_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for a membership that contains the configured
    #   audience model associations that you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredAudienceModelAssociationsInput AWS API Documentation
    #
    class ListConfiguredAudienceModelAssociationsInput < Struct.new(
      :membership_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_association_summaries
    #   Summaries of the configured audience model associations that you
    #   requested.
    #   @return [Array<Types::ConfiguredAudienceModelAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token value provided to access the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredAudienceModelAssociationsOutput AWS API Documentation
    #
    class ListConfiguredAudienceModelAssociationsOutput < Struct.new(
      :configured_audience_model_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership to list configured table
    #   associations for. Currently accepts the membership ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredTableAssociationsInput AWS API Documentation
    #
    class ListConfiguredTableAssociationsInput < Struct.new(
      :membership_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_association_summaries
    #   The retrieved list of configured table associations.
    #   @return [Array<Types::ConfiguredTableAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredTableAssociationsOutput AWS API Documentation
    #
    class ListConfiguredTableAssociationsOutput < Struct.new(
      :configured_table_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredTablesInput AWS API Documentation
    #
    class ListConfiguredTablesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_summaries
    #   The configured tables listed by the request.
    #   @return [Array<Types::ConfiguredTableSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListConfiguredTablesOutput AWS API Documentation
    #
    class ListConfiguredTablesOutput < Struct.new(
      :configured_table_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   tables that you want to view.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service may return a
    #   nextToken even if the maximum results has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListIdMappingTablesInput AWS API Documentation
    #
    class ListIdMappingTablesInput < Struct.new(
      :membership_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_table_summaries
    #   The summary information of the ID mapping tables that you requested.
    #   @return [Array<Types::IdMappingTableSummary>]
    #
    # @!attribute [rw] next_token
    #   The token value provided to access the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListIdMappingTablesOutput AWS API Documentation
    #
    class ListIdMappingTablesOutput < Struct.new(
      :id_mapping_table_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID
    #   namespace association that you want to view.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service may return a
    #   nextToken even if the maximum results has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListIdNamespaceAssociationsInput AWS API Documentation
    #
    class ListIdNamespaceAssociationsInput < Struct.new(
      :membership_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value provided to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_association_summaries
    #   The summary information of the ID namespace associations that you
    #   requested.
    #   @return [Array<Types::IdNamespaceAssociationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListIdNamespaceAssociationsOutput AWS API Documentation
    #
    class ListIdNamespaceAssociationsOutput < Struct.new(
      :next_token,
      :id_namespace_association_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The identifier of the collaboration in which the members are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListMembersInput AWS API Documentation
    #
    class ListMembersInput < Struct.new(
      :collaboration_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] member_summaries
    #   The list of members returned by the ListMembers operation.
    #   @return [Array<Types::MemberSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListMembersOutput AWS API Documentation
    #
    class ListMembersOutput < Struct.new(
      :next_token,
      :member_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   A filter which will return only memberships in the specified status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListMembershipsInput AWS API Documentation
    #
    class ListMembershipsInput < Struct.new(
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] membership_summaries
    #   The list of memberships returned from the ListMemberships operation.
    #   @return [Array<Types::MembershipSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListMembershipsOutput AWS API Documentation
    #
    class ListMembershipsOutput < Struct.new(
      :next_token,
      :membership_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget templates are retrieved from the collaboration
    #   that this membership belongs to. Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListPrivacyBudgetTemplatesInput AWS API Documentation
    #
    class ListPrivacyBudgetTemplatesInput < Struct.new(
      :membership_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_summaries
    #   An array that summarizes the privacy budget templates. The summary
    #   includes collaboration information, creation information, and
    #   privacy budget type.
    #   @return [Array<Types::PrivacyBudgetTemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListPrivacyBudgetTemplatesOutput AWS API Documentation
    #
    class ListPrivacyBudgetTemplatesOutput < Struct.new(
      :next_token,
      :privacy_budget_template_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget is retrieved from the collaboration that this
    #   membership belongs to. Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_type
    #   The privacy budget type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @!attribute [rw] access_budget_resource_arn
    #   The Amazon Resource Name (ARN) of the access budget resource to
    #   filter privacy budgets by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListPrivacyBudgetsInput AWS API Documentation
    #
    class ListPrivacyBudgetsInput < Struct.new(
      :membership_identifier,
      :privacy_budget_type,
      :next_token,
      :max_results,
      :access_budget_resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] privacy_budget_summaries
    #   An array that summarizes the privacy budgets. The summary includes
    #   collaboration information, membership information, privacy budget
    #   template information, and privacy budget details.
    #   @return [Array<Types::PrivacyBudgetSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListPrivacyBudgetsOutput AWS API Documentation
    #
    class ListPrivacyBudgetsOutput < Struct.new(
      :privacy_budget_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for the membership in the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A filter on the status of the protected job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListProtectedJobsInput AWS API Documentation
    #
    class ListProtectedJobsInput < Struct.new(
      :membership_identifier,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] protected_jobs
    #   A list of protected job summaries.
    #   @return [Array<Types::ProtectedJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListProtectedJobsOutput AWS API Documentation
    #
    class ListProtectedJobsOutput < Struct.new(
      :next_token,
      :protected_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for the membership in the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A filter on the status of the protected query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListProtectedQueriesInput AWS API Documentation
    #
    class ListProtectedQueriesInput < Struct.new(
      :membership_identifier,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] protected_queries
    #   A list of protected queries.
    #   @return [Array<Types::ProtectedQuerySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListProtectedQueriesOutput AWS API Documentation
    #
    class ListProtectedQueriesOutput < Struct.new(
      :next_token,
      :protected_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   A unique identifier for the collaboration that the schema belongs
    #   to. Currently accepts a collaboration ID.
    #   @return [String]
    #
    # @!attribute [rw] schema_type
    #   If present, filter schemas by schema type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned for an API request
    #   call. The service chooses a default number if you don't set one.
    #   The service might return a `nextToken` even if the `maxResults`
    #   value has not been met.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListSchemasInput AWS API Documentation
    #
    class ListSchemasInput < Struct.new(
      :collaboration_identifier,
      :schema_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_summaries
    #   The retrieved list of schemas.
    #   @return [Array<Types::SchemaSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListSchemasOutput AWS API Documentation
    #
    class ListSchemasOutput < Struct.new(
      :schema_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to list tags on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of objects specifying each key name and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ML member abilities for a collaboration member.
    #
    # @!attribute [rw] custom_ml_member_abilities
    #   The custom ML member abilities for a collaboration member.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MLMemberAbilities AWS API Documentation
    #
    class MLMemberAbilities < Struct.new(
      :custom_ml_member_abilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's machine learning
    # payment responsibilities set by the collaboration creator.
    #
    # @!attribute [rw] model_training
    #   The payment responsibilities accepted by the member for model
    #   training.
    #   @return [Types::ModelTrainingPaymentConfig]
    #
    # @!attribute [rw] model_inference
    #   The payment responsibilities accepted by the member for model
    #   inference.
    #   @return [Types::ModelInferencePaymentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MLPaymentConfig AWS API Documentation
    #
    class MLPaymentConfig < Struct.new(
      :model_training,
      :model_inference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies changes to collaboration membership, including adding new
    # members with their abilities and display names.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member to add to the
    #   collaboration.
    #   @return [String]
    #
    # @!attribute [rw] member_abilities
    #   The abilities granted to the collaboration member. These determine
    #   what actions the member can perform within the collaboration.
    #
    #   <note markdown="1"> The following values are currently not supported: `CAN_QUERY`,
    #   `CAN_RECEIVE_RESULTS,` and `CAN_RUN_JOB`.
    #
    #    Set the value of `memberAbilities` to `[]` to allow a member to
    #   contribute data.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] display_name
    #   Specifies the display name that will be shown for this member in the
    #   collaboration. While this field is required when inviting new
    #   members, it becomes optional when modifying abilities of existing
    #   collaboration members.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MemberChangeSpecification AWS API Documentation
    #
    class MemberChangeSpecification < Struct.new(
      :account_id,
      :member_abilities,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Basic metadata used to construct a new member.
    #
    # @!attribute [rw] account_id
    #   The identifier used to reference members of the collaboration.
    #   Currently only supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] member_abilities
    #   The abilities granted to the collaboration member.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ml_member_abilities
    #   The ML abilities granted to the collaboration member.
    #   @return [Types::MLMemberAbilities]
    #
    # @!attribute [rw] display_name
    #   The member's display name.
    #   @return [String]
    #
    # @!attribute [rw] payment_configuration
    #   The collaboration member's payment responsibilities set by the
    #   collaboration creator.
    #
    #   If the collaboration creator hasn't speciﬁed anyone as the member
    #   paying for query compute costs, then the member who can query is the
    #   default payer.
    #   @return [Types::PaymentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MemberSpecification AWS API Documentation
    #
    class MemberSpecification < Struct.new(
      :account_id,
      :member_abilities,
      :ml_member_abilities,
      :display_name,
      :payment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The member object listed by the request.
    #
    # @!attribute [rw] account_id
    #   The identifier used to reference members of the collaboration.
    #   Currently only supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the member.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The member's display name.
    #   @return [String]
    #
    # @!attribute [rw] abilities
    #   The abilities granted to the collaboration member.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ml_abilities
    #   Provides a summary of the ML abilities for the collaboration member.
    #   @return [Types::MLMemberAbilities]
    #
    # @!attribute [rw] create_time
    #   The time when the member was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the member metadata was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] membership_id
    #   The unique ID for the member's associated membership, if present.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The unique ARN for the member's associated membership, if present.
    #   @return [String]
    #
    # @!attribute [rw] payment_configuration
    #   The collaboration member's payment responsibilities set by the
    #   collaboration creator.
    #   @return [Types::PaymentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MemberSummary AWS API Documentation
    #
    class MemberSummary < Struct.new(
      :account_id,
      :status,
      :display_name,
      :abilities,
      :ml_abilities,
      :create_time,
      :update_time,
      :membership_id,
      :membership_arn,
      :payment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The membership object.
    #
    # @!attribute [rw] id
    #   The unique ID of the membership.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique ARN for the membership.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the membership's associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID for the membership's collaboration.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_creator_account_id
    #   The identifier used to reference members of the collaboration.
    #   Currently only supports Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_creator_display_name
    #   The display name of the collaboration creator.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_name
    #   The name of the membership's collaboration.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the membership was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the membership metadata was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the membership.
    #   @return [String]
    #
    # @!attribute [rw] member_abilities
    #   The abilities granted to the collaboration member.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ml_member_abilities
    #   Specifies the ML member abilities that are granted to a
    #   collaboration member.
    #   @return [Types::MLMemberAbilities]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the membership.
    #
    #   When `ENABLED`, Clean Rooms logs details about queries run within
    #   this collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] job_log_status
    #   An indicator as to whether job logging has been enabled or disabled
    #   for the collaboration.
    #
    #   When `ENABLED`, Clean Rooms logs details about jobs run within this
    #   collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] default_result_configuration
    #   The default protected query result configuration as specified by the
    #   member who can receive results.
    #   @return [Types::MembershipProtectedQueryResultConfiguration]
    #
    # @!attribute [rw] default_job_result_configuration
    #   The default job result configuration for the membership.
    #   @return [Types::MembershipProtectedJobResultConfiguration]
    #
    # @!attribute [rw] payment_configuration
    #   The payment responsibilities accepted by the collaboration member.
    #   @return [Types::MembershipPaymentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/Membership AWS API Documentation
    #
    class Membership < Struct.new(
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
      :payment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the payment responsibilities accepted by the
    # collaboration member for query and job compute costs.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration member has accepted to pay for
    #   job compute costs (`TRUE`) or has not accepted to pay for query and
    #   job compute costs (`FALSE`).
    #
    #   There is only one member who pays for queries and jobs.
    #
    #   An error message is returned for the following reasons:
    #
    #   * If you set the value to `FALSE` but you are responsible to pay for
    #     query and job compute costs.
    #
    #   * If you set the value to `TRUE` but you are not responsible to pay
    #     for query and job compute costs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipJobComputePaymentConfig AWS API Documentation
    #
    class MembershipJobComputePaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's machine learning
    # payment responsibilities set by the collaboration creator.
    #
    # @!attribute [rw] model_training
    #   The payment responsibilities accepted by the member for model
    #   training.
    #   @return [Types::MembershipModelTrainingPaymentConfig]
    #
    # @!attribute [rw] model_inference
    #   The payment responsibilities accepted by the member for model
    #   inference.
    #   @return [Types::MembershipModelInferencePaymentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipMLPaymentConfig AWS API Documentation
    #
    class MembershipMLPaymentConfig < Struct.new(
      :model_training,
      :model_inference)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's model inference
    # payment responsibilities set by the collaboration creator.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration member has accepted to pay for
    #   model inference costs (`TRUE`) or has not accepted to pay for model
    #   inference costs (`FALSE`).
    #
    #   If the collaboration creator has not specified anyone to pay for
    #   model inference costs, then the member who can query is the default
    #   payer.
    #
    #   An error message is returned for the following reasons:
    #
    #   * If you set the value to `FALSE` but you are responsible to pay for
    #     model inference costs.
    #
    #   * If you set the value to `TRUE` but you are not responsible to pay
    #     for model inference costs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipModelInferencePaymentConfig AWS API Documentation
    #
    class MembershipModelInferencePaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's model training
    # payment responsibilities set by the collaboration creator.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration member has accepted to pay for
    #   model training costs (`TRUE`) or has not accepted to pay for model
    #   training costs (`FALSE`).
    #
    #   If the collaboration creator has not specified anyone to pay for
    #   model training costs, then the member who can query is the default
    #   payer.
    #
    #   An error message is returned for the following reasons:
    #
    #   * If you set the value to `FALSE` but you are responsible to pay for
    #     model training costs.
    #
    #   * If you set the value to `TRUE` but you are not responsible to pay
    #     for model training costs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipModelTrainingPaymentConfig AWS API Documentation
    #
    class MembershipModelTrainingPaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the payment responsibilities accepted by the
    # collaboration member.
    #
    # @!attribute [rw] query_compute
    #   The payment responsibilities accepted by the collaboration member
    #   for query compute costs.
    #   @return [Types::MembershipQueryComputePaymentConfig]
    #
    # @!attribute [rw] machine_learning
    #   The payment responsibilities accepted by the collaboration member
    #   for machine learning costs.
    #   @return [Types::MembershipMLPaymentConfig]
    #
    # @!attribute [rw] job_compute
    #   The payment responsibilities accepted by the collaboration member
    #   for job compute costs.
    #   @return [Types::MembershipJobComputePaymentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipPaymentConfiguration AWS API Documentation
    #
    class MembershipPaymentConfiguration < Struct.new(
      :query_compute,
      :machine_learning,
      :job_compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for protected job results.
    #
    # @note MembershipProtectedJobOutputConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MembershipProtectedJobOutputConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MembershipProtectedJobOutputConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Contains the configuration to write the job results to S3.
    #   @return [Types::ProtectedJobS3OutputConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipProtectedJobOutputConfiguration AWS API Documentation
    #
    class MembershipProtectedJobOutputConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < MembershipProtectedJobOutputConfiguration; end
      class Unknown < MembershipProtectedJobOutputConfiguration; end
    end

    # Contains configurations for protected job results.
    #
    # @!attribute [rw] output_configuration
    #   The output configuration for a protected job result.
    #   @return [Types::MembershipProtectedJobOutputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The unique ARN for an IAM role that is used by Clean Rooms to write
    #   protected job results to the result location, given by the member
    #   who can receive results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipProtectedJobResultConfiguration AWS API Documentation
    #
    class MembershipProtectedJobResultConfiguration < Struct.new(
      :output_configuration,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for protected query results.
    #
    # @note MembershipProtectedQueryOutputConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MembershipProtectedQueryOutputConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MembershipProtectedQueryOutputConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Contains the configuration to write the query results to S3.
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipProtectedQueryOutputConfiguration AWS API Documentation
    #
    class MembershipProtectedQueryOutputConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < MembershipProtectedQueryOutputConfiguration; end
      class Unknown < MembershipProtectedQueryOutputConfiguration; end
    end

    # Contains configurations for protected query results.
    #
    # @!attribute [rw] output_configuration
    #   Configuration for protected query results.
    #   @return [Types::MembershipProtectedQueryOutputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The unique ARN for an IAM role that is used by Clean Rooms to write
    #   protected query results to the result location, given by the member
    #   who can receive results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipProtectedQueryResultConfiguration AWS API Documentation
    #
    class MembershipProtectedQueryResultConfiguration < Struct.new(
      :output_configuration,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the payment responsibilities accepted by the
    # collaboration member for query compute costs.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration member has accepted to pay for
    #   query compute costs (`TRUE`) or has not accepted to pay for query
    #   compute costs (`FALSE`).
    #
    #   If the collaboration creator has not specified anyone to pay for
    #   query compute costs, then the member who can query is the default
    #   payer.
    #
    #   An error message is returned for the following reasons:
    #
    #   * If you set the value to `FALSE` but you are responsible to pay for
    #     query compute costs.
    #
    #   * If you set the value to `TRUE` but you are not responsible to pay
    #     for query compute costs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipQueryComputePaymentConfig AWS API Documentation
    #
    class MembershipQueryComputePaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # The membership object listed by the request.
    #
    # @!attribute [rw] id
    #   The unique ID for the membership's collaboration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique ARN for the membership.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the membership's associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID for the membership's collaboration.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_creator_account_id
    #   The identifier of the Amazon Web Services principal that created the
    #   collaboration. Currently only supports Amazon Web Services account
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_creator_display_name
    #   The display name of the collaboration creator.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_name
    #   The name for the membership's collaboration.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the membership was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the membership metadata was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the membership.
    #   @return [String]
    #
    # @!attribute [rw] member_abilities
    #   The abilities granted to the collaboration member.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ml_member_abilities
    #   Provides a summary of the ML abilities for the collaboration member.
    #   @return [Types::MLMemberAbilities]
    #
    # @!attribute [rw] payment_configuration
    #   The payment responsibilities accepted by the collaboration member.
    #   @return [Types::MembershipPaymentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MembershipSummary AWS API Documentation
    #
    class MembershipSummary < Struct.new(
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
      :payment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's model inference
    # payment responsibilities set by the collaboration creator.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration creator has configured the
    #   collaboration member to pay for model inference costs (`TRUE`) or
    #   has not configured the collaboration member to pay for model
    #   inference costs (`FALSE`).
    #
    #   Exactly one member can be configured to pay for model inference
    #   costs. An error is returned if the collaboration creator sets a
    #   `TRUE` value for more than one member in the collaboration.
    #
    #   If the collaboration creator hasn't specified anyone as the member
    #   paying for model inference costs, then the member who can query is
    #   the default payer. An error is returned if the collaboration creator
    #   sets a `FALSE` value for the member who can query.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ModelInferencePaymentConfig AWS API Documentation
    #
    class ModelInferencePaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's model training
    # payment responsibilities set by the collaboration creator.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration creator has configured the
    #   collaboration member to pay for model training costs (`TRUE`) or has
    #   not configured the collaboration member to pay for model training
    #   costs (`FALSE`).
    #
    #   Exactly one member can be configured to pay for model training
    #   costs. An error is returned if the collaboration creator sets a
    #   `TRUE` value for more than one member in the collaboration.
    #
    #   If the collaboration creator hasn't specified anyone as the member
    #   paying for model training costs, then the member who can query is
    #   the default payer. An error is returned if the collaboration creator
    #   sets a `FALSE` value for the member who can query.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ModelTrainingPaymentConfig AWS API Documentation
    #
    class ModelTrainingPaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's payment
    # responsibilities set by the collaboration creator.
    #
    # @!attribute [rw] query_compute
    #   The collaboration member's payment responsibilities set by the
    #   collaboration creator for query compute costs.
    #   @return [Types::QueryComputePaymentConfig]
    #
    # @!attribute [rw] machine_learning
    #   An object representing the collaboration member's machine learning
    #   payment responsibilities set by the collaboration creator.
    #   @return [Types::MLPaymentConfig]
    #
    # @!attribute [rw] job_compute
    #   The compute configuration for the job.
    #   @return [Types::JobComputePaymentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PaymentConfiguration AWS API Documentation
    #
    class PaymentConfiguration < Struct.new(
      :query_compute,
      :machine_learning,
      :job_compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_table_identifier
    #   The unique identifier of the ID mapping table that you want to
    #   populate.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to populate.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The job type of the rule-based ID mapping job. Valid values include:
    #
    #   `INCREMENTAL`: Processes only new or changed data since the last job
    #   run. This is the default job type if the ID mapping workflow was
    #   created in Entity Resolution with `incrementalRunConfig` specified.
    #
    #   `BATCH`: Processes all data from the input source, regardless of
    #   previous job runs. This is the default job type if the ID mapping
    #   workflow was created in Entity Resolution but `incrementalRunConfig`
    #   wasn't specified.
    #
    #   `DELETE_ONLY`: Processes only deletion requests from
    #   `BatchDeleteUniqueId`, which is set in Entity Resolution.
    #
    #   For more information about `incrementalRunConfig` and
    #   `BatchDeleteUniqueId`, see the [Entity Resolution API Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/entityresolution/latest/apireference/Welcome.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PopulateIdMappingTableInput AWS API Documentation
    #
    class PopulateIdMappingTableInput < Struct.new(
      :id_mapping_table_identifier,
      :membership_identifier,
      :job_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_job_id
    #   The unique identifier of the mapping job that will populate the ID
    #   mapping table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PopulateIdMappingTableOutput AWS API Documentation
    #
    class PopulateIdMappingTableOutput < Struct.new(
      :id_mapping_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the desired epsilon and noise parameters to preview.
    #   @return [Types::PreviewPrivacyImpactParametersInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PreviewPrivacyImpactInput AWS API Documentation
    #
    class PreviewPrivacyImpactInput < Struct.new(
      :membership_identifier,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] privacy_impact
    #   An estimate of the number of aggregation functions that the member
    #   who can query can run given the epsilon and noise parameters. This
    #   does not change the privacy budget.
    #   @return [Types::PrivacyImpact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PreviewPrivacyImpactOutput AWS API Documentation
    #
    class PreviewPrivacyImpactOutput < Struct.new(
      :privacy_impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the updated epsilon and noise parameters to preview. The
    # preview allows you to see how the maximum number of each type of
    # aggregation function would change with the new parameters.
    #
    # @note PreviewPrivacyImpactParametersInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] differential_privacy
    #   An array that specifies the epsilon and noise parameters.
    #   @return [Types::DifferentialPrivacyPreviewParametersInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PreviewPrivacyImpactParametersInput AWS API Documentation
    #
    class PreviewPrivacyImpactParametersInput < Struct.new(
      :differential_privacy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DifferentialPrivacy < PreviewPrivacyImpactParametersInput; end
      class Unknown < PreviewPrivacyImpactParametersInput; end
    end

    # The epsilon parameter value and number of each aggregation function
    # that you can perform.
    #
    # @note PrivacyBudget is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PrivacyBudget corresponding to the set member.
    #
    # @!attribute [rw] differential_privacy
    #   An object that specifies the epsilon parameter and the utility in
    #   terms of total aggregations, as well as the remaining aggregations
    #   available.
    #   @return [Types::DifferentialPrivacyPrivacyBudget]
    #
    # @!attribute [rw] access_budget
    #   Access budget information associated with this privacy budget.
    #   @return [Types::AccessBudget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyBudget AWS API Documentation
    #
    class PrivacyBudget < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DifferentialPrivacy < PrivacyBudget; end
      class AccessBudget < PrivacyBudget; end
      class Unknown < PrivacyBudget; end
    end

    # An array that summaries the specified privacy budget. This summary
    # includes collaboration information, creation information, membership
    # information, and privacy budget information.
    #
    # @!attribute [rw] id
    #   The unique identifier of the privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_id
    #   The unique identifier of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_arn
    #   The ARN of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the member who created the privacy
    #   budget summary.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique identifier of the collaboration that contains this
    #   privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The ARN of the collaboration that contains this privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of the privacy budget.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the privacy budget was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the privacy budget was updated.
    #   @return [Time]
    #
    # @!attribute [rw] budget
    #   The provided privacy budget.
    #   @return [Types::PrivacyBudget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyBudgetSummary AWS API Documentation
    #
    class PrivacyBudgetSummary < Struct.new(
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
      :budget)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the privacy budget template.
    #
    # @!attribute [rw] id
    #   The unique identifier of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the member who created the privacy
    #   budget template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID of the collaboration that contains this privacy budget
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The ARN of the collaboration that contains this privacy budget
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the privacy budget template was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the privacy budget template was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] privacy_budget_type
    #   Specifies the type of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] auto_refresh
    #   How often the privacy budget refreshes.
    #
    #   If you plan to regularly bring new data into the collaboration, use
    #   `CALENDAR_MONTH` to automatically get a new privacy budget for the
    #   collaboration every calendar month. Choosing this option allows
    #   arbitrary amounts of information to be revealed about rows of the
    #   data when repeatedly queried across refreshes. Avoid choosing this
    #   if the same rows will be repeatedly queried between privacy budget
    #   refreshes.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the epsilon and noise parameters for the privacy budget
    #   template.
    #   @return [Types::PrivacyBudgetTemplateParametersOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyBudgetTemplate AWS API Documentation
    #
    class PrivacyBudgetTemplate < Struct.new(
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
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The epsilon and noise parameters that you want to use for the privacy
    # budget template.
    #
    # @note PrivacyBudgetTemplateParametersInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] differential_privacy
    #   An object that specifies the epsilon and noise parameters.
    #   @return [Types::DifferentialPrivacyTemplateParametersInput]
    #
    # @!attribute [rw] access_budget
    #   Access budget configuration for the privacy budget template input,
    #   enabling integration with access budget functionality.
    #   @return [Types::AccessBudgetsPrivacyTemplateParametersInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyBudgetTemplateParametersInput AWS API Documentation
    #
    class PrivacyBudgetTemplateParametersInput < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateParametersInput; end
      class AccessBudget < PrivacyBudgetTemplateParametersInput; end
      class Unknown < PrivacyBudgetTemplateParametersInput; end
    end

    # The epsilon and noise parameters that were used in the privacy budget
    # template.
    #
    # @note PrivacyBudgetTemplateParametersOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PrivacyBudgetTemplateParametersOutput corresponding to the set member.
    #
    # @!attribute [rw] differential_privacy
    #   The epsilon and noise parameters.
    #   @return [Types::DifferentialPrivacyTemplateParametersOutput]
    #
    # @!attribute [rw] access_budget
    #   Access budget configuration returned from the privacy budget
    #   template, containing the configured access budget settings.
    #   @return [Types::AccessBudgetsPrivacyTemplateParametersOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyBudgetTemplateParametersOutput AWS API Documentation
    #
    class PrivacyBudgetTemplateParametersOutput < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateParametersOutput; end
      class AccessBudget < PrivacyBudgetTemplateParametersOutput; end
      class Unknown < PrivacyBudgetTemplateParametersOutput; end
    end

    # A summary of the privacy budget template. The summary includes
    # membership information, collaboration information, and creation
    # information.
    #
    # @!attribute [rw] id
    #   The unique identifier of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The Amazon Resource Name (ARN) of the member who created the privacy
    #   budget template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID of the collaboration that contains this privacy budget
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The ARN of the collaboration that contains this privacy budget
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_type
    #   The type of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the privacy budget template was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the privacy budget template was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyBudgetTemplateSummary AWS API Documentation
    #
    class PrivacyBudgetTemplateSummary < Struct.new(
      :id,
      :arn,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :privacy_budget_type,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The epsilon and noise parameters that you want to update in the
    # privacy budget template.
    #
    # @note PrivacyBudgetTemplateUpdateParameters is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] differential_privacy
    #   An object that specifies the new values for the epsilon and noise
    #   parameters.
    #   @return [Types::DifferentialPrivacyTemplateUpdateParameters]
    #
    # @!attribute [rw] access_budget
    #   The new access budget configuration that completely replaces the
    #   existing access budget settings in the privacy budget template.
    #   @return [Types::AccessBudgetsPrivacyTemplateUpdateParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyBudgetTemplateUpdateParameters AWS API Documentation
    #
    class PrivacyBudgetTemplateUpdateParameters < Struct.new(
      :differential_privacy,
      :access_budget,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateUpdateParameters; end
      class AccessBudget < PrivacyBudgetTemplateUpdateParameters; end
      class Unknown < PrivacyBudgetTemplateUpdateParameters; end
    end

    # Provides an estimate of the number of aggregation functions that the
    # member who can query can run given the epsilon and noise parameters.
    #
    # @note PrivacyImpact is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PrivacyImpact corresponding to the set member.
    #
    # @!attribute [rw] differential_privacy
    #   An object that lists the number and type of aggregation functions
    #   you can perform.
    #   @return [Types::DifferentialPrivacyPrivacyImpact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/PrivacyImpact AWS API Documentation
    #
    class PrivacyImpact < Struct.new(
      :differential_privacy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DifferentialPrivacy < PrivacyImpact; end
      class Unknown < PrivacyImpact; end
    end

    # The parameters for an Clean Rooms protected job.
    #
    # @!attribute [rw] id
    #   The identifier for a protected job instance.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   he identifier for the membership.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The ARN of the membership.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The creation time of the protected job.
    #   @return [Time]
    #
    # @!attribute [rw] job_parameters
    #   The job parameters for the protected job.
    #   @return [Types::ProtectedJobParameters]
    #
    # @!attribute [rw] status
    #   The status of the protected job.
    #   @return [String]
    #
    # @!attribute [rw] result_configuration
    #   Contains any details needed to write the job results.
    #   @return [Types::ProtectedJobResultConfigurationOutput]
    #
    # @!attribute [rw] statistics
    #   The statistics of the protected job.
    #   @return [Types::ProtectedJobStatistics]
    #
    # @!attribute [rw] result
    #   The result of the protected job.
    #   @return [Types::ProtectedJobResult]
    #
    # @!attribute [rw] error
    #   The error from the protected job.
    #   @return [Types::ProtectedJobError]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration for the protected job.
    #   @return [Types::ProtectedJobComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJob AWS API Documentation
    #
    class ProtectedJob < Struct.new(
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
      :compute_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the compute resources for a PySpark job.
    #
    # @note ProtectedJobComputeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProtectedJobComputeConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedJobComputeConfiguration corresponding to the set member.
    #
    # @!attribute [rw] worker
    #   The worker configuration for the compute environment.
    #   @return [Types::ProtectedJobWorkerComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobComputeConfiguration AWS API Documentation
    #
    class ProtectedJobComputeConfiguration < Struct.new(
      :worker,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Worker < ProtectedJobComputeConfiguration; end
      class Unknown < ProtectedJobComputeConfiguration; end
    end

    # The protected job configuration details.
    #
    # @note ProtectedJobConfigurationDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedJobConfigurationDetails corresponding to the set member.
    #
    # @!attribute [rw] direct_analysis_configuration_details
    #   The details needed to configure the direct analysis.
    #   @return [Types::ProtectedJobDirectAnalysisConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobConfigurationDetails AWS API Documentation
    #
    class ProtectedJobConfigurationDetails < Struct.new(
      :direct_analysis_configuration_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DirectAnalysisConfigurationDetails < ProtectedJobConfigurationDetails; end
      class Unknown < ProtectedJobConfigurationDetails; end
    end

    # The protected job direct analysis configuration details.
    #
    # @!attribute [rw] receiver_account_ids
    #   The receiver account IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobDirectAnalysisConfigurationDetails AWS API Documentation
    #
    class ProtectedJobDirectAnalysisConfigurationDetails < Struct.new(
      :receiver_account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protected job error.
    #
    # @!attribute [rw] message
    #   The message for the protected job error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code for the protected job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobError AWS API Documentation
    #
    class ProtectedJobError < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protected job member output configuration input.
    #
    # @!attribute [rw] account_id
    #   The account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobMemberOutputConfigurationInput AWS API Documentation
    #
    class ProtectedJobMemberOutputConfigurationInput < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protected job member output configuration output.
    #
    # @!attribute [rw] account_id
    #   The account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobMemberOutputConfigurationOutput AWS API Documentation
    #
    class ProtectedJobMemberOutputConfigurationOutput < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the protected job output.
    #
    # @note ProtectedJobOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedJobOutput corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   If present, the output for a protected job with an `S3` output
    #   type.
    #   @return [Types::ProtectedJobS3Output]
    #
    # @!attribute [rw] member_list
    #   The list of member Amazon Web Services account(s) that received the
    #   results of the job.
    #   @return [Array<Types::ProtectedJobSingleMemberOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobOutput AWS API Documentation
    #
    class ProtectedJobOutput < Struct.new(
      :s3,
      :member_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ProtectedJobOutput; end
      class MemberList < ProtectedJobOutput; end
      class Unknown < ProtectedJobOutput; end
    end

    # The protected job output configuration input.
    #
    # @note ProtectedJobOutputConfigurationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] member
    #   The member of the protected job output configuration input.
    #   @return [Types::ProtectedJobMemberOutputConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobOutputConfigurationInput AWS API Documentation
    #
    class ProtectedJobOutputConfigurationInput < Struct.new(
      :member,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Member < ProtectedJobOutputConfigurationInput; end
      class Unknown < ProtectedJobOutputConfigurationInput; end
    end

    # The protected job output configuration output.
    #
    # @note ProtectedJobOutputConfigurationOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedJobOutputConfigurationOutput corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   If present, the output for a protected job with an `S3` output
    #   type.
    #   @return [Types::ProtectedJobS3OutputConfigurationOutput]
    #
    # @!attribute [rw] member
    #   The member output configuration for a protected job.
    #   @return [Types::ProtectedJobMemberOutputConfigurationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobOutputConfigurationOutput AWS API Documentation
    #
    class ProtectedJobOutputConfigurationOutput < Struct.new(
      :s3,
      :member,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ProtectedJobOutputConfigurationOutput; end
      class Member < ProtectedJobOutputConfigurationOutput; end
      class Unknown < ProtectedJobOutputConfigurationOutput; end
    end

    # The parameters for the protected job.
    #
    # @!attribute [rw] analysis_template_arn
    #   The ARN of the analysis template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobParameters AWS API Documentation
    #
    class ProtectedJobParameters < Struct.new(
      :analysis_template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protected job receiver configuration.
    #
    # @!attribute [rw] analysis_type
    #   The analysis type for the protected job receiver configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration_details
    #   The configuration details for the protected job receiver.
    #   @return [Types::ProtectedJobConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobReceiverConfiguration AWS API Documentation
    #
    class ProtectedJobReceiverConfiguration < Struct.new(
      :analysis_type,
      :configuration_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the job results.
    #
    # @!attribute [rw] output
    #   The output of the protected job.
    #   @return [Types::ProtectedJobOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobResult AWS API Documentation
    #
    class ProtectedJobResult < Struct.new(
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protected job result configuration input.
    #
    # @!attribute [rw] output_configuration
    #   The output configuration for a protected job result.
    #   @return [Types::ProtectedJobOutputConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobResultConfigurationInput AWS API Documentation
    #
    class ProtectedJobResultConfigurationInput < Struct.new(
      :output_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration for a protected job result.
    #
    # @!attribute [rw] output_configuration
    #   The output configuration.
    #   @return [Types::ProtectedJobOutputConfigurationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobResultConfigurationOutput AWS API Documentation
    #
    class ProtectedJobResultConfigurationOutput < Struct.new(
      :output_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains output information for protected jobs with an S3 output type.
    #
    # @!attribute [rw] location
    #   The S3 location for the protected job output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobS3Output AWS API Documentation
    #
    class ProtectedJobS3Output < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains input information for protected jobs with an S3 output type.
    #
    # @!attribute [rw] bucket
    #   The S3 bucket for job output.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   The S3 prefix to unload the protected job results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobS3OutputConfigurationInput AWS API Documentation
    #
    class ProtectedJobS3OutputConfigurationInput < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration for a protected job's S3 output.
    #
    # @!attribute [rw] bucket
    #   The S3 bucket for job output.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   The S3 prefix to unload the protected job results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobS3OutputConfigurationOutput AWS API Documentation
    #
    class ProtectedJobS3OutputConfigurationOutput < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the member who received the job result.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member in the
    #   collaboration who can receive results from analyses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobSingleMemberOutput AWS API Documentation
    #
    class ProtectedJobSingleMemberOutput < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains statistics about the execution of the protected job.
    #
    # @!attribute [rw] total_duration_in_millis
    #   The duration of the protected job, from creation until job
    #   completion, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] billed_resource_utilization
    #   The billed resource utilization for the protected job.
    #   @return [Types::BilledJobResourceUtilization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobStatistics AWS API Documentation
    #
    class ProtectedJobStatistics < Struct.new(
      :total_duration_in_millis,
      :billed_resource_utilization)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protected job summary for the objects listed by the request.
    #
    # @!attribute [rw] id
    #   The ID of the protected job.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique ID for the membership that initiated the protected job.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The unique ARN for the membership that initiated the protected job.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the protected job was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the protected job.
    #   @return [String]
    #
    # @!attribute [rw] receiver_configurations
    #   The receiver configurations for the protected job.
    #   @return [Array<Types::ProtectedJobReceiverConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobSummary AWS API Documentation
    #
    class ProtectedJobSummary < Struct.new(
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :status,
      :receiver_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the compute resources for a PySpark job.
    #
    # @!attribute [rw] type
    #   The worker compute configuration type.
    #   @return [String]
    #
    # @!attribute [rw] number
    #   The number of workers for a PySpark job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedJobWorkerComputeConfiguration AWS API Documentation
    #
    class ProtectedJobWorkerComputeConfiguration < Struct.new(
      :type,
      :number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for an Clean Rooms protected query.
    #
    # @!attribute [rw] id
    #   The identifier for a protected query instance.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The identifier for the membership.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The ARN of the membership.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the protected query was created.
    #   @return [Time]
    #
    # @!attribute [rw] sql_parameters
    #   The protected query SQL parameters.
    #   @return [Types::ProtectedQuerySQLParameters]
    #
    # @!attribute [rw] status
    #   The status of the query.
    #   @return [String]
    #
    # @!attribute [rw] result_configuration
    #   Contains any details needed to write the query results.
    #   @return [Types::ProtectedQueryResultConfiguration]
    #
    # @!attribute [rw] statistics
    #   Statistics about protected query execution.
    #   @return [Types::ProtectedQueryStatistics]
    #
    # @!attribute [rw] result
    #   The result of the protected query.
    #   @return [Types::ProtectedQueryResult]
    #
    # @!attribute [rw] error
    #   An error thrown by the protected query.
    #   @return [Types::ProtectedQueryError]
    #
    # @!attribute [rw] differential_privacy
    #   The sensitivity parameters of the differential privacy results of
    #   the protected query.
    #   @return [Types::DifferentialPrivacyParameters]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration for the protected query.
    #   @return [Types::ComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQuery AWS API Documentation
    #
    class ProtectedQuery < Struct.new(
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
      :compute_configuration)
      SENSITIVE = [:sql_parameters]
      include Aws::Structure
    end

    # Contains the output information for a protected query with a
    # distribute output configuration.
    #
    # This output type allows query results to be distributed to multiple
    # receivers, including S3 and collaboration members. It is only
    # available for queries using the Spark analytics engine.
    #
    # @!attribute [rw] s3
    #   Contains output information for protected queries with an S3 output
    #   type.
    #   @return [Types::ProtectedQueryS3Output]
    #
    # @!attribute [rw] member_list
    #   Contains the output results for each member location specified in
    #   the distribute output configuration. Each entry provides details
    #   about the result distribution to a specific collaboration member.
    #   @return [Array<Types::ProtectedQuerySingleMemberOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryDistributeOutput AWS API Documentation
    #
    class ProtectedQueryDistributeOutput < Struct.new(
      :s3,
      :member_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for distributing protected query results
    # to multiple receivers, including S3 and collaboration members.
    #
    # @!attribute [rw] locations
    #   A list of locations where you want to distribute the protected query
    #   results. Each location must specify either an S3 destination or a
    #   collaboration member destination.
    #
    #   You can't specify more than one S3 location.
    #
    #    You can't specify the query runner's account as a member
    #   location.
    #
    #    You must include either an S3 or member output configuration for
    #   each location, but not both.
    #   @return [Array<Types::ProtectedQueryDistributeOutputConfigurationLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryDistributeOutputConfiguration AWS API Documentation
    #
    class ProtectedQueryDistributeOutputConfiguration < Struct.new(
      :locations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies where you'll distribute the results of your protected
    # query. You must configure either an S3 destination or a collaboration
    # member destination.
    #
    # @note ProtectedQueryDistributeOutputConfigurationLocation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProtectedQueryDistributeOutputConfigurationLocation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedQueryDistributeOutputConfigurationLocation corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Contains the configuration to write the query results to S3.
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    #
    # @!attribute [rw] member
    #   Contains configuration details for the protected query member
    #   output.
    #   @return [Types::ProtectedQueryMemberOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryDistributeOutputConfigurationLocation AWS API Documentation
    #
    class ProtectedQueryDistributeOutputConfigurationLocation < Struct.new(
      :s3,
      :member,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ProtectedQueryDistributeOutputConfigurationLocation; end
      class Member < ProtectedQueryDistributeOutputConfigurationLocation; end
      class Unknown < ProtectedQueryDistributeOutputConfigurationLocation; end
    end

    # Details of errors thrown by the protected query.
    #
    # @!attribute [rw] message
    #   A description of why the query failed.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   An error code for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryError AWS API Documentation
    #
    class ProtectedQueryError < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration details for the protected query member output.
    #
    # @!attribute [rw] account_id
    #   The unique identifier for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryMemberOutputConfiguration AWS API Documentation
    #
    class ProtectedQueryMemberOutputConfiguration < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the protected query output.
    #
    # @note ProtectedQueryOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedQueryOutput corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   If present, the output for a protected query with an `S3` output
    #   type.
    #   @return [Types::ProtectedQueryS3Output]
    #
    # @!attribute [rw] member_list
    #   The list of member Amazon Web Services account(s) that received the
    #   results of the query.
    #   @return [Array<Types::ProtectedQuerySingleMemberOutput>]
    #
    # @!attribute [rw] distribute
    #   Contains output information for protected queries that use a
    #   `distribute` output type. This output type lets you send query
    #   results to multiple locations - either to S3 or to collaboration
    #   members.
    #
    #   <note markdown="1"> You can only use the `distribute` output type with the Spark
    #   analytics engine.
    #
    #    </note>
    #   @return [Types::ProtectedQueryDistributeOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryOutput AWS API Documentation
    #
    class ProtectedQueryOutput < Struct.new(
      :s3,
      :member_list,
      :distribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ProtectedQueryOutput; end
      class MemberList < ProtectedQueryOutput; end
      class Distribute < ProtectedQueryOutput; end
      class Unknown < ProtectedQueryOutput; end
    end

    # Contains configuration details for protected query output.
    #
    # @note ProtectedQueryOutputConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProtectedQueryOutputConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedQueryOutputConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Required configuration for a protected query with an `s3` output
    #   type.
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    #
    # @!attribute [rw] member
    #   Required configuration for a protected query with a `member` output
    #   type.
    #   @return [Types::ProtectedQueryMemberOutputConfiguration]
    #
    # @!attribute [rw] distribute
    #   Required configuration for a protected query with a `distribute`
    #   output type.
    #   @return [Types::ProtectedQueryDistributeOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryOutputConfiguration AWS API Documentation
    #
    class ProtectedQueryOutputConfiguration < Struct.new(
      :s3,
      :member,
      :distribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ProtectedQueryOutputConfiguration; end
      class Member < ProtectedQueryOutputConfiguration; end
      class Distribute < ProtectedQueryOutputConfiguration; end
      class Unknown < ProtectedQueryOutputConfiguration; end
    end

    # Details about the query results.
    #
    # @!attribute [rw] output
    #   The output of the protected query.
    #   @return [Types::ProtectedQueryOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryResult AWS API Documentation
    #
    class ProtectedQueryResult < Struct.new(
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for protected query results.
    #
    # @!attribute [rw] output_configuration
    #   Configuration for protected query results.
    #   @return [Types::ProtectedQueryOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryResultConfiguration AWS API Documentation
    #
    class ProtectedQueryResultConfiguration < Struct.new(
      :output_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains output information for protected queries with an S3 output
    # type.
    #
    # @!attribute [rw] location
    #   The S3 location of the result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryS3Output AWS API Documentation
    #
    class ProtectedQueryS3Output < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration to write the query results to S3.
    #
    # @!attribute [rw] result_format
    #   Intended file format of the result.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The S3 bucket to unload the protected query results.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   The S3 prefix to unload the protected query results.
    #   @return [String]
    #
    # @!attribute [rw] single_file_output
    #   Indicates whether files should be output as a single file (`TRUE`)
    #   or output as multiple files (`FALSE`). This parameter is only
    #   supported for analyses with the Spark analytics engine.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryS3OutputConfiguration AWS API Documentation
    #
    class ProtectedQueryS3OutputConfiguration < Struct.new(
      :result_format,
      :bucket,
      :key_prefix,
      :single_file_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for the SQL type Protected Query.
    #
    # @!attribute [rw] query_string
    #   The query string to be submitted.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_arn
    #   The Amazon Resource Name (ARN) associated with the analysis template
    #   within a collaboration.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The protected query SQL parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQuerySQLParameters AWS API Documentation
    #
    class ProtectedQuerySQLParameters < Struct.new(
      :query_string,
      :analysis_template_arn,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the member who received the query result.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member in the
    #   collaboration who can receive results for the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQuerySingleMemberOutput AWS API Documentation
    #
    class ProtectedQuerySingleMemberOutput < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains statistics about the execution of the protected query.
    #
    # @!attribute [rw] total_duration_in_millis
    #   The duration of the protected query, from creation until query
    #   completion, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] billed_resource_utilization
    #   The billed resource utilization.
    #   @return [Types::BilledResourceUtilization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryStatistics AWS API Documentation
    #
    class ProtectedQueryStatistics < Struct.new(
      :total_duration_in_millis,
      :billed_resource_utilization)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protected query summary for the objects listed by the request.
    #
    # @!attribute [rw] id
    #   The unique ID of the protected query.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique ID for the membership that initiated the protected query.
    #   @return [String]
    #
    # @!attribute [rw] membership_arn
    #   The unique ARN for the membership that initiated the protected
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the protected query was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the protected query.
    #   @return [String]
    #
    # @!attribute [rw] receiver_configurations
    #   The receiver configuration.
    #   @return [Array<Types::ReceiverConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQuerySummary AWS API Documentation
    #
    class ProtectedQuerySummary < Struct.new(
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :status,
      :receiver_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the collaboration member's payment
    # responsibilities set by the collaboration creator for query compute
    # costs.
    #
    # @!attribute [rw] is_responsible
    #   Indicates whether the collaboration creator has configured the
    #   collaboration member to pay for query compute costs (`TRUE`) or has
    #   not configured the collaboration member to pay for query compute
    #   costs (`FALSE`).
    #
    #   Exactly one member can be configured to pay for query compute costs.
    #   An error is returned if the collaboration creator sets a `TRUE`
    #   value for more than one member in the collaboration.
    #
    #   If the collaboration creator hasn't specified anyone as the member
    #   paying for query compute costs, then the member who can query is the
    #   default payer. An error is returned if the collaboration creator
    #   sets a `FALSE` value for the member who can query.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/QueryComputePaymentConfig AWS API Documentation
    #
    class QueryComputePaymentConfig < Struct.new(
      :is_responsible)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides any necessary query constraint information.
    #
    # @note QueryConstraint is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of QueryConstraint corresponding to the set member.
    #
    # @!attribute [rw] require_overlap
    #   An array of column names that specifies which columns are required
    #   in the JOIN statement.
    #   @return [Types::QueryConstraintRequireOverlap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/QueryConstraint AWS API Documentation
    #
    class QueryConstraint < Struct.new(
      :require_overlap,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RequireOverlap < QueryConstraint; end
      class Unknown < QueryConstraint; end
    end

    # Provides the name of the columns that are required to overlap.
    #
    # @!attribute [rw] columns
    #   The columns that are required to overlap.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/QueryConstraintRequireOverlap AWS API Documentation
    #
    class QueryConstraintRequireOverlap < Struct.new(
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The receiver configuration for a protected query.
    #
    # @!attribute [rw] analysis_type
    #   The type of analysis for the protected query. The results of the
    #   query can be analyzed directly (`DIRECT_ANALYSIS`) or used as input
    #   into additional analyses (`ADDITIONAL_ANALYSIS`), such as a query
    #   that is a seed for a lookalike ML model.
    #   @return [String]
    #
    # @!attribute [rw] configuration_details
    #   The configuration details of the receiver configuration.
    #   @return [Types::ConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ReceiverConfiguration AWS API Documentation
    #
    class ReceiverConfiguration < Struct.new(
      :analysis_type,
      :configuration_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Id of the missing resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the missing resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location.
    #
    # @!attribute [rw] bucket
    #   The bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The object key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A schema is a relation within a collaboration.
    #
    # @!attribute [rw] columns
    #   The columns for the relation that this schema represents.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] partition_keys
    #   The partition keys for the dataset underlying this schema.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] analysis_rule_types
    #   The analysis rule types that are associated with the schema.
    #   Currently, only one entry is present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the schema.
    #
    #   `DIRECT_QUERY` allows SQL queries to be run directly on this table.
    #
    #   `DIRECT_JOB` allows PySpark jobs to be run directly on this table.
    #
    #   `MULTIPLE` allows both SQL queries and PySpark jobs to be run
    #   directly on this table.
    #   @return [String]
    #
    # @!attribute [rw] selected_analysis_methods
    #   The selected analysis methods for the schema.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creator_account_id
    #   The unique account ID for the Amazon Web Services account that owns
    #   the schema.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the schema. The schema relation is referred to by this
    #   name when queried by a protected query.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID for the collaboration that the schema belongs to.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique Amazon Resource Name (ARN) for the collaboration that the
    #   schema belongs to.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the schema.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the schema was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the schema was updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_status_details
    #   Details about the status of the schema. Currently, only one entry is
    #   present.
    #   @return [Array<Types::SchemaStatusDetail>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the schema resource.
    #   @return [String]
    #
    # @!attribute [rw] schema_type_properties
    #   The schema type properties.
    #   @return [Types::SchemaTypeProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/Schema AWS API Documentation
    #
    class Schema < Struct.new(
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
      :schema_type_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the information that's necessary to retrieve an analysis rule
    # schema. Schema analysis rules are uniquely identiﬁed by a combination
    # of the schema name and the analysis rule type for a given
    # collaboration.
    #
    # @!attribute [rw] name
    #   The name of the analysis rule schema that you are requesting.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of analysis rule schema that you are requesting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SchemaAnalysisRuleRequest AWS API Documentation
    #
    class SchemaAnalysisRuleRequest < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the schema status.
    #
    # A status of `READY` means that based on the schema analysis rule,
    # queries of the given analysis rule type are properly configured to run
    # queries on this schema.
    #
    # @!attribute [rw] status
    #   The status of the schema, indicating if it is ready to query.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reasons why the schema status is set to its current state.
    #   @return [Array<Types::SchemaStatusReason>]
    #
    # @!attribute [rw] analysis_rule_type
    #   The analysis rule type for which the schema status has been
    #   evaluated.
    #   @return [String]
    #
    # @!attribute [rw] configurations
    #   The configuration details of the schema analysis rule for the given
    #   type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_type
    #   The type of analysis that can be performed on the schema.
    #
    #   A schema can have an `analysisType` of `DIRECT_ANALYSIS`,
    #   `ADDITIONAL_ANALYSIS_FOR_AUDIENCE_GENERATION`, or both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SchemaStatusDetail AWS API Documentation
    #
    class SchemaStatusDetail < Struct.new(
      :status,
      :reasons,
      :analysis_rule_type,
      :configurations,
      :analysis_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reason why the schema status is set to its current value.
    #
    # @!attribute [rw] code
    #   The schema status reason code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of the schema status reason code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SchemaStatusReason AWS API Documentation
    #
    class SchemaStatusReason < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schema summary for the objects listed by the request.
    #
    # @!attribute [rw] name
    #   The name for the schema object.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of schema object.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The unique account ID for the Amazon Web Services account that owns
    #   the schema.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the schema object was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the schema object was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID for the collaboration that the schema belongs to.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_arn
    #   The unique ARN for the collaboration that the schema belongs to.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_types
    #   The types of analysis rules that are associated with this schema
    #   object.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the associated schema.
    #
    #   `DIRECT_QUERY` allows SQL queries to be run directly on this table.
    #
    #   `DIRECT_JOB` allows PySpark jobs to be run directly on this table.
    #
    #   `MULTIPLE` allows both SQL queries and PySpark jobs to be run
    #   directly on this table.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the schema summary resource.
    #   @return [String]
    #
    # @!attribute [rw] selected_analysis_methods
    #   The selected analysis methods for the schema.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SchemaSummary AWS API Documentation
    #
    class SchemaSummary < Struct.new(
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
      :selected_analysis_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the schema type properties.
    #
    # @note SchemaTypeProperties is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SchemaTypeProperties corresponding to the set member.
    #
    # @!attribute [rw] id_mapping_table
    #   The ID mapping table for the schema type properties.
    #   @return [Types::IdMappingTableSchemaTypeProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SchemaTypeProperties AWS API Documentation
    #
    class SchemaTypeProperties < Struct.new(
      :id_mapping_table,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdMappingTable < SchemaTypeProperties; end
      class Unknown < SchemaTypeProperties; end
    end

    # Request denied because service quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The name of the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_value
    #   The value of the quota.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_name,
      :quota_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a table within Snowflake.
    #
    # @!attribute [rw] secret_arn
    #   The secret ARN of the Snowflake table reference.
    #   @return [String]
    #
    # @!attribute [rw] account_identifier
    #   The account identifier for the Snowflake table reference.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database the Snowflake table belongs to.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Snowflake table.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The schema name of the Snowflake table reference.
    #   @return [String]
    #
    # @!attribute [rw] table_schema
    #   The schema of the Snowflake table.
    #   @return [Types::SnowflakeTableSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SnowflakeTableReference AWS API Documentation
    #
    class SnowflakeTableReference < Struct.new(
      :secret_arn,
      :account_identifier,
      :database_name,
      :table_name,
      :schema_name,
      :table_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schema of a Snowflake table.
    #
    # @note SnowflakeTableSchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SnowflakeTableSchema is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SnowflakeTableSchema corresponding to the set member.
    #
    # @!attribute [rw] v1
    #   The schema of a Snowflake table.
    #   @return [Array<Types::SnowflakeTableSchemaV1>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SnowflakeTableSchema AWS API Documentation
    #
    class SnowflakeTableSchema < Struct.new(
      :v1,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class V1 < SnowflakeTableSchema; end
      class Unknown < SnowflakeTableSchema; end
    end

    # The Snowflake table schema.
    #
    # @!attribute [rw] column_name
    #   The column name.
    #   @return [String]
    #
    # @!attribute [rw] column_type
    #   The column's data type. Supported data types: `ARRAY`, `BIGINT`,
    #   `BOOLEAN`, `CHAR`, `DATE`, `DECIMAL`, `DOUBLE`, `DOUBLE PRECISION`,
    #   `FLOAT`, `FLOAT4`, `INT`, `INTEGER`, `MAP`, `NUMERIC`, `NUMBER`,
    #   `REAL`, `SMALLINT`, `STRING`, `TIMESTAMP`, `TIMESTAMP_LTZ`,
    #   `TIMESTAMP_NTZ`, `DATETIME`, `TINYINT`, `VARCHAR`, `TEXT`,
    #   `CHARACTER`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/SnowflakeTableSchemaV1 AWS API Documentation
    #
    class SnowflakeTableSchemaV1 < Struct.new(
      :column_name,
      :column_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The type of protected job to start.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership to run this job against.
    #   Currently accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] job_parameters
    #   The job parameters.
    #   @return [Types::ProtectedJobParameters]
    #
    # @!attribute [rw] result_configuration
    #   The details needed to write the job results.
    #   @return [Types::ProtectedJobResultConfigurationInput]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration for the protected job.
    #   @return [Types::ProtectedJobComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/StartProtectedJobInput AWS API Documentation
    #
    class StartProtectedJobInput < Struct.new(
      :type,
      :membership_identifier,
      :job_parameters,
      :result_configuration,
      :compute_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protected_job
    #   The protected job.
    #   @return [Types::ProtectedJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/StartProtectedJobOutput AWS API Documentation
    #
    class StartProtectedJobOutput < Struct.new(
      :protected_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The type of the protected query to be started.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership to run this query against.
    #   Currently accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] sql_parameters
    #   The protected SQL query parameters.
    #   @return [Types::ProtectedQuerySQLParameters]
    #
    # @!attribute [rw] result_configuration
    #   The details needed to write the query results.
    #   @return [Types::ProtectedQueryResultConfiguration]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration for the protected query.
    #   @return [Types::ComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/StartProtectedQueryInput AWS API Documentation
    #
    class StartProtectedQueryInput < Struct.new(
      :type,
      :membership_identifier,
      :sql_parameters,
      :result_configuration,
      :compute_configuration)
      SENSITIVE = [:sql_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] protected_query
    #   The protected query.
    #   @return [Types::ProtectedQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/StartProtectedQueryOutput AWS API Documentation
    #
    class StartProtectedQueryOutput < Struct.new(
      :protected_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pointer to the dataset that underlies this table.
    #
    # @note TableReference is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TableReference is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TableReference corresponding to the set member.
    #
    # @!attribute [rw] glue
    #   If present, a reference to the Glue table referred to by this table
    #   reference.
    #   @return [Types::GlueTableReference]
    #
    # @!attribute [rw] snowflake
    #   If present, a reference to the Snowflake table referred to by this
    #   table reference.
    #   @return [Types::SnowflakeTableReference]
    #
    # @!attribute [rw] athena
    #   If present, a reference to the Athena table referred to by this
    #   table reference.
    #   @return [Types::AthenaTableReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/TableReference AWS API Documentation
    #
    class TableReference < Struct.new(
      :glue,
      :snowflake,
      :athena,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Glue < TableReference; end
      class Snowflake < TableReference; end
      class Athena < TableReference; end
      class Unknown < TableReference; end
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of objects specifying each key name and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names of tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] membership_identifier
    #   The identifier for a membership resource.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_identifier
    #   The identifier for the analysis template resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the analysis template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateAnalysisTemplateInput AWS API Documentation
    #
    class UpdateAnalysisTemplateInput < Struct.new(
      :membership_identifier,
      :analysis_template_identifier,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_template
    #   The analysis template.
    #   @return [Types::AnalysisTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateAnalysisTemplateOutput AWS API Documentation
    #
    class UpdateAnalysisTemplateOutput < Struct.new(
      :analysis_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration_identifier
    #   The identifier for the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A human-readable identifier provided by the collaboration owner.
    #   Display names are not unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] analytics_engine
    #   The analytics engine.
    #
    #   <note markdown="1"> After July 16, 2025, the `CLEAN_ROOMS_SQL` parameter will no longer
    #   be available.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateCollaborationInput AWS API Documentation
    #
    class UpdateCollaborationInput < Struct.new(
      :collaboration_identifier,
      :name,
      :description,
      :analytics_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration
    #   The entire collaboration that has been updated.
    #   @return [Types::Collaboration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateCollaborationOutput AWS API Documentation
    #
    class UpdateCollaborationOutput < Struct.new(
      :collaboration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_association_identifier
    #   A unique identifier for the configured audience model association
    #   that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   A unique identifier of the membership that contains the configured
    #   audience model association that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the configured audience model association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the configured audience model association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredAudienceModelAssociationInput AWS API Documentation
    #
    class UpdateConfiguredAudienceModelAssociationInput < Struct.new(
      :configured_audience_model_association_identifier,
      :membership_identifier,
      :description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_association
    #   Details about the configured audience model association that you
    #   updated.
    #   @return [Types::ConfiguredAudienceModelAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredAudienceModelAssociationOutput AWS API Documentation
    #
    class UpdateConfiguredAudienceModelAssociationOutput < Struct.new(
      :configured_audience_model_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_identifier
    #   The unique identifier for the configured table that the analysis
    #   rule applies to. Currently accepts the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The analysis rule type to be updated. Configured table analysis
    #   rules are uniquely identified by their configured table identifier
    #   and analysis rule type.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_policy
    #   The new analysis rule policy for the configured table analysis rule.
    #   @return [Types::ConfiguredTableAnalysisRulePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAnalysisRuleInput AWS API Documentation
    #
    class UpdateConfiguredTableAnalysisRuleInput < Struct.new(
      :configured_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rule
    #   The entire updated analysis rule.
    #   @return [Types::ConfiguredTableAnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAnalysisRuleOutput AWS API Documentation
    #
    class UpdateConfiguredTableAnalysisRuleOutput < Struct.new(
      :analysis_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for the membership that the configured table
    #   association belongs to. Currently accepts the membership ID.
    #   @return [String]
    #
    # @!attribute [rw] configured_table_association_identifier
    #   The identifier for the configured table association to update.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The analysis rule type that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_policy
    #   The updated analysis rule policy for the conﬁgured table
    #   association.
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAssociationAnalysisRuleInput AWS API Documentation
    #
    class UpdateConfiguredTableAssociationAnalysisRuleInput < Struct.new(
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      :analysis_rule_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_rule
    #   The updated analysis rule for the conﬁgured table association. In
    #   the console, the `ConfiguredTableAssociationAnalysisRule` is
    #   referred to as the *collaboration analysis rule*.
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAssociationAnalysisRuleOutput AWS API Documentation
    #
    class UpdateConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      :analysis_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_association_identifier
    #   The unique identifier for the configured table association to
    #   update. Currently accepts the configured table association ID.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique ID for the membership that the configured table
    #   association belongs to.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the configured table association.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The service will assume this role to access catalog metadata and
    #   query the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAssociationInput AWS API Documentation
    #
    class UpdateConfiguredTableAssociationInput < Struct.new(
      :configured_table_association_identifier,
      :membership_identifier,
      :description,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_association
    #   The entire updated configured table association.
    #   @return [Types::ConfiguredTableAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableAssociationOutput AWS API Documentation
    #
    class UpdateConfiguredTableAssociationOutput < Struct.new(
      :configured_table_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_identifier
    #   The identifier for the configured table to update. Currently accepts
    #   the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the configured table.
    #   @return [String]
    #
    # @!attribute [rw] table_reference
    #   A pointer to the dataset that underlies this table.
    #   @return [Types::TableReference]
    #
    # @!attribute [rw] allowed_columns
    #   The columns of the underlying table that can be used by
    #   collaborations or analysis rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the configured table.
    #
    #   `DIRECT_QUERY` allows SQL queries to be run directly on this table.
    #
    #   `DIRECT_JOB` allows PySpark jobs to be run directly on this table.
    #
    #   `MULTIPLE` allows both SQL queries and PySpark jobs to be run
    #   directly on this table.
    #   @return [String]
    #
    # @!attribute [rw] selected_analysis_methods
    #   The selected analysis methods for the table configuration update.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableInput AWS API Documentation
    #
    class UpdateConfiguredTableInput < Struct.new(
      :configured_table_identifier,
      :name,
      :description,
      :table_reference,
      :allowed_columns,
      :analysis_method,
      :selected_analysis_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table
    #   The updated configured table.
    #   @return [Types::ConfiguredTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableOutput AWS API Documentation
    #
    class UpdateConfiguredTableOutput < Struct.new(
      :configured_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_table_identifier
    #   The unique identifier of the ID mapping table that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID mapping
    #   table that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the ID mapping table.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateIdMappingTableInput AWS API Documentation
    #
    class UpdateIdMappingTableInput < Struct.new(
      :id_mapping_table_identifier,
      :membership_identifier,
      :description,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_mapping_table
    #   The updated ID mapping table.
    #   @return [Types::IdMappingTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateIdMappingTableOutput AWS API Documentation
    #
    class UpdateIdMappingTableOutput < Struct.new(
      :id_mapping_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_association_identifier
    #   The unique identifier of the ID namespace association that you want
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership that contains the ID
    #   namespace association that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the ID namespace association.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_config
    #   The configuration settings for the ID mapping table.
    #   @return [Types::IdMappingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateIdNamespaceAssociationInput AWS API Documentation
    #
    class UpdateIdNamespaceAssociationInput < Struct.new(
      :id_namespace_association_identifier,
      :membership_identifier,
      :name,
      :description,
      :id_mapping_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_association
    #   The updated ID namespace association.
    #   @return [Types::IdNamespaceAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateIdNamespaceAssociationOutput AWS API Documentation
    #
    class UpdateIdNamespaceAssociationOutput < Struct.new(
      :id_namespace_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership.
    #   @return [String]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the membership.
    #
    #   When `ENABLED`, Clean Rooms logs details about queries run within
    #   this collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] job_log_status
    #   An indicator as to whether job logging has been enabled or disabled
    #   for the collaboration.
    #
    #   When `ENABLED`, Clean Rooms logs details about jobs run within this
    #   collaboration and those logs can be viewed in Amazon CloudWatch
    #   Logs. The default value is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] default_result_configuration
    #   The default protected query result configuration as specified by the
    #   member who can receive results.
    #   @return [Types::MembershipProtectedQueryResultConfiguration]
    #
    # @!attribute [rw] default_job_result_configuration
    #   The default job result configuration.
    #   @return [Types::MembershipProtectedJobResultConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateMembershipInput AWS API Documentation
    #
    class UpdateMembershipInput < Struct.new(
      :membership_identifier,
      :query_log_status,
      :job_log_status,
      :default_result_configuration,
      :default_job_result_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership
    #   The membership object.
    #   @return [Types::Membership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateMembershipOutput AWS API Documentation
    #
    class UpdateMembershipOutput < Struct.new(
      :membership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   A unique identifier for one of your memberships for a collaboration.
    #   The privacy budget template is updated in the collaboration that
    #   this membership belongs to. Accepts a membership ID.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_template_identifier
    #   A unique identifier for your privacy budget template that you want
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] privacy_budget_type
    #   Specifies the type of the privacy budget template.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the epsilon and noise parameters for the privacy budget
    #   template.
    #   @return [Types::PrivacyBudgetTemplateUpdateParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdatePrivacyBudgetTemplateInput AWS API Documentation
    #
    class UpdatePrivacyBudgetTemplateInput < Struct.new(
      :membership_identifier,
      :privacy_budget_template_identifier,
      :privacy_budget_type,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] privacy_budget_template
    #   Summary of the privacy budget template.
    #   @return [Types::PrivacyBudgetTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdatePrivacyBudgetTemplateOutput AWS API Documentation
    #
    class UpdatePrivacyBudgetTemplateOutput < Struct.new(
      :privacy_budget_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a member of a protected job instance.
    #   @return [String]
    #
    # @!attribute [rw] protected_job_identifier
    #   The identifier of the protected job to update.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The target status of a protected job. Used to update the execution
    #   status of a currently running job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateProtectedJobInput AWS API Documentation
    #
    class UpdateProtectedJobInput < Struct.new(
      :membership_identifier,
      :protected_job_identifier,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protected_job
    #   The protected job output.
    #   @return [Types::ProtectedJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateProtectedJobOutput AWS API Documentation
    #
    class UpdateProtectedJobOutput < Struct.new(
      :protected_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The identifier for a member of a protected query instance.
    #   @return [String]
    #
    # @!attribute [rw] protected_query_identifier
    #   The identifier for a protected query instance.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The target status of a query. Used to update the execution status of
    #   a currently running query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateProtectedQueryInput AWS API Documentation
    #
    class UpdateProtectedQueryInput < Struct.new(
      :membership_identifier,
      :protected_query_identifier,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protected_query
    #   The protected query output.
    #   @return [Types::ProtectedQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateProtectedQueryOutput AWS API Documentation
    #
    class UpdateProtectedQueryOutput < Struct.new(
      :protected_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the specified constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A reason code for the exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   Validation errors for specific input parameters.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes validation errors for specific input parameters.
    #
    # @!attribute [rw] name
    #   The name of the input parameter.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message for the input validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the compute resources for workers running an
    # analysis with the Clean Rooms SQL analytics engine.
    #
    # @!attribute [rw] type
    #   The worker compute configuration type.
    #   @return [String]
    #
    # @!attribute [rw] number
    #   The number of workers.
    #
    #   SQL queries support a minimum value of 2 and a maximum value of 400.
    #
    #   PySpark jobs support a minimum value of 4 and a maximum value of
    #   128.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/WorkerComputeConfiguration AWS API Documentation
    #
    class WorkerComputeConfiguration < Struct.new(
      :type,
      :number)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


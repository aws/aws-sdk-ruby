# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CleanRooms
  module Types

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

    # A specification about how data from the configured table can be used
    # in a query.
    #
    # @!attribute [rw] collaboration_id
    #   The unique ID for the associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of analysis rule. Valid values are `AGGREGATION` and
    #   `LIST`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRule AWS API Documentation
    #
    class AnalysisRule < Struct.new(
      :collaboration_id,
      :type,
      :name,
      :create_time,
      :update_time,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enables query structure and specified queries that produce aggregate
    # statistics.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRuleAggregation AWS API Documentation
    #
    class AnalysisRuleAggregation < Struct.new(
      :aggregate_columns,
      :join_columns,
      :join_required,
      :allowed_join_operators,
      :dimension_columns,
      :scalar_functions,
      :output_constraints)
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
    #   Which logical operators (if any) are to be used in an INNER JOIN
    #   match condition. Default is `AND`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_columns
    #   Columns that can be listed in the output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRuleList AWS API Documentation
    #
    class AnalysisRuleList < Struct.new(
      :join_columns,
      :allowed_join_operators,
      :list_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls on the query specifications that can be run on configured
    # table..
    #
    # @note AnalysisRulePolicy is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AnalysisRulePolicy corresponding to the set member.
    #
    # @!attribute [rw] v1
    #   Controls on the query specifications that can be run on configured
    #   table..
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
    # table..
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/AnalysisRulePolicyV1 AWS API Documentation
    #
    class AnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class List < AnalysisRulePolicyV1; end
      class Aggregation < AnalysisRulePolicyV1; end
      class Unknown < AnalysisRulePolicyV1; end
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
    #   The names for the schema objects to retrieve.&gt;
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
    #   @return [String]
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
      :query_log_status)
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
      :membership_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A column within a schema relation, derived from the underlying Glue
    # table.
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
    #   The Glue table that this configured table represents.
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
    #   Valid values are `AGGREGATION` and `LIST`. Currently, only one
    #   analysis rule may be associated with a configured table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the configured table. The only valid value
    #   is currently `DIRECT\_QUERY`.
    #   @return [String]
    #
    # @!attribute [rw] allowed_columns
    #   The columns within the underlying Glue table that can be utilized
    #   within collaborations.
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
      :allowed_columns)
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
    #   The type of configured table analysis rule. Valid values are
    #   `AGGREGATION` and `LIST`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ConfiguredTableAnalysisRulePolicyV1 AWS API Documentation
    #
    class ConfiguredTableAnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class List < ConfiguredTableAnalysisRulePolicyV1; end
      class Aggregation < ConfiguredTableAnalysisRulePolicyV1; end
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
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
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
      :arn)
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
    #   The analysis method for the configured tables. The only valid value
    #   is currently `DIRECT\_QUERY`.
    #   @return [String]
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
      :analysis_method)
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
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateCollaborationInput AWS API Documentation
    #
    class CreateCollaborationInput < Struct.new(
      :members,
      :name,
      :description,
      :creator_member_abilities,
      :creator_display_name,
      :data_encryption_metadata,
      :query_log_status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collaboration
    #   The entire created collaboration object.
    #   @return [Types::Collaboration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateCollaborationOutput AWS API Documentation
    #
    class CreateCollaborationOutput < Struct.new(
      :collaboration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_table_identifier
    #   The identifier for the configured table to create the analysis rule
    #   for. Currently accepts the configured table ID.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_type
    #   The type of analysis rule. Valid values are AGGREGATION and LIST.
    #   @return [String]
    #
    # @!attribute [rw] analysis_rule_policy
    #   The entire created configured table analysis rule object.
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
    #   The entire created analysis rule.
    #   @return [Types::ConfiguredTableAnalysisRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateConfiguredTableAnalysisRuleOutput AWS API Documentation
    #
    class CreateConfiguredTableAnalysisRuleOutput < Struct.new(
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
    #   The entire configured table association object.
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
    #   A reference to the Glue table being configured.
    #   @return [Types::TableReference]
    #
    # @!attribute [rw] allowed_columns
    #   The columns of the underlying table that can be used by
    #   collaborations or analysis rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the configured tables. The only valid value
    #   is currently `DIRECT\_QUERY`.
    #   @return [String]
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

    # @!attribute [rw] collaboration_identifier
    #   The unique ID for the associated collaboration.
    #   @return [String]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An optional label that you can assign to a resource when you create
    #   it. Each tag consists of a key and an optional value, both of which
    #   you define. When you use tagging, you can also use tag-based access
    #   control in IAM policies to control access to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/CreateMembershipInput AWS API Documentation
    #
    class CreateMembershipInput < Struct.new(
      :collaboration_identifier,
      :query_log_status,
      :tags)
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

    # The settings for client-side encryption for cryptographic computing.
    #
    # @!attribute [rw] allow_cleartext
    #   Indicates whether encrypted tables can contain cleartext data (true)
    #   or are to cryptographically process every column (false).
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_duplicates
    #   Indicates whether Fingerprint columns can contain duplicate entries
    #   (true) or are to contain only non-repeated values (false).
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_joins_on_columns_with_different_names
    #   Indicates whether Fingerprint columns can be joined on any other
    #   Fingerprint column with a different name (true) or can only be
    #   joined on Fingerprint columns of the same name (false).
    #   @return [Boolean]
    #
    # @!attribute [rw] preserve_nulls
    #   Indicates whether NULL values are to be copied as NULL to encrypted
    #   tables (true) or cryptographically processed (false).
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

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service may return a
    #   nextToken even if the maximum results has not been met.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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
    #   A unique identifier for the membership to list configured table
    #   associations for. Currently accepts the membership ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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

    # @!attribute [rw] collaboration_identifier
    #   The identifier of the collaboration in which the members are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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
    #   The identifier for the membership in the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A filter on the status of the protected query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call. Service
    #   chooses a default if it has not been set. Service can return a
    #   nextToken even if the maximum results has not been met.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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
    #   If present, filter schemas by schema type. The only valid schema
    #   type is currently `TABLE`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
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
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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
    # @!attribute [rw] display_name
    #   The member's display name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MemberSpecification AWS API Documentation
    #
    class MemberSpecification < Struct.new(
      :account_id,
      :member_abilities,
      :display_name)
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
    #   The status of the member. Valid values are `INVITED`, `ACTIVE`,
    #   `LEFT`, and `REMOVED`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/MemberSummary AWS API Documentation
    #
    class MemberSummary < Struct.new(
      :account_id,
      :status,
      :display_name,
      :abilities,
      :create_time,
      :update_time,
      :membership_id,
      :membership_arn)
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
    #   The status of the membership. Valid values are `ACTIVE`,
    #   `REMOVED`, and `COLLABORATION\_DELETED`.
    #   @return [String]
    #
    # @!attribute [rw] member_abilities
    #   The abilities granted to the collaboration member.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the collaboration.
    #   @return [String]
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
      :query_log_status)
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
    #   The status of the membership. Valid values are `ACTIVE`,
    #   `REMOVED`, and `COLLABORATION\_DELETED`.
    #   @return [String]
    #
    # @!attribute [rw] member_abilities
    #   The abilities granted to the collaboration member.
    #   @return [Array<String>]
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
      :member_abilities)
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
      :error)
      SENSITIVE = [:sql_parameters]
      include Aws::Structure
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

    # Contains details about the protected query output.
    #
    # @note ProtectedQueryOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedQueryOutput corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   If present, the output for a protected query with an `S3` output
    #   type.
    #   @return [Types::ProtectedQueryS3Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryOutput AWS API Documentation
    #
    class ProtectedQueryOutput < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ProtectedQueryOutput; end
      class Unknown < ProtectedQueryOutput; end
    end

    # Contains configuration details for protected query output.
    #
    # @note ProtectedQueryOutputConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProtectedQueryOutputConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProtectedQueryOutputConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Required configuration for a protected query with an `S3` output
    #   type.
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryOutputConfiguration AWS API Documentation
    #
    class ProtectedQueryOutputConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ProtectedQueryOutputConfiguration; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryS3OutputConfiguration AWS API Documentation
    #
    class ProtectedQueryS3OutputConfiguration < Struct.new(
      :result_format,
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for the SQL type Protected Query.
    #
    # @!attribute [rw] query_string
    #   The query string to be submitted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQuerySQLParameters AWS API Documentation
    #
    class ProtectedQuerySQLParameters < Struct.new(
      :query_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains statistics about the execution of the protected query.
    #
    # @!attribute [rw] total_duration_in_millis
    #   The duration of the Protected Query, from creation until query
    #   completion.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQueryStatistics AWS API Documentation
    #
    class ProtectedQueryStatistics < Struct.new(
      :total_duration_in_millis)
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
    #   The status of the protected query. Value values are `SUBMITTED`,
    #   `STARTED`, `CANCELLED`, `CANCELLING`, `FAILED`, `SUCCESS`,
    #   `TIMED\_OUT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/ProtectedQuerySummary AWS API Documentation
    #
    class ProtectedQuerySummary < Struct.new(
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :status)
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

    # A schema is a relation within a collaboration.
    #
    # @!attribute [rw] columns
    #   The columns for the relation this schema represents.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] partition_keys
    #   The partition keys for the dataset underlying this schema.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] analysis_rule_types
    #   The analysis rule types associated with the schema. Valued values
    #   are LIST and AGGREGATION. Currently, only one entry is present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] analysis_method
    #   The analysis method for the schema. The only valid value is
    #   currently DIRECT\_QUERY.
    #   @return [String]
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
    #   The unique ARN for the collaboration that the schema belongs to.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the schema.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the schema was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time the schema was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of schema. The only valid value is currently `TABLE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/Schema AWS API Documentation
    #
    class Schema < Struct.new(
      :columns,
      :partition_keys,
      :analysis_rule_types,
      :analysis_method,
      :creator_account_id,
      :name,
      :collaboration_id,
      :collaboration_arn,
      :description,
      :create_time,
      :update_time,
      :type)
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
    #   The type of schema object. The only valid schema type is currently
    #   `TABLE`.
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
    #   The analysis method for the associated schema. The only valid value
    #   is currently `DIRECT\_QUERY`.
    #   @return [String]
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
      :analysis_method)
      SENSITIVE = []
      include Aws::Structure
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/StartProtectedQueryInput AWS API Documentation
    #
    class StartProtectedQueryInput < Struct.new(
      :type,
      :membership_identifier,
      :sql_parameters,
      :result_configuration)
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

    # A pointer to the dataset that underlies this table. Currently, this
    # can only be an Glue table.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/TableReference AWS API Documentation
    #
    class TableReference < Struct.new(
      :glue,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Glue < TableReference; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateCollaborationInput AWS API Documentation
    #
    class UpdateCollaborationInput < Struct.new(
      :collaboration_identifier,
      :name,
      :description)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateConfiguredTableInput AWS API Documentation
    #
    class UpdateConfiguredTableInput < Struct.new(
      :configured_table_identifier,
      :name,
      :description)
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

    # @!attribute [rw] membership_identifier
    #   The unique identifier of the membership.
    #   @return [String]
    #
    # @!attribute [rw] query_log_status
    #   An indicator as to whether query logging has been enabled or
    #   disabled for the collaboration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanrooms-2022-02-17/UpdateMembershipInput AWS API Documentation
    #
    class UpdateMembershipInput < Struct.new(
      :membership_identifier,
      :query_log_status)
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

  end
end

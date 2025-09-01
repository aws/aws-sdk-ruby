# frozen_string_literal: true

# This is generated code!

module Aws::CleanRooms
  # This module contains the types returned by client operations.
  module Types

    # <p>Caller does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A reason code for the exception.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AdditionalAnalyses
      ALLOWED = 'ALLOWED'
      REQUIRED = 'REQUIRED'
      NOT_ALLOWED = 'NOT_ALLOWED'
    end

    # <p>Column in configured table that can be used in aggregate function in query.</p>
    # @!attribute column_names
    #   <p>Column names in configured table of aggregate columns.</p>
    #   @return [Array<String>]
    # @!attribute function
    #   <p>Aggregation function that can be applied to aggregate column in query.</p>
    #   @return [String]
    class AggregateColumn < Struct.new(
      :column_names,
      :function,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :column_name,
      :minimum,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnalysisFormat
      SQL = 'SQL'
      PYSPARK_1_0 = 'PYSPARK_1_0'
    end

    module AnalysisMethod
      DIRECT_QUERY = 'DIRECT_QUERY'
      DIRECT_JOB = 'DIRECT_JOB'
      MULTIPLE = 'MULTIPLE'
    end

    # <p>Optional. The member who can query can provide this placeholder for a literal data value in an analysis template.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the parameter. The name must use only alphanumeric, underscore (_), or hyphen (-) characters but cannot start or end with a hyphen.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of parameter.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>Optional. The default value that is applied in the analysis template. The member who can query can override this value in the query editor.</p>
    #   @return [String]
    class AnalysisParameter < Struct.new(
      :name,
      :type,
      :default_value,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_id,
      :type,
      :name,
      :create_time,
      :update_time,
      :policy,
      :collaboration_policy,
      :consolidated_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :aggregate_columns,
      :join_columns,
      :join_required,
      :allowed_join_operators,
      :dimension_columns,
      :scalar_functions,
      :output_constraints,
      :additional_analyses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A type of analysis rule that enables the table owner to approve custom SQL queries on their configured tables. It supports differential privacy.</p>
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
    class AnalysisRuleCustom < Struct.new(
      :allowed_analyses,
      :allowed_analysis_providers,
      :additional_analyses,
      :disallowed_output_columns,
      :differential_privacy,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :join_columns,
      :query_constraints,
      :dimension_columns,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :join_columns,
      :allowed_join_operators,
      :list_columns,
      :additional_analyses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Controls on the query specifications that can be run on configured table.</p>
    # @!attribute v1
    #   <p>Controls on the query specifications that can be run on configured table.</p>
    #   @return [Types::AnalysisRulePolicyV1]
    class AnalysisRulePolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Union

      class List < AnalysisRulePolicyV1; end
      class Aggregation < AnalysisRulePolicyV1; end
      class Custom < AnalysisRulePolicyV1; end
      class IdMappingTable < AnalysisRulePolicyV1; end
      class Unknown < AnalysisRulePolicyV1; end
    end

    module AnalysisRuleType
      AGGREGATION = 'AGGREGATION'
      LIST = 'LIST'
      CUSTOM = 'CUSTOM'
      ID_MAPPING_TABLE = 'ID_MAPPING_TABLE'
    end

    # <p>A relation within an analysis.</p>
    # @!attribute referenced_tables
    #   <p>The tables referenced in the analysis schema.</p>
    #   @return [Array<String>]
    class AnalysisSchema < Struct.new(
      :referenced_tables,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The analysis template artifact.</p>
    # @!attribute location
    #   <p> The artifact location.</p>
    #   @return [Types::S3Location]
    class AnalysisTemplateArtifact < Struct.new(
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The analysis template artifact metadata.</p>
    # @!attribute entry_point_hash
    #   <p> The hash of the entry point for the analysis template artifact metadata.</p>
    #   @return [Types::Hash]
    # @!attribute additional_artifact_hashes
    #   <p> Additional artifact hashes for the analysis template.</p>
    #   @return [Array<Types::Hash>]
    class AnalysisTemplateArtifactMetadata < Struct.new(
      :entry_point_hash,
      :additional_artifact_hashes,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :entry_point,
      :additional_artifacts,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnalysisTemplateValidationStatus
      VALID = 'VALID'
      INVALID = 'INVALID'
      UNABLE_TO_VALIDATE = 'UNABLE_TO_VALIDATE'
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
      :type,
      :status,
      :reasons,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The reasons for the validation results.</p>
    # @!attribute message
    #   <p>The validation message.</p>
    #   @return [String]
    class AnalysisTemplateValidationStatusReason < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnalysisTemplateValidationType
      DIFFERENTIAL_PRIVACY = 'DIFFERENTIAL_PRIVACY'
    end

    module AnalysisType
      DIRECT_ANALYSIS = 'DIRECT_ANALYSIS'
      ADDITIONAL_ANALYSIS = 'ADDITIONAL_ANALYSIS'
    end

    module AnalyticsEngine
      SPARK = 'SPARK'
      CLEAN_ROOMS_SQL = 'CLEAN_ROOMS_SQL'
    end

    # <p> A reference to a table within Athena.</p>
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
    class AthenaTableReference < Struct.new(
      :work_group,
      :output_location,
      :database_name,
      :table_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute analysis_template_arns
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    #   @return [Array<String>]
    class BatchGetCollaborationAnalysisTemplateOperationInput < Struct.new(
      :collaboration_identifier,
      :analysis_template_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_analysis_templates
    #   <p>The retrieved list of analysis templates within a collaboration.</p>
    #   @return [Array<Types::CollaborationAnalysisTemplate>]
    # @!attribute errors
    #   <p>Error reasons for collaboration analysis templates that could not be retrieved. One error is returned for every collaboration analysis template that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetCollaborationAnalysisTemplateError>]
    class BatchGetCollaborationAnalysisTemplateOperationOutput < Struct.new(
      :collaboration_analysis_templates,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :name,
      :type,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the schema analysis rule.</p>
    #   @return [String]
    # @!attribute schema_analysis_rule_requests
    #   <p>The information that's necessary to retrieve a schema analysis rule.</p>
    #   @return [Array<Types::SchemaAnalysisRuleRequest>]
    class BatchGetSchemaAnalysisRuleInput < Struct.new(
      :collaboration_identifier,
      :schema_analysis_rule_requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rules
    #   <p>The retrieved list of analysis rules.</p>
    #   @return [Array<Types::AnalysisRule>]
    # @!attribute errors
    #   <p>Error reasons for schemas that could not be retrieved. One error is returned for every schema that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetSchemaAnalysisRuleError>]
    class BatchGetSchemaAnalysisRuleOutput < Struct.new(
      :analysis_rules,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :name,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schemas belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute names
    #   <p>The names for the schema objects to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetSchemaOperationInput < Struct.new(
      :collaboration_identifier,
      :names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute schemas
    #   <p>The retrieved list of schemas.</p>
    #   @return [Array<Types::Schema>]
    # @!attribute errors
    #   <p>Error reasons for schemas that could not be retrieved. One error is returned for every schema that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetSchemaError>]
    class BatchGetSchemaOperationOutput < Struct.new(
      :schemas,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information related to the utilization of resources that have been billed or charged for in a given context, such as a protected job.</p>
    # @!attribute units
    #   <p> The number of Clean Rooms Processing Unit (CRPU) hours that have been billed.</p>
    #   @return [Float]
    class BilledJobResourceUtilization < Struct.new(
      :units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information related to the utilization of resources that have been billed or charged for in a given context, such as a protected query.</p>
    # @!attribute units
    #   <p> The number of Clean Rooms Processing Unit (CRPU) hours that have been billed.</p>
    #   @return [Float]
    class BilledResourceUtilization < Struct.new(
      :units,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class CollaborationAnalysisTemplateSummary < Struct.new(
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :collaboration_arn,
      :collaboration_id,
      :creator_account_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :arn,
      :create_time,
      :id,
      :name,
      :update_time,
      :collaboration_arn,
      :collaboration_id,
      :creator_account_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CollaborationJobLogStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :collaboration_id,
      :collaboration_arn,
      :creator_account_id,
      :privacy_budget_type,
      :create_time,
      :update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CollaborationQueryLogStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A column within a schema relation, derived from the underlying table.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the column.</p>
    #   @return [String]
    class Column < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configuration of the compute resources for an analysis with the Spark analytics engine.</p>
    # @!attribute worker
    #   <p> The worker configuration for the compute environment.</p>
    #   @return [Types::WorkerComputeConfiguration]
    class ComputeConfiguration < Struct.new(
      :worker,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The columns within the underlying Glue table that can be utilized within collaborations.</p>
    #   @return [Array<String>]
    # @!attribute selected_analysis_methods
    #   <p> The selected analysis methods for the configured table.</p>
    #   @return [Array<String>]
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
      :selected_analysis_methods,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :configured_table_id,
      :configured_table_arn,
      :policy,
      :type,
      :create_time,
      :update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Controls on the query specifications that can be run on a configured table.</p>
    # @!attribute v1
    #   <p>Controls on the query specifications that can be run on a configured table.</p>
    #   @return [Types::ConfiguredTableAnalysisRulePolicyV1]
    class ConfiguredTableAnalysisRulePolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
    #   <p>A type of analysis rule that enables the table owner to approve custom SQL queries on their configured tables. It supports differential privacy.</p>
    #   @return [Types::AnalysisRuleCustom]
    class ConfiguredTableAnalysisRulePolicyV1 < Struct.new(
      :list,
      :aggregation,
      :custom,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class List < ConfiguredTableAnalysisRulePolicyV1; end
      class Aggregation < ConfiguredTableAnalysisRulePolicyV1; end
      class Custom < ConfiguredTableAnalysisRulePolicyV1; end
      class Unknown < ConfiguredTableAnalysisRulePolicyV1; end
    end

    module ConfiguredTableAnalysisRuleType
      AGGREGATION = 'AGGREGATION'
      LIST = 'LIST'
      CUSTOM = 'CUSTOM'
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
      :update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :configured_table_association_id,
      :configured_table_association_arn,
      :policy,
      :type,
      :create_time,
      :update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configured table association analysis rule applied to a configured table with the aggregation analysis rule.</p>
    # @!attribute allowed_result_receivers
    #   <p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p> <p>The <code>allowedAdditionalAnalyses</code> parameter is currently supported for the list analysis rule (<code>AnalysisRuleList</code>) and the custom analysis rule (<code>AnalysisRuleCustom</code>).</p>
    #   @return [Array<String>]
    class ConfiguredTableAssociationAnalysisRuleAggregation < Struct.new(
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configured table association analysis rule applied to a configured table with the custom analysis rule.</p>
    # @!attribute allowed_result_receivers
    #   <p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p>
    #   @return [Array<String>]
    class ConfiguredTableAssociationAnalysisRuleCustom < Struct.new(
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configured table association analysis rule applied to a configured table with the list analysis rule.</p>
    # @!attribute allowed_result_receivers
    #   <p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p>
    #   @return [Array<String>]
    class ConfiguredTableAssociationAnalysisRuleList < Struct.new(
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Controls on the query specifications that can be run on an associated configured table.</p>
    # @!attribute v1
    #   <p> The policy for the configured table association analysis rule.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRulePolicyV1]
    class ConfiguredTableAssociationAnalysisRulePolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Union

      class List < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Aggregation < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Custom < ConfiguredTableAssociationAnalysisRulePolicyV1; end
      class Unknown < ConfiguredTableAssociationAnalysisRulePolicyV1; end
    end

    module ConfiguredTableAssociationAnalysisRuleType
      AGGREGATION = 'AGGREGATION'
      LIST = 'LIST'
      CUSTOM = 'CUSTOM'
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
      :configured_table_id,
      :membership_id,
      :membership_arn,
      :name,
      :create_time,
      :update_time,
      :id,
      :arn,
      :analysis_rule_types,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id,
      :arn,
      :name,
      :create_time,
      :update_time,
      :analysis_rule_types,
      :analysis_method,
      :selected_analysis_methods,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :message,
      :resource_id,
      :resource_type,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Controls on the analysis specifications that can be run on a configured table.</p>
    # @!attribute v1
    #   <p> The consolidated policy version 1.</p>
    #   @return [Types::ConsolidatedPolicyV1]
    class ConsolidatedPolicy < Struct.new(
      :v1,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute allowed_result_receivers
    #   <p> The allowed result receivers.</p>
    #   @return [Array<String>]
    # @!attribute allowed_additional_analyses
    #   <p> The additional analyses allowed by the consolidated policy.</p>
    #   @return [Array<String>]
    class ConsolidatedPolicyCustom < Struct.new(
      :allowed_analyses,
      :allowed_analysis_providers,
      :additional_analyses,
      :disallowed_output_columns,
      :differential_privacy,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :join_columns,
      :allowed_join_operators,
      :list_columns,
      :additional_analyses,
      :allowed_result_receivers,
      :allowed_additional_analyses,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Union

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
    class CreateAnalysisTemplateOperationInput < Struct.new(
      :description,
      :membership_identifier,
      :name,
      :format,
      :source,
      :tags,
      :analysis_parameters,
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_template
    #   <p>The analysis template.</p>
    #   @return [Types::AnalysisTemplate]
    class CreateAnalysisTemplateOperationOutput < Struct.new(
      :analysis_template,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class CreateCollaborationOperationInput < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration
    #   <p>The collaboration.</p>
    #   @return [Types::Collaboration]
    class CreateCollaborationOperationOutput < Struct.new(
      :collaboration,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :configured_audience_model_arn,
      :configured_audience_model_association_name,
      :manage_resource_policies,
      :tags,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association
    #   <p>Information about the configured audience model association.</p>
    #   @return [Types::ConfiguredAudienceModelAssociation]
    class CreateConfiguredAudienceModelAssociationOutput < Struct.new(
      :configured_audience_model_association,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :configured_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule that was created for the configured table.</p>
    #   @return [Types::ConfiguredTableAnalysisRule]
    class CreateConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      :analysis_rule,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    class CreateConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      :analysis_rule,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :name,
      :description,
      :membership_identifier,
      :configured_table_identifier,
      :role_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_association
    #   <p>The configured table association.</p>
    #   @return [Types::ConfiguredTableAssociation]
    class CreateConfiguredTableAssociationOperationOutput < Struct.new(
      :configured_table_association,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :name,
      :description,
      :table_reference,
      :allowed_columns,
      :analysis_method,
      :selected_analysis_methods,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table
    #   <p>The created configured table.</p>
    #   @return [Types::ConfiguredTable]
    class CreateConfiguredTableOperationOutput < Struct.new(
      :configured_table,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :name,
      :description,
      :input_reference_config,
      :tags,
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table
    #   <p>The ID mapping table that was created.</p>
    #   @return [Types::IdMappingTable]
    class CreateIdMappingTableOutput < Struct.new(
      :id_mapping_table,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :input_reference_config,
      :tags,
      :name,
      :description,
      :id_mapping_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association
    #   <p>The ID namespace association that was created.</p>
    #   @return [Types::IdNamespaceAssociation]
    class CreateIdNamespaceAssociationOutput < Struct.new(
      :id_namespace_association,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class CreateMembershipOperationInput < Struct.new(
      :collaboration_identifier,
      :query_log_status,
      :job_log_status,
      :tags,
      :default_result_configuration,
      :default_job_result_configuration,
      :payment_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>The membership that was created.</p>
    #   @return [Types::Membership]
    class CreateMembershipOperationOutput < Struct.new(
      :membership,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :auto_refresh,
      :privacy_budget_type,
      :parameters,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_template
    #   <p>A summary of the elements in the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplate]
    class CreatePrivacyBudgetTemplateOutput < Struct.new(
      :privacy_budget_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CustomMLMemberAbility
      CAN_RECEIVE_MODEL_OUTPUT = 'CAN_RECEIVE_MODEL_OUTPUT'
      CAN_RECEIVE_INFERENCE_OUTPUT = 'CAN_RECEIVE_INFERENCE_OUTPUT'
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
      :allow_cleartext,
      :allow_duplicates,
      :allow_joins_on_columns_with_different_names,
      :preserve_nulls,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    #   @return [String]
    class DeleteAnalysisTemplateOperationInput < Struct.new(
      :membership_identifier,
      :analysis_template_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAnalysisTemplateOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    #   @return [String]
    class DeleteCollaborationOperationInput < Struct.new(
      :collaboration_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteCollaborationOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association_identifier
    #   <p>A unique identifier of the configured audience model association that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier of the membership that contains the audience model association that you want to delete.</p>
    #   @return [String]
    class DeleteConfiguredAudienceModelAssociationInput < Struct.new(
      :configured_audience_model_association_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteConfiguredAudienceModelAssociationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique identifier for the configured table that the analysis rule applies to. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The analysis rule type to be deleted. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    #   @return [String]
    class DeleteConfiguredTableAnalysisRuleOperationInput < Struct.new(
      :configured_table_identifier,
      :analysis_rule_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An empty response that indicates a successful delete.</p>
    class DeleteConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_association_identifier
    #   <p>The unique ID for the configured table association to be deleted. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    class DeleteConfiguredTableAssociationOperationInput < Struct.new(
      :configured_table_association_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteConfiguredTableAssociationOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique ID for the configured table to delete.</p>
    #   @return [String]
    class DeleteConfiguredTableOperationInput < Struct.new(
      :configured_table_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The empty output for a successful deletion.</p>
    class DeleteConfiguredTableOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to delete.</p>
    #   @return [String]
    class DeleteIdMappingTableInput < Struct.new(
      :id_mapping_table_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteIdMappingTableOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to delete.</p>
    #   @return [String]
    class DeleteIdNamespaceAssociationInput < Struct.new(
      :id_namespace_association_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteIdNamespaceAssociationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier for the associated collaboration.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the member to remove.</p>
    #   @return [String]
    class DeleteMemberOperationInput < Struct.new(
      :collaboration_identifier,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteMemberOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    class DeleteMembershipOperationInput < Struct.new(
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteMembershipOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is deleted from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template. </p>
    #   @return [String]
    class DeletePrivacyBudgetTemplateInput < Struct.new(
      :membership_identifier,
      :privacy_budget_template_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePrivacyBudgetTemplateOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DifferentialPrivacyAggregationType
      AVG = 'AVG'
      COUNT = 'COUNT'
      COUNT_DISTINCT = 'COUNT_DISTINCT'
      SUM = 'SUM'
      STDDEV = 'STDDEV'
    end

    # <p>Specifies the name of the column that contains the unique identifier of your users, whose privacy you want to protect.</p>
    # @!attribute name
    #   <p>The name of the column, such as user_id, that contains the unique identifier of your users, whose privacy you want to protect. If you want to turn on differential privacy for two or more tables in a collaboration, you must configure the same column as the user identifier column in both analysis rules.</p>
    #   @return [String]
    class DifferentialPrivacyColumn < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the unique identifier for your users.</p>
    # @!attribute columns
    #   <p>The name of the column (such as user_id) that contains the unique identifier of your users whose privacy you want to protect. If you want to turn on diﬀerential privacy for two or more tables in a collaboration, you must conﬁgure the same column as the user identiﬁer column in both analysis rules.</p>
    #   @return [Array<Types::DifferentialPrivacyColumn>]
    class DifferentialPrivacyConfiguration < Struct.new(
      :columns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An array that contains the sensitivity parameters.</p>
    # @!attribute sensitivity_parameters
    #   <p>Provides the sensitivity parameters that you can use to better understand the total amount of noise in query results.</p>
    #   @return [Array<Types::DifferentialPrivacySensitivityParameters>]
    class DifferentialPrivacyParameters < Struct.new(
      :sensitivity_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides an estimate of the number of aggregation functions that the member who can query can run given the epsilon and noise parameters.</p>
    # @!attribute type
    #   <p>The type of aggregation function.</p>
    #   @return [String]
    # @!attribute max_count
    #   <p>The maximum number of aggregations that the member who can query can run given the epsilon and noise parameters.</p>
    #   @return [Integer]
    class DifferentialPrivacyPreviewAggregation < Struct.new(
      :type,
      :max_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameters that you want to preview.</p>
    # @!attribute epsilon
    #   <p>The epsilon value that you want to preview.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyPreviewParametersInput < Struct.new(
      :epsilon,
      :users_noise_per_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configured epsilon value and the utility in terms of total aggregations, as well as the remaining aggregations available.</p>
    # @!attribute aggregations
    #   <p>This information includes the configured epsilon value and the utility in terms of total aggregations, as well as the remaining aggregations.</p>
    #   @return [Array<Types::DifferentialPrivacyPrivacyBudgetAggregation>]
    # @!attribute epsilon
    #   <p>The epsilon value that you configured.</p>
    #   @return [Integer]
    class DifferentialPrivacyPrivacyBudget < Struct.new(
      :aggregations,
      :epsilon,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :type,
      :max_count,
      :remaining_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the number of aggregation functions that the member who can query can run given the epsilon and noise parameters.</p>
    # @!attribute aggregations
    #   <p>The number of aggregation functions that you can perform.</p>
    #   @return [Array<Types::DifferentialPrivacyPreviewAggregation>]
    class DifferentialPrivacyPrivacyImpact < Struct.new(
      :aggregations,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :aggregation_type,
      :aggregation_expression,
      :user_contribution_limit,
      :min_column_value,
      :max_column_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameter values that you want to use for the differential privacy template.</p>
    # @!attribute epsilon
    #   <p>The epsilon value that you want to use.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyTemplateParametersInput < Struct.new(
      :epsilon,
      :users_noise_per_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameter values that were used for the differential privacy template.</p>
    # @!attribute epsilon
    #   <p>The epsilon value that you specified.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyTemplateParametersOutput < Struct.new(
      :epsilon,
      :users_noise_per_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameter values that you want to update in the differential privacy template.</p>
    # @!attribute epsilon
    #   <p>The updated epsilon value that you want to use.</p>
    #   @return [Integer]
    # @!attribute users_noise_per_query
    #   <p>The updated value of noise added per query. It is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>
    #   @return [Integer]
    class DifferentialPrivacyTemplateUpdateParameters < Struct.new(
      :epsilon,
      :users_noise_per_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The direct analysis configuration details.</p>
    # @!attribute receiver_account_ids
    #   <p> The account IDs for the member who received the results of a protected query.</p>
    #   @return [Array<String>]
    class DirectAnalysisConfigurationDetails < Struct.new(
      :receiver_account_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    # @!attribute analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    #   @return [String]
    class GetAnalysisTemplateOperationInput < Struct.new(
      :membership_identifier,
      :analysis_template_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_template
    #   <p>The analysis template.</p>
    #   @return [Types::AnalysisTemplate]
    class GetAnalysisTemplateOperationOutput < Struct.new(
      :analysis_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    #   @return [String]
    # @!attribute analysis_template_arn
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    #   @return [String]
    class GetCollaborationAnalysisTemplateOperationInput < Struct.new(
      :collaboration_identifier,
      :analysis_template_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_analysis_template
    #   <p>The analysis template within a collaboration.</p>
    #   @return [Types::CollaborationAnalysisTemplate]
    class GetCollaborationAnalysisTemplateOperationOutput < Struct.new(
      :collaboration_analysis_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the configured audience model association belongs to. Accepts a collaboration ID.</p>
    #   @return [String]
    # @!attribute configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to retrieve.</p>
    #   @return [String]
    class GetCollaborationConfiguredAudienceModelAssociationInput < Struct.new(
      :collaboration_identifier,
      :configured_audience_model_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_configured_audience_model_association
    #   <p>The metadata of the configured audience model association.</p>
    #   @return [Types::CollaborationConfiguredAudienceModelAssociation]
    class GetCollaborationConfiguredAudienceModelAssociationOutput < Struct.new(
      :collaboration_configured_audience_model_association,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    # @!attribute id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    class GetCollaborationIdNamespaceAssociationInput < Struct.new(
      :collaboration_identifier,
      :id_namespace_association_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_id_namespace_association
    #   <p>The ID namespace association that you requested.</p>
    #   @return [Types::CollaborationIdNamespaceAssociation]
    class GetCollaborationIdNamespaceAssociationOutput < Struct.new(
      :collaboration_id_namespace_association,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    #   @return [String]
    class GetCollaborationOperationInput < Struct.new(
      :collaboration_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration
    #   <p>The entire collaboration for this identifier.</p>
    #   @return [Types::Collaboration]
    class GetCollaborationOperationOutput < Struct.new(
      :collaboration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for one of your collaborations.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_identifier
    #   <p>A unique identifier for one of your privacy budget templates.</p>
    #   @return [String]
    class GetCollaborationPrivacyBudgetTemplateInput < Struct.new(
      :collaboration_identifier,
      :privacy_budget_template_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_privacy_budget_template
    #   <p>Returns the details of the privacy budget template that you requested.</p>
    #   @return [Types::CollaborationPrivacyBudgetTemplate]
    class GetCollaborationPrivacyBudgetTemplateOutput < Struct.new(
      :collaboration_privacy_budget_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to retrieve.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership that contains the configured audience model association that you want to retrieve.</p>
    #   @return [String]
    class GetConfiguredAudienceModelAssociationInput < Struct.new(
      :configured_audience_model_association_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association
    #   <p>Information about the configured audience model association that you requested.</p>
    #   @return [Types::ConfiguredAudienceModelAssociation]
    class GetConfiguredAudienceModelAssociationOutput < Struct.new(
      :configured_audience_model_association,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique identifier for the configured table to retrieve. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute analysis_rule_type
    #   <p>The analysis rule to be retrieved. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    #   @return [String]
    class GetConfiguredTableAnalysisRuleOperationInput < Struct.new(
      :configured_table_identifier,
      :analysis_rule_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The entire analysis rule output.</p>
    #   @return [Types::ConfiguredTableAnalysisRule]
    class GetConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      :analysis_rule,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    class GetConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      :analysis_rule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_association_identifier
    #   <p>The unique ID for the configured table association to retrieve. Currently accepts the configured table ID.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    #   @return [String]
    class GetConfiguredTableAssociationOperationInput < Struct.new(
      :configured_table_association_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_association
    #   <p>The entire configured table association object.</p>
    #   @return [Types::ConfiguredTableAssociation]
    class GetConfiguredTableAssociationOperationOutput < Struct.new(
      :configured_table_association,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_identifier
    #   <p>The unique ID for the configured table to retrieve.</p>
    #   @return [String]
    class GetConfiguredTableOperationInput < Struct.new(
      :configured_table_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table
    #   <p>The retrieved configured table.</p>
    #   @return [Types::ConfiguredTable]
    class GetConfiguredTableOperationOutput < Struct.new(
      :configured_table,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table identifier that you want to retrieve.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to retrieve.</p>
    #   @return [String]
    class GetIdMappingTableInput < Struct.new(
      :id_mapping_table_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table
    #   <p>The ID mapping table that you requested.</p>
    #   @return [Types::IdMappingTable]
    class GetIdMappingTableOutput < Struct.new(
      :id_mapping_table,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to retrieve.</p>
    #   @return [String]
    class GetIdNamespaceAssociationInput < Struct.new(
      :id_namespace_association_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association
    #   <p>The ID namespace association that you requested.</p>
    #   @return [Types::IdNamespaceAssociation]
    class GetIdNamespaceAssociationOutput < Struct.new(
      :id_namespace_association,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership resource.</p>
    #   @return [String]
    class GetMembershipOperationInput < Struct.new(
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>The membership retrieved for the provided identifier.</p>
    #   @return [Types::Membership]
    class GetMembershipOperationOutput < Struct.new(
      :membership,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template.</p>
    #   @return [String]
    class GetPrivacyBudgetTemplateInput < Struct.new(
      :membership_identifier,
      :privacy_budget_template_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_template
    #   <p>Returns the details of the privacy budget template that you requested.</p>
    #   @return [Types::PrivacyBudgetTemplate]
    class GetPrivacyBudgetTemplateOutput < Struct.new(
      :privacy_budget_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p> The identifier for a membership in a protected job instance.</p>
    #   @return [String]
    # @!attribute protected_job_identifier
    #   <p> The identifier for the protected job instance.</p>
    #   @return [String]
    class GetProtectedJobInput < Struct.new(
      :membership_identifier,
      :protected_job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute protected_job
    #   <p> The protected job metadata.</p>
    #   @return [Types::ProtectedJob]
    class GetProtectedJobOutput < Struct.new(
      :protected_job,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The identifier for a membership in a protected query instance.</p>
    #   @return [String]
    # @!attribute protected_query_identifier
    #   <p>The identifier for a protected query instance.</p>
    #   @return [String]
    class GetProtectedQueryOperationInput < Struct.new(
      :membership_identifier,
      :protected_query_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute protected_query
    #   <p>The query processing metadata.</p>
    #   @return [Types::ProtectedQuery]
    class GetProtectedQueryOperationOutput < Struct.new(
      :protected_query,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>A specification about how data from the configured table can be used.</p>
    #   @return [Types::AnalysisRule]
    class GetSchemaAnalysisRuleOperationOutput < Struct.new(
      :analysis_rule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the relation to retrieve the schema for.</p>
    #   @return [String]
    class GetSchemaOperationInput < Struct.new(
      :collaboration_identifier,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute schema
    #   <p>The entire schema object.</p>
    #   @return [Types::Schema]
    class GetSchemaOperationOutput < Struct.new(
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A reference to a table within an Glue data catalog.</p>
    # @!attribute table_name
    #   <p>The name of the Glue table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database the Glue table belongs to.</p>
    #   @return [String]
    class GlueTableReference < Struct.new(
      :table_name,
      :database_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Hash</p>
    # @!attribute sha256
    #   <p> The SHA-256 hash value.</p>
    #   @return [String]
    class Hash < Struct.new(
      :sha256,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration settings for the ID mapping table.</p>
    # @!attribute allow_use_as_dimension_column
    #   <p>An indicator as to whether you can use your column as a dimension column in the ID mapping table (<code>TRUE</code>) or not (<code>FALSE</code>).</p> <p>Default is <code>FALSE</code>.</p>
    #   @return [Boolean]
    class IdMappingConfig < Struct.new(
      :allow_use_as_dimension_column,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the input reference configuration for the ID mapping table.</p>
    # @!attribute input_reference_arn
    #   <p>The Amazon Resource Name (ARN) of the referenced resource in Entity Resolution. Valid values are ID mapping workflow ARNs.</p>
    #   @return [String]
    # @!attribute manage_resource_policies
    #   <p>When <code>TRUE</code>, Clean Rooms manages permissions for the ID mapping table resource. </p> <p>When <code>FALSE</code>, the resource owner manages permissions for the ID mapping table resource.</p>
    #   @return [Boolean]
    class IdMappingTableInputReferenceConfig < Struct.new(
      :input_reference_arn,
      :manage_resource_policies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input reference properties for the ID mapping table.</p>
    # @!attribute id_mapping_table_input_source
    #   <p>The input source of the ID mapping table.</p>
    #   @return [Array<Types::IdMappingTableInputSource>]
    class IdMappingTableInputReferenceProperties < Struct.new(
      :id_mapping_table_input_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input source of the ID mapping table.</p>
    # @!attribute id_namespace_association_id
    #   <p>The unique identifier of the ID namespace association.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the input source of the ID mapping table.</p>
    #   @return [String]
    class IdMappingTableInputSource < Struct.new(
      :id_namespace_association_id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional properties that are specific to the type of the associated schema.</p>
    # @!attribute id_mapping_table_input_source
    #   <p>Defines which ID namespace associations are used to create the ID mapping table.</p>
    #   @return [Array<Types::IdMappingTableInputSource>]
    class IdMappingTableSchemaTypeProperties < Struct.new(
      :id_mapping_table_input_source,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the information for the ID namespace association input reference configuration.</p>
    # @!attribute input_reference_arn
    #   <p>The Amazon Resource Name (ARN) of the Entity Resolution resource that is being associated to the collaboration. Valid resource ARNs are from the ID namespaces that you own.</p>
    #   @return [String]
    # @!attribute manage_resource_policies
    #   <p>When <code>TRUE</code>, Clean Rooms manages permissions for the ID namespace association resource.</p> <p>When <code>FALSE</code>, the resource owner manages permissions for the ID namespace association resource.</p>
    #   @return [Boolean]
    class IdNamespaceAssociationInputReferenceConfig < Struct.new(
      :input_reference_arn,
      :manage_resource_policies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the information for the ID namespace association input reference properties.</p>
    # @!attribute id_namespace_type
    #   <p>The ID namespace type for this ID namespace association.</p>
    #   @return [String]
    # @!attribute id_mapping_workflows_supported
    #   <p>Defines how ID mapping workflows are supported for this ID namespace association.</p>
    #   @return [Array<JSON>]
    class IdNamespaceAssociationInputReferenceProperties < Struct.new(
      :id_namespace_type,
      :id_mapping_workflows_supported,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about the ID namespace association input reference properties.</p>
    # @!attribute id_namespace_type
    #   <p>The ID namespace type for this ID namespace association.</p>
    #   @return [String]
    class IdNamespaceAssociationInputReferencePropertiesSummary < Struct.new(
      :id_namespace_type,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IdNamespaceType
      SOURCE = 'SOURCE'
      TARGET = 'TARGET'
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's payment responsibilities set by the collaboration creator for query and job compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for query and job compute costs (<code>TRUE</code>) or has not configured the collaboration member to pay for query and job compute costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for query and job compute costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can run queries and jobs.</p>
    #   @return [Boolean]
    class JobComputePaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute analysis_template_summaries
    #   <p>Lists analysis template metadata.</p>
    #   @return [Array<Types::AnalysisTemplateSummary>]
    class ListAnalysisTemplatesOperationOutput < Struct.new(
      :next_token,
      :analysis_template_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute collaboration_analysis_template_summaries
    #   <p>The metadata of the analysis template within a collaboration.</p>
    #   @return [Array<Types::CollaborationAnalysisTemplateSummary>]
    class ListCollaborationAnalysisTemplatesOperationOutput < Struct.new(
      :next_token,
      :collaboration_analysis_template_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_configured_audience_model_association_summaries
    #   <p>The metadata of the configured audience model association within a collaboration.</p>
    #   @return [Array<Types::CollaborationConfiguredAudienceModelAssociationSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListCollaborationConfiguredAudienceModelAssociationsOutput < Struct.new(
      :collaboration_configured_audience_model_association_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    # @!attribute collaboration_id_namespace_association_summaries
    #   <p>The summary information of the collaboration ID namespace associations that you requested.</p>
    #   @return [Array<Types::CollaborationIdNamespaceAssociationSummary>]
    class ListCollaborationIdNamespaceAssociationsOutput < Struct.new(
      :next_token,
      :collaboration_id_namespace_association_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute collaboration_privacy_budget_template_summaries
    #   <p>An array that summarizes the collaboration privacy budget templates. The summary includes collaboration information, creation information, the privacy budget type.</p>
    #   @return [Array<Types::CollaborationPrivacyBudgetTemplateSummary>]
    class ListCollaborationPrivacyBudgetTemplatesOutput < Struct.new(
      :next_token,
      :collaboration_privacy_budget_template_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class ListCollaborationPrivacyBudgetsInput < Struct.new(
      :collaboration_identifier,
      :privacy_budget_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration_privacy_budget_summaries
    #   <p>Summaries of the collaboration privacy budgets.</p>
    #   @return [Array<Types::CollaborationPrivacyBudgetSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListCollaborationPrivacyBudgetsOutput < Struct.new(
      :collaboration_privacy_budget_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :next_token,
      :max_results,
      :member_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute collaboration_list
    #   <p>The list of collaborations.</p>
    #   @return [Array<Types::CollaborationSummary>]
    class ListCollaborationsOperationOutput < Struct.new(
      :next_token,
      :collaboration_list,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association_summaries
    #   <p>Summaries of the configured audience model associations that you requested.</p>
    #   @return [Array<Types::ConfiguredAudienceModelAssociationSummary>]
    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    class ListConfiguredAudienceModelAssociationsOutput < Struct.new(
      :configured_audience_model_association_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_association_summaries
    #   <p>The retrieved list of configured table associations.</p>
    #   @return [Array<Types::ConfiguredTableAssociationSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListConfiguredTableAssociationsOperationOutput < Struct.new(
      :configured_table_association_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    #   @return [Integer]
    class ListConfiguredTablesOperationInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_summaries
    #   <p>The configured tables listed by the request.</p>
    #   @return [Array<Types::ConfiguredTableSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListConfiguredTablesOperationOutput < Struct.new(
      :configured_table_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_summaries
    #   <p>The summary information of the ID mapping tables that you requested.</p>
    #   @return [Array<Types::IdMappingTableSummary>]
    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    class ListIdMappingTablesOutput < Struct.new(
      :id_mapping_table_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value provided to access the next page of results.</p>
    #   @return [String]
    # @!attribute id_namespace_association_summaries
    #   <p>The summary information of the ID namespace associations that you requested.</p>
    #   @return [Array<Types::IdNamespaceAssociationSummary>]
    class ListIdNamespaceAssociationsOutput < Struct.new(
      :next_token,
      :id_namespace_association_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute member_summaries
    #   <p>The list of members returned by the ListMembers operation.</p>
    #   @return [Array<Types::MemberSummary>]
    class ListMembersOperationOutput < Struct.new(
      :next_token,
      :member_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :next_token,
      :max_results,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute membership_summaries
    #   <p>The list of memberships returned from the ListMemberships operation.</p>
    #   @return [Array<Types::MembershipSummary>]
    class ListMembershipsOperationOutput < Struct.new(
      :next_token,
      :membership_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute privacy_budget_template_summaries
    #   <p>An array that summarizes the privacy budget templates. The summary includes collaboration information, creation information, and privacy budget type.</p>
    #   @return [Array<Types::PrivacyBudgetTemplateSummary>]
    class ListPrivacyBudgetTemplatesOutput < Struct.new(
      :next_token,
      :privacy_budget_template_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class ListPrivacyBudgetsInput < Struct.new(
      :membership_identifier,
      :privacy_budget_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_summaries
    #   <p>An array that summarizes the privacy budgets. The summary includes collaboration information, membership information, privacy budget template information, and privacy budget details.</p>
    #   @return [Array<Types::PrivacyBudgetSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListPrivacyBudgetsOutput < Struct.new(
      :privacy_budget_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute protected_jobs
    #   <p>A list of protected job summaries.</p>
    #   @return [Array<Types::ProtectedJobSummary>]
    class ListProtectedJobsOutput < Struct.new(
      :next_token,
      :protected_jobs,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    # @!attribute protected_queries
    #   <p>A list of protected queries.</p>
    #   @return [Array<Types::ProtectedQuerySummary>]
    class ListProtectedQueriesOperationOutput < Struct.new(
      :next_token,
      :protected_queries,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :schema_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute schema_summaries
    #   <p>The retrieved list of schemas.</p>
    #   @return [Array<Types::SchemaSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    #   @return [String]
    class ListSchemasOperationOutput < Struct.new(
      :schema_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to list tags on.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of objects specifying each key name and value.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The ML member abilities for a collaboration member.</p>
    # @!attribute custom_ml_member_abilities
    #   <p>The custom ML member abilities for a collaboration member. </p>
    #   @return [Array<String>]
    class MLMemberAbilities < Struct.new(
      :custom_ml_member_abilities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's machine learning payment responsibilities set by the collaboration creator.</p>
    # @!attribute model_training
    #   <p>The payment responsibilities accepted by the member for model training.</p>
    #   @return [Types::ModelTrainingPaymentConfig]
    # @!attribute model_inference
    #   <p>The payment responsibilities accepted by the member for model inference.</p>
    #   @return [Types::ModelInferencePaymentConfig]
    class MLPaymentConfig < Struct.new(
      :model_training,
      :model_inference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MemberAbility
      CAN_QUERY = 'CAN_QUERY'
      CAN_RECEIVE_RESULTS = 'CAN_RECEIVE_RESULTS'
      CAN_RUN_JOB = 'CAN_RUN_JOB'
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
      :account_id,
      :member_abilities,
      :ml_member_abilities,
      :display_name,
      :payment_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :payment_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the payment responsibilities accepted by the collaboration member for query and job compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for job compute costs (<code>TRUE</code>) or has not accepted to pay for query and job compute costs (<code>FALSE</code>).</p> <p>There is only one member who pays for queries and jobs. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for query and job compute costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for query and job compute costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipJobComputePaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MembershipJobLogStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>An object representing the collaboration member's machine learning payment responsibilities set by the collaboration creator.</p>
    # @!attribute model_training
    #   <p>The payment responsibilities accepted by the member for model training.</p>
    #   @return [Types::MembershipModelTrainingPaymentConfig]
    # @!attribute model_inference
    #   <p>The payment responsibilities accepted by the member for model inference.</p>
    #   @return [Types::MembershipModelInferencePaymentConfig]
    class MembershipMLPaymentConfig < Struct.new(
      :model_training,
      :model_inference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model inference payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for model inference costs (<code>TRUE</code>) or has not accepted to pay for model inference costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for model inference costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for model inference costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for model inference costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipModelInferencePaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model training payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for model training costs (<code>TRUE</code>) or has not accepted to pay for model training costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for model training costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for model training costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for model training costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipModelTrainingPaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :query_compute,
      :machine_learning,
      :job_compute,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains configurations for protected job results.</p>
    # @!attribute s3
    #   <p>Contains the configuration to write the job results to S3.</p>
    #   @return [Types::ProtectedJobS3OutputConfigurationInput]
    class MembershipProtectedJobOutputConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      :output_configuration,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains configurations for protected query results.</p>
    # @!attribute s3
    #   <p>Contains the configuration to write the query results to S3.</p>
    #   @return [Types::ProtectedQueryS3OutputConfiguration]
    class MembershipProtectedQueryOutputConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      :output_configuration,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the payment responsibilities accepted by the collaboration member for query compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration member has accepted to pay for query compute costs (<code>TRUE</code>) or has not accepted to pay for query compute costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for query compute costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for query compute costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for query compute costs. </p> </li> </ul>
    #   @return [Boolean]
    class MembershipQueryComputePaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MembershipQueryLogStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model inference payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for model inference costs (<code>TRUE</code>) or has not configured the collaboration member to pay for model inference costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for model inference costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for model inference costs, then the member who can query is the default payer. An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can query.</p>
    #   @return [Boolean]
    class ModelInferencePaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the collaboration member's model training payment responsibilities set by the collaboration creator.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for model training costs (<code>TRUE</code>) or has not configured the collaboration member to pay for model training costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for model training costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for model training costs, then the member who can query is the default payer. An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can query.</p>
    #   @return [Boolean]
    class ModelTrainingPaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ParameterType
      SMALLINT = 'SMALLINT'
      INTEGER = 'INTEGER'
      BIGINT = 'BIGINT'
      DECIMAL = 'DECIMAL'
      REAL = 'REAL'
      DOUBLE_PRECISION = 'DOUBLE_PRECISION'
      BOOLEAN = 'BOOLEAN'
      CHAR = 'CHAR'
      VARCHAR = 'VARCHAR'
      DATE = 'DATE'
      TIMESTAMP = 'TIMESTAMP'
      TIMESTAMPTZ = 'TIMESTAMPTZ'
      TIME = 'TIME'
      TIMETZ = 'TIMETZ'
      VARBYTE = 'VARBYTE'
      BINARY = 'BINARY'
      BYTE = 'BYTE'
      CHARACTER = 'CHARACTER'
      DOUBLE = 'DOUBLE'
      FLOAT = 'FLOAT'
      INT = 'INT'
      LONG = 'LONG'
      NUMERIC = 'NUMERIC'
      SHORT = 'SHORT'
      STRING = 'STRING'
      TIMESTAMP_LTZ = 'TIMESTAMP_LTZ'
      TIMESTAMP_NTZ = 'TIMESTAMP_NTZ'
      TINYINT = 'TINYINT'
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
      :query_compute,
      :machine_learning,
      :job_compute,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to populate.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to populate.</p>
    #   @return [String]
    class PopulateIdMappingTableInput < Struct.new(
      :id_mapping_table_identifier,
      :membership_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_job_id
    #   <p>The unique identifier of the mapping job that will populate the ID mapping table.</p>
    #   @return [String]
    class PopulateIdMappingTableOutput < Struct.new(
      :id_mapping_job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. Accepts a membership ID.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Specifies the desired epsilon and noise parameters to preview.</p>
    #   @return [Types::PreviewPrivacyImpactParametersInput]
    class PreviewPrivacyImpactInput < Struct.new(
      :membership_identifier,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute privacy_impact
    #   <p>An estimate of the number of aggregation functions that the member who can query can run given the epsilon and noise parameters. This does not change the privacy budget.</p>
    #   @return [Types::PrivacyImpact]
    class PreviewPrivacyImpactOutput < Struct.new(
      :privacy_impact,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the updated epsilon and noise parameters to preview. The preview allows you to see how the maximum number of each type of aggregation function would change with the new parameters.</p>
    # @!attribute differential_privacy
    #   <p>An array that specifies the epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyPreviewParametersInput]
    class PreviewPrivacyImpactParametersInput < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DifferentialPrivacy < PreviewPrivacyImpactParametersInput; end
      class Unknown < PreviewPrivacyImpactParametersInput; end
    end

    # <p>The epsilon parameter value and number of each aggregation function that you can perform.</p>
    # @!attribute differential_privacy
    #   <p>An object that specifies the epsilon parameter and the utility in terms of total aggregations, as well as the remaining aggregations available.</p>
    #   @return [Types::DifferentialPrivacyPrivacyBudget]
    class PrivacyBudget < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudget; end
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PrivacyBudgetTemplateAutoRefresh
      CALENDAR_MONTH = 'CALENDAR_MONTH'
      NONE = 'NONE'
    end

    # <p>The epsilon and noise parameters that you want to use for the privacy budget template.</p>
    # @!attribute differential_privacy
    #   <p>An object that specifies the epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyTemplateParametersInput]
    class PrivacyBudgetTemplateParametersInput < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateParametersInput; end
      class Unknown < PrivacyBudgetTemplateParametersInput; end
    end

    # <p>The epsilon and noise parameters that were used in the privacy budget template.</p>
    # @!attribute differential_privacy
    #   <p>The epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyTemplateParametersOutput]
    class PrivacyBudgetTemplateParametersOutput < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateParametersOutput; end
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
      :id,
      :arn,
      :membership_id,
      :membership_arn,
      :collaboration_id,
      :collaboration_arn,
      :privacy_budget_type,
      :create_time,
      :update_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The epsilon and noise parameters that you want to update in the privacy budget template.</p>
    # @!attribute differential_privacy
    #   <p>An object that specifies the new values for the epsilon and noise parameters.</p>
    #   @return [Types::DifferentialPrivacyTemplateUpdateParameters]
    class PrivacyBudgetTemplateUpdateParameters < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DifferentialPrivacy < PrivacyBudgetTemplateUpdateParameters; end
      class Unknown < PrivacyBudgetTemplateUpdateParameters; end
    end

    module PrivacyBudgetType
      DIFFERENTIAL_PRIVACY = 'DIFFERENTIAL_PRIVACY'
    end

    # <p>Provides an estimate of the number of aggregation functions that the member who can query can run given the epsilon and noise parameters.</p>
    # @!attribute differential_privacy
    #   <p>An object that lists the number and type of aggregation functions you can perform.</p>
    #   @return [Types::DifferentialPrivacyPrivacyImpact]
    class PrivacyImpact < Struct.new(
      :differential_privacy,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProtectedJobAnalysisType
      DIRECT_ANALYSIS = 'DIRECT_ANALYSIS'
    end

    # <p>The protected job configuration details.</p>
    # @!attribute direct_analysis_configuration_details
    #   <p>The details needed to configure the direct analysis.</p>
    #   @return [Types::ProtectedJobDirectAnalysisConfigurationDetails]
    class ProtectedJobConfigurationDetails < Struct.new(
      :direct_analysis_configuration_details,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DirectAnalysisConfigurationDetails < ProtectedJobConfigurationDetails; end
      class Unknown < ProtectedJobConfigurationDetails; end
    end

    # <p>The protected job direct analysis configuration details.</p>
    # @!attribute receiver_account_ids
    #   <p> The receiver account IDs.</p>
    #   @return [Array<String>]
    class ProtectedJobDirectAnalysisConfigurationDetails < Struct.new(
      :receiver_account_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The protected job error.</p>
    # @!attribute message
    #   <p> The message for the protected job error.</p>
    #   @return [String]
    # @!attribute code
    #   <p> The error code for the protected job.</p>
    #   @return [String]
    class ProtectedJobError < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The protected job member output configuration input.</p>
    # @!attribute account_id
    #   <p> The account ID.</p>
    #   @return [String]
    class ProtectedJobMemberOutputConfigurationInput < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The protected job member output configuration output.</p>
    # @!attribute account_id
    #   <p> The account ID.</p>
    #   @return [String]
    class ProtectedJobMemberOutputConfigurationOutput < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Union

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
      keyword_init: true)
      include Smithy::Schema::Union

      class S3 < ProtectedJobOutputConfigurationOutput; end
      class Member < ProtectedJobOutputConfigurationOutput; end
      class Unknown < ProtectedJobOutputConfigurationOutput; end
    end

    # <p>The parameters for the protected job.</p>
    # @!attribute analysis_template_arn
    #   <p> The ARN of the analysis template.</p>
    #   @return [String]
    class ProtectedJobParameters < Struct.new(
      :analysis_template_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The protected job receiver configuration.</p>
    # @!attribute analysis_type
    #   <p> The analysis type for the protected job receiver configuration.</p>
    #   @return [String]
    # @!attribute configuration_details
    #   <p> The configuration details for the protected job receiver.</p>
    #   @return [Types::ProtectedJobConfigurationDetails]
    class ProtectedJobReceiverConfiguration < Struct.new(
      :analysis_type,
      :configuration_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the job results.</p>
    # @!attribute output
    #   <p> The output of the protected job.</p>
    #   @return [Types::ProtectedJobOutput]
    class ProtectedJobResult < Struct.new(
      :output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The protected job result configuration input.</p>
    # @!attribute output_configuration
    #   <p> The output configuration for a protected job result.</p>
    #   @return [Types::ProtectedJobOutputConfigurationInput]
    class ProtectedJobResultConfigurationInput < Struct.new(
      :output_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output configuration for a protected job result.</p>
    # @!attribute output_configuration
    #   <p>The output configuration.</p>
    #   @return [Types::ProtectedJobOutputConfigurationOutput]
    class ProtectedJobResultConfigurationOutput < Struct.new(
      :output_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains output information for protected jobs with an S3 output type.</p>
    # @!attribute location
    #   <p> The S3 location for the protected job output.</p>
    #   @return [String]
    class ProtectedJobS3Output < Struct.new(
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains input information for protected jobs with an S3 output type.</p>
    # @!attribute bucket
    #   <p> The S3 bucket for job output.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The S3 prefix to unload the protected job results.</p>
    #   @return [String]
    class ProtectedJobS3OutputConfigurationInput < Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The output configuration for a protected job's S3 output.</p>
    # @!attribute bucket
    #   <p> The S3 bucket for job output.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The S3 prefix to unload the protected job results.</p>
    #   @return [String]
    class ProtectedJobS3OutputConfigurationOutput < Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the member who received the job result.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member in the collaboration who can receive results from analyses.</p>
    #   @return [String]
    class ProtectedJobSingleMemberOutput < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains statistics about the execution of the protected job.</p>
    # @!attribute total_duration_in_millis
    #   <p>The duration of the protected job, from creation until job completion, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute billed_resource_utilization
    #   <p> The billed resource utilization for the protected job.</p>
    #   @return [Types::BilledJobResourceUtilization]
    class ProtectedJobStatistics < Struct.new(
      :total_duration_in_millis,
      :billed_resource_utilization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProtectedJobStatus
      SUBMITTED = 'SUBMITTED'
      STARTED = 'STARTED'
      CANCELLED = 'CANCELLED'
      CANCELLING = 'CANCELLING'
      FAILED = 'FAILED'
      SUCCESS = 'SUCCESS'
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
    class ProtectedJobSummary < Struct.new(
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :status,
      :receiver_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:receiver_configurations] = [] unless options.key?(:receiver_configurations)
        super
      end
    end

    module ProtectedJobType
      PYSPARK = 'PYSPARK'
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
      :compute_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains the output information for a protected query with a distribute output configuration.</p> <p> This output type allows query results to be distributed to multiple receivers, including S3 and collaboration members. It is only available for queries using the Spark analytics engine.</p>
    # @!attribute s3
    #   <p>Contains output information for protected queries with an S3 output type.</p>
    #   @return [Types::ProtectedQueryS3Output]
    # @!attribute member_list
    #   <p> Contains the output results for each member location specified in the distribute output configuration. Each entry provides details about the result distribution to a specific collaboration member. </p>
    #   @return [Array<Types::ProtectedQuerySingleMemberOutput>]
    class ProtectedQueryDistributeOutput < Struct.new(
      :s3,
      :member_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies the configuration for distributing protected query results to multiple receivers, including S3 and collaboration members.</p>
    # @!attribute locations
    #   <p> A list of locations where you want to distribute the protected query results. Each location must specify either an S3 destination or a collaboration member destination.</p> <important> <p>You can't specify more than one S3 location.</p> <p>You can't specify the query runner's account as a member location.</p> <p>You must include either an S3 or member output configuration for each location, but not both.</p> </important>
    #   @return [Array<Types::ProtectedQueryDistributeOutputConfigurationLocation>]
    class ProtectedQueryDistributeOutputConfiguration < Struct.new(
      :locations,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Union

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
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains configuration details for the protected query member output.</p>
    # @!attribute account_id
    #   <p>The unique identifier for the account.</p>
    #   @return [String]
    class ProtectedQueryMemberOutputConfiguration < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Union

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
    class ProtectedQueryOutputConfiguration < Struct.new(
      :s3,
      :member,
      :distribute,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3 < ProtectedQueryOutputConfiguration; end
      class Member < ProtectedQueryOutputConfiguration; end
      class Distribute < ProtectedQueryOutputConfiguration; end
      class Unknown < ProtectedQueryOutputConfiguration; end
    end

    # <p>Details about the query results.</p>
    # @!attribute output
    #   <p>The output of the protected query.</p>
    #   @return [Types::ProtectedQueryOutput]
    class ProtectedQueryResult < Struct.new(
      :output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains configurations for protected query results.</p>
    # @!attribute output_configuration
    #   <p>Configuration for protected query results.</p>
    #   @return [Types::ProtectedQueryOutputConfiguration]
    class ProtectedQueryResultConfiguration < Struct.new(
      :output_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains output information for protected queries with an S3 output type.</p>
    # @!attribute location
    #   <p>The S3 location of the result.</p>
    #   @return [String]
    class ProtectedQueryS3Output < Struct.new(
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :result_format,
      :bucket,
      :key_prefix,
      :single_file_output,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :query_string,
      :analysis_template_arn,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the member who received the query result.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member in the collaboration who can receive results for the query.</p>
    #   @return [String]
    class ProtectedQuerySingleMemberOutput < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains statistics about the execution of the protected query.</p>
    # @!attribute total_duration_in_millis
    #   <p>The duration of the protected query, from creation until query completion, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute billed_resource_utilization
    #   <p> The billed resource utilization.</p>
    #   @return [Types::BilledResourceUtilization]
    class ProtectedQueryStatistics < Struct.new(
      :total_duration_in_millis,
      :billed_resource_utilization,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class ProtectedQuerySummary < Struct.new(
      :id,
      :membership_id,
      :membership_arn,
      :create_time,
      :status,
      :receiver_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:receiver_configurations] = [] unless options.key?(:receiver_configurations)
        super
      end
    end

    # <p>An object representing the collaboration member's payment responsibilities set by the collaboration creator for query compute costs.</p>
    # @!attribute is_responsible
    #   <p>Indicates whether the collaboration creator has configured the collaboration member to pay for query compute costs (<code>TRUE</code>) or has not configured the collaboration member to pay for query compute costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for query compute costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for query compute costs, then the member who can query is the default payer. An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can query.</p>
    #   @return [Boolean]
    class QueryComputePaymentConfig < Struct.new(
      :is_responsible,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides any necessary query constraint information.</p>
    # @!attribute require_overlap
    #   <p>An array of column names that specifies which columns are required in the JOIN statement.</p>
    #   @return [Types::QueryConstraintRequireOverlap]
    class QueryConstraint < Struct.new(
      :require_overlap,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class RequireOverlap < QueryConstraint; end
      class Unknown < QueryConstraint; end
    end

    # <p>Provides the name of the columns that are required to overlap.</p>
    # @!attribute columns
    #   <p>The columns that are required to overlap.</p>
    #   @return [Array<String>]
    class QueryConstraintRequireOverlap < Struct.new(
      :columns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The receiver configuration for a protected query.</p>
    # @!attribute analysis_type
    #   <p> The type of analysis for the protected query. The results of the query can be analyzed directly (<code>DIRECT_ANALYSIS</code>) or used as input into additional analyses (<code>ADDITIONAL_ANALYSIS</code>), such as a query that is a seed for a lookalike ML model.</p>
    #   @return [String]
    # @!attribute configuration_details
    #   <p> The configuration details of the receiver configuration.</p>
    #   @return [Types::ConfigurationDetails]
    class ReceiverConfiguration < Struct.new(
      :analysis_type,
      :configuration_details,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The S3 location.</p>
    # @!attribute bucket
    #   <p> The bucket name.</p>
    #   @return [String]
    # @!attribute key
    #   <p> The object key.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute schema_type_properties
    #   <p>The schema type properties.</p>
    #   @return [Types::SchemaTypeProperties]
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
      :schema_type_properties,
      keyword_init: true)
      include Smithy::Schema::Structure

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
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SchemaConfiguration
      DIFFERENTIAL_PRIVACY = 'DIFFERENTIAL_PRIVACY'
    end

    module SchemaStatus
      READY = 'READY'
      NOT_READY = 'NOT_READY'
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
      :status,
      :reasons,
      :analysis_rule_type,
      :configurations,
      :analysis_type,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:analysis_type] = '' unless options.key?(:analysis_type)
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
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SchemaStatusReasonCode
      ANALYSIS_RULE_MISSING = 'ANALYSIS_RULE_MISSING'
      ANALYSIS_TEMPLATES_NOT_CONFIGURED = 'ANALYSIS_TEMPLATES_NOT_CONFIGURED'
      ANALYSIS_PROVIDERS_NOT_CONFIGURED = 'ANALYSIS_PROVIDERS_NOT_CONFIGURED'
      DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED = 'DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED'
      ID_MAPPING_TABLE_NOT_POPULATED = 'ID_MAPPING_TABLE_NOT_POPULATED'
      COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED = 'COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED'
      ADDITIONAL_ANALYSES_NOT_CONFIGURED = 'ADDITIONAL_ANALYSES_NOT_CONFIGURED'
      RESULT_RECEIVERS_NOT_CONFIGURED = 'RESULT_RECEIVERS_NOT_CONFIGURED'
      ADDITIONAL_ANALYSES_NOT_ALLOWED = 'ADDITIONAL_ANALYSES_NOT_ALLOWED'
      RESULT_RECEIVERS_NOT_ALLOWED = 'RESULT_RECEIVERS_NOT_ALLOWED'
      ANALYSIS_RULE_TYPES_NOT_COMPATIBLE = 'ANALYSIS_RULE_TYPES_NOT_COMPATIBLE'
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
    # @!attribute selected_analysis_methods
    #   <p> The selected analysis methods for the schema.</p>
    #   @return [Array<String>]
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
      :selected_analysis_methods,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SchemaType
      TABLE = 'TABLE'
      ID_MAPPING_TABLE = 'ID_MAPPING_TABLE'
    end

    # <p>Information about the schema type properties.</p>
    # @!attribute id_mapping_table
    #   <p>The ID mapping table for the schema type properties.</p>
    #   @return [Types::IdMappingTableSchemaTypeProperties]
    class SchemaTypeProperties < Struct.new(
      :id_mapping_table,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class IdMappingTable < SchemaTypeProperties; end
      class Unknown < SchemaTypeProperties; end
    end

    module SelectedAnalysisMethod
      DIRECT_QUERY = 'DIRECT_QUERY'
      DIRECT_JOB = 'DIRECT_JOB'
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
      :message,
      :quota_name,
      :quota_value,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :secret_arn,
      :account_identifier,
      :database_name,
      :table_name,
      :schema_name,
      :table_schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The schema of a Snowflake table.</p>
    # @!attribute v1
    #   <p> The schema of a Snowflake table.</p>
    #   @return [Array<Types::SnowflakeTableSchemaV1>]
    class SnowflakeTableSchema < Struct.new(
      :v1,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      :column_name,
      :column_type,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class StartProtectedJobInput < Struct.new(
      :type,
      :membership_identifier,
      :job_parameters,
      :result_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute protected_job
    #   <p> The protected job.</p>
    #   @return [Types::ProtectedJob]
    class StartProtectedJobOutput < Struct.new(
      :protected_job,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class StartProtectedQueryOperationInput < Struct.new(
      :type,
      :membership_identifier,
      :sql_parameters,
      :result_configuration,
      :compute_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute protected_query
    #   <p>The protected query.</p>
    #   @return [Types::ProtectedQuery]
    class StartProtectedQueryOperationOutput < Struct.new(
      :protected_query,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Union

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
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetProtectedJobStatus
      CANCELLED = 'CANCELLED'
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to remove the tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names of tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :analysis_template_identifier,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_template
    #   <p>The analysis template.</p>
    #   @return [Types::AnalysisTemplate]
    class UpdateAnalysisTemplateOperationOutput < Struct.new(
      :analysis_template,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :collaboration_identifier,
      :name,
      :description,
      :analytics_engine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collaboration
    #   <p>The entire collaboration that has been updated.</p>
    #   @return [Types::Collaboration]
    class UpdateCollaborationOperationOutput < Struct.new(
      :collaboration,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :configured_audience_model_association_identifier,
      :membership_identifier,
      :description,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_association
    #   <p>Details about the configured audience model association that you updated.</p>
    #   @return [Types::ConfiguredAudienceModelAssociation]
    class UpdateConfiguredAudienceModelAssociationOutput < Struct.new(
      :configured_audience_model_association,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :configured_table_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p>The entire updated analysis rule.</p>
    #   @return [Types::ConfiguredTableAnalysisRule]
    class UpdateConfiguredTableAnalysisRuleOperationOutput < Struct.new(
      :analysis_rule,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :configured_table_association_identifier,
      :analysis_rule_type,
      :analysis_rule_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis_rule
    #   <p> The updated analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>
    #   @return [Types::ConfiguredTableAssociationAnalysisRule]
    class UpdateConfiguredTableAssociationAnalysisRuleOutput < Struct.new(
      :analysis_rule,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :configured_table_association_identifier,
      :membership_identifier,
      :description,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table_association
    #   <p>The entire updated configured table association.</p>
    #   @return [Types::ConfiguredTableAssociation]
    class UpdateConfiguredTableAssociationOperationOutput < Struct.new(
      :configured_table_association,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :configured_table_identifier,
      :name,
      :description,
      :table_reference,
      :allowed_columns,
      :analysis_method,
      :selected_analysis_methods,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_table
    #   <p>The updated configured table.</p>
    #   @return [Types::ConfiguredTable]
    class UpdateConfiguredTableOperationOutput < Struct.new(
      :configured_table,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id_mapping_table_identifier,
      :membership_identifier,
      :description,
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_mapping_table
    #   <p>The updated ID mapping table.</p>
    #   @return [Types::IdMappingTable]
    class UpdateIdMappingTableOutput < Struct.new(
      :id_mapping_table,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :id_namespace_association_identifier,
      :membership_identifier,
      :name,
      :description,
      :id_mapping_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id_namespace_association
    #   <p>The updated ID namespace association.</p>
    #   @return [Types::IdNamespaceAssociation]
    class UpdateIdNamespaceAssociationOutput < Struct.new(
      :id_namespace_association,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class UpdateMembershipOperationInput < Struct.new(
      :membership_identifier,
      :query_log_status,
      :job_log_status,
      :default_result_configuration,
      :default_job_result_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>The membership object.</p>
    #   @return [Types::Membership]
    class UpdateMembershipOperationOutput < Struct.new(
      :membership,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :privacy_budget_template_identifier,
      :privacy_budget_type,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute privacy_budget_template
    #   <p>Summary of the privacy budget template.</p>
    #   @return [Types::PrivacyBudgetTemplate]
    class UpdatePrivacyBudgetTemplateOutput < Struct.new(
      :privacy_budget_template,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :protected_job_identifier,
      :target_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute protected_job
    #   <p>The protected job output.</p>
    #   @return [Types::ProtectedJob]
    class UpdateProtectedJobOutput < Struct.new(
      :protected_job,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :membership_identifier,
      :protected_query_identifier,
      :target_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute protected_query
    #   <p>The protected query output.</p>
    #   @return [Types::ProtectedQuery]
    class UpdateProtectedQueryOperationOutput < Struct.new(
      :protected_query,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes validation errors for specific input parameters.</p>
    # @!attribute name
    #   <p>The name of the input parameter.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message for the input validation error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The configuration of the compute resources for workers running an analysis with the Clean Rooms SQL analytics engine.</p>
    # @!attribute type
    #   <p> The worker compute configuration type.</p>
    #   @return [String]
    # @!attribute number
    #   <p> The number of workers.</p>
    #   @return [Integer]
    class WorkerComputeConfiguration < Struct.new(
      :type,
      :number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module WorkerComputeType
      CR1X = 'CR.1X'
      CR4X = 'CR.4X'
    end

  end
end

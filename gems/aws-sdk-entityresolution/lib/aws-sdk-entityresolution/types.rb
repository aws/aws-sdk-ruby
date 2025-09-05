# frozen_string_literal: true

# This is generated code!

module Aws::EntityResolution
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource that will be accessed by the principal.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>Determines whether the permissions specified in the policy are to be allowed (<code>Allow</code>) or denied (<code>Deny</code>).</p> <important> <p> If you set the value of the <code>effect</code> parameter to <code>Deny</code> for the <code>AddPolicyStatement</code> operation, you must also set the value of the <code>effect</code> parameter in the <code>policy</code> to <code>Deny</code> for the <code>PutPolicy</code> operation.</p> </important>
    #   @return [String]
    # @!attribute action
    #   <p>The action that the principal can use on the resource. </p> <p>For example, <code>entityresolution:GetIdMappingJob</code>, <code>entityresolution:GetMatchingJob</code>.</p>
    #   @return [Array<String>]
    # @!attribute principal
    #   <p>The Amazon Web Services service or Amazon Web Services account that can access the resource defined as ARN.</p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>A set of condition keys that you can use in key policies.</p>
    #   @return [String]
    class AddPolicyStatementInput < Struct.new(
      :arn,
      :statement_id,
      :effect,
      :action,
      :principal,
      :condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource that will be accessed by the principal.</p>
    #   @return [String]
    # @!attribute token
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    class AddPolicyStatementOutput < Struct.new(
      :arn,
      :token,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute input_source
    #   <p>The input source for the batch delete unique ID operation.</p>
    #   @return [String]
    # @!attribute unique_ids
    #   <p>The unique IDs to delete.</p>
    #   @return [Array<String>]
    class BatchDeleteUniqueIdInput < Struct.new(
      :workflow_name,
      :input_source,
      :unique_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the batch delete unique ID operation.</p>
    #   @return [String]
    # @!attribute errors
    #   <p> The errors from deleting multiple unique IDs.</p>
    #   @return [Array<Types::DeleteUniqueIdError>]
    # @!attribute deleted
    #   <p>The unique IDs that were deleted.</p>
    #   @return [Array<Types::DeletedUniqueId>]
    # @!attribute disconnected_unique_ids
    #   <p>The unique IDs that were disconnected.</p>
    #   @return [Array<String>]
    class BatchDeleteUniqueIdOutput < Struct.new(
      :status,
      :errors,
      :deleted,
      :disconnected_unique_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the resource. Example: Workflow already exists, Schema already exists, Workflow is currently running, etc. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow. There can't be multiple <code>IdMappingWorkflows</code> with the same name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>IdMappingWorkflowOutputSource</code> objects, each of which contains fields <code>outputS3Path</code> and <code>KMSArn</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    # @!attribute id_mapping_techniques
    #   <p>An object which defines the ID mapping technique and any additional configurations.</p>
    #   @return [Types::IdMappingTechniques]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateIdMappingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :role_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>IDMappingWorkflow</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>IdMappingWorkflowOutputSource</code> objects, each of which contains fields <code>outputS3Path</code> and <code>KMSArn</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    # @!attribute id_mapping_techniques
    #   <p>An object which defines the ID mapping technique and any additional configurations.</p>
    #   @return [Types::IdMappingTechniques]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    class CreateIdMappingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:role_arn] = '' unless options.key?(:role_arn)
        super
      end
    end

    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdNamespaceInputSource>]
    # @!attribute id_mapping_workflow_properties
    #   <p>Determines the properties of <code>IdMappingWorflow</code> where this <code>IdNamespace</code> can be used as a <code>Source</code> or a <code>Target</code>.</p>
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    # @!attribute type
    #   <p>The type of ID namespace. There are two types: <code>SOURCE</code> and <code>TARGET</code>. </p> <p>The <code>SOURCE</code> contains configurations for <code>sourceId</code> data that will be processed in an ID mapping workflow. </p> <p>The <code>TARGET</code> contains a configuration of <code>targetId</code> to which all <code>sourceIds</code> will resolve to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access the resources defined in this <code>IdNamespace</code> on your behalf as part of the workflow run.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateIdNamespaceInput < Struct.new(
      :id_namespace_name,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :type,
      :role_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    # @!attribute id_namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the ID namespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdNamespaceInputSource>]
    # @!attribute id_mapping_workflow_properties
    #   <p>Determines the properties of <code>IdMappingWorkflow</code> where this <code>IdNamespace</code> can be used as a <code>Source</code> or a <code>Target</code>.</p>
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    # @!attribute type
    #   <p>The type of ID namespace. There are two types: <code>SOURCE</code> and <code>TARGET</code>.</p> <p>The <code>SOURCE</code> contains configurations for <code>sourceId</code> data that will be processed in an ID mapping workflow. </p> <p>The <code>TARGET</code> contains a configuration of <code>targetId</code> to which all <code>sourceIds</code> will resolve to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access the resources defined in <code>inputSourceConfig</code> on your behalf as part of the workflow run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the ID namespace was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the ID namespace was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateIdNamespaceOutput < Struct.new(
      :id_namespace_name,
      :id_namespace_arn,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :type,
      :role_arn,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow. There can't be multiple <code>MatchingWorkflows</code> with the same name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::InputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code>, <code>applyNormalization</code>, <code>KMSArn</code>, and <code>output</code>.</p>
    #   @return [Array<Types::OutputSource>]
    # @!attribute resolution_techniques
    #   <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    #   @return [Types::ResolutionTechniques]
    # @!attribute incremental_run_config
    #   <p>Optional. An object that defines the incremental run type. This object contains only the <code>incrementalRunType</code> field, which appears as "Automatic" in the console. </p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code>, incremental processing is not supported. </p> </important>
    #   @return [Types::IncrementalRunConfig]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateMatchingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>MatchingWorkflow</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::InputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code>, <code>applyNormalization</code>, <code>KMSArn</code>, and <code>output</code>.</p>
    #   @return [Array<Types::OutputSource>]
    # @!attribute resolution_techniques
    #   <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    #   @return [Types::ResolutionTechniques]
    # @!attribute incremental_run_config
    #   <p>An object which defines an incremental run type and has only <code>incrementalRunType</code> as a field.</p>
    #   @return [Types::IncrementalRunConfig]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    class CreateMatchingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_name
    #   <p>The name of the schema. There can't be multiple <code>SchemaMappings</code> with the same name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema.</p>
    #   @return [String]
    # @!attribute mapped_input_fields
    #   <p>A list of <code>MappedInputFields</code>. Each <code>MappedInputField</code> corresponds to a column the source data table, and contains column name plus additional information that Entity Resolution uses for matching.</p>
    #   @return [Array<Types::SchemaInputAttribute>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateSchemaMappingInput < Struct.new(
      :schema_name,
      :description,
      :mapped_input_fields,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>SchemaMapping</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema.</p>
    #   @return [String]
    # @!attribute mapped_input_fields
    #   <p>A list of <code>MappedInputFields</code>. Each <code>MappedInputField</code> corresponds to a column the source data table, and contains column name plus additional information that Entity Resolution uses for matching.</p>
    #   @return [Array<Types::SchemaInputAttribute>]
    class CreateSchemaMappingOutput < Struct.new(
      :schema_name,
      :schema_arn,
      :description,
      :mapped_input_fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow to be deleted.</p>
    #   @return [String]
    class DeleteIdMappingWorkflowInput < Struct.new(
      :workflow_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A successful operation message.</p>
    #   @return [String]
    class DeleteIdMappingWorkflowOutput < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    class DeleteIdNamespaceInput < Struct.new(
      :id_namespace_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A successful operation message.</p>
    #   @return [String]
    class DeleteIdNamespaceOutput < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    #   @return [String]
    class DeleteMatchingWorkflowInput < Struct.new(
      :workflow_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A successful operation message.</p>
    #   @return [String]
    class DeleteMatchingWorkflowOutput < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource for which the policy need to be deleted.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    #   @return [String]
    class DeletePolicyStatementInput < Struct.new(
      :arn,
      :statement_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource for which the policy need to be deleted.</p>
    #   @return [String]
    # @!attribute token
    #   <p>A unique identifier for the deleted policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    class DeletePolicyStatementOutput < Struct.new(
      :arn,
      :token,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_name
    #   <p>The name of the schema to delete.</p>
    #   @return [String]
    class DeleteSchemaMappingInput < Struct.new(
      :schema_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A successful operation message.</p>
    #   @return [String]
    class DeleteSchemaMappingOutput < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Delete Unique Id error.</p>
    # @!attribute unique_id
    #   <p>The unique ID that could not be deleted.</p>
    #   @return [String]
    # @!attribute error_type
    #   <p> The error type for the batch delete unique ID operation.</p>
    #   @return [String]
    class DeleteUniqueIdError < Struct.new(
      :unique_id,
      :error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The deleted unique ID.</p>
    # @!attribute unique_id
    #   <p> The unique ID of the deleted item.</p>
    #   @return [String]
    class DeletedUniqueId < Struct.new(
      :unique_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing an error message, if there was an error.</p>
    # @!attribute error_message
    #   <p>The error message from the job, if there is one.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because it attempted to create resources beyond the current Entity Resolution account limits. The error message describes the limit exceeded. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_name
    #   <p>The name of the quota that has been breached.</p>
    #   @return [String]
    # @!attribute quota_value
    #   <p>The current quota value for the customers.</p>
    #   @return [Integer]
    class ExceedsLimitException < Struct.new(
      :message,
      :quota_name,
      :quota_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The record that didn't generate a Match ID.</p>
    # @!attribute input_source_arn
    #   <p> The input source ARN of the record that didn't generate a Match ID.</p>
    #   @return [String]
    # @!attribute unique_id
    #   <p> The unique ID of the record that didn't generate a Match ID.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The error message for the record that didn't generate a Match ID.</p>
    #   @return [String]
    class FailedRecord < Struct.new(
      :input_source_arn,
      :unique_id,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p> The name of the rule-based matching workflow.</p>
    #   @return [String]
    # @!attribute records
    #   <p> The records to match.</p>
    #   @return [Array<Types::Record>]
    # @!attribute processing_type
    #   <p>The processing mode that determines how Match IDs are generated and results are saved. Each mode provides different levels of accuracy, response time, and completeness of results.</p> <p>If not specified, defaults to <code>CONSISTENT</code>.</p> <p> <code>CONSISTENT</code>: Performs immediate lookup and matching against all existing records, with results saved synchronously. Provides highest accuracy but slower response time.</p> <p> <code>EVENTUAL</code> (shown as <i>Background</i> in the console): Performs initial match ID lookup or generation immediately, with record updates processed asynchronously in the background. Offers faster initial response time, with complete matching results available later in S3. </p> <p> <code>EVENTUAL_NO_LOOKUP</code> (shown as <i>Quick ID generation</i> in the console): Generates new match IDs without checking existing matches, with updates processed asynchronously. Provides fastest response time but should only be used for records known to be unique. </p>
    #   @return [String]
    class GenerateMatchIdInput < Struct.new(
      :workflow_name,
      :records,
      :processing_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute match_groups
    #   <p> The match groups from the generated match ID.</p>
    #   @return [Array<Types::MatchGroup>]
    # @!attribute failed_records
    #   <p> The records that didn't receive a generated Match ID.</p>
    #   @return [Array<Types::FailedRecord>]
    class GenerateMatchIdOutput < Struct.new(
      :match_groups,
      :failed_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    class GetIdMappingJobInput < Struct.new(
      :workflow_name,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the job.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the job was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the job has finished.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>Metrics associated with the execution, specifically total records processed, unique IDs generated, and records the execution skipped.</p>
    #   @return [Types::IdMappingJobMetrics]
    # @!attribute error_details
    #   <p>An object containing an error message, if there was an error.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects.</p>
    #   @return [Array<Types::IdMappingJobOutputSource>]
    class GetIdMappingJobOutput < Struct.new(
      :job_id,
      :status,
      :start_time,
      :end_time,
      :metrics,
      :error_details,
      :output_source_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    class GetIdMappingWorkflowInput < Struct.new(
      :workflow_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>IdMappingWorkflow</code> .</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code> and <code>KMSArn</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    # @!attribute id_mapping_techniques
    #   <p>An object which defines the ID mapping technique and any additional configurations.</p>
    #   @return [Types::IdMappingTechniques]
    # @!attribute created_at
    #   <p>The timestamp of when the workflow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the workflow was last updated.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetIdMappingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :created_at,
      :updated_at,
      :role_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:role_arn] = '' unless options.key?(:role_arn)
        super
      end
    end

    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    class GetIdNamespaceInput < Struct.new(
      :id_namespace_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    # @!attribute id_namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the ID namespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdNamespaceInputSource>]
    # @!attribute id_mapping_workflow_properties
    #   <p>Determines the properties of <code>IdMappingWorkflow</code> where this <code>IdNamespace</code> can be used as a <code>Source</code> or a <code>Target</code>.</p>
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    # @!attribute type
    #   <p>The type of ID namespace. There are two types: <code>SOURCE</code> and <code>TARGET</code>.</p> <p>The <code>SOURCE</code> contains configurations for <code>sourceId</code> data that will be processed in an ID mapping workflow. </p> <p>The <code>TARGET</code> contains a configuration of <code>targetId</code> to which all <code>sourceIds</code> will resolve to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access the resources defined in this <code>IdNamespace</code> on your behalf as part of a workflow run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the ID namespace was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the ID namespace was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetIdNamespaceOutput < Struct.new(
      :id_namespace_name,
      :id_namespace_arn,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :type,
      :role_arn,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute record
    #   <p>The record to fetch the Match ID for.</p>
    #   @return [Hash<String, String>]
    # @!attribute apply_normalization
    #   <p>Normalizes the attributes defined in the schema in the input data. For example, if an attribute has an <code>AttributeType</code> of <code>PHONE_NUMBER</code>, and the data in the input table is in a format of 1234567890, Entity Resolution will normalize this field in the output to (123)-456-7890.</p>
    #   @return [Boolean]
    class GetMatchIdInput < Struct.new(
      :workflow_name,
      :record,
      :apply_normalization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute match_id
    #   <p>The unique identifiers for this group of match records.</p>
    #   @return [String]
    # @!attribute match_rule
    #   <p>The rule the record matched on.</p>
    #   @return [String]
    class GetMatchIdOutput < Struct.new(
      :match_id,
      :match_rule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    class GetMatchingJobInput < Struct.new(
      :workflow_name,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier of the matching job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the job.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the job was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the job has finished.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>Metrics associated with the execution, specifically total records processed, unique IDs generated, and records the execution skipped.</p>
    #   @return [Types::JobMetrics]
    # @!attribute error_details
    #   <p>An object containing an error message, if there was an error.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects.</p>
    #   @return [Array<Types::JobOutputSource>]
    class GetMatchingJobOutput < Struct.new(
      :job_id,
      :status,
      :start_time,
      :end_time,
      :metrics,
      :error_details,
      :output_source_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    class GetMatchingWorkflowInput < Struct.new(
      :workflow_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>MatchingWorkflow</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::InputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code>, <code>applyNormalization</code>, <code>KMSArn</code>, and <code>output</code>.</p>
    #   @return [Array<Types::OutputSource>]
    # @!attribute resolution_techniques
    #   <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    #   @return [Types::ResolutionTechniques]
    # @!attribute created_at
    #   <p>The timestamp of when the workflow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the workflow was last updated.</p>
    #   @return [Time]
    # @!attribute incremental_run_config
    #   <p>An object which defines an incremental run type and has only <code>incrementalRunType</code> as a field.</p>
    #   @return [Types::IncrementalRunConfig]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetMatchingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :created_at,
      :updated_at,
      :incremental_run_config,
      :role_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the policy need to be returned.</p>
    #   @return [String]
    class GetPolicyInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Entity Resolution resource ARN.</p>
    #   @return [String]
    # @!attribute token
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    class GetPolicyOutput < Struct.new(
      :arn,
      :token,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider_name
    #   <p>The name of the provider. This name is typically the company name.</p>
    #   @return [String]
    # @!attribute provider_service_name
    #   <p>The ARN (Amazon Resource Name) of the product that the provider service provides.</p>
    #   @return [String]
    class GetProviderServiceInput < Struct.new(
      :provider_name,
      :provider_service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider_name
    #   <p>The name of the provider. This name is typically the company name.</p>
    #   @return [String]
    # @!attribute provider_service_name
    #   <p>The name of the product that the provider service provides. </p>
    #   @return [String]
    # @!attribute provider_service_display_name
    #   <p>The display name of the provider service.</p>
    #   @return [String]
    # @!attribute provider_service_type
    #   <p>The type of provider service.</p>
    #   @return [String]
    # @!attribute provider_service_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the provider service.</p>
    #   @return [String]
    # @!attribute provider_configuration_definition
    #   <p>The definition of the provider configuration.</p>
    #   @return [JSON]
    # @!attribute provider_id_name_space_configuration
    #   <p>The provider configuration required for different ID namespace types.</p>
    #   @return [Types::ProviderIdNameSpaceConfiguration]
    # @!attribute provider_job_configuration
    #   <p>Provider service job configurations.</p>
    #   @return [JSON]
    # @!attribute provider_endpoint_configuration
    #   <p>The required configuration fields to use with the provider service.</p>
    #   @return [Types::ProviderEndpointConfiguration]
    # @!attribute anonymized_output
    #   <p>Specifies whether output data from the provider is anonymized. A value of <code>TRUE</code> means the output will be anonymized and you can't relate the data that comes back from the provider to the identifying input. A value of <code>FALSE</code> means the output won't be anonymized and you can relate the data that comes back from the provider to your source data. </p>
    #   @return [Boolean]
    # @!attribute provider_entity_output_definition
    #   <p>The definition of the provider entity output.</p>
    #   @return [JSON]
    # @!attribute provider_intermediate_data_access_configuration
    #   <p>The Amazon Web Services accounts and the S3 permissions that are required by some providers to create an S3 bucket for intermediate data storage.</p>
    #   @return [Types::ProviderIntermediateDataAccessConfiguration]
    # @!attribute provider_component_schema
    #   <p>Input schema for the provider service.</p>
    #   @return [Types::ProviderComponentSchema]
    class GetProviderServiceOutput < Struct.new(
      :provider_name,
      :provider_service_name,
      :provider_service_display_name,
      :provider_service_type,
      :provider_service_arn,
      :provider_configuration_definition,
      :provider_id_name_space_configuration,
      :provider_job_configuration,
      :provider_endpoint_configuration,
      :anonymized_output,
      :provider_entity_output_definition,
      :provider_intermediate_data_access_configuration,
      :provider_component_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_name
    #   <p>The name of the schema to be retrieved.</p>
    #   @return [String]
    class GetSchemaMappingInput < Struct.new(
      :schema_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the SchemaMapping.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema.</p>
    #   @return [String]
    # @!attribute mapped_input_fields
    #   <p>A list of <code>MappedInputFields</code>. Each <code>MappedInputField</code> corresponds to a column the source data table, and contains column name plus additional information Entity Resolution uses for matching.</p>
    #   @return [Array<Types::SchemaInputAttribute>]
    # @!attribute created_at
    #   <p>The timestamp of when the <code>SchemaMapping</code> was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the <code>SchemaMapping</code> was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute has_workflows
    #   <p>Specifies whether the schema mapping has been applied to a workflow.</p>
    #   @return [Boolean]
    class GetSchemaMappingOutput < Struct.new(
      :schema_name,
      :schema_arn,
      :description,
      :mapped_input_fields,
      :created_at,
      :updated_at,
      :tags,
      :has_workflows,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains metrics about an ID mapping job, including counts of input records, processed records, and mapped records between source and target identifiers. </p>
    # @!attribute input_records
    #   <p>The total number of records that were input for processing.</p>
    #   @return [Integer]
    # @!attribute total_records_processed
    #   <p>The total number of records that were processed.</p>
    #   @return [Integer]
    # @!attribute records_not_processed
    #   <p>The total number of records that did not get processed.</p>
    #   @return [Integer]
    # @!attribute total_mapped_records
    #   <p> The total number of records that were mapped.</p>
    #   @return [Integer]
    # @!attribute total_mapped_source_records
    #   <p> The total number of mapped source records.</p>
    #   @return [Integer]
    # @!attribute total_mapped_target_records
    #   <p> The total number of distinct mapped target records.</p>
    #   @return [Integer]
    # @!attribute unique_records_loaded
    #   <p>The number of records remaining after loading and aggregating duplicate records. Duplicates are determined by the field marked as UNIQUE_ID in your schema mapping - records sharing the same value in this field are considered duplicates. For example, if you specified "customer_id" as a UNIQUE_ID field and had three records with the same customer_id value, they would count as one unique record in this metric. </p>
    #   @return [Integer]
    class IdMappingJobMetrics < Struct.new(
      :input_records,
      :total_records_processed,
      :records_not_processed,
      :total_mapped_records,
      :total_mapped_source_records,
      :total_mapped_target_records,
      :unique_records_loaded,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>KMSArn</code>, <code>outputS3Path</code>, and <code>roleARN</code>.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    # @!attribute output_s3_path
    #   <p>The S3 path to which Entity Resolution will write the output table.</p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p>Customer KMS ARN for encryption at rest. If not provided, system will use an Entity Resolution managed KMS key.</p>
    #   @return [String]
    class IdMappingJobOutputSource < Struct.new(
      :role_arn,
      :output_s3_path,
      :kms_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> An object that defines the list of matching rules to run in an ID mapping workflow.</p>
    # @!attribute rules
    #   <p> The rules that can be used for ID mapping.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute rule_definition_type
    #   <p> The set of rules you can use in an ID mapping workflow. The limitations specified for the source or target to define the match rules must be compatible.</p>
    #   @return [String]
    # @!attribute attribute_matching_model
    #   <p>The comparison type. You can either choose <code>ONE_TO_ONE</code> or <code>MANY_TO_MANY</code> as the <code>attributeMatchingModel</code>. </p> <p>If you choose <code>ONE_TO_ONE</code>, the system can only match attributes if the sub-types are an exact match. For example, for the <code>Email</code> attribute type, the system will only consider it a match if the value of the <code>Email</code> field of Profile A matches the value of the <code>Email</code> field of Profile B.</p> <p>If you choose <code>MANY_TO_MANY</code>, the system can match attributes across the sub-types of an attribute type. For example, if the value of the <code>Email</code> field of Profile A matches the value of the <code>BusinessEmail</code> field of Profile B, the two profiles are matched on the <code>Email</code> attribute type. </p>
    #   @return [String]
    # @!attribute record_matching_model
    #   <p> The type of matching record that is allowed to be used in an ID mapping workflow. </p> <p>If the value is set to <code>ONE_SOURCE_TO_ONE_TARGET</code>, only one record in the source can be matched to the same record in the target.</p> <p>If the value is set to <code>MANY_SOURCE_TO_ONE_TARGET</code>, multiple records in the source can be matched to one record in the target.</p>
    #   @return [String]
    class IdMappingRuleBasedProperties < Struct.new(
      :rules,
      :rule_definition_type,
      :attribute_matching_model,
      :record_matching_model,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object which defines the ID mapping technique and any additional configurations.</p>
    # @!attribute id_mapping_type
    #   <p>The type of ID mapping.</p>
    #   @return [String]
    # @!attribute rule_based_properties
    #   <p> An object which defines any additional configurations required by rule-based matching.</p>
    #   @return [Types::IdMappingRuleBasedProperties]
    # @!attribute provider_properties
    #   <p>An object which defines any additional configurations required by the provider service.</p>
    #   @return [Types::ProviderProperties]
    class IdMappingTechniques < Struct.new(
      :id_mapping_type,
      :rule_based_properties,
      :provider_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>inputSourceARN</code>, <code>schemaName</code>, and <code>type</code>.</p>
    # @!attribute input_source_arn
    #   <p>An Glue table Amazon Resource Name (ARN) or a matching workflow ARN for the input source table.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema to be retrieved.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of ID namespace. There are two types: <code>SOURCE</code> and <code>TARGET</code>. </p> <p>The <code>SOURCE</code> contains configurations for <code>sourceId</code> data that will be processed in an ID mapping workflow. </p> <p>The <code>TARGET</code> contains a configuration of <code>targetId</code> which all <code>sourceIds</code> will resolve to.</p>
    #   @return [String]
    class IdMappingWorkflowInputSource < Struct.new(
      :input_source_arn,
      :schema_name,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The output source for the ID mapping workflow.</p>
    # @!attribute output_s3_path
    #   <p>The S3 path to which Entity Resolution will write the output table.</p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p>Customer KMS ARN for encryption at rest. If not provided, system will use an Entity Resolution managed KMS key.</p>
    #   @return [String]
    class IdMappingWorkflowOutputSource < Struct.new(
      :output_s3_path,
      :kms_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>IdMappingWorkflowSummary</code> objects, each of which contain the fields <code>WorkflowName</code>, <code>WorkflowArn</code>, <code>CreatedAt</code>, and <code>UpdatedAt</code>.</p>
    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>IdMappingWorkflow</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the workflow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the workflow was last updated.</p>
    #   @return [Time]
    class IdMappingWorkflowSummary < Struct.new(
      :workflow_name,
      :workflow_arn,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for the ID namespace for the ID mapping workflow job.</p>
    # @!attribute id_mapping_type
    #   <p>The type of ID mapping.</p>
    #   @return [String]
    class IdNamespaceIdMappingWorkflowMetadata < Struct.new(
      :id_mapping_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>idMappingType</code>, <code>providerProperties</code>, and <code>ruleBasedProperties</code>.</p>
    # @!attribute id_mapping_type
    #   <p>The type of ID mapping.</p>
    #   @return [String]
    # @!attribute rule_based_properties
    #   <p> An object which defines any additional configurations required by rule-based matching.</p>
    #   @return [Types::NamespaceRuleBasedProperties]
    # @!attribute provider_properties
    #   <p>An object which defines any additional configurations required by the provider service.</p>
    #   @return [Types::NamespaceProviderProperties]
    class IdNamespaceIdMappingWorkflowProperties < Struct.new(
      :id_mapping_type,
      :rule_based_properties,
      :provider_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>inputSourceARN</code> and <code>schemaName</code>.</p>
    # @!attribute input_source_arn
    #   <p>An Glue table Amazon Resource Name (ARN) or a matching workflow ARN for the input source table.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    class IdNamespaceInputSource < Struct.new(
      :input_source_arn,
      :schema_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of ID namespaces.</p>
    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    # @!attribute id_namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the ID namespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace.</p>
    #   @return [String]
    # @!attribute id_mapping_workflow_properties
    #   <p>An object which defines any additional configurations required by the ID mapping workflow.</p>
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowMetadata>]
    # @!attribute type
    #   <p>The type of ID namespace. There are two types: <code>SOURCE</code> and <code>TARGET</code>.</p> <p>The <code>SOURCE</code> contains configurations for <code>sourceId</code> data that will be processed in an ID mapping workflow. </p> <p>The <code>TARGET</code> contains a configuration of <code>targetId</code> which all <code>sourceIds</code> will resolve to.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the ID namespace was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the ID namespace was last updated.</p>
    #   @return [Time]
    class IdNamespaceSummary < Struct.new(
      :id_namespace_name,
      :id_namespace_arn,
      :description,
      :id_mapping_workflow_properties,
      :type,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Optional. An object that defines the incremental run type. This object contains only the <code>incrementalRunType</code> field, which appears as "Automatic" in the console. </p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code>, incremental processing is not supported. </p> </important>
    # @!attribute incremental_run_type
    #   <p>The type of incremental run. The only valid value is <code>IMMEDIATE</code>. This appears as "Automatic" in the console.</p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code>, incremental processing is not supported. </p> </important>
    #   @return [String]
    class IncrementalRunConfig < Struct.new(
      :incremental_run_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>inputSourceARN</code>, <code>schemaName</code>, and <code>applyNormalization</code>.</p>
    # @!attribute input_source_arn
    #   <p>An Glue table Amazon Resource Name (ARN) for the input source table.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema to be retrieved.</p>
    #   @return [String]
    # @!attribute apply_normalization
    #   <p>Normalizes the attributes defined in the schema in the input data. For example, if an attribute has an <code>AttributeType</code> of <code>PHONE_NUMBER</code>, and the data in the input table is in a format of 1234567890, Entity Resolution will normalize this field in the output to (123)-456-7890.</p>
    #   @return [Boolean]
    class InputSource < Struct.new(
      :input_source_arn,
      :schema_name,
      :apply_normalization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location that temporarily stores your data while it processes. Your information won't be saved permanently.</p>
    # @!attribute intermediate_s3_path
    #   <p>The Amazon S3 location (bucket and prefix). For example: <code>s3://provider_bucket/DOC-EXAMPLE-BUCKET</code> </p>
    #   @return [String]
    class IntermediateSourceConfiguration < Struct.new(
      :intermediate_s3_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception occurs when there is an internal failure in the Entity Resolution service. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>inputRecords</code>, <code>totalRecordsProcessed</code>, <code>matchIDs</code>, and <code>recordsNotProcessed</code>.</p>
    # @!attribute input_records
    #   <p>The total number of input records.</p>
    #   @return [Integer]
    # @!attribute total_records_processed
    #   <p>The total number of records processed.</p>
    #   @return [Integer]
    # @!attribute records_not_processed
    #   <p>The total number of records that did not get processed.</p>
    #   @return [Integer]
    # @!attribute match_i_ds
    #   <p>The total number of <code>matchID</code>s generated.</p>
    #   @return [Integer]
    class JobMetrics < Struct.new(
      :input_records,
      :total_records_processed,
      :records_not_processed,
      :match_i_ds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>KMSArn</code>, <code>outputS3Path</code>, and <code>roleArn</code>.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    # @!attribute output_s3_path
    #   <p>The S3 path to which Entity Resolution will write the output table.</p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p>Customer KMS ARN for encryption at rest. If not provided, system will use an Entity Resolution managed KMS key.</p>
    #   @return [String]
    class JobOutputSource < Struct.new(
      :role_arn,
      :output_s3_path,
      :kms_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the <code>jobId</code>, <code>status</code>, <code>startTime</code>, and <code>endTime</code> of a job.</p>
    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the job.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the job was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the job has finished.</p>
    #   @return [Time]
    class JobSummary < Struct.new(
      :job_id,
      :status,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListIdMappingJobsInput < Struct.new(
      :workflow_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of <code>JobSummary</code> objects.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    class ListIdMappingJobsOutput < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListIdMappingWorkflowsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_summaries
    #   <p>A list of <code>IdMappingWorkflowSummary</code> objects.</p>
    #   @return [Array<Types::IdMappingWorkflowSummary>]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    class ListIdMappingWorkflowsOutput < Struct.new(
      :workflow_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of <code>IdNamespace</code> objects returned per page.</p>
    #   @return [Integer]
    class ListIdNamespacesInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_summaries
    #   <p>A list of <code>IdNamespaceSummaries</code> objects.</p>
    #   @return [Array<Types::IdNamespaceSummary>]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    class ListIdNamespacesOutput < Struct.new(
      :id_namespace_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListMatchingJobsInput < Struct.new(
      :workflow_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of <code>JobSummary</code> objects, each of which contain the ID, status, start time, and end time of a job.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    class ListMatchingJobsOutput < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListMatchingWorkflowsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_summaries
    #   <p>A list of <code>MatchingWorkflowSummary</code> objects, each of which contain the fields <code>workflowName</code>, <code>workflowArn</code>, <code>resolutionType</code>, <code>createdAt</code>, and <code>updatedAt</code>.</p>
    #   @return [Array<Types::MatchingWorkflowSummary>]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    class ListMatchingWorkflowsOutput < Struct.new(
      :workflow_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    # @!attribute provider_name
    #   <p>The name of the provider. This name is typically the company name.</p>
    #   @return [String]
    class ListProviderServicesInput < Struct.new(
      :next_token,
      :max_results,
      :provider_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider_service_summaries
    #   <p>A list of <code>ProviderServices</code> objects.</p>
    #   @return [Array<Types::ProviderServiceSummary>]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    class ListProviderServicesOutput < Struct.new(
      :provider_service_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListSchemaMappingsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_list
    #   <p>A list of <code>SchemaMappingSummary</code> objects, each of which contain the fields <code>SchemaName</code>, <code>SchemaArn</code>, <code>CreatedAt</code>, <code>UpdatedAt</code>.</p>
    #   @return [Array<Types::SchemaMappingSummary>]
    # @!attribute next_token
    #   <p>The pagination token from the previous API call.</p>
    #   @return [String]
    class ListSchemaMappingsOutput < Struct.new(
      :schema_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The match group.</p>
    # @!attribute records
    #   <p> The matched records.</p>
    #   @return [Array<Types::MatchedRecord>]
    # @!attribute match_id
    #   <p> The match ID.</p>
    #   @return [String]
    # @!attribute match_rule
    #   <p> The match rule of the match group.</p>
    #   @return [String]
    class MatchGroup < Struct.new(
      :records,
      :match_id,
      :match_rule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The matched record.</p>
    # @!attribute input_source_arn
    #   <p> The input source ARN of the matched record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p> The record ID of the matched record.</p>
    #   @return [String]
    class MatchedRecord < Struct.new(
      :input_source_arn,
      :record_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>MatchingWorkflowSummary</code> objects, each of which contain the fields <code>workflowName</code>, <code>workflowArn</code>, <code>resolutionType</code>, <code>createdAt</code>, <code>updatedAt</code>.</p>
    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>MatchingWorkflow</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the workflow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the workflow was last updated.</p>
    #   @return [Time]
    # @!attribute resolution_type
    #   <p>The method that has been specified for data matching, either using matching provided by Entity Resolution or through a provider service.</p>
    #   @return [String]
    class MatchingWorkflowSummary < Struct.new(
      :workflow_name,
      :workflow_arn,
      :created_at,
      :updated_at,
      :resolution_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>providerConfiguration</code> and <code>providerServiceArn</code>.</p>
    # @!attribute provider_service_arn
    #   <p>The Amazon Resource Name (ARN) of the provider service.</p>
    #   @return [String]
    # @!attribute provider_configuration
    #   <p>An object which defines any additional configurations required by the provider service.</p>
    #   @return [JSON]
    class NamespaceProviderProperties < Struct.new(
      :provider_service_arn,
      :provider_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The rule-based properties of an ID namespace. These properties define how the ID namespace can be used in an ID mapping workflow.</p>
    # @!attribute rules
    #   <p> The rules for the ID namespace.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute rule_definition_types
    #   <p> The sets of rules you can use in an ID mapping workflow. The limitations specified for the source and target must be compatible.</p>
    #   @return [Array<String>]
    # @!attribute attribute_matching_model
    #   <p>The comparison type. You can either choose <code>ONE_TO_ONE</code> or <code>MANY_TO_MANY</code> as the <code>attributeMatchingModel</code>. </p> <p>If you choose <code>ONE_TO_ONE</code>, the system can only match attributes if the sub-types are an exact match. For example, for the <code>Email</code> attribute type, the system will only consider it a match if the value of the <code>Email</code> field of Profile A matches the value of the <code>Email</code> field of Profile B.</p> <p>If you choose <code>MANY_TO_MANY</code>, the system can match attributes across the sub-types of an attribute type. For example, if the value of the <code>Email</code> field of Profile A matches the value of <code>BusinessEmail</code> field of Profile B, the two profiles are matched on the <code>Email</code> attribute type. </p>
    #   @return [String]
    # @!attribute record_matching_models
    #   <p> The type of matching record that is allowed to be used in an ID mapping workflow. </p> <p>If the value is set to <code>ONE_SOURCE_TO_ONE_TARGET</code>, only one record in the source is matched to one record in the target. </p> <p>If the value is set to <code>MANY_SOURCE_TO_ONE_TARGET</code>, all matching records in the source are matched to one record in the target.</p>
    #   @return [Array<String>]
    class NamespaceRuleBasedProperties < Struct.new(
      :rules,
      :rule_definition_types,
      :attribute_matching_model,
      :record_matching_models,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>OutputAttribute</code> objects, each of which have the fields <code>Name</code> and <code>Hashed</code>. Each of these objects selects a column to be included in the output table, and whether the values of the column should be hashed.</p>
    # @!attribute name
    #   <p>A name of a column to be written to the output. This must be an <code>InputField</code> name in the schema mapping.</p>
    #   @return [String]
    # @!attribute hashed
    #   <p>Enables the ability to hash the column values in the output.</p>
    #   @return [Boolean]
    class OutputAttribute < Struct.new(
      :name,
      :hashed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>OutputAttribute</code> objects, each of which have the fields <code>Name</code> and <code>Hashed</code>. Each of these objects selects a column to be included in the output table, and whether the values of the column should be hashed.</p>
    # @!attribute output_s3_path
    #   <p>The S3 path to which Entity Resolution will write the output table.</p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p>Customer KMS ARN for encryption at rest. If not provided, system will use an Entity Resolution managed KMS key.</p>
    #   @return [String]
    # @!attribute output
    #   <p>A list of <code>OutputAttribute</code> objects, each of which have the fields <code>Name</code> and <code>Hashed</code>. Each of these objects selects a column to be included in the output table, and whether the values of the column should be hashed.</p>
    #   @return [Array<Types::OutputAttribute>]
    # @!attribute apply_normalization
    #   <p>Normalizes the attributes defined in the schema in the input data. For example, if an attribute has an <code>AttributeType</code> of <code>PHONE_NUMBER</code>, and the data in the input table is in a format of 1234567890, Entity Resolution will normalize this field in the output to (123)-456-7890.</p>
    #   @return [Boolean]
    class OutputSource < Struct.new(
      :output_s3_path,
      :kms_arn,
      :output,
      :apply_normalization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input schema supported by provider service.</p>
    # @!attribute schemas
    #   <p>Input schema for the provider service.</p>
    #   @return [Array<Array<String>>]
    # @!attribute provider_schema_attributes
    #   <p>The provider schema attributes.</p>
    #   @return [Array<Types::ProviderSchemaAttribute>]
    class ProviderComponentSchema < Struct.new(
      :schemas,
      :provider_schema_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The required configuration fields to use with the provider service.</p>
    # @!attribute marketplace_configuration
    #   <p>The identifiers of the provider service, from Data Exchange.</p>
    #   @return [Types::ProviderMarketplaceConfiguration]
    class ProviderEndpointConfiguration < Struct.new(
      :marketplace_configuration,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class MarketplaceConfiguration < ProviderEndpointConfiguration; end
      class Unknown < ProviderEndpointConfiguration; end
    end

    # <p>The provider configuration required for different ID namespace types.</p>
    # @!attribute description
    #   <p>The description of the ID namespace.</p>
    #   @return [String]
    # @!attribute provider_target_configuration_definition
    #   <p>Configurations required for the target ID namespace.</p>
    #   @return [JSON]
    # @!attribute provider_source_configuration_definition
    #   <p>Configurations required for the source ID namespace.</p>
    #   @return [JSON]
    class ProviderIdNameSpaceConfiguration < Struct.new(
      :description,
      :provider_target_configuration_definition,
      :provider_source_configuration_definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The required configuration fields to give intermediate access to a provider service.</p>
    # @!attribute aws_account_ids
    #   <p>The Amazon Web Services account that provider can use to read or write data into the customer's intermediate S3 bucket.</p>
    #   @return [Array<String>]
    # @!attribute required_bucket_actions
    #   <p>The S3 bucket actions that the provider requires permission for.</p>
    #   @return [Array<String>]
    class ProviderIntermediateDataAccessConfiguration < Struct.new(
      :aws_account_ids,
      :required_bucket_actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers of the provider service, from Data Exchange.</p>
    # @!attribute data_set_id
    #   <p>The dataset ID on Data Exchange.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID on Data Exchange.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The asset ID on Data Exchange.</p>
    #   @return [String]
    # @!attribute listing_id
    #   <p>The listing ID on Data Exchange.</p>
    #   @return [String]
    class ProviderMarketplaceConfiguration < Struct.new(
      :data_set_id,
      :revision_id,
      :asset_id,
      :listing_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the <code>providerServiceARN</code>, <code>intermediateSourceConfiguration</code>, and <code>providerConfiguration</code>.</p>
    # @!attribute provider_service_arn
    #   <p>The ARN of the provider service.</p>
    #   @return [String]
    # @!attribute provider_configuration
    #   <p>The required configuration fields to use with the provider service.</p>
    #   @return [JSON]
    # @!attribute intermediate_source_configuration
    #   <p>The Amazon S3 location that temporarily stores your data while it processes. Your information won't be saved permanently.</p>
    #   @return [Types::IntermediateSourceConfiguration]
    class ProviderProperties < Struct.new(
      :provider_service_arn,
      :provider_configuration,
      :intermediate_source_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The provider schema attribute.</p>
    # @!attribute field_name
    #   <p>The field name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the provider schema attribute.</p> <p>LiveRamp supports: <code>NAME</code> | <code>NAME_FIRST</code> | <code>NAME_MIDDLE</code> | <code>NAME_LAST</code> | <code>ADDRESS</code> | <code>ADDRESS_STREET1</code> | <code>ADDRESS_STREET2</code> | <code>ADDRESS_STREET3</code> | <code>ADDRESS_CITY</code> | <code>ADDRESS_STATE</code> | <code>ADDRESS_COUNTRY</code> | <code>ADDRESS_POSTALCODE</code> | <code>PHONE</code> | <code>PHONE_NUMBER</code> | <code>EMAIL_ADDRESS</code> | <code>UNIQUE_ID</code> | <code>PROVIDER_ID</code> </p> <p>TransUnion supports: <code>NAME</code> | <code>NAME_FIRST</code> | <code>NAME_LAST</code> | <code>ADDRESS</code> | <code>ADDRESS_CITY</code> | <code>ADDRESS_STATE</code> | <code>ADDRESS_COUNTRY</code> | <code>ADDRESS_POSTALCODE</code> | <code>PHONE_NUMBER</code> | <code>EMAIL_ADDRESS</code> | <code>UNIQUE_ID</code> | <code>DATE</code> | <code>IPV4</code> | <code>IPV6</code> | <code>MAID</code> </p> <p>Unified ID 2.0 supports: <code>PHONE_NUMBER</code> | <code>EMAIL_ADDRESS</code> | <code>UNIQUE_ID</code> </p>
    #   @return [String]
    # @!attribute sub_type
    #   <p>The sub type of the provider schema attribute.</p>
    #   @return [String]
    # @!attribute hashing
    #   <p>The hashing attribute of the provider schema.</p>
    #   @return [Boolean]
    class ProviderSchemaAttribute < Struct.new(
      :field_name,
      :type,
      :sub_type,
      :hashing,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>ProviderService</code> objects, each of which contain the fields <code>providerName</code>, <code>providerServiceArn</code>, <code>providerServiceName</code>, and <code>providerServiceType</code>.</p>
    # @!attribute provider_service_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>providerService</code>.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the provider. This name is typically the company name.</p>
    #   @return [String]
    # @!attribute provider_service_display_name
    #   <p>The display name of the provider service.</p>
    #   @return [String]
    # @!attribute provider_service_name
    #   <p>The name of the product that the provider service provides.</p>
    #   @return [String]
    # @!attribute provider_service_type
    #   <p>The type of provider service.</p>
    #   @return [String]
    class ProviderServiceSummary < Struct.new(
      :provider_service_arn,
      :provider_name,
      :provider_service_display_name,
      :provider_service_name,
      :provider_service_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the policy needs to be updated.</p>
    #   @return [String]
    # @!attribute token
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy.</p> <important> <p>If you set the value of the <code>effect</code> parameter in the <code>policy</code> to <code>Deny</code> for the <code>PutPolicy</code> operation, you must also set the value of the <code>effect</code> parameter to <code>Deny</code> for the <code>AddPolicyStatement</code> operation.</p> </important>
    #   @return [String]
    class PutPolicyInput < Struct.new(
      :arn,
      :token,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Entity Resolution resource ARN.</p>
    #   @return [String]
    # @!attribute token
    #   <p>A unique identifier for the current revision of the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    class PutPolicyOutput < Struct.new(
      :arn,
      :token,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The record.</p>
    # @!attribute input_source_arn
    #   <p> The input source ARN of the record.</p>
    #   @return [String]
    # @!attribute unique_id
    #   <p> The unique ID of the record.</p>
    #   @return [String]
    # @!attribute record_attribute_map
    #   <p> The record's attribute map.</p>
    #   @return [Hash<String, String>]
    class Record < Struct.new(
      :input_source_arn,
      :unique_id,
      :record_attribute_map,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    # @!attribute resolution_type
    #   <p>The type of matching. There are three types of matching: <code>RULE_MATCHING</code>, <code>ML_MATCHING</code>, and <code>PROVIDER</code>.</p>
    #   @return [String]
    # @!attribute rule_based_properties
    #   <p>An object which defines the list of matching rules to run and has a field <code>rules</code>, which is a list of rule objects.</p>
    #   @return [Types::RuleBasedProperties]
    # @!attribute rule_condition_properties
    #   <p>An object containing the <code>rules</code> for a matching workflow.</p>
    #   @return [Types::RuleConditionProperties]
    # @!attribute provider_properties
    #   <p>The properties of the provider service.</p>
    #   @return [Types::ProviderProperties]
    class ResolutionTechniques < Struct.new(
      :resolution_type,
      :rule_based_properties,
      :rule_condition_properties,
      :provider_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the <code>ruleName</code> and <code>matchingKeys</code>.</p>
    # @!attribute rule_name
    #   <p>A name for the matching rule.</p>
    #   @return [String]
    # @!attribute matching_keys
    #   <p>A list of <code>MatchingKeys</code>. The <code>MatchingKeys</code> must have been defined in the <code>SchemaMapping</code>. Two records are considered to match according to this rule if all of the <code>MatchingKeys</code> match.</p>
    #   @return [Array<String>]
    class Rule < Struct.new(
      :rule_name,
      :matching_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object which defines the list of matching rules to run in a matching workflow. </p>
    # @!attribute rules
    #   <p>A list of <code>Rule</code> objects, each of which have fields <code>RuleName</code> and <code>MatchingKeys</code>.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute attribute_matching_model
    #   <p>The comparison type. You can choose <code>ONE_TO_ONE</code> or <code>MANY_TO_MANY</code> as the <code>attributeMatchingModel</code>. </p> <p>If you choose <code>ONE_TO_ONE</code>, the system can only match attributes if the sub-types are an exact match. For example, for the <code>Email</code> attribute type, the system will only consider it a match if the value of the <code>Email</code> field of Profile A matches the value of the <code>Email</code> field of Profile B.</p> <p>If you choose <code>MANY_TO_MANY</code>, the system can match attributes across the sub-types of an attribute type. For example, if the value of the <code>Email</code> field of Profile A and the value of <code>BusinessEmail</code> field of Profile B matches, the two profiles are matched on the <code>Email</code> attribute type. </p>
    #   @return [String]
    # @!attribute match_purpose
    #   <p> An indicator of whether to generate IDs and index the data or not.</p> <p>If you choose <code>IDENTIFIER_GENERATION</code>, the process generates IDs and indexes the data.</p> <p>If you choose <code>INDEXING</code>, the process indexes the data without generating IDs.</p>
    #   @return [String]
    class RuleBasedProperties < Struct.new(
      :rules,
      :attribute_matching_model,
      :match_purpose,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the <code>ruleCondition</code> and the <code>ruleName</code> to use in a matching workflow.</p>
    # @!attribute rule_name
    #   <p>A name for the matching rule.</p> <p>For example: <code>Rule1</code> </p>
    #   @return [String]
    # @!attribute condition
    #   <p>A statement that specifies the conditions for a matching rule.</p> <p>If your data is accurate, use an Exact matching function: <code>Exact</code> or <code>ExactManyToMany</code>. </p> <p>If your data has variations in spelling or pronunciation, use a Fuzzy matching function: <code>Cosine</code>, <code>Levenshtein</code>, or <code>Soundex</code>. </p> <p>Use operators if you want to combine (<code>AND</code>), separate (<code>OR</code>), or group matching functions <code>(...)</code>.</p> <p>For example: <code>(Cosine(a, 10) AND Exact(b, true)) OR ExactManyToMany(c, d)</code> </p>
    #   @return [String]
    class RuleCondition < Struct.new(
      :rule_name,
      :condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a rule condition that provides the ability to use more complex syntax.</p>
    # @!attribute rules
    #   <p> A list of rule objects, each of which have fields <code>ruleName</code> and <code>condition</code>. </p>
    #   @return [Array<Types::RuleCondition>]
    class RuleConditionProperties < Struct.new(
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration object for defining input data fields in Entity Resolution. The <code>SchemaInputAttribute</code> specifies how individual fields in your input data should be processed and matched.</p>
    # @!attribute field_name
    #   <p>A string containing the field name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the attribute, selected from a list of values.</p> <p>LiveRamp supports: <code>NAME</code> | <code>NAME_FIRST</code> | <code>NAME_MIDDLE</code> | <code>NAME_LAST</code> | <code>ADDRESS</code> | <code>ADDRESS_STREET1</code> | <code>ADDRESS_STREET2</code> | <code>ADDRESS_STREET3</code> | <code>ADDRESS_CITY</code> | <code>ADDRESS_STATE</code> | <code>ADDRESS_COUNTRY</code> | <code>ADDRESS_POSTALCODE</code> | <code>PHONE</code> | <code>PHONE_NUMBER</code> | <code>EMAIL_ADDRESS</code> | <code>UNIQUE_ID</code> | <code>PROVIDER_ID</code> </p> <p>TransUnion supports: <code>NAME</code> | <code>NAME_FIRST</code> | <code>NAME_LAST</code> | <code>ADDRESS</code> | <code>ADDRESS_CITY</code> | <code>ADDRESS_STATE</code> | <code>ADDRESS_COUNTRY</code> | <code>ADDRESS_POSTALCODE</code> | <code>PHONE_NUMBER</code> | <code>EMAIL_ADDRESS</code> | <code>UNIQUE_ID</code> | <code>IPV4</code> | <code>IPV6</code> | <code>MAID</code> </p> <p>Unified ID 2.0 supports: <code>PHONE_NUMBER</code> | <code>EMAIL_ADDRESS</code> | <code>UNIQUE_ID</code> </p> <note> <p>Normalization is only supported for <code>NAME</code>, <code>ADDRESS</code>, <code>PHONE</code>, and <code>EMAIL_ADDRESS</code>. </p> <p>If you want to normalize <code>NAME_FIRST</code>, <code>NAME_MIDDLE</code>, and <code>NAME_LAST</code>, you must group them by assigning them to the <code>NAME</code> <code>groupName</code>. </p> <p>If you want to normalize <code>ADDRESS_STREET1</code>, <code>ADDRESS_STREET2</code>, <code>ADDRESS_STREET3</code>, <code>ADDRESS_CITY</code>, <code>ADDRESS_STATE</code>, <code>ADDRESS_COUNTRY</code>, and <code>ADDRESS_POSTALCODE</code>, you must group them by assigning them to the <code>ADDRESS</code> <code>groupName</code>. </p> <p>If you want to normalize <code>PHONE_NUMBER</code> and <code>PHONE_COUNTRYCODE</code>, you must group them by assigning them to the <code>PHONE</code> <code>groupName</code>. </p> </note>
    #   @return [String]
    # @!attribute group_name
    #   <p>A string that instructs Entity Resolution to combine several columns into a unified column with the identical attribute type. </p> <p>For example, when working with columns such as <code>NAME_FIRST</code>, <code>NAME_MIDDLE</code>, and <code>NAME_LAST</code>, assigning them a common <code>groupName</code> will prompt Entity Resolution to concatenate them into a single value.</p>
    #   @return [String]
    # @!attribute match_key
    #   <p>A key that allows grouping of multiple input attributes into a unified matching group. </p> <p>For example, consider a scenario where the source table contains various addresses, such as <code>business_address</code> and <code>shipping_address</code>. By assigning a <code>matchKey</code> called <code>address</code> to both attributes, Entity Resolution will match records across these fields to create a consolidated matching group.</p> <p>If no <code>matchKey</code> is specified for a column, it won't be utilized for matching purposes but will still be included in the output table.</p>
    #   @return [String]
    # @!attribute sub_type
    #   <p>The subtype of the attribute, selected from a list of values.</p>
    #   @return [String]
    # @!attribute hashed
    #   <p> Indicates if the column values are hashed in the schema input. </p> <p>If the value is set to <code>TRUE</code>, the column values are hashed. </p> <p>If the value is set to <code>FALSE</code>, the column values are cleartext.</p>
    #   @return [Boolean]
    class SchemaInputAttribute < Struct.new(
      :field_name,
      :type,
      :group_name,
      :match_key,
      :sub_type,
      :hashed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing <code>schemaName</code>, <code>schemaArn</code>, <code>createdAt</code>, <code>updatedAt</code>, and <code>hasWorkflows</code>.</p>
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>SchemaMapping</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the <code>SchemaMapping</code> was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the <code>SchemaMapping</code> was last updated.</p>
    #   @return [Time]
    # @!attribute has_workflows
    #   <p>Specifies whether the schema mapping has been applied to a workflow.</p>
    #   @return [Boolean]
    class SchemaMappingSummary < Struct.new(
      :schema_name,
      :schema_arn,
      :created_at,
      :updated_at,
      :has_workflows,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the ID mapping job to be retrieved.</p>
    #   @return [String]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects.</p>
    #   @return [Array<Types::IdMappingJobOutputSource>]
    class StartIdMappingJobInput < Struct.new(
      :workflow_name,
      :output_source_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects.</p>
    #   @return [Array<Types::IdMappingJobOutputSource>]
    class StartIdMappingJobOutput < Struct.new(
      :job_id,
      :output_source_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the matching job to be retrieved.</p>
    #   @return [String]
    class StartMatchingJobInput < Struct.new(
      :workflow_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    class StartMatchingJobOutput < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code> and <code>KMSArn</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    # @!attribute id_mapping_techniques
    #   <p>An object which defines the ID mapping technique and any additional configurations.</p>
    #   @return [Types::IdMappingTechniques]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf.</p>
    #   @return [String]
    class UpdateIdMappingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code> and <code>KMSArn</code>.</p>
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    # @!attribute id_mapping_techniques
    #   <p>An object which defines the ID mapping technique and any additional configurations.</p>
    #   @return [Types::IdMappingTechniques]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf.</p>
    #   @return [String]
    class UpdateIdMappingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:role_arn] = '' unless options.key?(:role_arn)
        super
      end
    end

    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdNamespaceInputSource>]
    # @!attribute id_mapping_workflow_properties
    #   <p>Determines the properties of <code>IdMappingWorkflow</code> where this <code>IdNamespace</code> can be used as a <code>Source</code> or a <code>Target</code>.</p>
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access the resources defined in this <code>IdNamespace</code> on your behalf as part of a workflow run.</p>
    #   @return [String]
    class UpdateIdNamespaceInput < Struct.new(
      :id_namespace_name,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id_namespace_name
    #   <p>The name of the ID namespace.</p>
    #   @return [String]
    # @!attribute id_namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the ID namespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ID namespace.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::IdNamespaceInputSource>]
    # @!attribute id_mapping_workflow_properties
    #   <p>Determines the properties of <code>IdMappingWorkflow</code> where this <code>IdNamespace</code> can be used as a <code>Source</code> or a <code>Target</code>.</p>
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    # @!attribute type
    #   <p>The type of ID namespace. There are two types: <code>SOURCE</code> and <code>TARGET</code>.</p> <p>The <code>SOURCE</code> contains configurations for <code>sourceId</code> data that will be processed in an ID mapping workflow. </p> <p>The <code>TARGET</code> contains a configuration of <code>targetId</code> to which all <code>sourceIds</code> will resolve to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access the resources defined in this <code>IdNamespace</code> on your behalf as part of a workflow run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the ID namespace was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the ID namespace was last updated.</p>
    #   @return [Time]
    class UpdateIdNamespaceOutput < Struct.new(
      :id_namespace_name,
      :id_namespace_arn,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :type,
      :role_arn,
      :created_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::InputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code>, <code>applyNormalization</code>, <code>KMSArn</code>, and <code>output</code>.</p>
    #   @return [Array<Types::OutputSource>]
    # @!attribute resolution_techniques
    #   <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    #   @return [Types::ResolutionTechniques]
    # @!attribute incremental_run_config
    #   <p>Optional. An object that defines the incremental run type. This object contains only the <code>incrementalRunType</code> field, which appears as "Automatic" in the console. </p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code>, incremental processing is not supported. </p> </important>
    #   @return [Types::IncrementalRunConfig]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    class UpdateMatchingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #   @return [String]
    # @!attribute input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    #   @return [Array<Types::InputSource>]
    # @!attribute output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code>, <code>applyNormalization</code>, <code>KMSArn</code>, and <code>output</code>.</p>
    #   @return [Array<Types::OutputSource>]
    # @!attribute resolution_techniques
    #   <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    #   @return [Types::ResolutionTechniques]
    # @!attribute incremental_run_config
    #   <p>An object which defines an incremental run type and has only <code>incrementalRunType</code> as a field.</p>
    #   @return [Types::IncrementalRunConfig]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    class UpdateMatchingWorkflowOutput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_name
    #   <p>The name of the schema. There can't be multiple <code>SchemaMappings</code> with the same name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema.</p>
    #   @return [String]
    # @!attribute mapped_input_fields
    #   <p>A list of <code>MappedInputFields</code>. Each <code>MappedInputField</code> corresponds to a column the source data table, and contains column name plus additional information that Entity Resolution uses for matching.</p>
    #   @return [Array<Types::SchemaInputAttribute>]
    class UpdateSchemaMappingInput < Struct.new(
      :schema_name,
      :description,
      :mapped_input_fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The ARN (Amazon Resource Name) that Entity Resolution generated for the <code>SchemaMapping</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema.</p>
    #   @return [String]
    # @!attribute mapped_input_fields
    #   <p>A list of <code>MappedInputFields</code>. Each <code>MappedInputField</code> corresponds to a column the source data table, and contains column name plus additional information that Entity Resolution uses for matching.</p>
    #   @return [Array<Types::SchemaInputAttribute>]
    class UpdateSchemaMappingOutput < Struct.new(
      :schema_name,
      :schema_arn,
      :description,
      :mapped_input_fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by Entity Resolution. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

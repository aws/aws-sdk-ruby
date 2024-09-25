# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EntityResolution
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action that the principal can use on the resource.
    #
    #   For example, `entityresolution:GetIdMappingJob`,
    #   `entityresolution:GetMatchingJob`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that will be accessed
    #   by the principal.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   A set of condition keys that you can use in key policies.
    #   @return [String]
    #
    # @!attribute [rw] effect
    #   Determines whether the permissions specified in the policy are to be
    #   allowed (`Allow`) or denied (`Deny`).
    #
    #   If you set the value of the `effect` parameter to `Deny` for the
    #   `AddPolicyStatement` operation, you must also set the value of the
    #   `effect` parameter in the `policy` to `Deny` for the `PutPolicy`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The Amazon Web Services service or Amazon Web Services account that
    #   can access the resource defined as ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/AddPolicyStatementInput AWS API Documentation
    #
    class AddPolicyStatementInput < Struct.new(
      :action,
      :arn,
      :condition,
      :effect,
      :principal,
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that will be accessed
    #   by the principal.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/AddPolicyStatementOutput AWS API Documentation
    #
    class AddPolicyStatementOutput < Struct.new(
      :arn,
      :policy,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_source
    #   The input source for the batch delete unique ID operation.
    #   @return [String]
    #
    # @!attribute [rw] unique_ids
    #   The unique IDs to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/BatchDeleteUniqueIdInput AWS API Documentation
    #
    class BatchDeleteUniqueIdInput < Struct.new(
      :input_source,
      :unique_ids,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deleted
    #   The unique IDs that were deleted.
    #   @return [Array<Types::DeletedUniqueId>]
    #
    # @!attribute [rw] disconnected_unique_ids
    #   The unique IDs that were disconnected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   The errors from deleting multiple unique IDs.
    #   @return [Array<Types::DeleteUniqueIdError>]
    #
    # @!attribute [rw] status
    #   The status of the batch delete unique ID operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/BatchDeleteUniqueIdOutput AWS API Documentation
    #
    class BatchDeleteUniqueIdOutput < Struct.new(
      :deleted,
      :disconnected_unique_ids,
      :errors,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource. Example: Workflow already exists, Schema
    # already exists, Workflow is currently running, etc.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `IdMappingWorkflowOutputSource` objects, each of which
    #   contains fields `OutputS3Path` and `Output`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow. There can't be multiple
    #   `IdMappingWorkflows` with the same name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdMappingWorkflowInput AWS API Documentation
    #
    class CreateIdMappingWorkflowInput < Struct.new(
      :description,
      :id_mapping_techniques,
      :input_source_config,
      :output_source_config,
      :role_arn,
      :tags,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `IdMappingWorkflowOutputSource` objects, each of which
    #   contains fields `OutputS3Path` and `Output`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `IDMappingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdMappingWorkflowOutput AWS API Documentation
    #
    class CreateIdMappingWorkflowOutput < Struct.new(
      :description,
      :id_mapping_techniques,
      :input_source_config,
      :output_source_config,
      :role_arn,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    #
    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of ID namespace. There are two types: `SOURCE` and
    #   `TARGET`.
    #
    #   The `SOURCE` contains configurations for `sourceId` data that will
    #   be processed in an ID mapping workflow.
    #
    #   The `TARGET` contains a configuration of `targetId` to which all
    #   `sourceIds` will resolve to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdNamespaceInput AWS API Documentation
    #
    class CreateIdNamespaceInput < Struct.new(
      :description,
      :id_mapping_workflow_properties,
      :id_namespace_name,
      :input_source_config,
      :role_arn,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in
    #   `inputSourceConfig` on your behalf as part of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of ID namespace. There are two types: `SOURCE` and
    #   `TARGET`.
    #
    #   The `SOURCE` contains configurations for `sourceId` data that will
    #   be processed in an ID mapping workflow.
    #
    #   The `TARGET` contains a configuration of `targetId` to which all
    #   `sourceIds` will resolve to.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdNamespaceOutput AWS API Documentation
    #
    class CreateIdNamespaceOutput < Struct.new(
      :created_at,
      :description,
      :id_mapping_workflow_properties,
      :id_namespace_arn,
      :id_namespace_name,
      :input_source_config,
      :role_arn,
      :tags,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow. There can't be multiple
    #   `MatchingWorkflows` with the same name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateMatchingWorkflowInput AWS API Documentation
    #
    class CreateMatchingWorkflowInput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :tags,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateMatchingWorkflowOutput AWS API Documentation
    #
    class CreateMatchingWorkflowOutput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema. There can't be multiple `SchemaMappings`
    #   with the same name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateSchemaMappingInput AWS API Documentation
    #
    class CreateSchemaMappingInput < Struct.new(
      :description,
      :mapped_input_fields,
      :schema_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateSchemaMappingOutput AWS API Documentation
    #
    class CreateSchemaMappingOutput < Struct.new(
      :description,
      :mapped_input_fields,
      :schema_arn,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteIdMappingWorkflowInput AWS API Documentation
    #
    class DeleteIdMappingWorkflowInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A successful operation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteIdMappingWorkflowOutput AWS API Documentation
    #
    class DeleteIdMappingWorkflowOutput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteIdNamespaceInput AWS API Documentation
    #
    class DeleteIdNamespaceInput < Struct.new(
      :id_namespace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A successful operation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteIdNamespaceOutput AWS API Documentation
    #
    class DeleteIdNamespaceOutput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteMatchingWorkflowInput AWS API Documentation
    #
    class DeleteMatchingWorkflowInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A successful operation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteMatchingWorkflowOutput AWS API Documentation
    #
    class DeleteMatchingWorkflowOutput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource for which the policy need to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeletePolicyStatementInput AWS API Documentation
    #
    class DeletePolicyStatementInput < Struct.new(
      :arn,
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource for which the policy need to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   A unique identifier for the deleted policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeletePolicyStatementOutput AWS API Documentation
    #
    class DeletePolicyStatementOutput < Struct.new(
      :arn,
      :policy,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteSchemaMappingInput AWS API Documentation
    #
    class DeleteSchemaMappingInput < Struct.new(
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A successful operation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteSchemaMappingOutput AWS API Documentation
    #
    class DeleteSchemaMappingOutput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Delete Unique Id error.
    #
    # @!attribute [rw] error_type
    #   The error type for the batch delete unique ID operation.
    #   @return [String]
    #
    # @!attribute [rw] unique_id
    #   The unique ID that could not be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteUniqueIdError AWS API Documentation
    #
    class DeleteUniqueIdError < Struct.new(
      :error_type,
      :unique_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deleted unique ID.
    #
    # @!attribute [rw] unique_id
    #   The unique ID of the deleted item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeletedUniqueId AWS API Documentation
    #
    class DeletedUniqueId < Struct.new(
      :unique_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing an error message, if there was an error.
    #
    # @!attribute [rw] error_message
    #   The error message from the job, if there is one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current Entity Resolution account limits. The error message
    # describes the limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The name of the quota that has been breached.
    #   @return [String]
    #
    # @!attribute [rw] quota_value
    #   The current quota value for the customers.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ExceedsLimitException AWS API Documentation
    #
    class ExceedsLimitException < Struct.new(
      :message,
      :quota_name,
      :quota_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingJobInput AWS API Documentation
    #
    class GetIdMappingJobInput < Struct.new(
      :job_id,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @!attribute [rw] error_details
    #   An object containing an error message, if there was an error.
    #   @return [Types::ErrorDetails]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Metrics associated with the execution, specifically total records
    #   processed, unique IDs generated, and records the execution skipped.
    #   @return [Types::IdMappingJobMetrics]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects.
    #   @return [Array<Types::IdMappingJobOutputSource>]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingJobOutput AWS API Documentation
    #
    class GetIdMappingJobOutput < Struct.new(
      :end_time,
      :error_details,
      :job_id,
      :metrics,
      :output_source_config,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingWorkflowInput AWS API Documentation
    #
    class GetIdMappingWorkflowInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `IdMappingWorkflow` .
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingWorkflowOutput AWS API Documentation
    #
    class GetIdMappingWorkflowOutput < Struct.new(
      :created_at,
      :description,
      :id_mapping_techniques,
      :input_source_config,
      :output_source_config,
      :role_arn,
      :tags,
      :updated_at,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdNamespaceInput AWS API Documentation
    #
    class GetIdNamespaceInput < Struct.new(
      :id_namespace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of a workflow run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of ID namespace. There are two types: `SOURCE` and
    #   `TARGET`.
    #
    #   The `SOURCE` contains configurations for `sourceId` data that will
    #   be processed in an ID mapping workflow.
    #
    #   The `TARGET` contains a configuration of `targetId` to which all
    #   `sourceIds` will resolve to.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdNamespaceOutput AWS API Documentation
    #
    class GetIdNamespaceOutput < Struct.new(
      :created_at,
      :description,
      :id_mapping_workflow_properties,
      :id_namespace_arn,
      :id_namespace_name,
      :input_source_config,
      :role_arn,
      :tags,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apply_normalization
    #   Normalizes the attributes defined in the schema in the input data.
    #   For example, if an attribute has an `AttributeType` of
    #   `PHONE_NUMBER`, and the data in the input table is in a format of
    #   1234567890, Entity Resolution will normalize this field in the
    #   output to (123)-456-7890.
    #   @return [Boolean]
    #
    # @!attribute [rw] record
    #   The record to fetch the Match ID for.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchIdInput AWS API Documentation
    #
    class GetMatchIdInput < Struct.new(
      :apply_normalization,
      :record,
      :workflow_name)
      SENSITIVE = [:record]
      include Aws::Structure
    end

    # @!attribute [rw] match_id
    #   The unique identifiers for this group of match records.
    #   @return [String]
    #
    # @!attribute [rw] match_rule
    #   The rule the record matched on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchIdOutput AWS API Documentation
    #
    class GetMatchIdOutput < Struct.new(
      :match_id,
      :match_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingJobInput AWS API Documentation
    #
    class GetMatchingJobInput < Struct.new(
      :job_id,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @!attribute [rw] error_details
    #   An object containing an error message, if there was an error.
    #   @return [Types::ErrorDetails]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Metrics associated with the execution, specifically total records
    #   processed, unique IDs generated, and records the execution skipped.
    #   @return [Types::JobMetrics]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects.
    #   @return [Array<Types::JobOutputSource>]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingJobOutput AWS API Documentation
    #
    class GetMatchingJobOutput < Struct.new(
      :end_time,
      :error_details,
      :job_id,
      :metrics,
      :output_source_config,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingWorkflowInput AWS API Documentation
    #
    class GetMatchingWorkflowInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingWorkflowOutput AWS API Documentation
    #
    class GetMatchingWorkflowOutput < Struct.new(
      :created_at,
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :tags,
      :updated_at,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource for which the policy
    #   need to be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetPolicyInput AWS API Documentation
    #
    class GetPolicyInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Entity Resolution resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetPolicyOutput AWS API Documentation
    #
    class GetPolicyOutput < Struct.new(
      :arn,
      :policy,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider_name
    #   The name of the provider. This name is typically the company name.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_name
    #   The ARN (Amazon Resource Name) of the product that the provider
    #   service provides.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetProviderServiceInput AWS API Documentation
    #
    class GetProviderServiceInput < Struct.new(
      :provider_name,
      :provider_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anonymized_output
    #   Specifies whether output data from the provider is anonymized. A
    #   value of `TRUE` means the output will be anonymized and you can't
    #   relate the data that comes back from the provider to the identifying
    #   input. A value of `FALSE` means the output won't be anonymized and
    #   you can relate the data that comes back from the provider to your
    #   source data.
    #   @return [Boolean]
    #
    # @!attribute [rw] provider_component_schema
    #   Input schema for the provider service.
    #   @return [Types::ProviderComponentSchema]
    #
    # @!attribute [rw] provider_configuration_definition
    #   The definition of the provider configuration.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_endpoint_configuration
    #   The required configuration fields to use with the provider service.
    #   @return [Types::ProviderEndpointConfiguration]
    #
    # @!attribute [rw] provider_entity_output_definition
    #   The definition of the provider entity output.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_id_name_space_configuration
    #   The provider configuration required for different ID namespace
    #   types.
    #   @return [Types::ProviderIdNameSpaceConfiguration]
    #
    # @!attribute [rw] provider_intermediate_data_access_configuration
    #   The Amazon Web Services accounts and the S3 permissions that are
    #   required by some providers to create an S3 bucket for intermediate
    #   data storage.
    #   @return [Types::ProviderIntermediateDataAccessConfiguration]
    #
    # @!attribute [rw] provider_job_configuration
    #   Provider service job configurations.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_name
    #   The name of the provider. This name is typically the company name.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_display_name
    #   The display name of the provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_name
    #   The name of the product that the provider service provides.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_type
    #   The type of provider service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetProviderServiceOutput AWS API Documentation
    #
    class GetProviderServiceOutput < Struct.new(
      :anonymized_output,
      :provider_component_schema,
      :provider_configuration_definition,
      :provider_endpoint_configuration,
      :provider_entity_output_definition,
      :provider_id_name_space_configuration,
      :provider_intermediate_data_access_configuration,
      :provider_job_configuration,
      :provider_name,
      :provider_service_arn,
      :provider_service_display_name,
      :provider_service_name,
      :provider_service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetSchemaMappingInput AWS API Documentation
    #
    class GetSchemaMappingInput < Struct.new(
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the `SchemaMapping` was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] has_workflows
    #   Specifies whether the schema mapping has been applied to a workflow.
    #   @return [Boolean]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information Venice uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the SchemaMapping.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the `SchemaMapping` was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetSchemaMappingOutput AWS API Documentation
    #
    class GetSchemaMappingOutput < Struct.new(
      :created_at,
      :description,
      :has_workflows,
      :mapped_input_fields,
      :schema_arn,
      :schema_name,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `InputRecords`, `RecordsNotProcessed`,
    # `TotalRecordsProcessed`, `TotalMappedRecords`,
    # `TotalMappedSourceRecords`, and `TotalMappedTargetRecords`.
    #
    # @!attribute [rw] input_records
    #   The total number of records that were input for processing.
    #   @return [Integer]
    #
    # @!attribute [rw] records_not_processed
    #   The total number of records that did not get processed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_mapped_records
    #   The total number of records that were mapped.
    #   @return [Integer]
    #
    # @!attribute [rw] total_mapped_source_records
    #   The total number of mapped source records.
    #   @return [Integer]
    #
    # @!attribute [rw] total_mapped_target_records
    #   The total number of distinct mapped target records.
    #   @return [Integer]
    #
    # @!attribute [rw] total_records_processed
    #   The total number of records that were processed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingJobMetrics AWS API Documentation
    #
    class IdMappingJobMetrics < Struct.new(
      :input_records,
      :records_not_processed,
      :total_mapped_records,
      :total_mapped_source_records,
      :total_mapped_target_records,
      :total_records_processed)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `KMSArn`, `OutputS3Path`, and `RoleARN`.
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf as part of workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingJobOutputSource AWS API Documentation
    #
    class IdMappingJobOutputSource < Struct.new(
      :kms_arn,
      :output_s3_path,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the list of matching rules to run in an ID
    # mapping workflow.
    #
    # @!attribute [rw] attribute_matching_model
    #   The comparison type. You can either choose `ONE_TO_ONE` or
    #   `MANY_TO_MANY` as the `attributeMatchingModel`.
    #
    #   If you choose `MANY_TO_MANY`, the system can match attributes across
    #   the sub-types of an attribute type. For example, if the value of the
    #   `Email` field of Profile A matches the value of the `BusinessEmail`
    #   field of Profile B, the two profiles are matched on the `Email`
    #   attribute type.
    #
    #   If you choose `ONE_TO_ONE`, the system can only match attributes if
    #   the sub-types are an exact match. For example, for the `Email`
    #   attribute type, the system will only consider it a match if the
    #   value of the `Email` field of Profile A matches the value of the
    #   `Email` field of Profile B.
    #   @return [String]
    #
    # @!attribute [rw] record_matching_model
    #   The type of matching record that is allowed to be used in an ID
    #   mapping workflow.
    #
    #   If the value is set to `ONE_SOURCE_TO_ONE_TARGET`, only one record
    #   in the source can be matched to the same record in the target.
    #
    #   If the value is set to `MANY_SOURCE_TO_ONE_TARGET`, multiple records
    #   in the source can be matched to one record in the target.
    #   @return [String]
    #
    # @!attribute [rw] rule_definition_type
    #   The set of rules you can use in an ID mapping workflow. The
    #   limitations specified for the source or target to define the match
    #   rules must be compatible.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The rules that can be used for ID mapping.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingRuleBasedProperties AWS API Documentation
    #
    class IdMappingRuleBasedProperties < Struct.new(
      :attribute_matching_model,
      :record_matching_model,
      :rule_definition_type,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines the ID mapping technique and any additional
    # configurations.
    #
    # @!attribute [rw] id_mapping_type
    #   The type of ID mapping.
    #   @return [String]
    #
    # @!attribute [rw] provider_properties
    #   An object which defines any additional configurations required by
    #   the provider service.
    #   @return [Types::ProviderProperties]
    #
    # @!attribute [rw] rule_based_properties
    #   An object which defines any additional configurations required by
    #   rule-based matching.
    #   @return [Types::IdMappingRuleBasedProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingTechniques AWS API Documentation
    #
    class IdMappingTechniques < Struct.new(
      :id_mapping_type,
      :provider_properties,
      :rule_based_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `InputSourceARN`, `SchemaName`, and `Type`.
    #
    # @!attribute [rw] input_source_arn
    #   An Glue table Amazon Resource Name (ARN) or a matching workflow ARN
    #   for the input source table.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of ID namespace. There are two types: `SOURCE` and
    #   `TARGET`.
    #
    #   The `SOURCE` contains configurations for `sourceId` data that will
    #   be processed in an ID mapping workflow.
    #
    #   The `TARGET` contains a configuration of `targetId` which all
    #   `sourceIds` will resolve to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingWorkflowInputSource AWS API Documentation
    #
    class IdMappingWorkflowInputSource < Struct.new(
      :input_source_arn,
      :schema_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output source for the ID mapping workflow.
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingWorkflowOutputSource AWS API Documentation
    #
    class IdMappingWorkflowOutputSource < Struct.new(
      :kms_arn,
      :output_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `IdMappingWorkflowSummary` objects, each of which contain
    # the fields `WorkflowName`, `WorkflowArn`, `CreatedAt`, and
    # `UpdatedAt`.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `IdMappingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingWorkflowSummary AWS API Documentation
    #
    class IdMappingWorkflowSummary < Struct.new(
      :created_at,
      :updated_at,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the ID namespace for the ID mapping workflow job.
    #
    # @!attribute [rw] id_mapping_type
    #   The type of ID mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdNamespaceIdMappingWorkflowMetadata AWS API Documentation
    #
    class IdNamespaceIdMappingWorkflowMetadata < Struct.new(
      :id_mapping_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `IdMappingType`, `ProviderProperties`, and
    # `RuleBasedProperties`.
    #
    # @!attribute [rw] id_mapping_type
    #   The type of ID mapping.
    #   @return [String]
    #
    # @!attribute [rw] provider_properties
    #   An object which defines any additional configurations required by
    #   the provider service.
    #   @return [Types::NamespaceProviderProperties]
    #
    # @!attribute [rw] rule_based_properties
    #   An object which defines any additional configurations required by
    #   rule-based matching.
    #   @return [Types::NamespaceRuleBasedProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdNamespaceIdMappingWorkflowProperties AWS API Documentation
    #
    class IdNamespaceIdMappingWorkflowProperties < Struct.new(
      :id_mapping_type,
      :provider_properties,
      :rule_based_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `InputSourceARN` and `SchemaName`.
    #
    # @!attribute [rw] input_source_arn
    #   An Glue table Amazon Resource Name (ARN) or a matching workflow ARN
    #   for the input source table.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdNamespaceInputSource AWS API Documentation
    #
    class IdNamespaceInputSource < Struct.new(
      :input_source_arn,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of ID namespaces.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   An object which defines any additional configurations required by
    #   the ID mapping workflow.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowMetadata>]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of ID namespace. There are two types: `SOURCE` and
    #   `TARGET`.
    #
    #   The `SOURCE` contains configurations for `sourceId` data that will
    #   be processed in an ID mapping workflow.
    #
    #   The `TARGET` contains a configuration of `targetId` which all
    #   `sourceIds` will resolve to.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdNamespaceSummary AWS API Documentation
    #
    class IdNamespaceSummary < Struct.new(
      :created_at,
      :description,
      :id_mapping_workflow_properties,
      :id_namespace_arn,
      :id_namespace_name,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines an incremental run type and has only
    # `incrementalRunType` as a field.
    #
    # @!attribute [rw] incremental_run_type
    #   The type of incremental run. It takes only one value: `IMMEDIATE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IncrementalRunConfig AWS API Documentation
    #
    class IncrementalRunConfig < Struct.new(
      :incremental_run_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `InputSourceARN`, `SchemaName`, and
    # `ApplyNormalization`.
    #
    # @!attribute [rw] apply_normalization
    #   Normalizes the attributes defined in the schema in the input data.
    #   For example, if an attribute has an `AttributeType` of
    #   `PHONE_NUMBER`, and the data in the input table is in a format of
    #   1234567890, Entity Resolution will normalize this field in the
    #   output to (123)-456-7890.
    #   @return [Boolean]
    #
    # @!attribute [rw] input_source_arn
    #   An Glue table Amazon Resource Name (ARN) for the input source table.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/InputSource AWS API Documentation
    #
    class InputSource < Struct.new(
      :apply_normalization,
      :input_source_arn,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location that temporarily stores your data while it
    # processes. Your information won't be saved permanently.
    #
    # @!attribute [rw] intermediate_s3_path
    #   The Amazon S3 location (bucket and prefix). For example:
    #   `s3://provider_bucket/DOC-EXAMPLE-BUCKET`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IntermediateSourceConfiguration AWS API Documentation
    #
    class IntermediateSourceConfiguration < Struct.new(
      :intermediate_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when there is an internal failure in the Entity
    # Resolution service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `InputRecords`, `TotalRecordsProcessed`,
    # `MatchIDs`, and `RecordsNotProcessed`.
    #
    # @!attribute [rw] input_records
    #   The total number of input records.
    #   @return [Integer]
    #
    # @!attribute [rw] match_i_ds
    #   The total number of `matchID`s generated.
    #   @return [Integer]
    #
    # @!attribute [rw] records_not_processed
    #   The total number of records that did not get processed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_records_processed
    #   The total number of records processed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobMetrics AWS API Documentation
    #
    class JobMetrics < Struct.new(
      :input_records,
      :match_i_ds,
      :records_not_processed,
      :total_records_processed)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `KMSArn`, `OutputS3Path`, and `RoleArn`.
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf as part of workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobOutputSource AWS API Documentation
    #
    class JobOutputSource < Struct.new(
      :kms_arn,
      :output_s3_path,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the `JobId`, `Status`, `StartTime`, and `EndTime`
    # of a job.
    #
    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :end_time,
      :job_id,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingJobsInput AWS API Documentation
    #
    class ListIdMappingJobsInput < Struct.new(
      :max_results,
      :next_token,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of `JobSummary` objects.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingJobsOutput AWS API Documentation
    #
    class ListIdMappingJobsOutput < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingWorkflowsInput AWS API Documentation
    #
    class ListIdMappingWorkflowsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] workflow_summaries
    #   A list of `IdMappingWorkflowSummary` objects.
    #   @return [Array<Types::IdMappingWorkflowSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingWorkflowsOutput AWS API Documentation
    #
    class ListIdMappingWorkflowsOutput < Struct.new(
      :next_token,
      :workflow_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of `IdNamespace` objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdNamespacesInput AWS API Documentation
    #
    class ListIdNamespacesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_summaries
    #   A list of `IdNamespaceSummaries` objects.
    #   @return [Array<Types::IdNamespaceSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdNamespacesOutput AWS API Documentation
    #
    class ListIdNamespacesOutput < Struct.new(
      :id_namespace_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingJobsInput AWS API Documentation
    #
    class ListMatchingJobsInput < Struct.new(
      :max_results,
      :next_token,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of `JobSummary` objects, each of which contain the ID,
    #   status, start time, and end time of a job.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingJobsOutput AWS API Documentation
    #
    class ListMatchingJobsOutput < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingWorkflowsInput AWS API Documentation
    #
    class ListMatchingWorkflowsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] workflow_summaries
    #   A list of `MatchingWorkflowSummary` objects, each of which contain
    #   the fields `WorkflowName`, `WorkflowArn`, `CreatedAt`, and
    #   `UpdatedAt`.
    #   @return [Array<Types::MatchingWorkflowSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingWorkflowsOutput AWS API Documentation
    #
    class ListMatchingWorkflowsOutput < Struct.new(
      :next_token,
      :workflow_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the provider. This name is typically the company name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListProviderServicesInput AWS API Documentation
    #
    class ListProviderServicesInput < Struct.new(
      :max_results,
      :next_token,
      :provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_summaries
    #   A list of `ProviderServices` objects.
    #   @return [Array<Types::ProviderServiceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListProviderServicesOutput AWS API Documentation
    #
    class ListProviderServicesOutput < Struct.new(
      :next_token,
      :provider_service_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListSchemaMappingsInput AWS API Documentation
    #
    class ListSchemaMappingsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] schema_list
    #   A list of `SchemaMappingSummary` objects, each of which contain the
    #   fields `SchemaName`, `SchemaArn`, `CreatedAt`, `UpdatedAt`.
    #   @return [Array<Types::SchemaMappingSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListSchemaMappingsOutput AWS API Documentation
    #
    class ListSchemaMappingsOutput < Struct.new(
      :next_token,
      :schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `MatchingWorkflowSummary` objects, each of which contain the
    # fields `WorkflowName`, `WorkflowArn`, `CreatedAt`, `UpdatedAt`.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] resolution_type
    #   The method that has been specified for data matching, either using
    #   matching provided by Entity Resolution or through a provider
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/MatchingWorkflowSummary AWS API Documentation
    #
    class MatchingWorkflowSummary < Struct.new(
      :created_at,
      :resolution_type,
      :updated_at,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `ProviderConfiguration` and `ProviderServiceArn`.
    #
    # @!attribute [rw] provider_configuration
    #   An object which defines any additional configurations required by
    #   the provider service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_service_arn
    #   The Amazon Resource Name (ARN) of the provider service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/NamespaceProviderProperties AWS API Documentation
    #
    class NamespaceProviderProperties < Struct.new(
      :provider_configuration,
      :provider_service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rule-based properties of an ID namespace. These properties define
    # how the ID namespace can be used in an ID mapping workflow.
    #
    # @!attribute [rw] attribute_matching_model
    #   The comparison type. You can either choose `ONE_TO_ONE` or
    #   `MANY_TO_MANY` as the `attributeMatchingModel`.
    #
    #   If you choose `MANY_TO_MANY`, the system can match attributes across
    #   the sub-types of an attribute type. For example, if the value of the
    #   `Email` field of Profile A matches the value of `BusinessEmail`
    #   field of Profile B, the two profiles are matched on the `Email`
    #   attribute type.
    #
    #   If you choose `ONE_TO_ONE`, the system can only match attributes if
    #   the sub-types are an exact match. For example, for the `Email`
    #   attribute type, the system will only consider it a match if the
    #   value of the `Email` field of Profile A matches the value of the
    #   `Email` field of Profile B.
    #   @return [String]
    #
    # @!attribute [rw] record_matching_models
    #   The type of matching record that is allowed to be used in an ID
    #   mapping workflow.
    #
    #   If the value is set to `ONE_SOURCE_TO_ONE_TARGET`, only one record
    #   in the source is matched to one record in the target.
    #
    #   If the value is set to `MANY_SOURCE_TO_ONE_TARGET`, all matching
    #   records in the source are matched to one record in the target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_definition_types
    #   The sets of rules you can use in an ID mapping workflow. The
    #   limitations specified for the source and target must be compatible.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rules
    #   The rules for the ID namespace.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/NamespaceRuleBasedProperties AWS API Documentation
    #
    class NamespaceRuleBasedProperties < Struct.new(
      :attribute_matching_model,
      :record_matching_models,
      :rule_definition_types,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `OutputAttribute` objects, each of which have the fields
    # `Name` and `Hashed`. Each of these objects selects a column to be
    # included in the output table, and whether the values of the column
    # should be hashed.
    #
    # @!attribute [rw] hashed
    #   Enables the ability to hash the column values in the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A name of a column to be written to the output. This must be an
    #   `InputField` name in the schema mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/OutputAttribute AWS API Documentation
    #
    class OutputAttribute < Struct.new(
      :hashed,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `OutputAttribute` objects, each of which have the fields
    # `Name` and `Hashed`. Each of these objects selects a column to be
    # included in the output table, and whether the values of the column
    # should be hashed.
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @!attribute [rw] apply_normalization
    #   Normalizes the attributes defined in the schema in the input data.
    #   For example, if an attribute has an `AttributeType` of
    #   `PHONE_NUMBER`, and the data in the input table is in a format of
    #   1234567890, Entity Resolution will normalize this field in the
    #   output to (123)-456-7890.
    #   @return [Boolean]
    #
    # @!attribute [rw] output
    #   A list of `OutputAttribute` objects, each of which have the fields
    #   `Name` and `Hashed`. Each of these objects selects a column to be
    #   included in the output table, and whether the values of the column
    #   should be hashed.
    #   @return [Array<Types::OutputAttribute>]
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/OutputSource AWS API Documentation
    #
    class OutputSource < Struct.new(
      :kms_arn,
      :apply_normalization,
      :output,
      :output_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input schema supported by provider service.
    #
    # @!attribute [rw] provider_schema_attributes
    #   The provider schema attributes.
    #   @return [Array<Types::ProviderSchemaAttribute>]
    #
    # @!attribute [rw] schemas
    #   Input schema for the provider service.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderComponentSchema AWS API Documentation
    #
    class ProviderComponentSchema < Struct.new(
      :provider_schema_attributes,
      :schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # The required configuration fields to use with the provider service.
    #
    # @note ProviderEndpointConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProviderEndpointConfiguration corresponding to the set member.
    #
    # @!attribute [rw] marketplace_configuration
    #   The identifiers of the provider service, from Data Exchange.
    #   @return [Types::ProviderMarketplaceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderEndpointConfiguration AWS API Documentation
    #
    class ProviderEndpointConfiguration < Struct.new(
      :marketplace_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MarketplaceConfiguration < ProviderEndpointConfiguration; end
      class Unknown < ProviderEndpointConfiguration; end
    end

    # The provider configuration required for different ID namespace types.
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] provider_source_configuration_definition
    #   Configurations required for the source ID namespace.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_target_configuration_definition
    #   Configurations required for the target ID namespace.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderIdNameSpaceConfiguration AWS API Documentation
    #
    class ProviderIdNameSpaceConfiguration < Struct.new(
      :description,
      :provider_source_configuration_definition,
      :provider_target_configuration_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The required configuration fields to give intermediate access to a
    # provider service.
    #
    # @!attribute [rw] aws_account_ids
    #   The Amazon Web Services account that provider can use to read or
    #   write data into the customer's intermediate S3 bucket.
    #   @return [Array<String>]
    #
    # @!attribute [rw] required_bucket_actions
    #   The S3 bucket actions that the provider requires permission for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderIntermediateDataAccessConfiguration AWS API Documentation
    #
    class ProviderIntermediateDataAccessConfiguration < Struct.new(
      :aws_account_ids,
      :required_bucket_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifiers of the provider service, from Data Exchange.
    #
    # @!attribute [rw] asset_id
    #   The asset ID on Data Exchange.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The dataset ID on Data Exchange.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   The listing ID on Data Exchange.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID on Data Exchange.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderMarketplaceConfiguration AWS API Documentation
    #
    class ProviderMarketplaceConfiguration < Struct.new(
      :asset_id,
      :data_set_id,
      :listing_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the `providerServiceARN`,
    # `intermediateSourceConfiguration`, and `providerConfiguration`.
    #
    # @!attribute [rw] intermediate_source_configuration
    #   The Amazon S3 location that temporarily stores your data while it
    #   processes. Your information won't be saved permanently.
    #   @return [Types::IntermediateSourceConfiguration]
    #
    # @!attribute [rw] provider_configuration
    #   The required configuration fields to use with the provider service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_service_arn
    #   The ARN of the provider service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderProperties AWS API Documentation
    #
    class ProviderProperties < Struct.new(
      :intermediate_source_configuration,
      :provider_configuration,
      :provider_service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provider schema attribute.
    #
    # @!attribute [rw] field_name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] hashing
    #   The hashing attribute of the provider schema.
    #   @return [Boolean]
    #
    # @!attribute [rw] sub_type
    #   The sub type of the provider schema attribute.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the provider schema attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderSchemaAttribute AWS API Documentation
    #
    class ProviderSchemaAttribute < Struct.new(
      :field_name,
      :hashing,
      :sub_type,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `ProviderService` objects, each of which contain the fields
    # `providerName`, `providerServiceArn`, `providerServiceName`, and
    # `providerServiceType`.
    #
    # @!attribute [rw] provider_name
    #   The name of the provider. This name is typically the company name.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `providerService`.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_display_name
    #   The display name of the provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_name
    #   The name of the product that the provider service provides.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_type
    #   The type of provider service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderServiceSummary AWS API Documentation
    #
    class ProviderServiceSummary < Struct.new(
      :provider_name,
      :provider_service_arn,
      :provider_service_display_name,
      :provider_service_name,
      :provider_service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource for which the policy
    #   needs to be updated.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #
    #   If you set the value of the `effect` parameter in the `policy` to
    #   `Deny` for the `PutPolicy` operation, you must also set the value of
    #   the `effect` parameter to `Deny` for the `AddPolicyStatement`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/PutPolicyInput AWS API Documentation
    #
    class PutPolicyInput < Struct.new(
      :arn,
      :policy,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Entity Resolution resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/PutPolicyOutput AWS API Documentation
    #
    class PutPolicyOutput < Struct.new(
      :arn,
      :policy,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines the `resolutionType` and the
    # `ruleBasedProperties`.
    #
    # @!attribute [rw] provider_properties
    #   The properties of the provider service.
    #   @return [Types::ProviderProperties]
    #
    # @!attribute [rw] resolution_type
    #   The type of matching. There are three types of matching:
    #   `RULE_MATCHING`, `ML_MATCHING`, and `PROVIDER`.
    #   @return [String]
    #
    # @!attribute [rw] rule_based_properties
    #   An object which defines the list of matching rules to run and has a
    #   field `Rules`, which is a list of rule objects.
    #   @return [Types::RuleBasedProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ResolutionTechniques AWS API Documentation
    #
    class ResolutionTechniques < Struct.new(
      :provider_properties,
      :resolution_type,
      :rule_based_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `RuleName`, and `MatchingKeys`.
    #
    # @!attribute [rw] matching_keys
    #   A list of `MatchingKeys`. The `MatchingKeys` must have been defined
    #   in the `SchemaMapping`. Two records are considered to match
    #   according to this rule if all of the `MatchingKeys` match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_name
    #   A name for the matching rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :matching_keys,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines the list of matching rules to run in a
    # matching workflow. RuleBasedProperties contain a `Rules` field, which
    # is a list of rule objects.
    #
    # @!attribute [rw] attribute_matching_model
    #   The comparison type. You can either choose `ONE_TO_ONE` or
    #   `MANY_TO_MANY` as the `attributeMatchingModel`.
    #
    #   If you choose `MANY_TO_MANY`, the system can match attributes across
    #   the sub-types of an attribute type. For example, if the value of the
    #   `Email` field of Profile A and the value of `BusinessEmail` field of
    #   Profile B matches, the two profiles are matched on the `Email`
    #   attribute type.
    #
    #   If you choose `ONE_TO_ONE`, the system can only match attributes if
    #   the sub-types are an exact match. For example, for the `Email`
    #   attribute type, the system will only consider it a match if the
    #   value of the `Email` field of Profile A matches the value of the
    #   `Email` field of Profile B.
    #   @return [String]
    #
    # @!attribute [rw] match_purpose
    #   An indicator of whether to generate IDs and index the data or not.
    #
    #   If you choose `IDENTIFIER_GENERATION`, the process generates IDs and
    #   indexes the data.
    #
    #   If you choose `INDEXING`, the process indexes the data without
    #   generating IDs.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   A list of `Rule` objects, each of which have fields `RuleName` and
    #   `MatchingKeys`.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/RuleBasedProperties AWS API Documentation
    #
    class RuleBasedProperties < Struct.new(
      :attribute_matching_model,
      :match_purpose,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `FieldName`, `Type`, `GroupName`, `MatchKey`,
    # `Hashing`, and `SubType`.
    #
    # @!attribute [rw] field_name
    #   A string containing the field name.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   A string that instructs Entity Resolution to combine several columns
    #   into a unified column with the identical attribute type.
    #
    #   For example, when working with columns such as `first_name`,
    #   `middle_name`, and `last_name`, assigning them a common `groupName`
    #   will prompt Entity Resolution to concatenate them into a single
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] hashed
    #   Indicates if the column values are hashed in the schema input. If
    #   the value is set to `TRUE`, the column values are hashed. If the
    #   value is set to `FALSE`, the column values are cleartext.
    #   @return [Boolean]
    #
    # @!attribute [rw] match_key
    #   A key that allows grouping of multiple input attributes into a
    #   unified matching group.
    #
    #   For example, consider a scenario where the source table contains
    #   various addresses, such as `business_address` and
    #   `shipping_address`. By assigning a `matchKey` called `address` to
    #   both attributes, Entity Resolution will match records across these
    #   fields to create a consolidated matching group.
    #
    #   If no `matchKey` is specified for a column, it won't be utilized
    #   for matching purposes but will still be included in the output
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] sub_type
    #   The subtype of the attribute, selected from a list of values.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the attribute, selected from a list of values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/SchemaInputAttribute AWS API Documentation
    #
    class SchemaInputAttribute < Struct.new(
      :field_name,
      :group_name,
      :hashed,
      :match_key,
      :sub_type,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `SchemaName`, `SchemaArn`, `CreatedAt`,
    # and`UpdatedAt`.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the `SchemaMapping` was created.
    #   @return [Time]
    #
    # @!attribute [rw] has_workflows
    #   Specifies whether the schema mapping has been applied to a workflow.
    #   @return [Boolean]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the `SchemaMapping` was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/SchemaMappingSummary AWS API Documentation
    #
    class SchemaMappingSummary < Struct.new(
      :created_at,
      :has_workflows,
      :schema_arn,
      :schema_name,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects.
    #   @return [Array<Types::IdMappingJobOutputSource>]
    #
    # @!attribute [rw] workflow_name
    #   The name of the ID mapping job to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartIdMappingJobInput AWS API Documentation
    #
    class StartIdMappingJobInput < Struct.new(
      :output_source_config,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects.
    #   @return [Array<Types::IdMappingJobOutputSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartIdMappingJobOutput AWS API Documentation
    #
    class StartIdMappingJobOutput < Struct.new(
      :job_id,
      :output_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the matching job to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartMatchingJobInput AWS API Documentation
    #
    class StartMatchingJobInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartMatchingJobOutput AWS API Documentation
    #
    class StartMatchingJobOutput < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to view tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdMappingWorkflowInput AWS API Documentation
    #
    class UpdateIdMappingWorkflowInput < Struct.new(
      :description,
      :id_mapping_techniques,
      :input_source_config,
      :output_source_config,
      :role_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow role. Entity
    #   Resolution assumes this role to access Amazon Web Services resources
    #   on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdMappingWorkflowOutput AWS API Documentation
    #
    class UpdateIdMappingWorkflowOutput < Struct.new(
      :description,
      :id_mapping_techniques,
      :input_source_config,
      :output_source_config,
      :role_arn,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    #
    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of a workflow run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdNamespaceInput AWS API Documentation
    #
    class UpdateIdNamespaceInput < Struct.new(
      :description,
      :id_mapping_workflow_properties,
      :id_namespace_name,
      :input_source_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of a workflow run.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of ID namespace. There are two types: `SOURCE` and
    #   `TARGET`.
    #
    #   The `SOURCE` contains configurations for `sourceId` data that will
    #   be processed in an ID mapping workflow.
    #
    #   The `TARGET` contains a configuration of `targetId` to which all
    #   `sourceIds` will resolve to.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdNamespaceOutput AWS API Documentation
    #
    class UpdateIdNamespaceOutput < Struct.new(
      :created_at,
      :description,
      :id_mapping_workflow_properties,
      :id_namespace_arn,
      :id_namespace_name,
      :input_source_config,
      :role_arn,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateMatchingWorkflowInput AWS API Documentation
    #
    class UpdateMatchingWorkflowInput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateMatchingWorkflowOutput AWS API Documentation
    #
    class UpdateMatchingWorkflowOutput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema. There can't be multiple `SchemaMappings`
    #   with the same name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateSchemaMappingInput AWS API Documentation
    #
    class UpdateSchemaMappingInput < Struct.new(
      :description,
      :mapped_input_fields,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateSchemaMappingOutput AWS API Documentation
    #
    class UpdateSchemaMappingOutput < Struct.new(
      :description,
      :mapped_input_fields,
      :schema_arn,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by Entity
    # Resolution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


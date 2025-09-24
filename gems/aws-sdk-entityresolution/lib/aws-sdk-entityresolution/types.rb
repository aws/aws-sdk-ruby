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

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that will be accessed
    #   by the principal.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
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
    # @!attribute [rw] action
    #   The action that the principal can use on the resource.
    #
    #   For example, `entityresolution:GetIdMappingJob`,
    #   `entityresolution:GetMatchingJob`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principal
    #   The Amazon Web Services service or Amazon Web Services account that
    #   can access the resource defined as ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition
    #   A set of condition keys that you can use in key policies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/AddPolicyStatementInput AWS API Documentation
    #
    class AddPolicyStatementInput < Struct.new(
      :arn,
      :statement_id,
      :effect,
      :action,
      :principal,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource that will be accessed
    #   by the principal.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/AddPolicyStatementOutput AWS API Documentation
    #
    class AddPolicyStatementOutput < Struct.new(
      :arn,
      :token,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source
    #   The input source for the batch delete unique ID operation.
    #   @return [String]
    #
    # @!attribute [rw] unique_ids
    #   The unique IDs to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/BatchDeleteUniqueIdInput AWS API Documentation
    #
    class BatchDeleteUniqueIdInput < Struct.new(
      :workflow_name,
      :input_source,
      :unique_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the batch delete unique ID operation.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   The errors from deleting multiple unique IDs.
    #   @return [Array<Types::DeleteUniqueIdError>]
    #
    # @!attribute [rw] deleted
    #   The unique IDs that were deleted.
    #   @return [Array<Types::DeletedUniqueId>]
    #
    # @!attribute [rw] disconnected_unique_ids
    #   The unique IDs that were disconnected.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/BatchDeleteUniqueIdOutput AWS API Documentation
    #
    class BatchDeleteUniqueIdOutput < Struct.new(
      :status,
      :errors,
      :deleted,
      :disconnected_unique_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request couldn't be processed because of conflict in the current
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

    # @!attribute [rw] workflow_name
    #   The name of the workflow. There can't be multiple
    #   `IdMappingWorkflows` with the same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `IdMappingWorkflowOutputSource` objects, each of which
    #   contains fields `outputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   The incremental run configuration for the ID mapping workflow.
    #   @return [Types::IdMappingIncrementalRunConfig]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdMappingWorkflowInput AWS API Documentation
    #
    class CreateIdMappingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :incremental_run_config,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `IDMappingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `IdMappingWorkflowOutputSource` objects, each of which
    #   contains fields `outputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   The incremental run configuration for the ID mapping workflow.
    #   @return [Types::IdMappingIncrementalRunConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdMappingWorkflowOutput AWS API Documentation
    #
    class CreateIdMappingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :incremental_run_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdNamespaceInput AWS API Documentation
    #
    class CreateIdNamespaceInput < Struct.new(
      :id_namespace_name,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :type,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
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
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in
    #   `inputSourceConfig` on your behalf as part of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdNamespaceOutput AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow. There can't be multiple
    #   `MatchingWorkflows` with the same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path`, `applyNormalization`, `KMSArn`, and `output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   Optional. An object that defines the incremental run type. This
    #   object contains only the `incrementalRunType` field, which appears
    #   as "Automatic" in the console.
    #
    #   For workflows where `resolutionType` is `ML_MATCHING` or `PROVIDER`,
    #   incremental processing is not supported.
    #   @return [Types::IncrementalRunConfig]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateMatchingWorkflowInput AWS API Documentation
    #
    class CreateMatchingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path`, `applyNormalization`, `KMSArn`, and `output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateMatchingWorkflowOutput AWS API Documentation
    #
    class CreateMatchingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema. There can't be multiple `SchemaMappings`
    #   with the same name.
    #   @return [String]
    #
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
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateSchemaMappingInput AWS API Documentation
    #
    class CreateSchemaMappingInput < Struct.new(
      :schema_name,
      :description,
      :mapped_input_fields,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateSchemaMappingOutput AWS API Documentation
    #
    class CreateSchemaMappingOutput < Struct.new(
      :schema_name,
      :schema_arn,
      :description,
      :mapped_input_fields)
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
    # @!attribute [rw] token
    #   A unique identifier for the deleted policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeletePolicyStatementOutput AWS API Documentation
    #
    class DeletePolicyStatementOutput < Struct.new(
      :arn,
      :token,
      :policy)
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

    # The error information provided when the delete unique ID operation
    # doesn't complete.
    #
    # @!attribute [rw] unique_id
    #   The unique ID that couldn't be deleted.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The error type for the delete unique ID operation.
    #
    #   The `SERVICE_ERROR` value indicates that an internal service-side
    #   problem occurred during the deletion operation.
    #
    #   The `VALIDATION_ERROR` value indicates that the deletion operation
    #   couldn't complete because of invalid input parameters or data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteUniqueIdError AWS API Documentation
    #
    class DeleteUniqueIdError < Struct.new(
      :unique_id,
      :error_type)
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

    # The record that didn't generate a Match ID.
    #
    # @!attribute [rw] input_source_arn
    #   The input source ARN of the record that didn't generate a Match ID.
    #   @return [String]
    #
    # @!attribute [rw] unique_id
    #   The unique ID of the record that didn't generate a Match ID.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for the record that didn't generate a Match ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/FailedRecord AWS API Documentation
    #
    class FailedRecord < Struct.new(
      :input_source_arn,
      :unique_id,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the rule-based matching workflow.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   The records to match.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] processing_type
    #   The processing mode that determines how Match IDs are generated and
    #   results are saved. Each mode provides different levels of accuracy,
    #   response time, and completeness of results.
    #
    #   If not specified, defaults to `CONSISTENT`.
    #
    #   `CONSISTENT`: Performs immediate lookup and matching against all
    #   existing records, with results saved synchronously. Provides highest
    #   accuracy but slower response time.
    #
    #   `EVENTUAL` (shown as *Background* in the console): Performs initial
    #   match ID lookup or generation immediately, with record updates
    #   processed asynchronously in the background. Offers faster initial
    #   response time, with complete matching results available later in S3.
    #
    #   `EVENTUAL_NO_LOOKUP` (shown as *Quick ID generation* in the
    #   console): Generates new match IDs without checking existing matches,
    #   with updates processed asynchronously. Provides fastest response
    #   time but should only be used for records known to be unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GenerateMatchIdInput AWS API Documentation
    #
    class GenerateMatchIdInput < Struct.new(
      :workflow_name,
      :records,
      :processing_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] match_groups
    #   The match groups from the generated match ID.
    #   @return [Array<Types::MatchGroup>]
    #
    # @!attribute [rw] failed_records
    #   The records that didn't receive a generated Match ID.
    #   @return [Array<Types::FailedRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GenerateMatchIdOutput AWS API Documentation
    #
    class GenerateMatchIdOutput < Struct.new(
      :match_groups,
      :failed_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingJobInput AWS API Documentation
    #
    class GetIdMappingJobInput < Struct.new(
      :workflow_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @!attribute [rw] metrics
    #   Metrics associated with the execution, specifically total records
    #   processed, unique IDs generated, and records the execution skipped.
    #   @return [Types::IdMappingJobMetrics]
    #
    # @!attribute [rw] error_details
    #   An object containing an error message, if there was an error.
    #   @return [Types::ErrorDetails]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects.
    #   @return [Array<Types::IdMappingJobOutputSource>]
    #
    # @!attribute [rw] job_type
    #   The job type of the ID mapping job.
    #
    #   A value of `INCREMENTAL` indicates that only new or changed data was
    #   processed since the last job run. This is the default job type if
    #   the workflow was created with an `incrementalRunConfig`.
    #
    #   A value of `BATCH` indicates that all data was processed from the
    #   input source, regardless of previous job runs. This is the default
    #   job type if the workflow wasn't created with an
    #   `incrementalRunConfig`.
    #
    #   A value of `DELETE_ONLY` indicates that only deletion requests from
    #   `BatchDeleteUniqueIds` were processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingJobOutput AWS API Documentation
    #
    class GetIdMappingJobOutput < Struct.new(
      :job_id,
      :status,
      :start_time,
      :end_time,
      :metrics,
      :error_details,
      :output_source_config,
      :job_type)
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

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `IdMappingWorkflow` .
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] incremental_run_config
    #   The incremental run configuration for the ID mapping workflow.
    #   @return [Types::IdMappingIncrementalRunConfig]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingWorkflowOutput AWS API Documentation
    #
    class GetIdMappingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :created_at,
      :updated_at,
      :incremental_run_config,
      :role_arn,
      :tags)
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

    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
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
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of a workflow run.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdNamespaceOutput AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] record
    #   The record to fetch the Match ID for.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] apply_normalization
    #   Normalizes the attributes defined in the schema in the input data.
    #   For example, if an attribute has an `AttributeType` of
    #   `PHONE_NUMBER`, and the data in the input table is in a format of
    #   1234567890, Entity Resolution will normalize this field in the
    #   output to (123)-456-7890.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchIdInput AWS API Documentation
    #
    class GetMatchIdInput < Struct.new(
      :workflow_name,
      :record,
      :apply_normalization)
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

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingJobInput AWS API Documentation
    #
    class GetMatchingJobInput < Struct.new(
      :workflow_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier of the matching job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @!attribute [rw] metrics
    #   Metrics associated with the execution, specifically total records
    #   processed, unique IDs generated, and records the execution skipped.
    #   @return [Types::JobMetrics]
    #
    # @!attribute [rw] error_details
    #   An object containing an error message, if there was an error.
    #   @return [Types::ErrorDetails]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects.
    #   @return [Array<Types::JobOutputSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingJobOutput AWS API Documentation
    #
    class GetMatchingJobOutput < Struct.new(
      :job_id,
      :status,
      :start_time,
      :end_time,
      :metrics,
      :error_details,
      :output_source_config)
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

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path`, `applyNormalization`, `KMSArn`, and `output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingWorkflowOutput AWS API Documentation
    #
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
      :tags)
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
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetPolicyOutput AWS API Documentation
    #
    class GetPolicyOutput < Struct.new(
      :arn,
      :token,
      :policy)
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

    # @!attribute [rw] provider_name
    #   The name of the provider. This name is typically the company name.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_name
    #   The name of the product that the provider service provides.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_display_name
    #   The display name of the provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_type
    #   The type of provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_service_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration_definition
    #   The definition of the provider configuration.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_id_name_space_configuration
    #   The provider configuration required for different ID namespace
    #   types.
    #   @return [Types::ProviderIdNameSpaceConfiguration]
    #
    # @!attribute [rw] provider_job_configuration
    #   Provider service job configurations.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_endpoint_configuration
    #   The required configuration fields to use with the provider service.
    #   @return [Types::ProviderEndpointConfiguration]
    #
    # @!attribute [rw] anonymized_output
    #   Specifies whether output data from the provider is anonymized. A
    #   value of `TRUE` means the output will be anonymized and you can't
    #   relate the data that comes back from the provider to the identifying
    #   input. A value of `FALSE` means the output won't be anonymized and
    #   you can relate the data that comes back from the provider to your
    #   source data.
    #   @return [Boolean]
    #
    # @!attribute [rw] provider_entity_output_definition
    #   The definition of the provider entity output.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_intermediate_data_access_configuration
    #   The Amazon Web Services accounts and the S3 permissions that are
    #   required by some providers to create an S3 bucket for intermediate
    #   data storage.
    #   @return [Types::ProviderIntermediateDataAccessConfiguration]
    #
    # @!attribute [rw] provider_component_schema
    #   Input schema for the provider service.
    #   @return [Types::ProviderComponentSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetProviderServiceOutput AWS API Documentation
    #
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
      :provider_component_schema)
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

    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the SchemaMapping.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information Entity Resolution uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the `SchemaMapping` was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the `SchemaMapping` was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] has_workflows
    #   Specifies whether the schema mapping has been applied to a workflow.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetSchemaMappingOutput AWS API Documentation
    #
    class GetSchemaMappingOutput < Struct.new(
      :schema_name,
      :schema_arn,
      :description,
      :mapped_input_fields,
      :created_at,
      :updated_at,
      :tags,
      :has_workflows)
      SENSITIVE = []
      include Aws::Structure
    end

    # Incremental run configuration for an ID mapping workflow.
    #
    # @!attribute [rw] incremental_run_type
    #   The incremental run type for an ID mapping workflow.
    #
    #   It takes only one value: `ON_DEMAND`. This setting runs the ID
    #   mapping workflow when it's manually triggered through the
    #   `StartIdMappingJob` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingIncrementalRunConfig AWS API Documentation
    #
    class IdMappingIncrementalRunConfig < Struct.new(
      :incremental_run_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains metrics about an ID mapping job, including
    # counts of input records, processed records, and mapped records between
    # source and target identifiers.
    #
    # @!attribute [rw] input_records
    #   The total number of records that were input for processing.
    #   @return [Integer]
    #
    # @!attribute [rw] total_records_processed
    #   The total number of records that were processed.
    #   @return [Integer]
    #
    # @!attribute [rw] records_not_processed
    #   The total number of records that did not get processed.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_records_processed
    #   The number of records processed that were marked for deletion in the
    #   input file using the DELETE schema mapping field. These are the
    #   records to be removed from the ID mapping table.
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
    # @!attribute [rw] unique_records_loaded
    #   The number of de-duplicated processed records across all runs,
    #   excluding deletion-related records. Duplicates are determined by the
    #   field marked as UNIQUE\_ID in your schema mapping. Records sharing
    #   the same value in this field are considered duplicates. For example,
    #   if you specified "customer\_id" as a UNIQUE\_ID field and had
    #   three records with the same customer\_id value, they would count as
    #   one unique record in this metric.
    #   @return [Integer]
    #
    # @!attribute [rw] new_mapped_records
    #   The number of new mapped records.
    #   @return [Integer]
    #
    # @!attribute [rw] new_mapped_source_records
    #   The number of new source records mapped.
    #   @return [Integer]
    #
    # @!attribute [rw] new_mapped_target_records
    #   The number of new mapped target records.
    #   @return [Integer]
    #
    # @!attribute [rw] new_unique_records_loaded
    #   The number of new unique records processed in the current job run,
    #   after removing duplicates. This metric excludes deletion-related
    #   records. Duplicates are determined by the field marked as UNIQUE\_ID
    #   in your schema mapping. Records sharing the same value in this field
    #   are considered duplicates. For example, if your current run
    #   processes five new records with the same UNIQUE\_ID value, they
    #   would count as one new unique record in this metric.
    #   @return [Integer]
    #
    # @!attribute [rw] mapped_records_removed
    #   The number of mapped records removed.
    #   @return [Integer]
    #
    # @!attribute [rw] mapped_source_records_removed
    #   The number of source records removed due to ID mapping.
    #   @return [Integer]
    #
    # @!attribute [rw] mapped_target_records_removed
    #   The number of mapped target records removed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingJobMetrics AWS API Documentation
    #
    class IdMappingJobMetrics < Struct.new(
      :input_records,
      :total_records_processed,
      :records_not_processed,
      :delete_records_processed,
      :total_mapped_records,
      :total_mapped_source_records,
      :total_mapped_target_records,
      :unique_records_loaded,
      :new_mapped_records,
      :new_mapped_source_records,
      :new_mapped_target_records,
      :new_unique_records_loaded,
      :mapped_records_removed,
      :mapped_source_records_removed,
      :mapped_target_records_removed)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `KMSArn`, `outputS3Path`, and `roleARN`.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf as part of workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingJobOutputSource AWS API Documentation
    #
    class IdMappingJobOutputSource < Struct.new(
      :role_arn,
      :output_s3_path,
      :kms_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the list of matching rules to run in an ID
    # mapping workflow.
    #
    # @!attribute [rw] rules
    #   The rules that can be used for ID mapping.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] rule_definition_type
    #   The set of rules you can use in an ID mapping workflow. The
    #   limitations specified for the source or target to define the match
    #   rules must be compatible.
    #   @return [String]
    #
    # @!attribute [rw] attribute_matching_model
    #   The comparison type. You can either choose `ONE_TO_ONE` or
    #   `MANY_TO_MANY` as the `attributeMatchingModel`.
    #
    #   If you choose `ONE_TO_ONE`, the system can only match attributes if
    #   the sub-types are an exact match. For example, for the `Email`
    #   attribute type, the system will only consider it a match if the
    #   value of the `Email` field of Profile A matches the value of the
    #   `Email` field of Profile B.
    #
    #   If you choose `MANY_TO_MANY`, the system can match attributes across
    #   the sub-types of an attribute type. For example, if the value of the
    #   `Email` field of Profile A matches the value of the `BusinessEmail`
    #   field of Profile B, the two profiles are matched on the `Email`
    #   attribute type.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingRuleBasedProperties AWS API Documentation
    #
    class IdMappingRuleBasedProperties < Struct.new(
      :rules,
      :rule_definition_type,
      :attribute_matching_model,
      :record_matching_model)
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
    # @!attribute [rw] rule_based_properties
    #   An object which defines any additional configurations required by
    #   rule-based matching.
    #   @return [Types::IdMappingRuleBasedProperties]
    #
    # @!attribute [rw] provider_properties
    #   An object which defines any additional configurations required by
    #   the provider service.
    #   @return [Types::ProviderProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingTechniques AWS API Documentation
    #
    class IdMappingTechniques < Struct.new(
      :id_mapping_type,
      :rule_based_properties,
      :provider_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `inputSourceARN`, `schemaName`, and `type`.
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
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingWorkflowOutputSource AWS API Documentation
    #
    class IdMappingWorkflowOutputSource < Struct.new(
      :output_s3_path,
      :kms_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `IdMappingWorkflowSummary` objects, each of which contain
    # the fields `WorkflowName`, `WorkflowArn`, `CreatedAt`, and
    # `UpdatedAt`.
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `IdMappingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdMappingWorkflowSummary AWS API Documentation
    #
    class IdMappingWorkflowSummary < Struct.new(
      :workflow_name,
      :workflow_arn,
      :created_at,
      :updated_at)
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

    # An object containing `idMappingType`, `providerProperties`, and
    # `ruleBasedProperties`.
    #
    # @!attribute [rw] id_mapping_type
    #   The type of ID mapping.
    #   @return [String]
    #
    # @!attribute [rw] rule_based_properties
    #   An object which defines any additional configurations required by
    #   rule-based matching.
    #   @return [Types::NamespaceRuleBasedProperties]
    #
    # @!attribute [rw] provider_properties
    #   An object which defines any additional configurations required by
    #   the provider service.
    #   @return [Types::NamespaceProviderProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdNamespaceIdMappingWorkflowProperties AWS API Documentation
    #
    class IdNamespaceIdMappingWorkflowProperties < Struct.new(
      :id_mapping_type,
      :rule_based_properties,
      :provider_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `inputSourceARN` and `schemaName`.
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
    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
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
    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IdNamespaceSummary AWS API Documentation
    #
    class IdNamespaceSummary < Struct.new(
      :id_namespace_name,
      :id_namespace_arn,
      :description,
      :id_mapping_workflow_properties,
      :type,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional. An object that defines the incremental run type. This object
    # contains only the `incrementalRunType` field, which appears as
    # "Automatic" in the console.
    #
    # For workflows where `resolutionType` is `ML_MATCHING` or `PROVIDER`,
    # incremental processing is not supported.
    #
    # @!attribute [rw] incremental_run_type
    #   The type of incremental run. The only valid value is `IMMEDIATE`.
    #   This appears as "Automatic" in the console.
    #
    #   For workflows where `resolutionType` is `ML_MATCHING` or `PROVIDER`,
    #   incremental processing is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IncrementalRunConfig AWS API Documentation
    #
    class IncrementalRunConfig < Struct.new(
      :incremental_run_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `inputSourceARN`, `schemaName`, and
    # `applyNormalization`.
    #
    # @!attribute [rw] input_source_arn
    #   An Glue table Amazon Resource Name (ARN) for the input source table.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema to be retrieved.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/InputSource AWS API Documentation
    #
    class InputSource < Struct.new(
      :input_source_arn,
      :schema_name,
      :apply_normalization)
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

    # An object containing `inputRecords`, `totalRecordsProcessed`,
    # `matchIDs`, and `recordsNotProcessed`.
    #
    # @!attribute [rw] input_records
    #   The total number of input records.
    #   @return [Integer]
    #
    # @!attribute [rw] total_records_processed
    #   The total number of records processed.
    #   @return [Integer]
    #
    # @!attribute [rw] records_not_processed
    #   The total number of records that did not get processed.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_records_processed
    #   The number of records processed that were marked for deletion
    #   (`DELETE` = True) in the input file. This metric tracks records
    #   flagged for removal during the job execution.
    #   @return [Integer]
    #
    # @!attribute [rw] match_i_ds
    #   The total number of `matchID`s generated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobMetrics AWS API Documentation
    #
    class JobMetrics < Struct.new(
      :input_records,
      :total_records_processed,
      :records_not_processed,
      :delete_records_processed,
      :match_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `KMSArn`, `outputS3Path`, and `roleArn`.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf as part of workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobOutputSource AWS API Documentation
    #
    class JobOutputSource < Struct.new(
      :role_arn,
      :output_s3_path,
      :kms_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the `jobId`, `status`, `startTime`, and `endTime`
    # of a job.
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :job_id,
      :status,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingJobsInput AWS API Documentation
    #
    class ListIdMappingJobsInput < Struct.new(
      :workflow_name,
      :next_token,
      :max_results)
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

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingWorkflowsInput AWS API Documentation
    #
    class ListIdMappingWorkflowsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_summaries
    #   A list of `IdMappingWorkflowSummary` objects.
    #   @return [Array<Types::IdMappingWorkflowSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingWorkflowsOutput AWS API Documentation
    #
    class ListIdMappingWorkflowsOutput < Struct.new(
      :workflow_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of `IdNamespace` objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdNamespacesInput AWS API Documentation
    #
    class ListIdNamespacesInput < Struct.new(
      :next_token,
      :max_results)
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

    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingJobsInput AWS API Documentation
    #
    class ListMatchingJobsInput < Struct.new(
      :workflow_name,
      :next_token,
      :max_results)
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

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingWorkflowsInput AWS API Documentation
    #
    class ListMatchingWorkflowsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_summaries
    #   A list of `MatchingWorkflowSummary` objects, each of which contain
    #   the fields `workflowName`, `workflowArn`, `resolutionType`,
    #   `createdAt`, and `updatedAt`.
    #   @return [Array<Types::MatchingWorkflowSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingWorkflowsOutput AWS API Documentation
    #
    class ListMatchingWorkflowsOutput < Struct.new(
      :workflow_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] provider_name
    #   The name of the provider. This name is typically the company name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListProviderServicesInput AWS API Documentation
    #
    class ListProviderServicesInput < Struct.new(
      :next_token,
      :max_results,
      :provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider_service_summaries
    #   A list of `ProviderServices` objects.
    #   @return [Array<Types::ProviderServiceSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListProviderServicesOutput AWS API Documentation
    #
    class ListProviderServicesOutput < Struct.new(
      :provider_service_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListSchemaMappingsInput AWS API Documentation
    #
    class ListSchemaMappingsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_list
    #   A list of `SchemaMappingSummary` objects, each of which contain the
    #   fields `SchemaName`, `SchemaArn`, `CreatedAt`, `UpdatedAt`.
    #   @return [Array<Types::SchemaMappingSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListSchemaMappingsOutput AWS API Documentation
    #
    class ListSchemaMappingsOutput < Struct.new(
      :schema_list,
      :next_token)
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

    # The match group.
    #
    # @!attribute [rw] records
    #   The matched records.
    #   @return [Array<Types::MatchedRecord>]
    #
    # @!attribute [rw] match_id
    #   The match ID.
    #   @return [String]
    #
    # @!attribute [rw] match_rule
    #   The match rule of the match group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/MatchGroup AWS API Documentation
    #
    class MatchGroup < Struct.new(
      :records,
      :match_id,
      :match_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The matched record.
    #
    # @!attribute [rw] input_source_arn
    #   The input source ARN of the matched record.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The record ID of the matched record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/MatchedRecord AWS API Documentation
    #
    class MatchedRecord < Struct.new(
      :input_source_arn,
      :record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `MatchingWorkflowSummary` objects, each of which contain the
    # fields `workflowName`, `workflowArn`, `resolutionType`, `createdAt`,
    # `updatedAt`.
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] resolution_type
    #   The method that has been specified for data matching, either using
    #   matching provided by Entity Resolution or through a provider
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/MatchingWorkflowSummary AWS API Documentation
    #
    class MatchingWorkflowSummary < Struct.new(
      :workflow_name,
      :workflow_arn,
      :created_at,
      :updated_at,
      :resolution_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `providerConfiguration` and `providerServiceArn`.
    #
    # @!attribute [rw] provider_service_arn
    #   The Amazon Resource Name (ARN) of the provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration
    #   An object which defines any additional configurations required by
    #   the provider service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/NamespaceProviderProperties AWS API Documentation
    #
    class NamespaceProviderProperties < Struct.new(
      :provider_service_arn,
      :provider_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rule-based properties of an ID namespace. These properties define
    # how the ID namespace can be used in an ID mapping workflow.
    #
    # @!attribute [rw] rules
    #   The rules for the ID namespace.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] rule_definition_types
    #   The sets of rules you can use in an ID mapping workflow. The
    #   limitations specified for the source and target must be compatible.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attribute_matching_model
    #   The comparison type. You can either choose `ONE_TO_ONE` or
    #   `MANY_TO_MANY` as the `attributeMatchingModel`.
    #
    #   If you choose `ONE_TO_ONE`, the system can only match attributes if
    #   the sub-types are an exact match. For example, for the `Email`
    #   attribute type, the system will only consider it a match if the
    #   value of the `Email` field of Profile A matches the value of the
    #   `Email` field of Profile B.
    #
    #   If you choose `MANY_TO_MANY`, the system can match attributes across
    #   the sub-types of an attribute type. For example, if the value of the
    #   `Email` field of Profile A matches the value of `BusinessEmail`
    #   field of Profile B, the two profiles are matched on the `Email`
    #   attribute type.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/NamespaceRuleBasedProperties AWS API Documentation
    #
    class NamespaceRuleBasedProperties < Struct.new(
      :rules,
      :rule_definition_types,
      :attribute_matching_model,
      :record_matching_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `OutputAttribute` objects, each of which have the fields
    # `Name` and `Hashed`. Each of these objects selects a column to be
    # included in the output table, and whether the values of the column
    # should be hashed.
    #
    # @!attribute [rw] name
    #   A name of a column to be written to the output. This must be an
    #   `InputField` name in the schema mapping.
    #   @return [String]
    #
    # @!attribute [rw] hashed
    #   Enables the ability to hash the column values in the output.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/OutputAttribute AWS API Documentation
    #
    class OutputAttribute < Struct.new(
      :name,
      :hashed)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `OutputAttribute` objects, each of which have the fields
    # `Name` and `Hashed`. Each of these objects selects a column to be
    # included in the output table, and whether the values of the column
    # should be hashed.
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   A list of `OutputAttribute` objects, each of which have the fields
    #   `Name` and `Hashed`. Each of these objects selects a column to be
    #   included in the output table, and whether the values of the column
    #   should be hashed.
    #   @return [Array<Types::OutputAttribute>]
    #
    # @!attribute [rw] apply_normalization
    #   Normalizes the attributes defined in the schema in the input data.
    #   For example, if an attribute has an `AttributeType` of
    #   `PHONE_NUMBER`, and the data in the input table is in a format of
    #   1234567890, Entity Resolution will normalize this field in the
    #   output to (123)-456-7890.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/OutputSource AWS API Documentation
    #
    class OutputSource < Struct.new(
      :output_s3_path,
      :kms_arn,
      :output,
      :apply_normalization)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input schema supported by provider service.
    #
    # @!attribute [rw] schemas
    #   Input schema for the provider service.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] provider_schema_attributes
    #   The provider schema attributes.
    #   @return [Array<Types::ProviderSchemaAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderComponentSchema AWS API Documentation
    #
    class ProviderComponentSchema < Struct.new(
      :schemas,
      :provider_schema_attributes)
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
    # @!attribute [rw] provider_target_configuration_definition
    #   Configurations required for the target ID namespace.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] provider_source_configuration_definition
    #   Configurations required for the source ID namespace.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderIdNameSpaceConfiguration AWS API Documentation
    #
    class ProviderIdNameSpaceConfiguration < Struct.new(
      :description,
      :provider_target_configuration_definition,
      :provider_source_configuration_definition)
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
    # @!attribute [rw] data_set_id
    #   The dataset ID on Data Exchange.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID on Data Exchange.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The asset ID on Data Exchange.
    #   @return [String]
    #
    # @!attribute [rw] listing_id
    #   The listing ID on Data Exchange.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderMarketplaceConfiguration AWS API Documentation
    #
    class ProviderMarketplaceConfiguration < Struct.new(
      :data_set_id,
      :revision_id,
      :asset_id,
      :listing_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the `providerServiceARN`,
    # `intermediateSourceConfiguration`, and `providerConfiguration`.
    #
    # @!attribute [rw] provider_service_arn
    #   The ARN of the provider service.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration
    #   The required configuration fields to use with the provider service.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] intermediate_source_configuration
    #   The Amazon S3 location that temporarily stores your data while it
    #   processes. Your information won't be saved permanently.
    #   @return [Types::IntermediateSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderProperties AWS API Documentation
    #
    class ProviderProperties < Struct.new(
      :provider_service_arn,
      :provider_configuration,
      :intermediate_source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provider schema attribute.
    #
    # @!attribute [rw] field_name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the provider schema attribute.
    #
    #   LiveRamp supports: `NAME` \| `NAME_FIRST` \| `NAME_MIDDLE` \|
    #   `NAME_LAST` \| `ADDRESS` \| `ADDRESS_STREET1` \| `ADDRESS_STREET2`
    #   \| `ADDRESS_STREET3` \| `ADDRESS_CITY` \| `ADDRESS_STATE` \|
    #   `ADDRESS_COUNTRY` \| `ADDRESS_POSTALCODE` \| `PHONE` \|
    #   `PHONE_NUMBER` \| `EMAIL_ADDRESS` \| `UNIQUE_ID` \| `PROVIDER_ID`
    #
    #   TransUnion supports: `NAME` \| `NAME_FIRST` \| `NAME_LAST` \|
    #   `ADDRESS` \| `ADDRESS_CITY` \| `ADDRESS_STATE` \| `ADDRESS_COUNTRY`
    #   \| `ADDRESS_POSTALCODE` \| `PHONE_NUMBER` \| `EMAIL_ADDRESS` \|
    #   `UNIQUE_ID` \| `DATE` \| `IPV4` \| `IPV6` \| `MAID`
    #
    #   Unified ID 2.0 supports: `PHONE_NUMBER` \| `EMAIL_ADDRESS` \|
    #   `UNIQUE_ID`
    #   @return [String]
    #
    # @!attribute [rw] sub_type
    #   The sub type of the provider schema attribute.
    #   @return [String]
    #
    # @!attribute [rw] hashing
    #   The hashing attribute of the provider schema.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ProviderSchemaAttribute AWS API Documentation
    #
    class ProviderSchemaAttribute < Struct.new(
      :field_name,
      :type,
      :sub_type,
      :hashing)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `ProviderService` objects, each of which contain the fields
    # `providerName`, `providerServiceArn`, `providerServiceName`, and
    # `providerServiceType`.
    #
    # @!attribute [rw] provider_service_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `providerService`.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the provider. This name is typically the company name.
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
      :provider_service_arn,
      :provider_name,
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
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/PutPolicyInput AWS API Documentation
    #
    class PutPolicyInput < Struct.new(
      :arn,
      :token,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Entity Resolution resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/PutPolicyOutput AWS API Documentation
    #
    class PutPolicyOutput < Struct.new(
      :arn,
      :token,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The record.
    #
    # @!attribute [rw] input_source_arn
    #   The input source ARN of the record.
    #   @return [String]
    #
    # @!attribute [rw] unique_id
    #   The unique ID of the record.
    #   @return [String]
    #
    # @!attribute [rw] record_attribute_map
    #   The record's attribute map.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/Record AWS API Documentation
    #
    class Record < Struct.new(
      :input_source_arn,
      :unique_id,
      :record_attribute_map)
      SENSITIVE = [:record_attribute_map]
      include Aws::Structure
    end

    # An object which defines the `resolutionType` and the
    # `ruleBasedProperties`.
    #
    # @!attribute [rw] resolution_type
    #   The type of matching workflow to create. Specify one of the
    #   following types:
    #
    #   * `RULE_MATCHING`: Match records using configurable rule-based
    #     criteria
    #
    #   * `ML_MATCHING`: Match records using machine learning models
    #
    #   * `PROVIDER`: Match records using a third-party matching provider
    #   @return [String]
    #
    # @!attribute [rw] rule_based_properties
    #   An object which defines the list of matching rules to run and has a
    #   field `rules`, which is a list of rule objects.
    #   @return [Types::RuleBasedProperties]
    #
    # @!attribute [rw] rule_condition_properties
    #   An object containing the `rules` for a matching workflow.
    #   @return [Types::RuleConditionProperties]
    #
    # @!attribute [rw] provider_properties
    #   The properties of the provider service.
    #   @return [Types::ProviderProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ResolutionTechniques AWS API Documentation
    #
    class ResolutionTechniques < Struct.new(
      :resolution_type,
      :rule_based_properties,
      :rule_condition_properties,
      :provider_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource couldn't be found.
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

    # An object containing the `ruleName` and `matchingKeys`.
    #
    # @!attribute [rw] rule_name
    #   A name for the matching rule.
    #   @return [String]
    #
    # @!attribute [rw] matching_keys
    #   A list of `MatchingKeys`. The `MatchingKeys` must have been defined
    #   in the `SchemaMapping`. Two records are considered to match
    #   according to this rule if all of the `MatchingKeys` match.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :rule_name,
      :matching_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines the list of matching rules to run in a
    # matching workflow.
    #
    # @!attribute [rw] rules
    #   A list of `Rule` objects, each of which have fields `RuleName` and
    #   `MatchingKeys`.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] attribute_matching_model
    #   The comparison type. You can choose `ONE_TO_ONE` or `MANY_TO_MANY`
    #   as the `attributeMatchingModel`.
    #
    #   If you choose `ONE_TO_ONE`, the system can only match attributes if
    #   the sub-types are an exact match. For example, for the `Email`
    #   attribute type, the system will only consider it a match if the
    #   value of the `Email` field of Profile A matches the value of the
    #   `Email` field of Profile B.
    #
    #   If you choose `MANY_TO_MANY`, the system can match attributes across
    #   the sub-types of an attribute type. For example, if the value of the
    #   `Email` field of Profile A and the value of `BusinessEmail` field of
    #   Profile B matches, the two profiles are matched on the `Email`
    #   attribute type.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/RuleBasedProperties AWS API Documentation
    #
    class RuleBasedProperties < Struct.new(
      :rules,
      :attribute_matching_model,
      :match_purpose)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the `ruleCondition` and the `ruleName` to use
    # in a matching workflow.
    #
    # @!attribute [rw] rule_name
    #   A name for the matching rule.
    #
    #   For example: `Rule1`
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   A statement that specifies the conditions for a matching rule.
    #
    #   If your data is accurate, use an Exact matching function: `Exact` or
    #   `ExactManyToMany`.
    #
    #   If your data has variations in spelling or pronunciation, use a
    #   Fuzzy matching function: `Cosine`, `Levenshtein`, or `Soundex`.
    #
    #   Use operators if you want to combine (`AND`), separate (`OR`), or
    #   group matching functions `(...)`.
    #
    #   For example: `(Cosine(a, 10) AND Exact(b, true)) OR
    #   ExactManyToMany(c, d)`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/RuleCondition AWS API Documentation
    #
    class RuleCondition < Struct.new(
      :rule_name,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a rule condition that provides the ability to use
    # more complex syntax.
    #
    # @!attribute [rw] rules
    #   A list of rule objects, each of which have fields `ruleName` and
    #   `condition`.
    #   @return [Array<Types::RuleCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/RuleConditionProperties AWS API Documentation
    #
    class RuleConditionProperties < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration object for defining input data fields in Entity
    # Resolution. The `SchemaInputAttribute` specifies how individual fields
    # in your input data should be processed and matched.
    #
    # @!attribute [rw] field_name
    #   A string containing the field name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the attribute, selected from a list of values.
    #
    #   LiveRamp supports: `NAME` \| `NAME_FIRST` \| `NAME_MIDDLE` \|
    #   `NAME_LAST` \| `ADDRESS` \| `ADDRESS_STREET1` \| `ADDRESS_STREET2`
    #   \| `ADDRESS_STREET3` \| `ADDRESS_CITY` \| `ADDRESS_STATE` \|
    #   `ADDRESS_COUNTRY` \| `ADDRESS_POSTALCODE` \| `PHONE` \|
    #   `PHONE_NUMBER` \| `EMAIL_ADDRESS` \| `UNIQUE_ID` \| `PROVIDER_ID`
    #
    #   TransUnion supports: `NAME` \| `NAME_FIRST` \| `NAME_LAST` \|
    #   `ADDRESS` \| `ADDRESS_CITY` \| `ADDRESS_STATE` \| `ADDRESS_COUNTRY`
    #   \| `ADDRESS_POSTALCODE` \| `PHONE_NUMBER` \| `EMAIL_ADDRESS` \|
    #   `UNIQUE_ID` \| `IPV4` \| `IPV6` \| `MAID`
    #
    #   Unified ID 2.0 supports: `PHONE_NUMBER` \| `EMAIL_ADDRESS` \|
    #   `UNIQUE_ID`
    #
    #   <note markdown="1"> Normalization is only supported for `NAME`, `ADDRESS`, `PHONE`, and
    #   `EMAIL_ADDRESS`.
    #
    #    If you want to normalize `NAME_FIRST`, `NAME_MIDDLE`, and
    #   `NAME_LAST`, you must group them by assigning them to the `NAME`
    #   `groupName`.
    #
    #    If you want to normalize `ADDRESS_STREET1`, `ADDRESS_STREET2`,
    #   `ADDRESS_STREET3`, `ADDRESS_CITY`, `ADDRESS_STATE`,
    #   `ADDRESS_COUNTRY`, and `ADDRESS_POSTALCODE`, you must group them by
    #   assigning them to the `ADDRESS` `groupName`.
    #
    #    If you want to normalize `PHONE_NUMBER` and `PHONE_COUNTRYCODE`, you
    #   must group them by assigning them to the `PHONE` `groupName`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   A string that instructs Entity Resolution to combine several columns
    #   into a unified column with the identical attribute type.
    #
    #   For example, when working with columns such as `NAME_FIRST`,
    #   `NAME_MIDDLE`, and `NAME_LAST`, assigning them a common `groupName`
    #   will prompt Entity Resolution to concatenate them into a single
    #   value.
    #   @return [String]
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
    # @!attribute [rw] hashed
    #   Indicates if the column values are hashed in the schema input.
    #
    #   If the value is set to `TRUE`, the column values are hashed.
    #
    #   If the value is set to `FALSE`, the column values are cleartext.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/SchemaInputAttribute AWS API Documentation
    #
    class SchemaInputAttribute < Struct.new(
      :field_name,
      :type,
      :group_name,
      :match_key,
      :sub_type,
      :hashed)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `schemaName`, `schemaArn`, `createdAt`,
    # `updatedAt`, and `hasWorkflows`.
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the `SchemaMapping` was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the `SchemaMapping` was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] has_workflows
    #   Specifies whether the schema mapping has been applied to a workflow.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/SchemaMappingSummary AWS API Documentation
    #
    class SchemaMappingSummary < Struct.new(
      :schema_name,
      :schema_arn,
      :created_at,
      :updated_at,
      :has_workflows)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the ID mapping job to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects.
    #   @return [Array<Types::IdMappingJobOutputSource>]
    #
    # @!attribute [rw] job_type
    #   The job type for the ID mapping job.
    #
    #   If the `jobType` value is set to `INCREMENTAL`, only new or changed
    #   data is processed since the last job run. This is the default value
    #   if the `CreateIdMappingWorkflow` API is configured with an
    #   `incrementalRunConfig`.
    #
    #   If the `jobType` value is set to `BATCH`, all data is processed from
    #   the input source, regardless of previous job runs. This is the
    #   default value if the `CreateIdMappingWorkflow` API isn't configured
    #   with an `incrementalRunConfig`.
    #
    #   If the `jobType` value is set to `DELETE_ONLY`, only deletion
    #   requests from `BatchDeleteUniqueIds` are processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartIdMappingJobInput AWS API Documentation
    #
    class StartIdMappingJobInput < Struct.new(
      :workflow_name,
      :output_source_config,
      :job_type)
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
    # @!attribute [rw] job_type
    #   The job type for the started ID mapping job.
    #
    #   A value of `INCREMENTAL` indicates that only new or changed data was
    #   processed since the last job run. This is the default job type if
    #   the workflow was created with an `incrementalRunConfig`.
    #
    #   A value of `BATCH` indicates that all data was processed from the
    #   input source, regardless of previous job runs. This is the default
    #   job type if the workflow wasn't created with an
    #   `incrementalRunConfig`.
    #
    #   A value of `DELETE_ONLY` indicates that only deletion requests from
    #   `BatchDeleteUniqueIds` were processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartIdMappingJobOutput AWS API Documentation
    #
    class StartIdMappingJobOutput < Struct.new(
      :job_id,
      :output_source_config,
      :job_type)
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

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   The incremental run configuration for the update ID mapping
    #   workflow.
    #   @return [Types::IdMappingIncrementalRunConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdMappingWorkflowInput AWS API Documentation
    #
    class UpdateIdMappingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :incremental_run_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow role. Entity
    #   Resolution assumes this role to access Amazon Web Services resources
    #   on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdMappingWorkflowInputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path` and `KMSArn`.
    #   @return [Array<Types::IdMappingWorkflowOutputSource>]
    #
    # @!attribute [rw] id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #   @return [Types::IdMappingTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   The incremental run configuration for the update ID mapping workflow
    #   output.
    #   @return [Types::IdMappingIncrementalRunConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdMappingWorkflowOutput AWS API Documentation
    #
    class UpdateIdMappingWorkflowOutput < Struct.new(
      :workflow_name,
      :workflow_arn,
      :description,
      :input_source_config,
      :output_source_config,
      :id_mapping_techniques,
      :incremental_run_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
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
      :id_namespace_name,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id_namespace_name
    #   The name of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] id_namespace_arn
    #   The Amazon Resource Name (ARN) of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ID namespace.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::IdNamespaceInputSource>]
    #
    # @!attribute [rw] id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #   @return [Array<Types::IdNamespaceIdMappingWorkflowProperties>]
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
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of a workflow run.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the ID namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the ID namespace was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdNamespaceOutput AWS API Documentation
    #
    class UpdateIdNamespaceOutput < Struct.new(
      :id_namespace_name,
      :id_namespace_arn,
      :description,
      :input_source_config,
      :id_mapping_workflow_properties,
      :type,
      :role_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path`, `applyNormalization`, `KMSArn`, and `output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   Optional. An object that defines the incremental run type. This
    #   object contains only the `incrementalRunType` field, which appears
    #   as "Automatic" in the console.
    #
    #   For workflows where `resolutionType` is `ML_MATCHING` or `PROVIDER`,
    #   incremental processing is not supported.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateMatchingWorkflowInput AWS API Documentation
    #
    class UpdateMatchingWorkflowInput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `outputS3Path`, `applyNormalization`, `KMSArn`, and `output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateMatchingWorkflowOutput AWS API Documentation
    #
    class UpdateMatchingWorkflowOutput < Struct.new(
      :workflow_name,
      :description,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :incremental_run_config,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema. There can't be multiple `SchemaMappings`
    #   with the same name.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateSchemaMappingInput AWS API Documentation
    #
    class UpdateSchemaMappingInput < Struct.new(
      :schema_name,
      :description,
      :mapped_input_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateSchemaMappingOutput AWS API Documentation
    #
    class UpdateSchemaMappingOutput < Struct.new(
      :schema_name,
      :schema_arn,
      :description,
      :mapped_input_fields)
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


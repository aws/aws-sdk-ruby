# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SupplyChain
  module Types

    # You do not have the required privileges to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The BillOfMaterialsImportJob details.
    #
    # @!attribute [rw] instance_id
    #   The BillOfMaterialsImportJob instanceId.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The BillOfMaterialsImportJob jobId.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The BillOfMaterialsImportJob ConfigurationJobStatus.
    #   @return [String]
    #
    # @!attribute [rw] s3uri
    #   The S3 URI from which the CSV is read.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   When the BillOfMaterialsImportJob has reached a terminal state,
    #   there will be a message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/BillOfMaterialsImportJob AWS API Documentation
    #
    class BillOfMaterialsImportJob < Struct.new(
      :instance_id,
      :job_id,
      :status,
      :s3uri,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for CreateBillOfMaterialsImportJob.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] s3uri
    #   The S3 URI of the CSV file to be imported. The bucket must grant
    #   permissions for AWS Supply Chain to read the file.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token ensures the API request is only completed no
    #   more than once. This way, retrying the request will not trigger the
    #   operation multiple times. A client token is a unique, case-sensitive
    #   string of 33 to 128 ASCII characters. To make an idempotent API
    #   request, specify a client token in the request. You should not reuse
    #   the same client token for other requests. If you retry a successful
    #   request with the same client token, the request will succeed with no
    #   further actions being taken, and you will receive the same API
    #   response as the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateBillOfMaterialsImportJobRequest AWS API Documentation
    #
    class CreateBillOfMaterialsImportJobRequest < Struct.new(
      :instance_id,
      :s3uri,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of CreateBillOfMaterialsImportJob.
    #
    # @!attribute [rw] job_id
    #   The new BillOfMaterialsImportJob identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateBillOfMaterialsImportJobResponse AWS API Documentation
    #
    class CreateBillOfMaterialsImportJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for CreateDataIntegrationFlow.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the DataIntegrationFlow.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The source configurations for DataIntegrationFlow.
    #   @return [Array<Types::DataIntegrationFlowSource>]
    #
    # @!attribute [rw] transformation
    #   The transformation configurations for DataIntegrationFlow.
    #   @return [Types::DataIntegrationFlowTransformation]
    #
    # @!attribute [rw] target
    #   The target configurations for DataIntegrationFlow.
    #   @return [Types::DataIntegrationFlowTarget]
    #
    # @!attribute [rw] tags
    #   The tags of the DataIntegrationFlow to be created
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataIntegrationFlowRequest AWS API Documentation
    #
    class CreateDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name,
      :sources,
      :transformation,
      :target,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for CreateDataIntegrationFlow.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegrationFlow created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataIntegrationFlowResponse AWS API Documentation
    #
    class CreateDataIntegrationFlowResponse < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for CreateDataLakeDataset.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the dataset, besides the custom defined namespace,
    #   every instance comes with below pre-defined namespaces:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset. For **asc** name space, the name must be
    #   one of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The custom schema of the data lake dataset and required for dataset
    #   in **default** and custom namespaces.
    #   @return [Types::DataLakeDatasetSchema]
    #
    # @!attribute [rw] description
    #   The description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] partition_spec
    #   The partition specification of the dataset. Partitioning can
    #   effectively improve the dataset query performance by reducing the
    #   amount of data scanned during query execution. But partitioning or
    #   not will affect how data get ingested by data ingestion methods,
    #   such as SendDataIntegrationEvent's dataset UPSERT will upsert
    #   records within partition (instead of within whole dataset). For more
    #   details, refer to those data ingestion documentations.
    #   @return [Types::DataLakeDatasetPartitionSpec]
    #
    # @!attribute [rw] tags
    #   The tags of the dataset.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataLakeDatasetRequest AWS API Documentation
    #
    class CreateDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name,
      :schema,
      :description,
      :partition_spec,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of CreateDataLakeDataset.
    #
    # @!attribute [rw] dataset
    #   The detail of created dataset.
    #   @return [Types::DataLakeDataset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataLakeDatasetResponse AWS API Documentation
    #
    class CreateDataLakeDatasetResponse < Struct.new(
      :dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for CreateDataLakeNamespace.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace. Noted you cannot create namespace with
    #   name starting with **asc**, **default**, **scn**, **aws**,
    #   **amazon**, **amzn**
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the namespace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataLakeNamespaceRequest AWS API Documentation
    #
    class CreateDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of CreateDataLakeNamespace.
    #
    # @!attribute [rw] namespace
    #   The detail of created namespace.
    #   @return [Types::DataLakeNamespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateDataLakeNamespaceResponse AWS API Documentation
    #
    class CreateDataLakeNamespaceResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for CreateInstance.
    #
    # @!attribute [rw] instance_name
    #   The AWS Supply Chain instance name.
    #   @return [String]
    #
    # @!attribute [rw] instance_description
    #   The AWS Supply Chain instance description.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS)
    #   key you provide for encryption. This is required if you do not want
    #   to use the Amazon Web Services owned KMS key. If you don't provide
    #   anything here, AWS Supply Chain uses the Amazon Web Services owned
    #   KMS key.
    #   @return [String]
    #
    # @!attribute [rw] web_app_dns_domain
    #   The DNS subdomain of the web app. This would be "example" in the
    #   URL "example.scn.global.on.aws". You can set this to a custom
    #   value, as long as the domain isn't already being used by someone
    #   else. The name may only include alphanumeric characters and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The Amazon Web Services tags of an instance to be created.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The client token for idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateInstanceRequest AWS API Documentation
    #
    class CreateInstanceRequest < Struct.new(
      :instance_name,
      :instance_description,
      :kms_key_arn,
      :web_app_dns_domain,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for CreateInstance.
    #
    # @!attribute [rw] instance
    #   The AWS Supply Chain instance resource data details.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/CreateInstanceResponse AWS API Documentation
    #
    class CreateInstanceResponse < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data integration event details.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The unique event identifier.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The data event type.
    #   @return [String]
    #
    # @!attribute [rw] event_group_id
    #   Event identifier (for example, orderId for InboundOrder) used for
    #   data sharding or partitioning.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The event timestamp (in epoch seconds).
    #   @return [Time]
    #
    # @!attribute [rw] dataset_target_details
    #   The target dataset details for a DATASET event type.
    #   @return [Types::DataIntegrationEventDatasetTargetDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationEvent AWS API Documentation
    #
    class DataIntegrationEvent < Struct.new(
      :instance_id,
      :event_id,
      :event_type,
      :event_group_id,
      :event_timestamp,
      :dataset_target_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target dataset load execution details.
    #
    # @!attribute [rw] status
    #   The event load execution status to target dataset.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The failure message (if any) of failed event load execution to
    #   dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationEventDatasetLoadExecutionDetails AWS API Documentation
    #
    class DataIntegrationEventDatasetLoadExecutionDetails < Struct.new(
      :status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target dataset configuration for a DATASET event type.
    #
    # @!attribute [rw] dataset_identifier
    #   The datalake dataset ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The target dataset load operation type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationEventDatasetTargetConfiguration AWS API Documentation
    #
    class DataIntegrationEventDatasetTargetConfiguration < Struct.new(
      :dataset_identifier,
      :operation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target dataset details for a DATASET event type.
    #
    # @!attribute [rw] dataset_identifier
    #   The datalake dataset ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The target dataset load operation type. The available options are:
    #
    #   * **APPEND** - Add new records to the dataset. Noted that this
    #     operation type will just try to append records as-is without any
    #     primary key or partition constraints.
    #
    #   * **UPSERT** - Modify existing records in the dataset with primary
    #     key configured, events for datasets without primary keys are not
    #     allowed. If event data contains primary keys that match records in
    #     the dataset within same partition, then those existing records (in
    #     that partition) will be updated. If primary keys do not match, new
    #     records will be added. Note that if dataset contain records with
    #     duplicate primary key values in the same partition, those
    #     duplicate records will be deduped into one updated record.
    #
    #   * **DELETE** - Remove existing records in the dataset with primary
    #     key configured, events for datasets without primary keys are not
    #     allowed. If event data contains primary keys that match records in
    #     the dataset within same partition, then those existing records (in
    #     that partition) will be deleted. If primary keys do not match, no
    #     actions will be done. Note that if dataset contain records with
    #     duplicate primary key values in the same partition, all those
    #     duplicates will be removed.
    #   @return [String]
    #
    # @!attribute [rw] dataset_load_execution
    #   The target dataset load execution.
    #   @return [Types::DataIntegrationEventDatasetLoadExecutionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationEventDatasetTargetDetails AWS API Documentation
    #
    class DataIntegrationEventDatasetTargetDetails < Struct.new(
      :dataset_identifier,
      :operation_type,
      :dataset_load_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DataIntegrationFlow details.
    #
    # @!attribute [rw] instance_id
    #   The DataIntegrationFlow instance ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The DataIntegrationFlow name.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The DataIntegrationFlow source configurations.
    #   @return [Array<Types::DataIntegrationFlowSource>]
    #
    # @!attribute [rw] transformation
    #   The DataIntegrationFlow transformation configurations.
    #   @return [Types::DataIntegrationFlowTransformation]
    #
    # @!attribute [rw] target
    #   The DataIntegrationFlow target configuration.
    #   @return [Types::DataIntegrationFlowTarget]
    #
    # @!attribute [rw] created_time
    #   The DataIntegrationFlow creation timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The DataIntegrationFlow last modified timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlow AWS API Documentation
    #
    class DataIntegrationFlow < Struct.new(
      :instance_id,
      :name,
      :sources,
      :transformation,
      :target,
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dataset options used in dataset source and target configurations.
    #
    # @!attribute [rw] load_type
    #   The target dataset's data load type. This only affects how source
    #   S3 files are selected in the S3-to-dataset flow.
    #
    #   * **REPLACE** - Target dataset will get replaced with the new file
    #     added under the source s3 prefix.
    #
    #   * **INCREMENTAL** - Target dataset will get updated with the
    #     up-to-date content under S3 prefix incorporating any file
    #     additions or removals there.
    #   @return [String]
    #
    # @!attribute [rw] dedupe_records
    #   The option to perform deduplication on data records sharing same
    #   primary key values. If disabled, transformed data with duplicate
    #   primary key values will ingest into dataset, for datasets within
    #   **asc** namespace, such duplicates will cause ingestion fail. If
    #   enabled without dedupeStrategy, deduplication is done by retaining a
    #   random data record among those sharing the same primary key values.
    #   If enabled with dedupeStragtegy, the deduplication is done following
    #   the strategy.
    #
    #   Note that target dataset may have partition configured, when dedupe
    #   is enabled, it only dedupe against primary keys and retain only one
    #   record out of those duplicates regardless of its partition status.
    #   @return [Boolean]
    #
    # @!attribute [rw] dedupe_strategy
    #   The deduplication strategy to dedupe the data records sharing same
    #   primary key values of the target dataset. This strategy only applies
    #   to target dataset with primary keys and with dedupeRecords option
    #   enabled. If transformed data still got duplicates after the
    #   dedupeStrategy evaluation, a random data record is chosen to be
    #   retained.
    #   @return [Types::DataIntegrationFlowDedupeStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowDatasetOptions AWS API Documentation
    #
    class DataIntegrationFlowDatasetOptions < Struct.new(
      :load_type,
      :dedupe_records,
      :dedupe_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a flow execution with dataset source.
    #
    # @!attribute [rw] dataset_identifier
    #   The ARN of the dataset source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowDatasetSource AWS API Documentation
    #
    class DataIntegrationFlowDatasetSource < Struct.new(
      :dataset_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dataset DataIntegrationFlow source configuration parameters.
    #
    # @!attribute [rw] dataset_identifier
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The dataset DataIntegrationFlow source options.
    #   @return [Types::DataIntegrationFlowDatasetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowDatasetSourceConfiguration AWS API Documentation
    #
    class DataIntegrationFlowDatasetSourceConfiguration < Struct.new(
      :dataset_identifier,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dataset DataIntegrationFlow target configuration parameters.
    #
    # @!attribute [rw] dataset_identifier
    #   The dataset ARN.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The dataset DataIntegrationFlow target options.
    #   @return [Types::DataIntegrationFlowDatasetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowDatasetTargetConfiguration AWS API Documentation
    #
    class DataIntegrationFlowDatasetTargetConfiguration < Struct.new(
      :dataset_identifier,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deduplication strategy details.
    #
    # @!attribute [rw] type
    #   The type of the deduplication strategy.
    #
    #   * **FIELD\_PRIORITY** - Field priority configuration for the
    #     deduplication strategy specifies an ordered list of fields used to
    #     tie-break the data records sharing the same primary key values.
    #     Fields earlier in the list have higher priority for evaluation.
    #     For each field, the sort order determines whether to retain data
    #     record with larger or smaller field value.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] field_priority
    #   The field priority deduplication strategy.
    #   @return [Types::DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowDedupeStrategy AWS API Documentation
    #
    class DataIntegrationFlowDedupeStrategy < Struct.new(
      :type,
      :field_priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # The flow execution details.
    #
    # @!attribute [rw] instance_id
    #   The flow execution's instanceId.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The flow execution's flowName.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The flow executionId.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of flow execution.
    #   @return [String]
    #
    # @!attribute [rw] source_info
    #   The source information for a flow execution.
    #   @return [Types::DataIntegrationFlowExecutionSourceInfo]
    #
    # @!attribute [rw] message
    #   The failure message (if any) of failed flow execution.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The flow execution start timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The flow execution end timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] output_metadata
    #   The flow execution output metadata.
    #   @return [Types::DataIntegrationFlowExecutionOutputMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowExecution AWS API Documentation
    #
    class DataIntegrationFlowExecution < Struct.new(
      :instance_id,
      :flow_name,
      :execution_id,
      :status,
      :source_info,
      :message,
      :start_time,
      :end_time,
      :output_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output metadata of the flow execution.
    #
    # @!attribute [rw] diagnostic_reports_root_s3uri
    #   The S3 URI under which all diagnostic files (such as deduped records
    #   if any) are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowExecutionOutputMetadata AWS API Documentation
    #
    class DataIntegrationFlowExecutionOutputMetadata < Struct.new(
      :diagnostic_reports_root_s3uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source information of a flow execution.
    #
    # @!attribute [rw] source_type
    #   The data integration flow execution source type.
    #   @return [String]
    #
    # @!attribute [rw] s3_source
    #   The source details of a flow execution with S3 source.
    #   @return [Types::DataIntegrationFlowS3Source]
    #
    # @!attribute [rw] dataset_source
    #   The source details of a flow execution with dataset source.
    #   @return [Types::DataIntegrationFlowDatasetSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowExecutionSourceInfo AWS API Documentation
    #
    class DataIntegrationFlowExecutionSourceInfo < Struct.new(
      :source_type,
      :s3_source,
      :dataset_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field used in the field priority deduplication strategy.
    #
    # @!attribute [rw] name
    #   The name of the deduplication field. Must exist in the dataset and
    #   not be a primary key.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the deduplication field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowFieldPriorityDedupeField AWS API Documentation
    #
    class DataIntegrationFlowFieldPriorityDedupeField < Struct.new(
      :name,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field priority deduplication strategy details.
    #
    # @!attribute [rw] fields
    #   The list of field names and their sort order for deduplication,
    #   arranged in descending priority from highest to lowest.
    #   @return [Array<Types::DataIntegrationFlowFieldPriorityDedupeField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration AWS API Documentation
    #
    class DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration < Struct.new(
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 options used in S3 source and target configurations.
    #
    # @!attribute [rw] file_type
    #   The Amazon S3 file type in S3 options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowS3Options AWS API Documentation
    #
    class DataIntegrationFlowS3Options < Struct.new(
      :file_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a flow execution with S3 source.
    #
    # @!attribute [rw] bucket_name
    #   The S3 bucket name of the S3 source.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The S3 object key of the S3 source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowS3Source AWS API Documentation
    #
    class DataIntegrationFlowS3Source < Struct.new(
      :bucket_name,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 DataIntegrationFlow source configuration parameters.
    #
    # @!attribute [rw] bucket_name
    #   The bucketName of the S3 source objects.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 source objects. To trigger data ingestion, S3
    #   files need to be put under `s3://bucketName/prefix/`.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The other options of the S3 DataIntegrationFlow source.
    #   @return [Types::DataIntegrationFlowS3Options]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowS3SourceConfiguration AWS API Documentation
    #
    class DataIntegrationFlowS3SourceConfiguration < Struct.new(
      :bucket_name,
      :prefix,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 DataIntegrationFlow target configuration parameters.
    #
    # @!attribute [rw] bucket_name
    #   The bucketName of the S3 target objects.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 target objects.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The S3 DataIntegrationFlow target options.
    #   @return [Types::DataIntegrationFlowS3Options]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowS3TargetConfiguration AWS API Documentation
    #
    class DataIntegrationFlowS3TargetConfiguration < Struct.new(
      :bucket_name,
      :prefix,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SQL DataIntegrationFlow transformation configuration parameters.
    #
    # @!attribute [rw] query
    #   The transformation SQL query body based on SparkSQL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowSQLTransformationConfiguration AWS API Documentation
    #
    class DataIntegrationFlowSQLTransformationConfiguration < Struct.new(
      :query)
      SENSITIVE = [:query]
      include Aws::Structure
    end

    # The DataIntegrationFlow source parameters.
    #
    # @!attribute [rw] source_type
    #   The DataIntegrationFlow source type.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The DataIntegrationFlow source name that can be used as table alias
    #   in SQL transformation query.
    #   @return [String]
    #
    # @!attribute [rw] s3_source
    #   The S3 DataIntegrationFlow source.
    #   @return [Types::DataIntegrationFlowS3SourceConfiguration]
    #
    # @!attribute [rw] dataset_source
    #   The dataset DataIntegrationFlow source.
    #   @return [Types::DataIntegrationFlowDatasetSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowSource AWS API Documentation
    #
    class DataIntegrationFlowSource < Struct.new(
      :source_type,
      :source_name,
      :s3_source,
      :dataset_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DataIntegrationFlow target parameters.
    #
    # @!attribute [rw] target_type
    #   The DataIntegrationFlow target type.
    #   @return [String]
    #
    # @!attribute [rw] s3_target
    #   The S3 DataIntegrationFlow target.
    #   @return [Types::DataIntegrationFlowS3TargetConfiguration]
    #
    # @!attribute [rw] dataset_target
    #   The dataset DataIntegrationFlow target. Note that for AWS Supply
    #   Chain dataset under **asc** namespace, it has a connection\_id
    #   internal field that is not allowed to be provided by client
    #   directly, they will be auto populated.
    #   @return [Types::DataIntegrationFlowDatasetTargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowTarget AWS API Documentation
    #
    class DataIntegrationFlowTarget < Struct.new(
      :target_type,
      :s3_target,
      :dataset_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DataIntegrationFlow transformation parameters.
    #
    # @!attribute [rw] transformation_type
    #   The DataIntegrationFlow transformation type.
    #   @return [String]
    #
    # @!attribute [rw] sql_transformation
    #   The SQL DataIntegrationFlow transformation configuration.
    #   @return [Types::DataIntegrationFlowSQLTransformationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowTransformation AWS API Documentation
    #
    class DataIntegrationFlowTransformation < Struct.new(
      :transformation_type,
      :sql_transformation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data lake dataset details.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the dataset, besides the custom defined namespace,
    #   every instance comes with below pre-defined namespaces:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset. For **asc** namespace, the name must be one
    #   of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The arn of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the dataset.
    #   @return [Types::DataLakeDatasetSchema]
    #
    # @!attribute [rw] description
    #   The description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] partition_spec
    #   The partition specification for a dataset.
    #   @return [Types::DataLakeDatasetPartitionSpec]
    #
    # @!attribute [rw] created_time
    #   The creation time of the dataset.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time of the dataset.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDataset AWS API Documentation
    #
    class DataLakeDataset < Struct.new(
      :instance_id,
      :namespace,
      :name,
      :arn,
      :schema,
      :description,
      :partition_spec,
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detail of the partition field.
    #
    # @!attribute [rw] name
    #   The name of the partition field.
    #   @return [String]
    #
    # @!attribute [rw] transform
    #   The transformation of the partition field. A transformation
    #   specifies how to partition on a given field. For example, with
    #   timestamp you can specify that you'd like to partition fields by
    #   day, e.g. data record with value 2025-01-03T00:00:00Z in partition
    #   field is in 2025-01-03 partition. Also noted that data record
    #   without any value in optional partition field is in NULL partition.
    #   @return [Types::DataLakeDatasetPartitionFieldTransform]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDatasetPartitionField AWS API Documentation
    #
    class DataLakeDatasetPartitionField < Struct.new(
      :name,
      :transform)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detail of the partition field transformation.
    #
    # @!attribute [rw] type
    #   The type of partitioning transformation for this field. The
    #   available options are:
    #
    #   * **IDENTITY** - Partitions data on a given field by its exact
    #     values.
    #
    #   * **YEAR** - Partitions data on a timestamp field using year
    #     granularity.
    #
    #   * **MONTH** - Partitions data on a timestamp field using month
    #     granularity.
    #
    #   * **DAY** - Partitions data on a timestamp field using day
    #     granularity.
    #
    #   * **HOUR** - Partitions data on a timestamp field using hour
    #     granularity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDatasetPartitionFieldTransform AWS API Documentation
    #
    class DataLakeDatasetPartitionFieldTransform < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The partition specification for a dataset.
    #
    # @!attribute [rw] fields
    #   The fields on which to partition a dataset. The partitions will be
    #   applied hierarchically based on the order of this list.
    #   @return [Array<Types::DataLakeDatasetPartitionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDatasetPartitionSpec AWS API Documentation
    #
    class DataLakeDatasetPartitionSpec < Struct.new(
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detail of the primary key field.
    #
    # @!attribute [rw] name
    #   The name of the primary key field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDatasetPrimaryKeyField AWS API Documentation
    #
    class DataLakeDatasetPrimaryKeyField < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schema details of the dataset. Note that for AWS Supply Chain
    # dataset under **asc** namespace, it may have internal fields like
    # connection\_id that will be auto populated by data ingestion methods.
    #
    # @!attribute [rw] name
    #   The name of the dataset schema.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The list of field details of the dataset schema.
    #   @return [Array<Types::DataLakeDatasetSchemaField>]
    #
    # @!attribute [rw] primary_keys
    #   The list of primary key fields for the dataset. Primary keys defined
    #   can help data ingestion methods to ensure data uniqueness:
    #   CreateDataIntegrationFlow's dedupe strategy will leverage primary
    #   keys to perform records deduplication before write to dataset;
    #   SendDataIntegrationEvent's UPSERT and DELETE can only work with
    #   dataset with primary keys. For more details, refer to those data
    #   ingestion documentations.
    #
    #   Note that defining primary keys does not necessarily mean the
    #   dataset cannot have duplicate records, duplicate records can still
    #   be ingested if CreateDataIntegrationFlow's dedupe disabled or
    #   through SendDataIntegrationEvent's APPEND operation.
    #   @return [Array<Types::DataLakeDatasetPrimaryKeyField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDatasetSchema AWS API Documentation
    #
    class DataLakeDatasetSchema < Struct.new(
      :name,
      :fields,
      :primary_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dataset field details.
    #
    # @!attribute [rw] name
    #   The dataset field name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The dataset field type.
    #   @return [String]
    #
    # @!attribute [rw] is_required
    #   Indicate if the field is required or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDatasetSchemaField AWS API Documentation
    #
    class DataLakeDatasetSchemaField < Struct.new(
      :name,
      :type,
      :is_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data lake namespace details.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The arn of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The creation time of the namespace.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time of the namespace.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeNamespace AWS API Documentation
    #
    class DataLakeNamespace < Struct.new(
      :instance_id,
      :name,
      :arn,
      :description,
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for DeleteDataIntegrationFlow.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegrationFlow to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataIntegrationFlowRequest AWS API Documentation
    #
    class DeleteDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for DeleteDataIntegrationFlow.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegrationFlow deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataIntegrationFlowResponse AWS API Documentation
    #
    class DeleteDataIntegrationFlowResponse < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of DeleteDataLakeDataset.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the dataset, besides the custom defined namespace,
    #   every instance comes with below pre-defined namespaces:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset. For **asc** namespace, the name must be one
    #   of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataLakeDatasetRequest AWS API Documentation
    #
    class DeleteDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of DeleteDataLakeDataset.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of deleted dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of deleted dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataLakeDatasetResponse AWS API Documentation
    #
    class DeleteDataLakeDatasetResponse < Struct.new(
      :instance_id,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of DeleteDataLakeNamespace.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace. Noted you cannot delete pre-defined
    #   namespace like **asc**, **default** which are only deleted through
    #   instance deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataLakeNamespaceRequest AWS API Documentation
    #
    class DeleteDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of DeleteDataLakeNamespace.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of deleted namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteDataLakeNamespaceResponse AWS API Documentation
    #
    class DeleteDataLakeNamespaceResponse < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for DeleteInstance.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for DeleteInstance.
    #
    # @!attribute [rw] instance
    #   The AWS Supply Chain instance resource data details.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DeleteInstanceResponse AWS API Documentation
    #
    class DeleteInstanceResponse < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for GetBillOfMaterialsImportJob.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The BillOfMaterialsImportJob identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetBillOfMaterialsImportJobRequest AWS API Documentation
    #
    class GetBillOfMaterialsImportJobRequest < Struct.new(
      :instance_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for GetBillOfMaterialsImportJob.
    #
    # @!attribute [rw] job
    #   The BillOfMaterialsImportJob.
    #   @return [Types::BillOfMaterialsImportJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetBillOfMaterialsImportJobResponse AWS API Documentation
    #
    class GetBillOfMaterialsImportJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for GetDataIntegrationEvent.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The unique event identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataIntegrationEventRequest AWS API Documentation
    #
    class GetDataIntegrationEventRequest < Struct.new(
      :instance_id,
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for GetDataIntegrationEvent.
    #
    # @!attribute [rw] event
    #   The details of the DataIntegrationEvent returned.
    #   @return [Types::DataIntegrationEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataIntegrationEventResponse AWS API Documentation
    #
    class GetDataIntegrationEventResponse < Struct.new(
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of GetFlowExecution.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The flow name.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The flow execution identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataIntegrationFlowExecutionRequest AWS API Documentation
    #
    class GetDataIntegrationFlowExecutionRequest < Struct.new(
      :instance_id,
      :flow_name,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of GetFlowExecution.
    #
    # @!attribute [rw] flow_execution
    #   The flow execution details.
    #   @return [Types::DataIntegrationFlowExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataIntegrationFlowExecutionResponse AWS API Documentation
    #
    class GetDataIntegrationFlowExecutionResponse < Struct.new(
      :flow_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for GetDataIntegrationFlow.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegrationFlow created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataIntegrationFlowRequest AWS API Documentation
    #
    class GetDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for GetDataIntegrationFlow.
    #
    # @!attribute [rw] flow
    #   The details of the DataIntegrationFlow returned.
    #   @return [Types::DataIntegrationFlow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataIntegrationFlowResponse AWS API Documentation
    #
    class GetDataIntegrationFlowResponse < Struct.new(
      :flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for GetDataLakeDataset.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the dataset, besides the custom defined namespace,
    #   every instance comes with below pre-defined namespaces:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset. For **asc** namespace, the name must be one
    #   of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataLakeDatasetRequest AWS API Documentation
    #
    class GetDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for GetDataLakeDataset.
    #
    # @!attribute [rw] dataset
    #   The fetched dataset details.
    #   @return [Types::DataLakeDataset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataLakeDatasetResponse AWS API Documentation
    #
    class GetDataLakeDatasetResponse < Struct.new(
      :dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for GetDataLakeNamespace.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace. Besides the namespaces user created, you
    #   can also specify the pre-defined namespaces:
    #
    #   * **asc** - Pre-defined namespace containing Amazon Web Services
    #     Supply Chain supported datasets, see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - Pre-defined namespace containing datasets with
    #     custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataLakeNamespaceRequest AWS API Documentation
    #
    class GetDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for GetDataLakeNamespace.
    #
    # @!attribute [rw] namespace
    #   The fetched namespace details.
    #   @return [Types::DataLakeNamespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataLakeNamespaceResponse AWS API Documentation
    #
    class GetDataLakeNamespaceResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for GetInstance.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetInstanceRequest AWS API Documentation
    #
    class GetInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for GetInstance.
    #
    # @!attribute [rw] instance
    #   The instance resource data details.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetInstanceResponse AWS API Documentation
    #
    class GetInstanceResponse < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the instance.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID that owns the instance.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the instance.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The Amazon Web Services Supply Chain instance error message. If the
    #   instance results in an unhealthy state, customers need to check the
    #   error message, delete the current instance, and recreate a new one
    #   based on the mitigation from the error message.
    #   @return [String]
    #
    # @!attribute [rw] web_app_dns_domain
    #   The WebApp DNS domain name of the instance.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The instance creation timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The instance last modified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] instance_name
    #   The Amazon Web Services Supply Chain instance name.
    #   @return [String]
    #
    # @!attribute [rw] instance_description
    #   The Amazon Web Services Supply Chain instance description.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN (Amazon Resource Name) of the Key Management Service (KMS)
    #   key you optionally provided for encryption. If you did not provide
    #   anything here, AWS Supply Chain uses the Amazon Web Services owned
    #   KMS key and nothing is returned.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the instance.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :instance_id,
      :aws_account_id,
      :state,
      :error_message,
      :web_app_dns_domain,
      :created_time,
      :last_modified_time,
      :instance_name,
      :instance_description,
      :kms_key_arn,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for ListDataIntegrationEvents.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   List data integration events for the specified eventType.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch the next page of the data integration
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify the maximum number of data integration events to fetch in
    #   one paginated request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataIntegrationEventsRequest AWS API Documentation
    #
    class ListDataIntegrationEventsRequest < Struct.new(
      :instance_id,
      :event_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for ListDataIntegrationEvents.
    #
    # @!attribute [rw] events
    #   The list of data integration events.
    #   @return [Array<Types::DataIntegrationEvent>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch the next page of the
    #   ListDataIntegrationEvents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataIntegrationEventsResponse AWS API Documentation
    #
    class ListDataIntegrationEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of ListFlowExecutions.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The flow name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch next page of flow executions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number to specify the max number of flow executions to fetch in
    #   this paginated request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataIntegrationFlowExecutionsRequest AWS API Documentation
    #
    class ListDataIntegrationFlowExecutionsRequest < Struct.new(
      :instance_id,
      :flow_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of ListFlowExecutions.
    #
    # @!attribute [rw] flow_executions
    #   The list of flow executions.
    #   @return [Array<Types::DataIntegrationFlowExecution>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch next page of flow executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataIntegrationFlowExecutionsResponse AWS API Documentation
    #
    class ListDataIntegrationFlowExecutionsResponse < Struct.new(
      :flow_executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for ListDataIntegrationFlows.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch the next page of the
    #   DataIntegrationFlows.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify the maximum number of DataIntegrationFlows to fetch in one
    #   paginated request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataIntegrationFlowsRequest AWS API Documentation
    #
    class ListDataIntegrationFlowsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for ListDataIntegrationFlows.
    #
    # @!attribute [rw] flows
    #   The response parameters for ListDataIntegrationFlows.
    #   @return [Array<Types::DataIntegrationFlow>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch the next page of the
    #   DataIntegrationFlows.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataIntegrationFlowsResponse AWS API Documentation
    #
    class ListDataIntegrationFlowsResponse < Struct.new(
      :flows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of ListDataLakeDatasets.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the dataset, besides the custom defined namespace,
    #   every instance comes with below pre-defined namespaces:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch next page of datasets.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max number of datasets to fetch in this paginated request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataLakeDatasetsRequest AWS API Documentation
    #
    class ListDataLakeDatasetsRequest < Struct.new(
      :instance_id,
      :namespace,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of ListDataLakeDatasets.
    #
    # @!attribute [rw] datasets
    #   The list of fetched dataset details.
    #   @return [Array<Types::DataLakeDataset>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch next page of datasets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataLakeDatasetsResponse AWS API Documentation
    #
    class ListDataLakeDatasetsResponse < Struct.new(
      :datasets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of ListDataLakeNamespaces.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch next page of namespaces.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max number of namespaces to fetch in this paginated request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataLakeNamespacesRequest AWS API Documentation
    #
    class ListDataLakeNamespacesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of ListDataLakeNamespaces.
    #
    # @!attribute [rw] namespaces
    #   The list of fetched namespace details. Noted it only contains custom
    #   namespaces, pre-defined namespaces are not included.
    #   @return [Array<Types::DataLakeNamespace>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch next page of namespaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListDataLakeNamespacesResponse AWS API Documentation
    #
    class ListDataLakeNamespacesResponse < Struct.new(
      :namespaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for ListInstances.
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch the next page of instances.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify the maximum number of instances to fetch in this paginated
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_name_filter
    #   The filter to ListInstances based on their names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_state_filter
    #   The filter to ListInstances based on their state.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListInstancesRequest AWS API Documentation
    #
    class ListInstancesRequest < Struct.new(
      :next_token,
      :max_results,
      :instance_name_filter,
      :instance_state_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for ListInstances.
    #
    # @!attribute [rw] instances
    #   The list of instances resource data details.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to fetch the next page of instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListInstancesResponse AWS API Documentation
    #
    class ListInstancesResponse < Struct.new(
      :instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of ListTagsForResource.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Web Services Supply chain resource ARN that needs tags to
    #   be listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of ListTagsForResource.
    #
    # @!attribute [rw] tags
    #   The tags added to an Amazon Web Services Supply Chain resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for SendDataIntegrationEvent.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The data event type.
    #
    #   * **scn.data.dataset** - Send data directly to any specified
    #     dataset.
    #
    #   * **scn.data.supplyplan** - Send data to [supply\_plan][1] dataset.
    #
    #   * **scn.data.shipmentstoporder** - Send data to
    #     [shipment\_stop\_order][2] dataset.
    #
    #   * **scn.data.shipmentstop** - Send data to [shipment\_stop][3]
    #     dataset.
    #
    #   * **scn.data.shipment** - Send data to [shipment][4] dataset.
    #
    #   * **scn.data.reservation** - Send data to [reservation][5] dataset.
    #
    #   * **scn.data.processproduct** - Send data to [process\_product][6]
    #     dataset.
    #
    #   * **scn.data.processoperation** - Send data to
    #     [process\_operation][7] dataset.
    #
    #   * **scn.data.processheader** - Send data to [process\_header][8]
    #     dataset.
    #
    #   * **scn.data.forecast** - Send data to [forecast][9] dataset.
    #
    #   * **scn.data.inventorylevel** - Send data to [inv\_level][10]
    #     dataset.
    #
    #   * **scn.data.inboundorder** - Send data to [inbound\_order][11]
    #     dataset.
    #
    #   * **scn.data.inboundorderline** - Send data to
    #     [inbound\_order\_line][12] dataset.
    #
    #   * **scn.data.inboundorderlineschedule** - Send data to
    #     [inbound\_order\_line\_schedule][13] dataset.
    #
    #   * **scn.data.outboundorderline** - Send data to
    #     [outbound\_order\_line][14] dataset.
    #
    #   * **scn.data.outboundshipment** - Send data to
    #     [outbound\_shipment][15] dataset.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/supply-plan-entity.html
    #   [2]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-order-entity.html
    #   [3]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-entity.html
    #   [4]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-entity.html
    #   [5]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/planning-reservation-entity.html
    #   [6]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-product-entity.html
    #   [7]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-operation-entity.html
    #   [8]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-header-entity.html
    #   [9]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/forecast-forecast-entity.html
    #   [10]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/inventory_mgmnt-inv-level-entity.html
    #   [11]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-entity.html
    #   [12]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-entity.html
    #   [13]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-schedule-entity.html
    #   [14]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-order-line-entity.html
    #   [15]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-shipment-entity.html
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data payload of the event, should follow the data schema of the
    #   target dataset, or see [Data entities supported in AWS Supply
    #   Chain][1]. To send single data record, use JsonObject format; to
    #   send multiple data records, use JsonArray format.
    #
    #   Note that for AWS Supply Chain dataset under **asc** namespace, it
    #   has a connection\_id internal field that is not allowed to be
    #   provided by client directly, they will be auto populated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] event_group_id
    #   Event identifier (for example, orderId for InboundOrder) used for
    #   data sharding or partitioning. Noted under one eventGroupId of same
    #   eventType and instanceId, events are processed sequentially in the
    #   order they are received by the server.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp (in epoch seconds) associated with the event. If not
    #   provided, it will be assigned with current timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   The idempotent client token. The token is active for 8 hours, and
    #   within its lifetime, it ensures the request completes only once upon
    #   retry with same client token. If omitted, the AWS SDK generates a
    #   unique value so that AWS SDK can safely retry the request upon
    #   network errors.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_target
    #   The target dataset configuration for **scn.data.dataset** event
    #   type.
    #   @return [Types::DataIntegrationEventDatasetTargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/SendDataIntegrationEventRequest AWS API Documentation
    #
    class SendDataIntegrationEventRequest < Struct.new(
      :instance_id,
      :event_type,
      :data,
      :event_group_id,
      :event_timestamp,
      :client_token,
      :dataset_target)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # The response parameters for SendDataIntegrationEvent.
    #
    # @!attribute [rw] event_id
    #   The unique event identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/SendDataIntegrationEventResponse AWS API Documentation
    #
    class SendDataIntegrationEventResponse < Struct.new(
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of TagResource.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Web Services Supply chain resource ARN that needs to be
    #   tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the Amazon Web Services Supply chain resource to be
    #   created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for TagResource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of UntagResource.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Web Services Supply chain resource ARN that needs to be
    #   untagged.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to be deleted for an Amazon Web Services Supply
    #   Chain resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of UntagResource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The request parameters for UpdateDataIntegrationFlow.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegrationFlow to be updated.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The new source configurations for the DataIntegrationFlow.
    #   @return [Array<Types::DataIntegrationFlowSource>]
    #
    # @!attribute [rw] transformation
    #   The new transformation configurations for the DataIntegrationFlow.
    #   @return [Types::DataIntegrationFlowTransformation]
    #
    # @!attribute [rw] target
    #   The new target configurations for the DataIntegrationFlow.
    #   @return [Types::DataIntegrationFlowTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataIntegrationFlowRequest AWS API Documentation
    #
    class UpdateDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name,
      :sources,
      :transformation,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for UpdateDataIntegrationFlow.
    #
    # @!attribute [rw] flow
    #   The details of the updated DataIntegrationFlow.
    #   @return [Types::DataIntegrationFlow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataIntegrationFlowResponse AWS API Documentation
    #
    class UpdateDataIntegrationFlowResponse < Struct.new(
      :flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of UpdateDataLakeDataset.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the dataset, besides the custom defined namespace,
    #   every instance comes with below pre-defined namespaces:
    #
    #   * **asc** - For information on the Amazon Web Services Supply Chain
    #     supported datasets see
    #     [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #   * **default** - For datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset. For **asc** namespace, the name must be one
    #   of the supported data entities under
    #   [https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the data lake dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataLakeDatasetRequest AWS API Documentation
    #
    class UpdateDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of UpdateDataLakeDataset.
    #
    # @!attribute [rw] dataset
    #   The updated dataset details.
    #   @return [Types::DataLakeDataset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataLakeDatasetResponse AWS API Documentation
    #
    class UpdateDataLakeDatasetResponse < Struct.new(
      :dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters of UpdateDataLakeNamespace.
    #
    # @!attribute [rw] instance_id
    #   The Amazon Web Services Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the namespace. Noted you cannot update namespace with
    #   name starting with **asc**, **default**, **scn**, **aws**,
    #   **amazon**, **amzn**
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the data lake namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataLakeNamespaceRequest AWS API Documentation
    #
    class UpdateDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters of UpdateDataLakeNamespace.
    #
    # @!attribute [rw] namespace
    #   The updated namespace details.
    #   @return [Types::DataLakeNamespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateDataLakeNamespaceResponse AWS API Documentation
    #
    class UpdateDataLakeNamespaceResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for UpdateInstance.
    #
    # @!attribute [rw] instance_id
    #   The AWS Supply Chain instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The AWS Supply Chain instance name.
    #   @return [String]
    #
    # @!attribute [rw] instance_description
    #   The AWS Supply Chain instance description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateInstanceRequest AWS API Documentation
    #
    class UpdateInstanceRequest < Struct.new(
      :instance_id,
      :instance_name,
      :instance_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for UpdateInstance.
    #
    # @!attribute [rw] instance
    #   The instance resource data details.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/UpdateInstanceResponse AWS API Documentation
    #
    class UpdateInstanceResponse < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


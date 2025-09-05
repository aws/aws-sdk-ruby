# frozen_string_literal: true

# This is generated code!

module Aws::SupplyChain
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have the required privileges to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The BillOfMaterialsImportJob details.</p>
    # @!attribute instance_id
    #   <p>The BillOfMaterialsImportJob instanceId.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The BillOfMaterialsImportJob jobId.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The BillOfMaterialsImportJob ConfigurationJobStatus.</p>
    #   @return [String]
    # @!attribute s3uri
    #   <p>The S3 URI from which the CSV is read.</p>
    #   @return [String]
    # @!attribute message
    #   <p>When the BillOfMaterialsImportJob has reached a terminal state, there will be a message.</p>
    #   @return [String]
    class BillOfMaterialsImportJob < Struct.new(
      :instance_id,
      :job_id,
      :status,
      :s3uri,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for CreateBillOfMaterialsImportJob.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute s3uri
    #   <p>The S3 URI of the CSV file to be imported. The bucket must grant permissions for AWS Supply Chain to read the file.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An idempotency token ensures the API request is only completed no more than once. This way, retrying the request will not trigger the operation multiple times. A client token is a unique, case-sensitive string of 33 to 128 ASCII characters. To make an idempotent API request, specify a client token in the request. You should not reuse the same client token for other requests. If you retry a successful request with the same client token, the request will succeed with no further actions being taken, and you will receive the same API response as the original successful request.</p>
    #   @return [String]
    class CreateBillOfMaterialsImportJobRequest < Struct.new(
      :instance_id,
      :s3uri,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of CreateBillOfMaterialsImportJob.</p>
    # @!attribute job_id
    #   <p>The new BillOfMaterialsImportJob identifier.</p>
    #   @return [String]
    class CreateBillOfMaterialsImportJobResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for CreateDataIntegrationFlow.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the DataIntegrationFlow.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The source configurations for DataIntegrationFlow.</p>
    #   @return [Array<Types::DataIntegrationFlowSource>]
    # @!attribute transformation
    #   <p>The transformation configurations for DataIntegrationFlow.</p>
    #   @return [Types::DataIntegrationFlowTransformation]
    # @!attribute target
    #   <p>The target configurations for DataIntegrationFlow.</p>
    #   @return [Types::DataIntegrationFlowTarget]
    # @!attribute tags
    #   <p>The tags of the DataIntegrationFlow to be created</p>
    #   @return [Hash<String, String>]
    class CreateDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name,
      :sources,
      :transformation,
      :target,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for CreateDataIntegrationFlow.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegrationFlow created.</p>
    #   @return [String]
    class CreateDataIntegrationFlowResponse < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for CreateDataLakeDataset.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dataset. For <b>asc</b> name space, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The custom schema of the data lake dataset and required for dataset in <b>default</b> and custom namespaces.</p>
    #   @return [Types::DataLakeDatasetSchema]
    # @!attribute description
    #   <p>The description of the dataset.</p>
    #   @return [String]
    # @!attribute partition_spec
    #   <p>The partition specification of the dataset. Partitioning can effectively improve the dataset query performance by reducing the amount of data scanned during query execution. But partitioning or not will affect how data get ingested by data ingestion methods, such as SendDataIntegrationEvent's dataset UPSERT will upsert records within partition (instead of within whole dataset). For more details, refer to those data ingestion documentations.</p>
    #   @return [Types::DataLakeDatasetPartitionSpec]
    # @!attribute tags
    #   <p>The tags of the dataset.</p>
    #   @return [Hash<String, String>]
    class CreateDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name,
      :schema,
      :description,
      :partition_spec,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of CreateDataLakeDataset.</p>
    # @!attribute dataset
    #   <p>The detail of created dataset.</p>
    #   @return [Types::DataLakeDataset]
    class CreateDataLakeDatasetResponse < Struct.new(
      :dataset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for CreateDataLakeNamespace.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the namespace. Noted you cannot create namespace with name starting with <b>asc</b>, <b>default</b>, <b>scn</b>, <b>aws</b>, <b>amazon</b>, <b>amzn</b>
    #            </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the namespace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the namespace.</p>
    #   @return [Hash<String, String>]
    class CreateDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of CreateDataLakeNamespace.</p>
    # @!attribute namespace
    #   <p>The detail of created namespace.</p>
    #   @return [Types::DataLakeNamespace]
    class CreateDataLakeNamespaceResponse < Struct.new(
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for CreateInstance.</p>
    # @!attribute instance_name
    #   <p>The AWS Supply Chain instance name.</p>
    #   @return [String]
    # @!attribute instance_description
    #   <p>The AWS Supply Chain instance description.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon Web Services owned KMS key. If you don't provide anything here, AWS Supply Chain uses the Amazon Web Services owned KMS key.</p>
    #   @return [String]
    # @!attribute web_app_dns_domain
    #   <p>The DNS subdomain of the web app. This would be "example" in the URL "example.scn.global.on.aws". You can set this to a custom value, as long as the domain isn't already being used by someone else. The name may only include alphanumeric characters and hyphens.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The Amazon Web Services tags of an instance to be created.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>The client token for idempotency.</p>
    #   @return [String]
    class CreateInstanceRequest < Struct.new(
      :instance_name,
      :instance_description,
      :kms_key_arn,
      :web_app_dns_domain,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for CreateInstance.</p>
    # @!attribute instance
    #   <p>The AWS Supply Chain instance resource data details.</p>
    #   @return [Types::Instance]
    class CreateInstanceResponse < Struct.new(
      :instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data integration event details.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The unique event identifier.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The data event type.</p>
    #   @return [String]
    # @!attribute event_group_id
    #   <p>Event identifier (for example, orderId for InboundOrder) used for data sharding or partitioning.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The event timestamp (in epoch seconds).</p>
    #   @return [Time]
    # @!attribute dataset_target_details
    #   <p>The target dataset details for a DATASET event type.</p>
    #   @return [Types::DataIntegrationEventDatasetTargetDetails]
    class DataIntegrationEvent < Struct.new(
      :instance_id,
      :event_id,
      :event_type,
      :event_group_id,
      :event_timestamp,
      :dataset_target_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The target dataset load execution details.</p>
    # @!attribute status
    #   <p>The event load execution status to target dataset.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The failure message (if any) of failed event load execution to dataset.</p>
    #   @return [String]
    class DataIntegrationEventDatasetLoadExecutionDetails < Struct.new(
      :status,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The target dataset configuration for a DATASET event type.</p>
    # @!attribute dataset_identifier
    #   <p>The datalake dataset ARN identifier.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>The target dataset load operation type.</p>
    #   @return [String]
    class DataIntegrationEventDatasetTargetConfiguration < Struct.new(
      :dataset_identifier,
      :operation_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The target dataset details for a DATASET event type.</p>
    # @!attribute dataset_identifier
    #   <p>The datalake dataset ARN identifier.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>The target dataset load operation type. The available options are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>APPEND</b> - Add new records to the dataset. Noted that this operation type will just try to append records as-is without any primary key or partition constraints.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPSERT</b> - Modify existing records in the dataset with primary key configured, events for datasets without primary keys are not allowed. If event data contains primary keys that match records in the dataset within same partition, then those existing records (in that partition) will be updated. If primary keys do not match, new records will be added. Note that if dataset contain records with duplicate primary key values in the same partition, those duplicate records will be deduped into one updated record.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETE</b> - Remove existing records in the dataset with primary key configured, events for datasets without primary keys are not allowed. If event data contains primary keys that match records in the dataset within same partition, then those existing records (in that partition) will be deleted. If primary keys do not match, no actions will be done. Note that if dataset contain records with duplicate primary key values in the same partition, all those duplicates will be removed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute dataset_load_execution
    #   <p>The target dataset load execution.</p>
    #   @return [Types::DataIntegrationEventDatasetLoadExecutionDetails]
    class DataIntegrationEventDatasetTargetDetails < Struct.new(
      :dataset_identifier,
      :operation_type,
      :dataset_load_execution,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DataIntegrationFlow details.</p>
    # @!attribute instance_id
    #   <p>The DataIntegrationFlow instance ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The DataIntegrationFlow name.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The DataIntegrationFlow source configurations.</p>
    #   @return [Array<Types::DataIntegrationFlowSource>]
    # @!attribute transformation
    #   <p>The DataIntegrationFlow transformation configurations.</p>
    #   @return [Types::DataIntegrationFlowTransformation]
    # @!attribute target
    #   <p>The DataIntegrationFlow target configuration.</p>
    #   @return [Types::DataIntegrationFlowTarget]
    # @!attribute created_time
    #   <p>The DataIntegrationFlow creation timestamp.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The DataIntegrationFlow last modified timestamp.</p>
    #   @return [Time]
    class DataIntegrationFlow < Struct.new(
      :instance_id,
      :name,
      :sources,
      :transformation,
      :target,
      :created_time,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The dataset options used in dataset source and target configurations.</p>
    # @!attribute load_type
    #   <p>The target dataset's data load type. This only affects how source S3 files are selected in the S3-to-dataset flow.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>REPLACE</b> - Target dataset will get replaced with the new file added under the source s3 prefix.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>INCREMENTAL</b> - Target dataset will get updated with the up-to-date content under S3 prefix incorporating any file additions or removals there.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute dedupe_records
    #   <p>The option to perform deduplication on data records sharing same primary key values. If disabled, transformed data with duplicate primary key values will ingest into dataset, for datasets within <b>asc</b> namespace, such duplicates will cause ingestion fail. If enabled without dedupeStrategy, deduplication is done by retaining a random data record among those sharing the same primary key values. If enabled with dedupeStragtegy, the deduplication is done following the strategy.</p>
    #            <p>Note that target dataset may have partition configured, when dedupe is enabled, it only dedupe against primary keys and retain only one record out of those duplicates regardless of its partition status.</p>
    #   @return [Boolean]
    # @!attribute dedupe_strategy
    #   <p>The deduplication strategy to dedupe the data records sharing same primary key values of the target dataset. This strategy only applies to target dataset with primary keys and with dedupeRecords option enabled. If transformed data still got duplicates after the dedupeStrategy evaluation, a random data record is chosen to be retained.</p>
    #   @return [Types::DataIntegrationFlowDedupeStrategy]
    class DataIntegrationFlowDatasetOptions < Struct.new(
      :load_type,
      :dedupe_records,
      :dedupe_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a flow execution with dataset source.</p>
    # @!attribute dataset_identifier
    #   <p>The ARN of the dataset source.</p>
    #   @return [String]
    class DataIntegrationFlowDatasetSource < Struct.new(
      :dataset_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The dataset DataIntegrationFlow source configuration parameters.</p>
    # @!attribute dataset_identifier
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    # @!attribute options
    #   <p>The dataset DataIntegrationFlow source options.</p>
    #   @return [Types::DataIntegrationFlowDatasetOptions]
    class DataIntegrationFlowDatasetSourceConfiguration < Struct.new(
      :dataset_identifier,
      :options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The dataset DataIntegrationFlow target configuration parameters.</p>
    # @!attribute dataset_identifier
    #   <p>The dataset ARN.</p>
    #   @return [String]
    # @!attribute options
    #   <p>The dataset DataIntegrationFlow target options.</p>
    #   @return [Types::DataIntegrationFlowDatasetOptions]
    class DataIntegrationFlowDatasetTargetConfiguration < Struct.new(
      :dataset_identifier,
      :options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The deduplication strategy details.</p>
    # @!attribute type
    #   <p>The type of the deduplication strategy.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FIELD_PRIORITY</b> - Field priority configuration for the deduplication strategy specifies an ordered list of fields used to tie-break the data records sharing the same primary key values. Fields earlier in the list have higher priority for evaluation. For each field, the sort order determines whether to retain data record with larger or smaller field value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute field_priority
    #   <p>The field priority deduplication strategy.</p>
    #   @return [Types::DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration]
    class DataIntegrationFlowDedupeStrategy < Struct.new(
      :type,
      :field_priority,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The flow execution details.</p>
    # @!attribute instance_id
    #   <p>The flow execution's instanceId.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The flow execution's flowName.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The flow executionId.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of flow execution.</p>
    #   @return [String]
    # @!attribute source_info
    #   <p>The source information for a flow execution.</p>
    #   @return [Types::DataIntegrationFlowExecutionSourceInfo]
    # @!attribute message
    #   <p>The failure message (if any) of failed flow execution.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The flow execution start timestamp.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The flow execution end timestamp.</p>
    #   @return [Time]
    # @!attribute output_metadata
    #   <p>The flow execution output metadata.</p>
    #   @return [Types::DataIntegrationFlowExecutionOutputMetadata]
    class DataIntegrationFlowExecution < Struct.new(
      :instance_id,
      :flow_name,
      :execution_id,
      :status,
      :source_info,
      :message,
      :start_time,
      :end_time,
      :output_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The output metadata of the flow execution.</p>
    # @!attribute diagnostic_reports_root_s3_uri
    #   <p>The S3 URI under which all diagnostic files (such as deduped records if any) are stored.</p>
    #   @return [String]
    class DataIntegrationFlowExecutionOutputMetadata < Struct.new(
      :diagnostic_reports_root_s3_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The source information of a flow execution.</p>
    # @!attribute source_type
    #   <p>The data integration flow execution source type.</p>
    #   @return [String]
    # @!attribute s3_source
    #   <p>The source details of a flow execution with S3 source.</p>
    #   @return [Types::DataIntegrationFlowS3Source]
    # @!attribute dataset_source
    #   <p>The source details of a flow execution with dataset source.</p>
    #   @return [Types::DataIntegrationFlowDatasetSource]
    class DataIntegrationFlowExecutionSourceInfo < Struct.new(
      :source_type,
      :s3_source,
      :dataset_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The field used in the field priority deduplication strategy.</p>
    # @!attribute name
    #   <p>The name of the deduplication field. Must exist in the dataset and not be a primary key.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for the deduplication field.</p>
    #   @return [String]
    class DataIntegrationFlowFieldPriorityDedupeField < Struct.new(
      :name,
      :sort_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The field priority deduplication strategy details.</p>
    # @!attribute fields
    #   <p>The list of field names and their sort order for deduplication, arranged in descending priority from highest to lowest.</p>
    #   @return [Array<Types::DataIntegrationFlowFieldPriorityDedupeField>]
    class DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration < Struct.new(
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 options used in S3 source and target configurations.</p>
    # @!attribute file_type
    #   <p>The Amazon S3 file type in S3 options.</p>
    #   @return [String]
    class DataIntegrationFlowS3Options < Struct.new(
      :file_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a flow execution with S3 source.</p>
    # @!attribute bucket_name
    #   <p>The S3 bucket name of the S3 source.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The S3 object key of the S3 source.</p>
    #   @return [String]
    class DataIntegrationFlowS3Source < Struct.new(
      :bucket_name,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 DataIntegrationFlow source configuration parameters.</p>
    # @!attribute bucket_name
    #   <p>The bucketName of the S3 source objects.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the S3 source objects. To trigger data ingestion, S3 files need to be put under <code>s3://<i>bucketName</i>/<i>prefix</i>/</code>.</p>
    #   @return [String]
    # @!attribute options
    #   <p>The other options of the S3 DataIntegrationFlow source.</p>
    #   @return [Types::DataIntegrationFlowS3Options]
    class DataIntegrationFlowS3SourceConfiguration < Struct.new(
      :bucket_name,
      :prefix,
      :options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 DataIntegrationFlow target configuration parameters.</p>
    # @!attribute bucket_name
    #   <p>The bucketName of the S3 target objects.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the S3 target objects.</p>
    #   @return [String]
    # @!attribute options
    #   <p>The S3 DataIntegrationFlow target options.</p>
    #   @return [Types::DataIntegrationFlowS3Options]
    class DataIntegrationFlowS3TargetConfiguration < Struct.new(
      :bucket_name,
      :prefix,
      :options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The SQL DataIntegrationFlow transformation configuration parameters.</p>
    # @!attribute query
    #   <p>The transformation SQL query body based on SparkSQL.</p>
    #   @return [String]
    class DataIntegrationFlowSQLTransformationConfiguration < Struct.new(
      :query,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DataIntegrationFlow source parameters.</p>
    # @!attribute source_type
    #   <p>The DataIntegrationFlow source type.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p>The DataIntegrationFlow source name that can be used as table alias in SQL transformation query.</p>
    #   @return [String]
    # @!attribute s3_source
    #   <p>The S3 DataIntegrationFlow source.</p>
    #   @return [Types::DataIntegrationFlowS3SourceConfiguration]
    # @!attribute dataset_source
    #   <p>The dataset DataIntegrationFlow source.</p>
    #   @return [Types::DataIntegrationFlowDatasetSourceConfiguration]
    class DataIntegrationFlowSource < Struct.new(
      :source_type,
      :source_name,
      :s3_source,
      :dataset_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DataIntegrationFlow target parameters.</p>
    # @!attribute target_type
    #   <p>The DataIntegrationFlow target type.</p>
    #   @return [String]
    # @!attribute s3_target
    #   <p>The S3 DataIntegrationFlow target.</p>
    #   @return [Types::DataIntegrationFlowS3TargetConfiguration]
    # @!attribute dataset_target
    #   <p>The dataset DataIntegrationFlow target. Note that for AWS Supply Chain dataset under <b>asc</b> namespace, it has a connection_id internal field that is not allowed to be provided by client directly, they will be auto populated.</p>
    #   @return [Types::DataIntegrationFlowDatasetTargetConfiguration]
    class DataIntegrationFlowTarget < Struct.new(
      :target_type,
      :s3_target,
      :dataset_target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DataIntegrationFlow transformation parameters.</p>
    # @!attribute transformation_type
    #   <p>The DataIntegrationFlow transformation type.</p>
    #   @return [String]
    # @!attribute sql_transformation
    #   <p>The SQL DataIntegrationFlow transformation configuration.</p>
    #   @return [Types::DataIntegrationFlowSQLTransformationConfiguration]
    class DataIntegrationFlowTransformation < Struct.new(
      :transformation_type,
      :sql_transformation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data lake dataset details.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The arn of the dataset.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema of the dataset.</p>
    #   @return [Types::DataLakeDatasetSchema]
    # @!attribute description
    #   <p>The description of the dataset.</p>
    #   @return [String]
    # @!attribute partition_spec
    #   <p>The partition specification for a dataset.</p>
    #   @return [Types::DataLakeDatasetPartitionSpec]
    # @!attribute created_time
    #   <p>The creation time of the dataset.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The last modified time of the dataset.</p>
    #   @return [Time]
    class DataLakeDataset < Struct.new(
      :instance_id,
      :namespace,
      :name,
      :arn,
      :schema,
      :description,
      :partition_spec,
      :created_time,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detail of the partition field.</p>
    # @!attribute name
    #   <p>The name of the partition field.</p>
    #   @return [String]
    # @!attribute transform
    #   <p>The transformation of the partition field. A transformation specifies how to partition on a given field. For example, with timestamp you can specify that you'd like to partition fields by day, e.g. data record with value 2025-01-03T00:00:00Z in partition field is in 2025-01-03 partition. Also noted that data record without any value in optional partition field is in NULL partition.</p>
    #   @return [Types::DataLakeDatasetPartitionFieldTransform]
    class DataLakeDatasetPartitionField < Struct.new(
      :name,
      :transform,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detail of the partition field transformation.</p>
    # @!attribute type
    #   <p>The type of partitioning transformation for this field. The available options are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>IDENTITY</b> - Partitions data on a given field by its exact values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>YEAR</b> - Partitions data on a timestamp field using year granularity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MONTH</b> - Partitions data on a timestamp field using month granularity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DAY</b> - Partitions data on a timestamp field using day granularity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>HOUR</b> - Partitions data on a timestamp field using hour granularity.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DataLakeDatasetPartitionFieldTransform < Struct.new(
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The partition specification for a dataset.</p>
    # @!attribute fields
    #   <p>The fields on which to partition a dataset. The partitions will be applied hierarchically based on the order of this list.</p>
    #   @return [Array<Types::DataLakeDatasetPartitionField>]
    class DataLakeDatasetPartitionSpec < Struct.new(
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detail of the primary key field.</p>
    # @!attribute name
    #   <p>The name of the primary key field.</p>
    #   @return [String]
    class DataLakeDatasetPrimaryKeyField < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The schema details of the dataset. Note that for AWS Supply Chain dataset under <b>asc</b> namespace, it may have internal fields like connection_id that will be auto populated by data ingestion methods.</p>
    # @!attribute name
    #   <p>The name of the dataset schema.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The list of field details of the dataset schema.</p>
    #   @return [Array<Types::DataLakeDatasetSchemaField>]
    # @!attribute primary_keys
    #   <p>The list of primary key fields for the dataset. Primary keys defined can help data ingestion methods to ensure data uniqueness: CreateDataIntegrationFlow's dedupe strategy will leverage primary keys to perform records deduplication before write to dataset; SendDataIntegrationEvent's UPSERT and DELETE can only work with dataset with primary keys. For more details, refer to those data ingestion documentations.</p>
    #            <p>Note that defining primary keys does not necessarily mean the dataset cannot have duplicate records, duplicate records can still be ingested if CreateDataIntegrationFlow's dedupe disabled or through SendDataIntegrationEvent's APPEND operation.</p>
    #   @return [Array<Types::DataLakeDatasetPrimaryKeyField>]
    class DataLakeDatasetSchema < Struct.new(
      :name,
      :fields,
      :primary_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The dataset field details.</p>
    # @!attribute name
    #   <p>The dataset field name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The dataset field type.</p>
    #   @return [String]
    # @!attribute is_required
    #   <p>Indicate if the field is required or not.</p>
    #   @return [Boolean]
    class DataLakeDatasetSchemaField < Struct.new(
      :name,
      :type,
      :is_required,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data lake namespace details.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the namespace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The arn of the namespace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the namespace.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The creation time of the namespace.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The last modified time of the namespace.</p>
    #   @return [Time]
    class DataLakeNamespace < Struct.new(
      :instance_id,
      :name,
      :arn,
      :description,
      :created_time,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for DeleteDataIntegrationFlow.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegrationFlow to be deleted.</p>
    #   @return [String]
    class DeleteDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for DeleteDataIntegrationFlow.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegrationFlow deleted.</p>
    #   @return [String]
    class DeleteDataIntegrationFlowResponse < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of DeleteDataLakeDataset.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #   @return [String]
    class DeleteDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of DeleteDataLakeDataset.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of deleted dataset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of deleted dataset.</p>
    #   @return [String]
    class DeleteDataLakeDatasetResponse < Struct.new(
      :instance_id,
      :namespace,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of DeleteDataLakeNamespace.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the namespace. Noted you cannot delete pre-defined namespace like <b>asc</b>, <b>default</b> which are only deleted through instance deletion.</p>
    #   @return [String]
    class DeleteDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of DeleteDataLakeNamespace.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of deleted namespace.</p>
    #   @return [String]
    class DeleteDataLakeNamespaceResponse < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for DeleteInstance.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    class DeleteInstanceRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for DeleteInstance.</p>
    # @!attribute instance
    #   <p>The AWS Supply Chain instance resource data details.</p>
    #   @return [Types::Instance]
    class DeleteInstanceResponse < Struct.new(
      :instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for GetBillOfMaterialsImportJob.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The BillOfMaterialsImportJob identifier.</p>
    #   @return [String]
    class GetBillOfMaterialsImportJobRequest < Struct.new(
      :instance_id,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for GetBillOfMaterialsImportJob.</p>
    # @!attribute job
    #   <p>The BillOfMaterialsImportJob.</p>
    #   @return [Types::BillOfMaterialsImportJob]
    class GetBillOfMaterialsImportJobResponse < Struct.new(
      :job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for GetDataIntegrationEvent.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The unique event identifier.</p>
    #   @return [String]
    class GetDataIntegrationEventRequest < Struct.new(
      :instance_id,
      :event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for GetDataIntegrationEvent.</p>
    # @!attribute event
    #   <p>The details of the DataIntegrationEvent returned.</p>
    #   @return [Types::DataIntegrationEvent]
    class GetDataIntegrationEventResponse < Struct.new(
      :event,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of GetFlowExecution.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The flow name.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The flow execution identifier.</p>
    #   @return [String]
    class GetDataIntegrationFlowExecutionRequest < Struct.new(
      :instance_id,
      :flow_name,
      :execution_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of GetFlowExecution.</p>
    # @!attribute flow_execution
    #   <p>The flow execution details.</p>
    #   @return [Types::DataIntegrationFlowExecution]
    class GetDataIntegrationFlowExecutionResponse < Struct.new(
      :flow_execution,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for GetDataIntegrationFlow.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegrationFlow created.</p>
    #   @return [String]
    class GetDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for GetDataIntegrationFlow.</p>
    # @!attribute flow
    #   <p>The details of the DataIntegrationFlow returned.</p>
    #   @return [Types::DataIntegrationFlow]
    class GetDataIntegrationFlowResponse < Struct.new(
      :flow,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for GetDataLakeDataset.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #   @return [String]
    class GetDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for GetDataLakeDataset.</p>
    # @!attribute dataset
    #   <p>The fetched dataset details.</p>
    #   @return [Types::DataLakeDataset]
    class GetDataLakeDatasetResponse < Struct.new(
      :dataset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for GetDataLakeNamespace.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the namespace. Besides the namespaces user created, you can also specify the pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - Pre-defined namespace containing Amazon Web Services Supply Chain supported datasets, see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - Pre-defined namespace containing datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for GetDataLakeNamespace.</p>
    # @!attribute namespace
    #   <p>The fetched namespace details.</p>
    #   @return [Types::DataLakeNamespace]
    class GetDataLakeNamespaceResponse < Struct.new(
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for GetInstance.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier</p>
    #   @return [String]
    class GetInstanceRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for GetInstance.</p>
    # @!attribute instance
    #   <p>The instance resource data details.</p>
    #   @return [Types::Instance]
    class GetInstanceResponse < Struct.new(
      :instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the instance.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID that owns the instance.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the instance.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The Amazon Web Services Supply Chain instance error message. If the instance results in an unhealthy state, customers need to check the error message, delete the current instance, and recreate a new one based on the mitigation from the error message.</p>
    #   @return [String]
    # @!attribute web_app_dns_domain
    #   <p>The WebApp DNS domain name of the instance.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The instance creation timestamp.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The instance last modified timestamp.</p>
    #   @return [Time]
    # @!attribute instance_name
    #   <p>The Amazon Web Services Supply Chain instance name.</p>
    #   @return [String]
    # @!attribute instance_description
    #   <p>The Amazon Web Services Supply Chain instance description.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you optionally provided for encryption. If you did not provide anything here, AWS Supply Chain uses the Amazon Web Services owned KMS key and nothing is returned.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the instance.</p>
    #   @return [Float]
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
      :version_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for ListDataIntegrationEvents.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>List data integration events for the specified eventType.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to fetch the next page of the data integration events.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify the maximum number of data integration events to fetch in one paginated request.</p>
    #   @return [Integer]
    class ListDataIntegrationEventsRequest < Struct.new(
      :instance_id,
      :event_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for ListDataIntegrationEvents.</p>
    # @!attribute events
    #   <p>The list of data integration events.</p>
    #   @return [Array<Types::DataIntegrationEvent>]
    # @!attribute next_token
    #   <p>The pagination token to fetch the next page of the ListDataIntegrationEvents.</p>
    #   @return [String]
    class ListDataIntegrationEventsResponse < Struct.new(
      :events,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of ListFlowExecutions.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The flow name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to fetch next page of flow executions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number to specify the max number of flow executions to fetch in this paginated request.</p>
    #   @return [Integer]
    class ListDataIntegrationFlowExecutionsRequest < Struct.new(
      :instance_id,
      :flow_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of ListFlowExecutions.</p>
    # @!attribute flow_executions
    #   <p>The list of flow executions.</p>
    #   @return [Array<Types::DataIntegrationFlowExecution>]
    # @!attribute next_token
    #   <p>The pagination token to fetch next page of flow executions.</p>
    #   @return [String]
    class ListDataIntegrationFlowExecutionsResponse < Struct.new(
      :flow_executions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for ListDataIntegrationFlows.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to fetch the next page of the DataIntegrationFlows.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify the maximum number of DataIntegrationFlows to fetch in one paginated request.</p>
    #   @return [Integer]
    class ListDataIntegrationFlowsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for ListDataIntegrationFlows.</p>
    # @!attribute flows
    #   <p>The response parameters for ListDataIntegrationFlows.</p>
    #   @return [Array<Types::DataIntegrationFlow>]
    # @!attribute next_token
    #   <p>The pagination token to fetch the next page of the DataIntegrationFlows.</p>
    #   @return [String]
    class ListDataIntegrationFlowsResponse < Struct.new(
      :flows,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of ListDataLakeDatasets.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to fetch next page of datasets.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The max number of datasets to fetch in this paginated request.</p>
    #   @return [Integer]
    class ListDataLakeDatasetsRequest < Struct.new(
      :instance_id,
      :namespace,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of ListDataLakeDatasets.</p>
    # @!attribute datasets
    #   <p>The list of fetched dataset details.</p>
    #   @return [Array<Types::DataLakeDataset>]
    # @!attribute next_token
    #   <p>The pagination token to fetch next page of datasets.</p>
    #   @return [String]
    class ListDataLakeDatasetsResponse < Struct.new(
      :datasets,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of ListDataLakeNamespaces.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to fetch next page of namespaces.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The max number of namespaces to fetch in this paginated request.</p>
    #   @return [Integer]
    class ListDataLakeNamespacesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of ListDataLakeNamespaces.</p>
    # @!attribute namespaces
    #   <p>The list of fetched namespace details. Noted it only contains custom namespaces, pre-defined namespaces are not included.</p>
    #   @return [Array<Types::DataLakeNamespace>]
    # @!attribute next_token
    #   <p>The pagination token to fetch next page of namespaces.</p>
    #   @return [String]
    class ListDataLakeNamespacesResponse < Struct.new(
      :namespaces,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for ListInstances.</p>
    # @!attribute next_token
    #   <p>The pagination token to fetch the next page of instances.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify the maximum number of instances to fetch in this paginated request.</p>
    #   @return [Integer]
    # @!attribute instance_name_filter
    #   <p>The filter to ListInstances based on their names.</p>
    #   @return [Array<String>]
    # @!attribute instance_state_filter
    #   <p>The filter to ListInstances based on their state.</p>
    #   @return [Array<String>]
    class ListInstancesRequest < Struct.new(
      :next_token,
      :max_results,
      :instance_name_filter,
      :instance_state_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for ListInstances.</p>
    # @!attribute instances
    #   <p>The list of instances resource data details.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute next_token
    #   <p>The pagination token to fetch the next page of instances.</p>
    #   @return [String]
    class ListInstancesResponse < Struct.new(
      :instances,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of ListTagsForResource.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Web Services Supply chain resource ARN that needs tags to be listed.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of ListTagsForResource.</p>
    # @!attribute tags
    #   <p>The tags added to an Amazon Web Services Supply Chain resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for SendDataIntegrationEvent.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The data event type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>scn.data.dataset</b> - Send data directly to any specified dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.supplyplan</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/supply-plan-entity.html">supply_plan</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.shipmentstoporder</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-order-entity.html">shipment_stop_order</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.shipmentstop</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-entity.html">shipment_stop</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.shipment</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-entity.html">shipment</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.reservation</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/planning-reservation-entity.html">reservation</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.processproduct</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-product-entity.html">process_product</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.processoperation</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-operation-entity.html">process_operation</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.processheader</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-header-entity.html">process_header</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.forecast</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/forecast-forecast-entity.html">forecast</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inventorylevel</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/inventory_mgmnt-inv-level-entity.html">inv_level</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inboundorder</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-entity.html">inbound_order</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inboundorderline</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-entity.html">inbound_order_line</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inboundorderlineschedule</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-schedule-entity.html">inbound_order_line_schedule</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.outboundorderline</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-order-line-entity.html">outbound_order_line</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.outboundshipment</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-shipment-entity.html">outbound_shipment</a> dataset.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data
    #   <p>The data payload of the event, should follow the data schema of the target dataset, or see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">Data entities supported in AWS Supply Chain</a>. To send single data record, use JsonObject format; to send multiple data records, use JsonArray format.</p>
    #            <p>Note that for AWS Supply Chain dataset under <b>asc</b> namespace, it has a connection_id internal field that is not allowed to be provided by client directly, they will be auto populated.</p>
    #   @return [String]
    # @!attribute event_group_id
    #   <p>Event identifier (for example, orderId for InboundOrder) used for data sharding or partitioning. Noted under one eventGroupId of same eventType and instanceId, events are processed sequentially in the order they are received by the server.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The timestamp (in epoch seconds) associated with the event. If not provided, it will be assigned with current timestamp.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>The idempotent client token. The token is active for 8 hours, and within its lifetime, it ensures the request completes only once upon retry with same client token. If omitted, the AWS SDK generates a unique value so that AWS SDK can safely retry the request upon network errors.</p>
    #   @return [String]
    # @!attribute dataset_target
    #   <p>The target dataset configuration for <b>scn.data.dataset</b> event type.</p>
    #   @return [Types::DataIntegrationEventDatasetTargetConfiguration]
    class SendDataIntegrationEventRequest < Struct.new(
      :instance_id,
      :event_type,
      :data,
      :event_group_id,
      :event_timestamp,
      :client_token,
      :dataset_target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for SendDataIntegrationEvent.</p>
    # @!attribute event_id
    #   <p>The unique event identifier.</p>
    #   @return [String]
    class SendDataIntegrationEventResponse < Struct.new(
      :event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of TagResource.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Web Services Supply chain resource ARN that needs to be tagged.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the Amazon Web Services Supply chain resource to be created.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for TagResource.</p>
    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of UntagResource.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Web Services Supply chain resource ARN that needs to be untagged.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to be deleted for an Amazon Web Services Supply Chain resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of UntagResource.</p>
    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for UpdateDataIntegrationFlow.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the DataIntegrationFlow to be updated.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The new source configurations for the DataIntegrationFlow.</p>
    #   @return [Array<Types::DataIntegrationFlowSource>]
    # @!attribute transformation
    #   <p>The new transformation configurations for the DataIntegrationFlow.</p>
    #   @return [Types::DataIntegrationFlowTransformation]
    # @!attribute target
    #   <p>The new target configurations for the DataIntegrationFlow.</p>
    #   @return [Types::DataIntegrationFlowTarget]
    class UpdateDataIntegrationFlowRequest < Struct.new(
      :instance_id,
      :name,
      :sources,
      :transformation,
      :target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for UpdateDataIntegrationFlow.</p>
    # @!attribute flow
    #   <p>The details of the updated DataIntegrationFlow.</p>
    #   @return [Types::DataIntegrationFlow]
    class UpdateDataIntegrationFlowResponse < Struct.new(
      :flow,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of UpdateDataLakeDataset.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Chain instance identifier.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the data lake dataset.</p>
    #   @return [String]
    class UpdateDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of UpdateDataLakeDataset.</p>
    # @!attribute dataset
    #   <p>The updated dataset details.</p>
    #   @return [Types::DataLakeDataset]
    class UpdateDataLakeDatasetResponse < Struct.new(
      :dataset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters of UpdateDataLakeNamespace.</p>
    # @!attribute instance_id
    #   <p>The Amazon Web Services Chain instance identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the namespace. Noted you cannot update namespace with name starting with <b>asc</b>, <b>default</b>, <b>scn</b>, <b>aws</b>, <b>amazon</b>, <b>amzn</b>
    #            </p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the data lake namespace.</p>
    #   @return [String]
    class UpdateDataLakeNamespaceRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters of UpdateDataLakeNamespace.</p>
    # @!attribute namespace
    #   <p>The updated namespace details.</p>
    #   @return [Types::DataLakeNamespace]
    class UpdateDataLakeNamespaceResponse < Struct.new(
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for UpdateInstance.</p>
    # @!attribute instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The AWS Supply Chain instance name.</p>
    #   @return [String]
    # @!attribute instance_description
    #   <p>The AWS Supply Chain instance description.</p>
    #   @return [String]
    class UpdateInstanceRequest < Struct.new(
      :instance_id,
      :instance_name,
      :instance_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response parameters for UpdateInstance.</p>
    # @!attribute instance
    #   <p>The instance resource data details.</p>
    #   @return [Types::Instance]
    class UpdateInstanceResponse < Struct.new(
      :instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input does not satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

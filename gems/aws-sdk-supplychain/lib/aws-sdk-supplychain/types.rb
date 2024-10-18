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
    #   The name space of the dataset.
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
    #   The custom schema of the data lake dataset and is only required when
    #   the name space is *default*.
    #   @return [Types::DataLakeDatasetSchema]
    #
    # @!attribute [rw] description
    #   The description of the dataset.
    #   @return [String]
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
    #   The dataset data load type in dataset options.
    #   @return [String]
    #
    # @!attribute [rw] dedupe_records
    #   The dataset load option to remove duplicates.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataIntegrationFlowDatasetOptions AWS API Documentation
    #
    class DataIntegrationFlowDatasetOptions < Struct.new(
      :load_type,
      :dedupe_records)
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

    # The S3 DataIntegrationFlow source configuration parameters.
    #
    # @!attribute [rw] bucket_name
    #   The bucketName of the S3 source objects.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the S3 source objects.
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
      SENSITIVE = []
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
    #   The dataset DataIntegrationFlow target.
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
    #   The name space of the dataset. The available values are:
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
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schema details of the dataset.
    #
    # @!attribute [rw] name
    #   The name of the dataset schema.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The list of field details of the dataset schema.
    #   @return [Array<Types::DataLakeDatasetSchemaField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/DataLakeDatasetSchema AWS API Documentation
    #
    class DataLakeDatasetSchema < Struct.new(
      :name,
      :fields)
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
    #   The namespace of the dataset. The available values are:
    #
    #   * asc: for [ AWS Supply Chain supported datasets ][1].
    #
    #   * default: for datasets with custom user-defined schemas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset. If the namespace is *asc*, the name must be
    #   one of the supported [data entities ][1].
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
    #   The name space of the dataset. The available values are:
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/GetDataLakeDatasetRequest AWS API Documentation
    #
    class GetDataLakeDatasetRequest < Struct.new(
      :instance_id,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response parameters for UpdateDataLakeDataset.
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
    #   The namespace of the dataset. The available values are:
    #
    #   * asc: for [ AWS Supply Chain supported datasets ][1].
    #
    #   * default: for datasets with custom user-defined schemas.
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
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data payload of the event. For more information on the data
    #   schema to use, see [Data entities supported in AWS Supply Chain
    #   ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
    #   @return [String]
    #
    # @!attribute [rw] event_group_id
    #   Event identifier (for example, orderId for InboundOrder) used for
    #   data sharing or partitioning.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The event timestamp (in epoch seconds).
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   The idempotent client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/supplychain-2024-01-01/SendDataIntegrationEventRequest AWS API Documentation
    #
    class SendDataIntegrationEventRequest < Struct.new(
      :instance_id,
      :event_type,
      :data,
      :event_group_id,
      :event_timestamp,
      :client_token)
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
    #   The name space of the dataset. The available values are:
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


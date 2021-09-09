# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LookoutEquipment
  module Types

    # The request could not be completed because you do not have access to
    # the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the target resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName", # required
    #         dataset_schema: { # required
    #           inline_data_schema: "InlineDataSchema",
    #         },
    #         server_side_kms_key_id: "NameOrArn",
    #         client_token: "IdempotenceToken", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset being created.
    #   @return [String]
    #
    # @!attribute [rw] dataset_schema
    #   A JSON description of the data that is in each time series dataset,
    #   including names, column names, and data types.
    #   @return [Types::DatasetSchema]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt dataset data
    #   by Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the ingested data described in the dataset.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :dataset_name,
      :dataset_schema,
      :server_side_kms_key_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset being created.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset being created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the `CreateDataset` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_name,
      :dataset_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInferenceSchedulerRequest
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #         inference_scheduler_name: "InferenceSchedulerName", # required
    #         data_delay_offset_in_minutes: 1,
    #         data_upload_frequency: "PT5M", # required, accepts PT5M, PT10M, PT15M, PT30M, PT1H
    #         data_input_configuration: { # required
    #           s3_input_configuration: {
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix",
    #           },
    #           input_time_zone_offset: "TimeZoneOffset",
    #           inference_input_name_configuration: {
    #             timestamp_format: "FileNameTimestampFormat",
    #             component_timestamp_delimiter: "ComponentTimestampDelimiter",
    #           },
    #         },
    #         data_output_configuration: { # required
    #           s3_output_configuration: { # required
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix",
    #           },
    #           kms_key_id: "NameOrArn",
    #         },
    #         role_arn: "IamRoleArn", # required
    #         server_side_kms_key_id: "NameOrArn",
    #         client_token: "IdempotenceToken", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the previously trained ML model being used to create the
    #   inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler being created.
    #   @return [String]
    #
    # @!attribute [rw] data_delay_offset_in_minutes
    #   A period of time (in minutes) by which inference on the data is
    #   delayed after the data starts. For instance, if you select an offset
    #   delay time of five minutes, inference will not begin on the data
    #   until the first data measurement after the five minute mark. For
    #   example, if five minutes is selected, the inference scheduler will
    #   wake up at the configured frequency with the additional five minute
    #   delay time to check the customer S3 bucket. The customer can upload
    #   data at the same frequency and they don't need to stop and restart
    #   the scheduler when uploading new data.
    #   @return [Integer]
    #
    # @!attribute [rw] data_upload_frequency
    #   How often data is uploaded to the source S3 bucket for the input
    #   data. The value chosen is the length of time between data uploads.
    #   For instance, if you select 5 minutes, Amazon Lookout for Equipment
    #   will upload the real-time data to the source bucket once every 5
    #   minutes. This frequency also determines how often Amazon Lookout for
    #   Equipment starts a scheduled inference on your data. In this
    #   example, it starts once every 5 minutes.
    #   @return [String]
    #
    # @!attribute [rw] data_input_configuration
    #   Specifies configuration information for the input data for the
    #   inference scheduler, including delimiter, format, and dataset
    #   location.
    #   @return [Types::InferenceInputConfiguration]
    #
    # @!attribute [rw] data_output_configuration
    #   Specifies configuration information for the output results for the
    #   inference scheduler, including the S3 location for the output.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source being used for the inference.
    #   @return [String]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt inference
    #   scheduler data by Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the inference scheduler.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateInferenceSchedulerRequest AWS API Documentation
    #
    class CreateInferenceSchedulerRequest < Struct.new(
      :model_name,
      :inference_scheduler_name,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :data_input_configuration,
      :data_output_configuration,
      :role_arn,
      :server_side_kms_key_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inference_scheduler_arn
    #   The Amazon Resource Name (ARN) of the inference scheduler being
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of inference scheduler being created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the `CreateInferenceScheduler` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateInferenceSchedulerResponse AWS API Documentation
    #
    class CreateInferenceSchedulerResponse < Struct.new(
      :inference_scheduler_arn,
      :inference_scheduler_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateModelRequest
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #         dataset_name: "DatasetIdentifier", # required
    #         dataset_schema: {
    #           inline_data_schema: "InlineDataSchema",
    #         },
    #         labels_input_configuration: {
    #           s3_input_configuration: { # required
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix",
    #           },
    #         },
    #         client_token: "IdempotenceToken", # required
    #         training_data_start_time: Time.now,
    #         training_data_end_time: Time.now,
    #         evaluation_data_start_time: Time.now,
    #         evaluation_data_end_time: Time.now,
    #         role_arn: "IamRoleArn",
    #         data_pre_processing_configuration: {
    #           target_sampling_rate: "PT1S", # accepts PT1S, PT5S, PT10S, PT15S, PT30S, PT1M, PT5M, PT10M, PT15M, PT30M, PT1H
    #         },
    #         server_side_kms_key_id: "NameOrArn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         off_condition: "OffCondition",
    #       }
    #
    # @!attribute [rw] model_name
    #   The name for the ML model to be created.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset for the ML model being created.
    #   @return [String]
    #
    # @!attribute [rw] dataset_schema
    #   The data schema for the ML model being created.
    #   @return [Types::DatasetSchema]
    #
    # @!attribute [rw] labels_input_configuration
    #   The input configuration for the labels being used for the ML model
    #   that's being created.
    #   @return [Types::LabelsInputConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] training_data_start_time
    #   Indicates the time reference in the dataset that should be used to
    #   begin the subset of training data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_end_time
    #   Indicates the time reference in the dataset that should be used to
    #   end the subset of training data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_start_time
    #   Indicates the time reference in the dataset that should be used to
    #   begin the subset of evaluation data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_end_time
    #   Indicates the time reference in the dataset that should be used to
    #   end the subset of evaluation data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source being used to create the ML model.
    #   @return [String]
    #
    # @!attribute [rw] data_pre_processing_configuration
    #   The configuration is the `TargetSamplingRate`, which is the sampling
    #   rate of the data after post processing by Amazon Lookout for
    #   Equipment. For example, if you provide data that has been collected
    #   at a 1 second level and you want the system to resample the data at
    #   a 1 minute rate before training, the `TargetSamplingRate` is 1
    #   minute.
    #
    #   When providing a value for the `TargetSamplingRate`, you must attach
    #   the prefix "PT" to the rate you want. The value for a 1 second
    #   rate is therefore *PT1S*, the value for a 15 minute rate is *PT15M*,
    #   and the value for a 1 hour rate is *PT1H*
    #   @return [Types::DataPreProcessingConfiguration]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt model data by
    #   Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the ML model being created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] off_condition
    #   Indicates that the asset associated with this sensor has been shut
    #   off. As long as this condition is met, Lookout for Equipment will
    #   not use data from this asset for training, evaluation, or inference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateModelRequest AWS API Documentation
    #
    class CreateModelRequest < Struct.new(
      :model_name,
      :dataset_name,
      :dataset_schema,
      :labels_input_configuration,
      :client_token,
      :training_data_start_time,
      :training_data_end_time,
      :evaluation_data_start_time,
      :evaluation_data_end_time,
      :role_arn,
      :data_pre_processing_configuration,
      :server_side_kms_key_id,
      :tags,
      :off_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model being created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the `CreateModel` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateModelResponse AWS API Documentation
    #
    class CreateModelResponse < Struct.new(
      :model_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a specified data ingestion job, including
    # dataset information, data ingestion configuration, and status.
    #
    # @!attribute [rw] job_id
    #   Indicates the job ID of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset used for the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset used in the data
    #   ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_input_configuration
    #   Specifies information for the input data for the data inference job,
    #   including data S3 location parameters.
    #   @return [Types::IngestionInputConfiguration]
    #
    # @!attribute [rw] status
    #   Indicates the status of the data ingestion job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DataIngestionJobSummary AWS API Documentation
    #
    class DataIngestionJobSummary < Struct.new(
      :job_id,
      :dataset_name,
      :dataset_arn,
      :ingestion_input_configuration,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration is the `TargetSamplingRate`, which is the sampling
    # rate of the data after post processing by Amazon Lookout for
    # Equipment. For example, if you provide data that has been collected at
    # a 1 second level and you want the system to resample the data at a 1
    # minute rate before training, the `TargetSamplingRate` is 1 minute.
    #
    # When providing a value for the `TargetSamplingRate`, you must attach
    # the prefix "PT" to the rate you want. The value for a 1 second rate
    # is therefore *PT1S*, the value for a 15 minute rate is *PT15M*, and
    # the value for a 1 hour rate is *PT1H*
    #
    # @note When making an API call, you may pass DataPreProcessingConfiguration
    #   data as a hash:
    #
    #       {
    #         target_sampling_rate: "PT1S", # accepts PT1S, PT5S, PT10S, PT15S, PT30S, PT1M, PT5M, PT10M, PT15M, PT30M, PT1H
    #       }
    #
    # @!attribute [rw] target_sampling_rate
    #   The sampling rate of the data after post processing by Amazon
    #   Lookout for Equipment. For example, if you provide data that has
    #   been collected at a 1 second level and you want the system to
    #   resample the data at a 1 minute rate before training, the
    #   `TargetSamplingRate` is 1 minute.
    #
    #   When providing a value for the `TargetSamplingRate`, you must attach
    #   the prefix "PT" to the rate you want. The value for a 1 second
    #   rate is therefore *PT1S*, the value for a 15 minute rate is *PT15M*,
    #   and the value for a 1 hour rate is *PT1H*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DataPreProcessingConfiguration AWS API Documentation
    #
    class DataPreProcessingConfiguration < Struct.new(
      :target_sampling_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the data schema used with the given
    # dataset.
    #
    # @note When making an API call, you may pass DatasetSchema
    #   data as a hash:
    #
    #       {
    #         inline_data_schema: "InlineDataSchema",
    #       }
    #
    # @!attribute [rw] inline_data_schema
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DatasetSchema AWS API Documentation
    #
    class DatasetSchema < Struct.new(
      :inline_data_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the specific data set, including name, ARN,
    # and status.
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the specified dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the dataset was created in Amazon Lookout for
    #   Equipment.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DatasetSummary AWS API Documentation
    #
    class DatasetSummary < Struct.new(
      :dataset_name,
      :dataset_arn,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetIdentifier", # required
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInferenceSchedulerRequest
    #   data as a hash:
    #
    #       {
    #         inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #       }
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteInferenceSchedulerRequest AWS API Documentation
    #
    class DeleteInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteModelRequest
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the ML model to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteModelRequest AWS API Documentation
    #
    class DeleteModelRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataIngestionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "IngestionJobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The job ID of the data ingestion job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeDataIngestionJobRequest AWS API Documentation
    #
    class DescribeDataIngestionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Indicates the job ID of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset being used in the data
    #   ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_input_configuration
    #   Specifies the S3 location configuration for the data input for the
    #   data ingestion job.
    #   @return [Types::IngestionInputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source being ingested.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the data ingestion job was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Indicates the status of the `DataIngestionJob` operation.
    #   @return [String]
    #
    # @!attribute [rw] failed_reason
    #   Specifies the reason for failure when a data ingestion job has
    #   failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeDataIngestionJobResponse AWS API Documentation
    #
    class DescribeDataIngestionJobResponse < Struct.new(
      :job_id,
      :dataset_arn,
      :ingestion_input_configuration,
      :role_arn,
      :created_at,
      :status,
      :failed_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetIdentifier", # required
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the dataset being described.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset being described.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Specifies the time the dataset was created in Amazon Lookout for
    #   Equipment.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies the time the dataset was last updated, if it was.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Indicates the status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A JSON description of the data that is in each time series dataset,
    #   including names, column names, and data types.
    #   @return [String]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt dataset data
    #   by Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_input_configuration
    #   Specifies the S3 location configuration for the data input for the
    #   data ingestion job.
    #   @return [Types::IngestionInputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeDatasetResponse AWS API Documentation
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset_name,
      :dataset_arn,
      :created_at,
      :last_updated_at,
      :status,
      :schema,
      :server_side_kms_key_id,
      :ingestion_input_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInferenceSchedulerRequest
    #   data as a hash:
    #
    #       {
    #         inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #       }
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler being described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeInferenceSchedulerRequest AWS API Documentation
    #
    class DescribeInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the ML model of the inference
    #   scheduler being described.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the ML model of the inference scheduler being described.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler being described.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_arn
    #   The Amazon Resource Name (ARN) of the inference scheduler being
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] data_delay_offset_in_minutes
    #   A period of time (in minutes) by which inference on the data is
    #   delayed after the data starts. For instance, if you select an offset
    #   delay time of five minutes, inference will not begin on the data
    #   until the first data measurement after the five minute mark. For
    #   example, if five minutes is selected, the inference scheduler will
    #   wake up at the configured frequency with the additional five minute
    #   delay time to check the customer S3 bucket. The customer can upload
    #   data at the same frequency and they don't need to stop and restart
    #   the scheduler when uploading new data.
    #   @return [Integer]
    #
    # @!attribute [rw] data_upload_frequency
    #   Specifies how often data is uploaded to the source S3 bucket for the
    #   input data. This value is the length of time between data uploads.
    #   For instance, if you select 5 minutes, Amazon Lookout for Equipment
    #   will upload the real-time data to the source bucket once every 5
    #   minutes. This frequency also determines how often Amazon Lookout for
    #   Equipment starts a scheduled inference on your data. In this
    #   example, it starts once every 5 minutes.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Specifies the time at which the inference scheduler was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Specifies the time at which the inference scheduler was last
    #   updated, if it was.
    #   @return [Time]
    #
    # @!attribute [rw] data_input_configuration
    #   Specifies configuration information for the input data for the
    #   inference scheduler, including delimiter, format, and dataset
    #   location.
    #   @return [Types::InferenceInputConfiguration]
    #
    # @!attribute [rw] data_output_configuration
    #   Specifies information for the output results for the inference
    #   scheduler, including the output S3 location.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source for the inference scheduler being described.
    #   @return [String]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt inference
    #   scheduler data by Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeInferenceSchedulerResponse AWS API Documentation
    #
    class DescribeInferenceSchedulerResponse < Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :created_at,
      :updated_at,
      :data_input_configuration,
      :data_output_configuration,
      :role_arn,
      :server_side_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeModelRequest
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the ML model to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeModelRequest AWS API Documentation
    #
    class DescribeModelRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the ML model being described.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the ML model being described.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset being used by the ML being described.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resouce Name (ARN) of the dataset used to create the ML
    #   model being described.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A JSON description of the data that is in each time series dataset,
    #   including names, column names, and data types.
    #   @return [String]
    #
    # @!attribute [rw] labels_input_configuration
    #   Specifies configuration information about the labels input,
    #   including its S3 location.
    #   @return [Types::LabelsInputConfiguration]
    #
    # @!attribute [rw] training_data_start_time
    #   Indicates the time reference in the dataset that was used to begin
    #   the subset of training data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_end_time
    #   Indicates the time reference in the dataset that was used to end the
    #   subset of training data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_start_time
    #   Indicates the time reference in the dataset that was used to begin
    #   the subset of evaluation data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_end_time
    #   Indicates the time reference in the dataset that was used to end the
    #   subset of evaluation data for the ML model.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source for the ML model being described.
    #   @return [String]
    #
    # @!attribute [rw] data_pre_processing_configuration
    #   The configuration is the `TargetSamplingRate`, which is the sampling
    #   rate of the data after post processing by Amazon Lookout for
    #   Equipment. For example, if you provide data that has been collected
    #   at a 1 second level and you want the system to resample the data at
    #   a 1 minute rate before training, the `TargetSamplingRate` is 1
    #   minute.
    #
    #   When providing a value for the `TargetSamplingRate`, you must attach
    #   the prefix "PT" to the rate you want. The value for a 1 second
    #   rate is therefore *PT1S*, the value for a 15 minute rate is *PT15M*,
    #   and the value for a 1 hour rate is *PT1H*
    #   @return [Types::DataPreProcessingConfiguration]
    #
    # @!attribute [rw] status
    #   Specifies the current status of the model being described. Status
    #   describes the status of the most recent action of the model.
    #   @return [String]
    #
    # @!attribute [rw] training_execution_start_time
    #   Indicates the time at which the training of the ML model began.
    #   @return [Time]
    #
    # @!attribute [rw] training_execution_end_time
    #   Indicates the time at which the training of the ML model was
    #   completed.
    #   @return [Time]
    #
    # @!attribute [rw] failed_reason
    #   If the training of the ML model failed, this indicates the reason
    #   for that failure.
    #   @return [String]
    #
    # @!attribute [rw] model_metrics
    #   The Model Metrics show an aggregated summary of the model's
    #   performance within the evaluation time range. This is the JSON
    #   content of the metrics created when evaluating the model.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Indicates the last time the ML model was updated. The type of update
    #   is not specified.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   Indicates the time and date at which the ML model was created.
    #   @return [Time]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key used to encrypt model data by
    #   Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] off_condition
    #   Indicates that the asset associated with this sensor has been shut
    #   off. As long as this condition is met, Lookout for Equipment will
    #   not use data from this asset for training, evaluation, or inference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeModelResponse AWS API Documentation
    #
    class DescribeModelResponse < Struct.new(
      :model_name,
      :model_arn,
      :dataset_name,
      :dataset_arn,
      :schema,
      :labels_input_configuration,
      :training_data_start_time,
      :training_data_end_time,
      :evaluation_data_start_time,
      :evaluation_data_end_time,
      :role_arn,
      :data_pre_processing_configuration,
      :status,
      :training_execution_start_time,
      :training_execution_end_time,
      :failed_reason,
      :model_metrics,
      :last_updated_time,
      :created_at,
      :server_side_kms_key_id,
      :off_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the specific inference execution, including
    # input and output data configuration, inference scheduling information,
    # status, and so on.
    #
    # @!attribute [rw] model_name
    #   The name of the ML model being used for the inference execution.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the ML model used for the
    #   inference execution.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler being used for the inference
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_arn
    #   The Amazon Resource Name (ARN) of the inference scheduler being used
    #   for the inference execution.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start_time
    #   Indicates the start time at which the inference scheduler began the
    #   specific inference execution.
    #   @return [Time]
    #
    # @!attribute [rw] data_start_time
    #   Indicates the time reference in the dataset at which the inference
    #   execution began.
    #   @return [Time]
    #
    # @!attribute [rw] data_end_time
    #   Indicates the time reference in the dataset at which the inference
    #   execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] data_input_configuration
    #   Specifies configuration information for the input data for the
    #   inference scheduler, including delimiter, format, and dataset
    #   location.
    #   @return [Types::InferenceInputConfiguration]
    #
    # @!attribute [rw] data_output_configuration
    #   Specifies configuration information for the output results from for
    #   the inference execution, including the output S3 location.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] customer_result_object
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] status
    #   Indicates the status of the inference execution.
    #   @return [String]
    #
    # @!attribute [rw] failed_reason
    #   Specifies the reason for failure when an inference execution has
    #   failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceExecutionSummary AWS API Documentation
    #
    class InferenceExecutionSummary < Struct.new(
      :model_name,
      :model_arn,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :scheduled_start_time,
      :data_start_time,
      :data_end_time,
      :data_input_configuration,
      :data_output_configuration,
      :customer_result_object,
      :status,
      :failed_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the input data for the
    # inference, including S3 location of input data..
    #
    # @note When making an API call, you may pass InferenceInputConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_input_configuration: {
    #           bucket: "S3Bucket", # required
    #           prefix: "S3Prefix",
    #         },
    #         input_time_zone_offset: "TimeZoneOffset",
    #         inference_input_name_configuration: {
    #           timestamp_format: "FileNameTimestampFormat",
    #           component_timestamp_delimiter: "ComponentTimestampDelimiter",
    #         },
    #       }
    #
    # @!attribute [rw] s3_input_configuration
    #   Specifies configuration information for the input data for the
    #   inference, including S3 location of input data..
    #   @return [Types::InferenceS3InputConfiguration]
    #
    # @!attribute [rw] input_time_zone_offset
    #   Indicates the difference between your time zone and Greenwich Mean
    #   Time (GMT).
    #   @return [String]
    #
    # @!attribute [rw] inference_input_name_configuration
    #   Specifies configuration information for the input data for the
    #   inference, including timestamp format and delimiter.
    #   @return [Types::InferenceInputNameConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceInputConfiguration AWS API Documentation
    #
    class InferenceInputConfiguration < Struct.new(
      :s3_input_configuration,
      :input_time_zone_offset,
      :inference_input_name_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the input data for the
    # inference, including timestamp format and delimiter.
    #
    # @note When making an API call, you may pass InferenceInputNameConfiguration
    #   data as a hash:
    #
    #       {
    #         timestamp_format: "FileNameTimestampFormat",
    #         component_timestamp_delimiter: "ComponentTimestampDelimiter",
    #       }
    #
    # @!attribute [rw] timestamp_format
    #   The format of the timestamp, whether Epoch time, or standard, with
    #   or without hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] component_timestamp_delimiter
    #   Indicates the delimiter character used between items in the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceInputNameConfiguration AWS API Documentation
    #
    class InferenceInputNameConfiguration < Struct.new(
      :timestamp_format,
      :component_timestamp_delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the output results from for
    # the inference, including KMS key ID and output S3 location.
    #
    # @note When making an API call, you may pass InferenceOutputConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_output_configuration: { # required
    #           bucket: "S3Bucket", # required
    #           prefix: "S3Prefix",
    #         },
    #         kms_key_id: "NameOrArn",
    #       }
    #
    # @!attribute [rw] s3_output_configuration
    #   Specifies configuration information for the output results from for
    #   the inference, output S3 location.
    #   @return [Types::InferenceS3OutputConfiguration]
    #
    # @!attribute [rw] kms_key_id
    #   The ID number for the AWS KMS key used to encrypt the inference
    #   output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceOutputConfiguration AWS API Documentation
    #
    class InferenceOutputConfiguration < Struct.new(
      :s3_output_configuration,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the input data for the
    # inference, including input data S3 location.
    #
    # @note When making an API call, you may pass InferenceS3InputConfiguration
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       }
    #
    # @!attribute [rw] bucket
    #   The bucket containing the input dataset for the inference.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix for the S3 bucket used for the input data for the
    #   inference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceS3InputConfiguration AWS API Documentation
    #
    class InferenceS3InputConfiguration < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the output results from the
    # inference, including output S3 location.
    #
    # @note When making an API call, you may pass InferenceS3OutputConfiguration
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       }
    #
    # @!attribute [rw] bucket
    #   The bucket containing the output results from the inference
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix for the S3 bucket used for the output results from the
    #   inference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceS3OutputConfiguration AWS API Documentation
    #
    class InferenceS3OutputConfiguration < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the specific inference scheduler, including
    # data delay offset, model name and ARN, status, and so on.
    #
    # @!attribute [rw] model_name
    #   The name of the ML model used for the inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the ML model used by the inference
    #   scheduler.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_arn
    #   The Amazon Resource Name (ARN) of the inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] data_delay_offset_in_minutes
    #   A period of time (in minutes) by which inference on the data is
    #   delayed after the data starts. For instance, if an offset delay time
    #   of five minutes was selected, inference will not begin on the data
    #   until the first data measurement after the five minute mark. For
    #   example, if five minutes is selected, the inference scheduler will
    #   wake up at the configured frequency with the additional five minute
    #   delay time to check the customer S3 bucket. The customer can upload
    #   data at the same frequency and they don't need to stop and restart
    #   the scheduler when uploading new data.
    #   @return [Integer]
    #
    # @!attribute [rw] data_upload_frequency
    #   How often data is uploaded to the source S3 bucket for the input
    #   data. This value is the length of time between data uploads. For
    #   instance, if you select 5 minutes, Amazon Lookout for Equipment will
    #   upload the real-time data to the source bucket once every 5 minutes.
    #   This frequency also determines how often Amazon Lookout for
    #   Equipment starts a scheduled inference on your data. In this
    #   example, it starts once every 5 minutes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceSchedulerSummary AWS API Documentation
    #
    class InferenceSchedulerSummary < Struct.new(
      :model_name,
      :model_arn,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      :data_delay_offset_in_minutes,
      :data_upload_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the input data for the data
    # ingestion job, including input data S3 location.
    #
    # @note When making an API call, you may pass IngestionInputConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_input_configuration: { # required
    #           bucket: "S3Bucket", # required
    #           prefix: "S3Prefix",
    #         },
    #       }
    #
    # @!attribute [rw] s3_input_configuration
    #   The location information for the S3 bucket used for input data for
    #   the data ingestion.
    #   @return [Types::IngestionS3InputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/IngestionInputConfiguration AWS API Documentation
    #
    class IngestionInputConfiguration < Struct.new(
      :s3_input_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies S3 configuration information for the input data for the data
    # ingestion job.
    #
    # @note When making an API call, you may pass IngestionS3InputConfiguration
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket used for the input data for the data
    #   ingestion.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix for the S3 location being used for the input data for the
    #   data ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/IngestionS3InputConfiguration AWS API Documentation
    #
    class IngestionS3InputConfiguration < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing of the request has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information for the S3 location being used
    # to hold label data.
    #
    # @note When making an API call, you may pass LabelsInputConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_input_configuration: { # required
    #           bucket: "S3Bucket", # required
    #           prefix: "S3Prefix",
    #         },
    #       }
    #
    # @!attribute [rw] s3_input_configuration
    #   Contains location information for the S3 location being used for
    #   label data.
    #   @return [Types::LabelsS3InputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/LabelsInputConfiguration AWS API Documentation
    #
    class LabelsInputConfiguration < Struct.new(
      :s3_input_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location information (prefix and bucket name) for the s3 location
    # being used for label data.
    #
    # @note When making an API call, you may pass LabelsS3InputConfiguration
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix",
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket holding the label data.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix for the S3 bucket used for the label data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/LabelsS3InputConfiguration AWS API Documentation
    #
    class LabelsS3InputConfiguration < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataIngestionJobsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #         status: "IN_PROGRESS", # accepts IN_PROGRESS, SUCCESS, FAILED
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset being used for the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of data ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of data ingestion jobs to list.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Indicates the status of the data ingestion job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListDataIngestionJobsRequest AWS API Documentation
    #
    class ListDataIngestionJobsRequest < Struct.new(
      :dataset_name,
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of data ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] data_ingestion_job_summaries
    #   Specifies information about the specific data ingestion job,
    #   including dataset name and status.
    #   @return [Array<Types::DataIngestionJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListDataIngestionJobsResponse AWS API Documentation
    #
    class ListDataIngestionJobsResponse < Struct.new(
      :next_token,
      :data_ingestion_job_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         dataset_name_begins_with: "DatasetName",
    #       }
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of datasets.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of datasets to list.
    #   @return [Integer]
    #
    # @!attribute [rw] dataset_name_begins_with
    #   The beginning of the name of the datasets to be listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :next_token,
      :max_results,
      :dataset_name_begins_with)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of datasets.
    #   @return [String]
    #
    # @!attribute [rw] dataset_summaries
    #   Provides information about the specified dataset, including creation
    #   time, dataset ARN, and status.
    #   @return [Array<Types::DatasetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :next_token,
      :dataset_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInferenceExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #         data_start_time_after: Time.now,
    #         data_end_time_before: Time.now,
    #         status: "IN_PROGRESS", # accepts IN_PROGRESS, SUCCESS, FAILED
    #       }
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of inference executions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of inference executions to list.
    #   @return [Integer]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler for the inference execution
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] data_start_time_after
    #   The time reference in the inferenced dataset after which Amazon
    #   Lookout for Equipment started the inference execution.
    #   @return [Time]
    #
    # @!attribute [rw] data_end_time_before
    #   The time reference in the inferenced dataset before which Amazon
    #   Lookout for Equipment stopped the inference execution.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the inference execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceExecutionsRequest AWS API Documentation
    #
    class ListInferenceExecutionsRequest < Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name,
      :data_start_time_after,
      :data_end_time_before,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of inference executions.
    #   @return [String]
    #
    # @!attribute [rw] inference_execution_summaries
    #   Provides an array of information about the individual inference
    #   executions returned from the `ListInferenceExecutions` operation,
    #   including model used, inference scheduler, data configuration, and
    #   so on.
    #   @return [Array<Types::InferenceExecutionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceExecutionsResponse AWS API Documentation
    #
    class ListInferenceExecutionsResponse < Struct.new(
      :next_token,
      :inference_execution_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInferenceSchedulersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         inference_scheduler_name_begins_with: "InferenceSchedulerIdentifier",
    #         model_name: "ModelName",
    #       }
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of inference schedulers.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of inference schedulers to list.
    #   @return [Integer]
    #
    # @!attribute [rw] inference_scheduler_name_begins_with
    #   The beginning of the name of the inference schedulers to be listed.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the ML model used by the inference scheduler to be
    #   listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceSchedulersRequest AWS API Documentation
    #
    class ListInferenceSchedulersRequest < Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name_begins_with,
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of inference schedulers.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_summaries
    #   Provides information about the specified inference scheduler,
    #   including data upload frequency, model name and ARN, and status.
    #   @return [Array<Types::InferenceSchedulerSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceSchedulersResponse AWS API Documentation
    #
    class ListInferenceSchedulersResponse < Struct.new(
      :next_token,
      :inference_scheduler_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListModelsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         status: "IN_PROGRESS", # accepts IN_PROGRESS, SUCCESS, FAILED
    #         model_name_begins_with: "ModelName",
    #         dataset_name_begins_with: "DatasetName",
    #       }
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of ML models.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of ML models to list.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the ML model.
    #   @return [String]
    #
    # @!attribute [rw] model_name_begins_with
    #   The beginning of the name of the ML models being listed.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name_begins_with
    #   The beginning of the name of the dataset of the ML models to be
    #   listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListModelsRequest AWS API Documentation
    #
    class ListModelsRequest < Struct.new(
      :next_token,
      :max_results,
      :status,
      :model_name_begins_with,
      :dataset_name_begins_with)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of ML models.
    #   @return [String]
    #
    # @!attribute [rw] model_summaries
    #   Provides information on the specified model, including created time,
    #   model and dataset ARNs, and status.
    #   @return [Array<Types::ModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListModelsResponse AWS API Documentation
    #
    class ListModelsResponse < Struct.new(
      :next_token,
      :model_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource (such as the dataset
    #   or model) that is the focus of the `ListTagsForResource` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Any tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the specified ML model, including dataset
    # and model names and ARNs, as well as status.
    #
    # @!attribute [rw] model_name
    #   The name of the ML model.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the ML model.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset being used for the ML model.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset used to create the
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the ML model.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the specific model was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ModelSummary AWS API Documentation
    #
    class ModelSummary < Struct.new(
      :model_name,
      :model_arn,
      :dataset_name,
      :dataset_arn,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource requested could not be found. Verify the resource ID and
    # retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an S3 bucket.
    #
    # @!attribute [rw] bucket
    #   The name of the specific S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The AWS Key Management Service (AWS KMS) key being used to encrypt
    #   the S3 object. Without this key, data in the bucket is not
    #   accessible.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource limitations have been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDataIngestionJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_name: "DatasetIdentifier", # required
    #         ingestion_input_configuration: { # required
    #           s3_input_configuration: { # required
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix",
    #           },
    #         },
    #         role_arn: "IamRoleArn", # required
    #         client_token: "IdempotenceToken", # required
    #       }
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset being used by the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_input_configuration
    #   Specifies information for the input data for the data ingestion job,
    #   including dataset S3 location.
    #   @return [Types::IngestionInputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source for the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartDataIngestionJobRequest AWS API Documentation
    #
    class StartDataIngestionJobRequest < Struct.new(
      :dataset_name,
      :ingestion_input_configuration,
      :role_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Indicates the job ID of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the `StartDataIngestionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartDataIngestionJobResponse AWS API Documentation
    #
    class StartDataIngestionJobResponse < Struct.new(
      :job_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartInferenceSchedulerRequest
    #   data as a hash:
    #
    #       {
    #         inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #       }
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler to be started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartInferenceSchedulerRequest AWS API Documentation
    #
    class StartInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the ML model being used by the
    #   inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the ML model being used by the inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler being started.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_arn
    #   The Amazon Resource Name (ARN) of the inference scheduler being
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the inference scheduler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartInferenceSchedulerResponse AWS API Documentation
    #
    class StartInferenceSchedulerResponse < Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopInferenceSchedulerRequest
    #   data as a hash:
    #
    #       {
    #         inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #       }
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler to be stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StopInferenceSchedulerRequest AWS API Documentation
    #
    class StopInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the ML model used by the inference
    #   scheduler being stopped.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the ML model used by the inference scheduler being
    #   stopped.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler being stopped.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_arn
    #   The Amazon Resource Name (ARN) of the inference schedule being
    #   stopped.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the inference scheduler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StopInferenceSchedulerResponse AWS API Documentation
    #
    class StopInferenceSchedulerResponse < Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a key-value pair that can be added to a resource as metadata.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key for the specified tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the specific resource to which the
    #   tag should be associated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag or tags to be associated with a specific resource. Both the
    #   tag key and value are specified.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the tag is
    #   currently associated.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies the key of the tag to be removed from a specified
    #   resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateInferenceSchedulerRequest
    #   data as a hash:
    #
    #       {
    #         inference_scheduler_name: "InferenceSchedulerIdentifier", # required
    #         data_delay_offset_in_minutes: 1,
    #         data_upload_frequency: "PT5M", # accepts PT5M, PT10M, PT15M, PT30M, PT1H
    #         data_input_configuration: {
    #           s3_input_configuration: {
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix",
    #           },
    #           input_time_zone_offset: "TimeZoneOffset",
    #           inference_input_name_configuration: {
    #             timestamp_format: "FileNameTimestampFormat",
    #             component_timestamp_delimiter: "ComponentTimestampDelimiter",
    #           },
    #         },
    #         data_output_configuration: {
    #           s3_output_configuration: { # required
    #             bucket: "S3Bucket", # required
    #             prefix: "S3Prefix",
    #           },
    #           kms_key_id: "NameOrArn",
    #         },
    #         role_arn: "IamRoleArn",
    #       }
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler to be updated.
    #   @return [String]
    #
    # @!attribute [rw] data_delay_offset_in_minutes
    #   A period of time (in minutes) by which inference on the data is
    #   delayed after the data starts. For instance, if you select an offset
    #   delay time of five minutes, inference will not begin on the data
    #   until the first data measurement after the five minute mark. For
    #   example, if five minutes is selected, the inference scheduler will
    #   wake up at the configured frequency with the additional five minute
    #   delay time to check the customer S3 bucket. The customer can upload
    #   data at the same frequency and they don't need to stop and restart
    #   the scheduler when uploading new data.
    #   @return [Integer]
    #
    # @!attribute [rw] data_upload_frequency
    #   How often data is uploaded to the source S3 bucket for the input
    #   data. The value chosen is the length of time between data uploads.
    #   For instance, if you select 5 minutes, Amazon Lookout for Equipment
    #   will upload the real-time data to the source bucket once every 5
    #   minutes. This frequency also determines how often Amazon Lookout for
    #   Equipment starts a scheduled inference on your data. In this
    #   example, it starts once every 5 minutes.
    #   @return [String]
    #
    # @!attribute [rw] data_input_configuration
    #   Specifies information for the input data for the inference
    #   scheduler, including delimiter, format, and dataset location.
    #   @return [Types::InferenceInputConfiguration]
    #
    # @!attribute [rw] data_output_configuration
    #   Specifies information for the output results from the inference
    #   scheduler, including the output S3 location.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source for the inference scheduler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UpdateInferenceSchedulerRequest AWS API Documentation
    #
    class UpdateInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :data_input_configuration,
      :data_output_configuration,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy constraints specified by Amazon Lookout for
    # Equipment or a related AWS service that's being utilized.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

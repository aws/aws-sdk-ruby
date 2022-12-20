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

    # Entity that comprises information on categorical values in data.
    #
    # @!attribute [rw] status
    #   Indicates whether there is a potential data issue related to
    #   categorical values.
    #   @return [String]
    #
    # @!attribute [rw] number_of_category
    #   Indicates the number of categories in the data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CategoricalValues AWS API Documentation
    #
    class CategoricalValues < Struct.new(
      :status,
      :number_of_category)
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

    # Entity that comprises information of count and percentage.
    #
    # @!attribute [rw] count
    #   Indicates the count of occurences of the given statistic.
    #   @return [Integer]
    #
    # @!attribute [rw] percentage
    #   Indicates the percentage of occurances of the given statistic.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CountPercent AWS API Documentation
    #
    class CountPercent < Struct.new(
      :count,
      :percentage)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The interval (in minutes) of planned delay at the start of each
    #   inference segment. For example, if inference is set to run every ten
    #   minutes, the delay is set to five minutes and the time is 09:08. The
    #   inference scheduler will wake up at the configured interval (which,
    #   without a delay configured, would be 09:10) plus the additional five
    #   minute delay time (so 09:15) to check your Amazon S3 bucket. The
    #   delay provides a buffer for you to upload data at the same
    #   frequency, so that you don't have to stop and restart the scheduler
    #   when uploading new data.
    #
    #   For more information, see [Understanding the inference process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html
    #   @return [Integer]
    #
    # @!attribute [rw] data_upload_frequency
    #   How often data is uploaded to the source Amazon S3 bucket for the
    #   input data. The value chosen is the length of time between data
    #   uploads. For instance, if you select 5 minutes, Amazon Lookout for
    #   Equipment will upload the real-time data to the source bucket once
    #   every 5 minutes. This frequency also determines how often Amazon
    #   Lookout for Equipment runs inference on your data.
    #
    #   For more information, see [Understanding the inference process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html
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

    # @!attribute [rw] label_group_name
    #   Names a group of labels.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] fault_codes
    #   The acceptable fault codes (indicating the type of anomaly
    #   associated with the label) that can be used with this label group.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request to create a label group. If you
    #   do not set the client request token, Lookout for Equipment generates
    #   one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that provide metadata about the label group you are creating.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateLabelGroupRequest AWS API Documentation
    #
    class CreateLabelGroupRequest < Struct.new(
      :label_group_name,
      :fault_codes,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   The name of the label group that you have created. Data in this
    #   field will be retained for service usage. Follow best practices for
    #   the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] label_group_arn
    #   The ARN of the label group that you have created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateLabelGroupResponse AWS API Documentation
    #
    class CreateLabelGroupResponse < Struct.new(
      :label_group_name,
      :label_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   The name of a group of labels.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the labeled event.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the labeled event.
    #   @return [Time]
    #
    # @!attribute [rw] rating
    #   Indicates whether a labeled event represents an anomaly.
    #   @return [String]
    #
    # @!attribute [rw] fault_code
    #   Provides additional information about the label. The fault code must
    #   be defined in the FaultCodes attribute of the label group.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   Metadata providing additional information about the label.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] equipment
    #   Indicates that a label pertains to a particular piece of equipment.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request to create a label. If you do not
    #   set the client request token, Lookout for Equipment generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateLabelRequest AWS API Documentation
    #
    class CreateLabelRequest < Struct.new(
      :label_group_name,
      :start_time,
      :end_time,
      :rating,
      :fault_code,
      :notes,
      :equipment,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_id
    #   The ID of the label that you have created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateLabelResponse AWS API Documentation
    #
    class CreateLabelResponse < Struct.new(
      :label_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   including data Amazon S3 location parameters.
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

    # DataQualitySummary gives aggregated statistics over all the sensors
    # about a completed ingestion job. It primarily gives more information
    # about statistics over different incorrect data like
    # MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats,
    # InsufficientSensorData, DuplicateTimeStamps.
    #
    # @!attribute [rw] insufficient_sensor_data
    #   Parameter that gives information about insufficient data for sensors
    #   in the dataset. This includes information about those sensors that
    #   have complete data missing and those with a short date range.
    #   @return [Types::InsufficientSensorData]
    #
    # @!attribute [rw] missing_sensor_data
    #   Parameter that gives information about data that is missing over all
    #   the sensors in the input data.
    #   @return [Types::MissingSensorData]
    #
    # @!attribute [rw] invalid_sensor_data
    #   Parameter that gives information about data that is invalid over all
    #   the sensors in the input data.
    #   @return [Types::InvalidSensorData]
    #
    # @!attribute [rw] unsupported_timestamps
    #   Parameter that gives information about unsupported timestamps in the
    #   input data.
    #   @return [Types::UnsupportedTimestamps]
    #
    # @!attribute [rw] duplicate_timestamps
    #   Parameter that gives information about duplicate timestamps in the
    #   input data.
    #   @return [Types::DuplicateTimestamps]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DataQualitySummary AWS API Documentation
    #
    class DataQualitySummary < Struct.new(
      :insufficient_sensor_data,
      :missing_sensor_data,
      :invalid_sensor_data,
      :unsupported_timestamps,
      :duplicate_timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the data schema used with the given
    # dataset.
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

    # @!attribute [rw] label_group_name
    #   The name of the label group that you want to delete. Data in this
    #   field will be retained for service usage. Follow best practices for
    #   the security of your data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteLabelGroupRequest AWS API Documentation
    #
    class DeleteLabelGroupRequest < Struct.new(
      :label_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   The name of the label group that contains the label that you want to
    #   delete. Data in this field will be retained for service usage.
    #   Follow best practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] label_id
    #   The ID of the label that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteLabelRequest AWS API Documentation
    #
    class DeleteLabelRequest < Struct.new(
      :label_group_name,
      :label_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] data_quality_summary
    #   Gives statistics about a completed ingestion job. These statistics
    #   primarily relate to quantifying incorrect data such as
    #   MissingCompleteSensorData, MissingSensorData,
    #   UnsupportedDateFormats, InsufficientSensorData, and
    #   DuplicateTimeStamps.
    #   @return [Types::DataQualitySummary]
    #
    # @!attribute [rw] ingested_files_summary
    #   Gives statistics about how many files have been ingested, and which
    #   files have not been ingested, for a particular ingestion job.
    #   @return [Types::IngestedFilesSummary]
    #
    # @!attribute [rw] status_detail
    #   Provides details about status of the ingestion job that is currently
    #   in progress.
    #   @return [String]
    #
    # @!attribute [rw] ingested_data_size
    #   Indicates the size of the ingested dataset.
    #   @return [Integer]
    #
    # @!attribute [rw] data_start_time
    #   Indicates the earliest timestamp corresponding to data that was
    #   successfully ingested during this specific ingestion job.
    #   @return [Time]
    #
    # @!attribute [rw] data_end_time
    #   Indicates the latest timestamp corresponding to data that was
    #   successfully ingested during this specific ingestion job.
    #   @return [Time]
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
      :failed_reason,
      :data_quality_summary,
      :ingested_files_summary,
      :status_detail,
      :ingested_data_size,
      :data_start_time,
      :data_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Specifies the time the dataset was created in Lookout for Equipment.
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
    # @!attribute [rw] data_quality_summary
    #   Gives statistics associated with the given dataset for the latest
    #   successful associated ingestion job id. These statistics primarily
    #   relate to quantifying incorrect data such as
    #   MissingCompleteSensorData, MissingSensorData,
    #   UnsupportedDateFormats, InsufficientSensorData, and
    #   DuplicateTimeStamps.
    #   @return [Types::DataQualitySummary]
    #
    # @!attribute [rw] ingested_files_summary
    #   IngestedFilesSummary associated with the given dataset for the
    #   latest successful associated ingestion job id.
    #   @return [Types::IngestedFilesSummary]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you are using
    #   for this the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] data_start_time
    #   Indicates the earliest timestamp corresponding to data that was
    #   successfully ingested during the most recent ingestion of this
    #   particular dataset.
    #   @return [Time]
    #
    # @!attribute [rw] data_end_time
    #   Indicates the latest timestamp corresponding to data that was
    #   successfully ingested during the most recent ingestion of this
    #   particular dataset.
    #   @return [Time]
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
      :ingestion_input_configuration,
      :data_quality_summary,
      :ingested_files_summary,
      :role_arn,
      :data_start_time,
      :data_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] latest_inference_result
    #   Indicates whether the latest execution for the inference scheduler
    #   was Anomalous (anomalous events found) or Normal (no anomalous
    #   events found).
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
      :server_side_kms_key_id,
      :latest_inference_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   Returns the name of the label group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeLabelGroupRequest AWS API Documentation
    #
    class DescribeLabelGroupRequest < Struct.new(
      :label_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   The name of the label group.
    #   @return [String]
    #
    # @!attribute [rw] label_group_arn
    #   The ARN of the label group.
    #   @return [String]
    #
    # @!attribute [rw] fault_codes
    #   Codes indicating the type of anomaly associated with the labels in
    #   the lagbel group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The time at which the label group was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the label group was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeLabelGroupResponse AWS API Documentation
    #
    class DescribeLabelGroupResponse < Struct.new(
      :label_group_name,
      :label_group_arn,
      :fault_codes,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   Returns the name of the group containing the label.
    #   @return [String]
    #
    # @!attribute [rw] label_id
    #   Returns the ID of the label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeLabelRequest AWS API Documentation
    #
    class DescribeLabelRequest < Struct.new(
      :label_group_name,
      :label_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   The name of the requested label group.
    #   @return [String]
    #
    # @!attribute [rw] label_group_arn
    #   The ARN of the requested label group.
    #   @return [String]
    #
    # @!attribute [rw] label_id
    #   The ID of the requested label.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the requested label.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the requested label.
    #   @return [Time]
    #
    # @!attribute [rw] rating
    #   Indicates whether a labeled event represents an anomaly.
    #   @return [String]
    #
    # @!attribute [rw] fault_code
    #   Indicates the type of anomaly associated with the label.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] notes
    #   Metadata providing additional information about the label.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] equipment
    #   Indicates that a label pertains to a particular piece of equipment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the label was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeLabelResponse AWS API Documentation
    #
    class DescribeLabelResponse < Struct.new(
      :label_group_name,
      :label_group_arn,
      :label_id,
      :start_time,
      :end_time,
      :rating,
      :fault_code,
      :notes,
      :equipment,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Entity that comprises information abount duplicate timestamps in the
    # dataset.
    #
    # @!attribute [rw] total_number_of_duplicate_timestamps
    #   Indicates the total number of duplicate timestamps.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DuplicateTimestamps AWS API Documentation
    #
    class DuplicateTimestamps < Struct.new(
      :total_number_of_duplicate_timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the specific inference event, including
    # start and end time, diagnostics information, event duration and so on.
    #
    # @!attribute [rw] inference_scheduler_arn
    #   The Amazon Resource Name (ARN) of the inference scheduler being used
    #   for the inference event.
    #   @return [String]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler being used for the inference
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] event_start_time
    #   Indicates the starting time of an inference event.
    #   @return [Time]
    #
    # @!attribute [rw] event_end_time
    #   Indicates the ending time of an inference event.
    #   @return [Time]
    #
    # @!attribute [rw] diagnostics
    #   An array which specifies the names and values of all sensors
    #   contributing to an inference event.
    #   @return [String]
    #
    # @!attribute [rw] event_duration_in_seconds
    #   Indicates the size of an inference event in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InferenceEventSummary AWS API Documentation
    #
    class InferenceEventSummary < Struct.new(
      :inference_scheduler_arn,
      :inference_scheduler_name,
      :event_start_time,
      :event_end_time,
      :diagnostics,
      :event_duration_in_seconds)
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
    #   the inference execution, including the output Amazon S3 location.
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
    # inference, including Amazon S3 location of input data..
    #
    # @!attribute [rw] s3_input_configuration
    #   Specifies configuration information for the input data for the
    #   inference, including Amazon S3 location of input data.
    #   @return [Types::InferenceS3InputConfiguration]
    #
    # @!attribute [rw] input_time_zone_offset
    #   Indicates the difference between your time zone and Coordinated
    #   Universal Time (UTC).
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
    # @!attribute [rw] latest_inference_result
    #   Indicates whether the latest execution for the inference scheduler
    #   was Anomalous (anomalous events found) or Normal (no anomalous
    #   events found).
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
      :data_upload_frequency,
      :latest_inference_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gives statistics about how many files have been ingested, and which
    # files have not been ingested, for a particular ingestion job.
    #
    # @!attribute [rw] total_number_of_files
    #   Indicates the total number of files that were submitted for
    #   ingestion.
    #   @return [Integer]
    #
    # @!attribute [rw] ingested_number_of_files
    #   Indicates the number of files that were successfully ingested.
    #   @return [Integer]
    #
    # @!attribute [rw] discarded_files
    #   Indicates the number of files that were discarded. A file could be
    #   discarded because its format is invalid (for example, a jpg or pdf)
    #   or not readable.
    #   @return [Array<Types::S3Object>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/IngestedFilesSummary AWS API Documentation
    #
    class IngestedFilesSummary < Struct.new(
      :total_number_of_files,
      :ingested_number_of_files,
      :discarded_files)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration information for the input data for the data
    # ingestion job, including input data S3 location.
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
    # @!attribute [rw] key_pattern
    #   Pattern for matching the Amazon S3 files which will be used for
    #   ingestion. If no KeyPattern is provided, we will use the default
    #   hierarchy file structure, which is same as KeyPattern
    #   \\\{prefix\\}/\\\{component\_name\\}/*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/IngestionS3InputConfiguration AWS API Documentation
    #
    class IngestionS3InputConfiguration < Struct.new(
      :bucket,
      :prefix,
      :key_pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # Entity that comprises aggregated information on sensors having
    # insufficient data.
    #
    # @!attribute [rw] missing_complete_sensor_data
    #   Parameter that describes the total number of sensors that have data
    #   completely missing for it.
    #   @return [Types::MissingCompleteSensorData]
    #
    # @!attribute [rw] sensors_with_short_date_range
    #   Parameter that describes the total number of sensors that have a
    #   short date range of less than 90 days of data overall.
    #   @return [Types::SensorsWithShortDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InsufficientSensorData AWS API Documentation
    #
    class InsufficientSensorData < Struct.new(
      :missing_complete_sensor_data,
      :sensors_with_short_date_range)
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

    # Entity that comprises aggregated information on sensors having
    # insufficient data.
    #
    # @!attribute [rw] affected_sensor_count
    #   Indicates the number of sensors that have at least some invalid
    #   values.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_invalid_values
    #   Indicates the total number of invalid values across all the sensors.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/InvalidSensorData AWS API Documentation
    #
    class InvalidSensorData < Struct.new(
      :affected_sensor_count,
      :total_number_of_invalid_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the label group.
    #
    # @!attribute [rw] label_group_name
    #   The name of the label group.
    #   @return [String]
    #
    # @!attribute [rw] label_group_arn
    #   The ARN of the label group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the label group was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the label group was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/LabelGroupSummary AWS API Documentation
    #
    class LabelGroupSummary < Struct.new(
      :label_group_name,
      :label_group_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the label.
    #
    # @!attribute [rw] label_group_name
    #   The name of the label group.
    #   @return [String]
    #
    # @!attribute [rw] label_id
    #   The ID of the label.
    #   @return [String]
    #
    # @!attribute [rw] label_group_arn
    #   The ARN of the label group.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp indicating the start of the label.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp indicating the end of the label.
    #   @return [Time]
    #
    # @!attribute [rw] rating
    #   Indicates whether a labeled event represents an anomaly.
    #   @return [String]
    #
    # @!attribute [rw] fault_code
    #   Indicates the type of anomaly associated with the label.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [String]
    #
    # @!attribute [rw] equipment
    #   Indicates that a label pertains to a particular piece of equipment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the label was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/LabelSummary AWS API Documentation
    #
    class LabelSummary < Struct.new(
      :label_group_name,
      :label_id,
      :label_group_arn,
      :start_time,
      :end_time,
      :rating,
      :fault_code,
      :equipment,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information for the S3 location being used
    # to hold label data.
    #
    # @!attribute [rw] s3_input_configuration
    #   Contains location information for the S3 location being used for
    #   label data.
    #   @return [Types::LabelsS3InputConfiguration]
    #
    # @!attribute [rw] label_group_name
    #   The name of the label group to be used for label data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/LabelsInputConfiguration AWS API Documentation
    #
    class LabelsInputConfiguration < Struct.new(
      :s3_input_configuration,
      :label_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location information (prefix and bucket name) for the s3 location
    # being used for label data.
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

    # Entity that comprises information on large gaps between consecutive
    # timestamps in data.
    #
    # @!attribute [rw] status
    #   Indicates whether there is a potential data issue related to large
    #   gaps in timestamps.
    #   @return [String]
    #
    # @!attribute [rw] number_of_large_timestamp_gaps
    #   Indicates the number of large timestamp gaps, if there are any.
    #   @return [Integer]
    #
    # @!attribute [rw] max_timestamp_gap_in_days
    #   Indicates the size of the largest timestamp gap, in days.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/LargeTimestampGaps AWS API Documentation
    #
    class LargeTimestampGaps < Struct.new(
      :status,
      :number_of_large_timestamp_gaps,
      :max_timestamp_gap_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of inference events.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of inference events to list.
    #   @return [Integer]
    #
    # @!attribute [rw] inference_scheduler_name
    #   The name of the inference scheduler for the inference events listed.
    #   @return [String]
    #
    # @!attribute [rw] interval_start_time
    #   Lookout for Equipment will return all the inference events with an
    #   end time equal to or greater than the start time given.
    #   @return [Time]
    #
    # @!attribute [rw] interval_end_time
    #   Returns all the inference events with an end start time equal to or
    #   greater than less than the end time given
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceEventsRequest AWS API Documentation
    #
    class ListInferenceEventsRequest < Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name,
      :interval_start_time,
      :interval_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of inference executions.
    #   @return [String]
    #
    # @!attribute [rw] inference_event_summaries
    #   Provides an array of information about the individual inference
    #   events returned from the `ListInferenceEvents` operation, including
    #   scheduler used, event start time, event end time, diagnostics, and
    #   so on.
    #   @return [Array<Types::InferenceEventSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceEventsResponse AWS API Documentation
    #
    class ListInferenceEventsResponse < Struct.new(
      :next_token,
      :inference_event_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] status
    #   Specifies the current status of the inference schedulers to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListInferenceSchedulersRequest AWS API Documentation
    #
    class ListInferenceSchedulersRequest < Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name_begins_with,
      :model_name,
      :status)
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

    # @!attribute [rw] label_group_name_begins_with
    #   The beginning of the name of the label groups to be listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of label groups.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of label groups to list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListLabelGroupsRequest AWS API Documentation
    #
    class ListLabelGroupsRequest < Struct.new(
      :label_group_name_begins_with,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of label groups.
    #   @return [String]
    #
    # @!attribute [rw] label_group_summaries
    #   A summary of the label groups.
    #   @return [Array<Types::LabelGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListLabelGroupsResponse AWS API Documentation
    #
    class ListLabelGroupsResponse < Struct.new(
      :next_token,
      :label_group_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_group_name
    #   Retruns the name of the label group.
    #   @return [String]
    #
    # @!attribute [rw] interval_start_time
    #   Returns all the labels with a end time equal to or later than the
    #   start time given.
    #   @return [Time]
    #
    # @!attribute [rw] interval_end_time
    #   Returns all labels with a start time earlier than the end time
    #   given.
    #   @return [Time]
    #
    # @!attribute [rw] fault_code
    #   Returns labels with a particular fault code.
    #   @return [String]
    #
    # @!attribute [rw] equipment
    #   Lists the labels that pertain to a particular piece of equipment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of label groups.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of labels to list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListLabelsRequest AWS API Documentation
    #
    class ListLabelsRequest < Struct.new(
      :label_group_name,
      :interval_start_time,
      :interval_end_time,
      :fault_code,
      :equipment,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of datasets.
    #   @return [String]
    #
    # @!attribute [rw] label_summaries
    #   A summary of the items in the label group.
    #   @return [Array<Types::LabelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListLabelsResponse AWS API Documentation
    #
    class ListLabelsResponse < Struct.new(
      :next_token,
      :label_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] dataset_name
    #   The name of the dataset associated with the list of Sensor
    #   Statistics.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   The ingestion job id associated with the list of Sensor Statistics.
    #   To get sensor statistics for a particular ingestion job id, both
    #   dataset name and ingestion job id must be submitted as inputs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of sensors for which to retrieve
    #   statistics.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of sensor statistics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListSensorStatisticsRequest AWS API Documentation
    #
    class ListSensorStatisticsRequest < Struct.new(
      :dataset_name,
      :ingestion_job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sensor_statistics_summaries
    #   Provides ingestion-based statistics regarding the specified sensor
    #   with respect to various validation types, such as whether data
    #   exists, the number and percentage of missing values, and the number
    #   and percentage of duplicate timestamps.
    #   @return [Array<Types::SensorStatisticsSummary>]
    #
    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of sensor statistics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListSensorStatisticsResponse AWS API Documentation
    #
    class ListSensorStatisticsResponse < Struct.new(
      :sensor_statistics_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Entity that comprises information on sensors that have sensor data
    # completely missing.
    #
    # @!attribute [rw] affected_sensor_count
    #   Indicates the number of sensors that have data missing completely.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/MissingCompleteSensorData AWS API Documentation
    #
    class MissingCompleteSensorData < Struct.new(
      :affected_sensor_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Entity that comprises aggregated information on sensors having missing
    # data.
    #
    # @!attribute [rw] affected_sensor_count
    #   Indicates the number of sensors that have atleast some data missing.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_missing_values
    #   Indicates the total number of missing values across all the sensors.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/MissingSensorData AWS API Documentation
    #
    class MissingSensorData < Struct.new(
      :affected_sensor_count,
      :total_number_of_missing_values)
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

    # Entity that comprises information on monotonic values in the data.
    #
    # @!attribute [rw] status
    #   Indicates whether there is a potential data issue related to having
    #   monotonic values.
    #   @return [String]
    #
    # @!attribute [rw] monotonicity
    #   Indicates the monotonicity of values. Can be INCREASING, DECREASING,
    #   or STATIC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/MonotonicValues AWS API Documentation
    #
    class MonotonicValues < Struct.new(
      :status,
      :monotonicity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Entity that comprises information on operating modes in data.
    #
    # @!attribute [rw] status
    #   Indicates whether there is a potential data issue related to having
    #   multiple operating modes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/MultipleOperatingModes AWS API Documentation
    #
    class MultipleOperatingModes < Struct.new(
      :status)
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

    # Summary of ingestion statistics like whether data exists, number of
    # missing values, number of invalid values and so on related to the
    # particular sensor.
    #
    # @!attribute [rw] component_name
    #   Name of the component to which the particular sensor belongs for
    #   which the statistics belong to.
    #   @return [String]
    #
    # @!attribute [rw] sensor_name
    #   Name of the sensor that the statistics belong to.
    #   @return [String]
    #
    # @!attribute [rw] data_exists
    #   Parameter that indicates whether data exists for the sensor that the
    #   statistics belong to.
    #   @return [Boolean]
    #
    # @!attribute [rw] missing_values
    #   Parameter that describes the total number of, and percentage of,
    #   values that are missing for the sensor that the statistics belong
    #   to.
    #   @return [Types::CountPercent]
    #
    # @!attribute [rw] invalid_values
    #   Parameter that describes the total number of, and percentage of,
    #   values that are invalid for the sensor that the statistics belong
    #   to.
    #   @return [Types::CountPercent]
    #
    # @!attribute [rw] invalid_date_entries
    #   Parameter that describes the total number of invalid date entries
    #   associated with the sensor that the statistics belong to.
    #   @return [Types::CountPercent]
    #
    # @!attribute [rw] duplicate_timestamps
    #   Parameter that describes the total number of duplicate timestamp
    #   records associated with the sensor that the statistics belong to.
    #   @return [Types::CountPercent]
    #
    # @!attribute [rw] categorical_values
    #   Parameter that describes potential risk about whether data
    #   associated with the sensor is categorical.
    #   @return [Types::CategoricalValues]
    #
    # @!attribute [rw] multiple_operating_modes
    #   Parameter that describes potential risk about whether data
    #   associated with the sensor has more than one operating mode.
    #   @return [Types::MultipleOperatingModes]
    #
    # @!attribute [rw] large_timestamp_gaps
    #   Parameter that describes potential risk about whether data
    #   associated with the sensor contains one or more large gaps between
    #   consecutive timestamps.
    #   @return [Types::LargeTimestampGaps]
    #
    # @!attribute [rw] monotonic_values
    #   Parameter that describes potential risk about whether data
    #   associated with the sensor is mostly monotonic.
    #   @return [Types::MonotonicValues]
    #
    # @!attribute [rw] data_start_time
    #   Indicates the time reference to indicate the beginning of valid data
    #   associated with the sensor that the statistics belong to.
    #   @return [Time]
    #
    # @!attribute [rw] data_end_time
    #   Indicates the time reference to indicate the end of valid data
    #   associated with the sensor that the statistics belong to.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/SensorStatisticsSummary AWS API Documentation
    #
    class SensorStatisticsSummary < Struct.new(
      :component_name,
      :sensor_name,
      :data_exists,
      :missing_values,
      :invalid_values,
      :invalid_date_entries,
      :duplicate_timestamps,
      :categorical_values,
      :multiple_operating_modes,
      :large_timestamp_gaps,
      :monotonic_values,
      :data_start_time,
      :data_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Entity that comprises information on sensors that have shorter date
    # range.
    #
    # @!attribute [rw] affected_sensor_count
    #   Indicates the number of sensors that have less than 90 days of data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/SensorsWithShortDateRange AWS API Documentation
    #
    class SensorsWithShortDateRange < Struct.new(
      :affected_sensor_count)
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

    # Entity that comprises information abount unsupported timestamps in the
    # dataset.
    #
    # @!attribute [rw] total_number_of_unsupported_timestamps
    #   Indicates the total number of unsupported timestamps across the
    #   ingested data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UnsupportedTimestamps AWS API Documentation
    #
    class UnsupportedTimestamps < Struct.new(
      :total_number_of_unsupported_timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] label_group_name
    #   The name of the label group to be updated.
    #   @return [String]
    #
    # @!attribute [rw] fault_codes
    #   Updates the code indicating the type of anomaly associated with the
    #   label.
    #
    #   Data in this field will be retained for service usage. Follow best
    #   practices for the security of your data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UpdateLabelGroupRequest AWS API Documentation
    #
    class UpdateLabelGroupRequest < Struct.new(
      :label_group_name,
      :fault_codes)
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

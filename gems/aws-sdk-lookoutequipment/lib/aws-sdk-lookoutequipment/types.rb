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
    #   The name of the previously trained machine learning model being used
    #   to create the inference scheduler.
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
    # @!attribute [rw] model_quality
    #   Provides a quality assessment for a model that uses labels. If
    #   Lookout for Equipment determines that the model quality is poor
    #   based on training metrics, the value is `POOR_QUALITY_DETECTED`.
    #   Otherwise, the value is `QUALITY_THRESHOLD_MET`.
    #
    #   If the model is unlabeled, the model quality can't be assessed and
    #   the value of `ModelQuality` is `CANNOT_DETERMINE_QUALITY`. In this
    #   situation, you can get a model quality assessment by adding labels
    #   to the input dataset and retraining the model.
    #
    #   For information about using labels with your models, see
    #   [Understanding labeling][1].
    #
    #   For information about improving the quality of a model, see [Best
    #   practices with Amazon Lookout for Equipment][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html
    #   [2]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateInferenceSchedulerResponse AWS API Documentation
    #
    class CreateInferenceSchedulerResponse < Struct.new(
      :inference_scheduler_arn,
      :inference_scheduler_name,
      :status,
      :model_quality)
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
    #   The Amazon Resource Name (ARN) of the label group that you have
    #   created.
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
    #   The name for the machine learning model to be created.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset for the machine learning model being
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] dataset_schema
    #   The data schema for the machine learning model being created.
    #   @return [Types::DatasetSchema]
    #
    # @!attribute [rw] labels_input_configuration
    #   The input configuration for the labels being used for the machine
    #   learning model that's being created.
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
    #   begin the subset of training data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_end_time
    #   Indicates the time reference in the dataset that should be used to
    #   end the subset of training data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_start_time
    #   Indicates the time reference in the dataset that should be used to
    #   begin the subset of evaluation data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_end_time
    #   Indicates the time reference in the dataset that should be used to
    #   end the subset of evaluation data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source being used to create the machine learning model.
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
    #   Any tags associated with the machine learning model being created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] off_condition
    #   Indicates that the asset associated with this sensor has been shut
    #   off. As long as this condition is met, Lookout for Equipment will
    #   not use data from this asset for training, evaluation, or inference.
    #   @return [String]
    #
    # @!attribute [rw] model_diagnostics_output_configuration
    #   The Amazon S3 location where you want Amazon Lookout for Equipment
    #   to save the pointwise model diagnostics. You must also specify the
    #   `RoleArn` request parameter.
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
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
      :off_condition,
      :model_diagnostics_output_configuration)
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

    # @!attribute [rw] model_name
    #   The name of the model to add the retraining scheduler to.
    #   @return [String]
    #
    # @!attribute [rw] retraining_start_date
    #   The start date for the retraining scheduler. Lookout for Equipment
    #   truncates the time you provide to the nearest UTC day.
    #   @return [Time]
    #
    # @!attribute [rw] retraining_frequency
    #   This parameter uses the [ISO 8601][1] standard to set the frequency
    #   at which you want retraining to occur in terms of Years, Months,
    #   and/or Days (note: other parameters like Time are not currently
    #   supported). The minimum value is 30 days (P30D) and the maximum
    #   value is 1 year (P1Y). For example, the following values are valid:
    #
    #   * P3M15D – Every 3 months and 15 days
    #
    #   * P2M – Every 2 months
    #
    #   * P150D – Every 150 days
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601#Durations
    #   @return [String]
    #
    # @!attribute [rw] lookback_window
    #   The number of past days of data that will be used for retraining.
    #   @return [String]
    #
    # @!attribute [rw] promote_mode
    #   Indicates how the service will use new models. In `MANAGED` mode,
    #   new models will automatically be used for inference if they have
    #   better performance than the current model. In `MANUAL` mode, the new
    #   models will not be used [until they are manually activated][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateRetrainingSchedulerRequest AWS API Documentation
    #
    class CreateRetrainingSchedulerRequest < Struct.new(
      :model_name,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window,
      :promote_mode,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the model that you added the retraining scheduler to.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the model that you added the retraining scheduler to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retraining scheduler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/CreateRetrainingSchedulerResponse AWS API Documentation
    #
    class CreateRetrainingSchedulerResponse < Struct.new(
      :model_name,
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
    #   The data schema used within the given dataset.
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
    #   The name of the machine learning model to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteModelRequest AWS API Documentation
    #
    class DeleteModelRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which the
    #   resource policy should be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the model whose retraining scheduler you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DeleteRetrainingSchedulerRequest AWS API Documentation
    #
    class DeleteRetrainingSchedulerRequest < Struct.new(
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
    # @!attribute [rw] source_dataset_arn
    #   The Amazon Resource Name (ARN) of the source dataset from which the
    #   data used for the data ingestion job was imported from.
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
      :failed_reason,
      :data_quality_summary,
      :ingested_files_summary,
      :status_detail,
      :ingested_data_size,
      :data_start_time,
      :data_end_time,
      :source_dataset_arn)
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
    # @!attribute [rw] source_dataset_arn
    #   The Amazon Resource Name (ARN) of the source dataset from which the
    #   current data being described was imported from.
    #   @return [String]
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
      :data_end_time,
      :source_dataset_arn)
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
    #   The Amazon Resource Name (ARN) of the machine learning model of the
    #   inference scheduler being described.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the machine learning model of the inference scheduler
    #   being described.
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
    #   The Amazon Resource Name (ARN) of the label group.
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
    #   The Amazon Resource Name (ARN) of the requested label group.
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
    #   The name of the machine learning model to be described.
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
    #   The name of the machine learning model being described.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the machine learning model being
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset being used by the machine learning being
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resouce Name (ARN) of the dataset used to create the
    #   machine learning model being described.
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
    #   the subset of training data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_end_time
    #   Indicates the time reference in the dataset that was used to end the
    #   subset of training data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_start_time
    #   Indicates the time reference in the dataset that was used to begin
    #   the subset of evaluation data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_end_time
    #   Indicates the time reference in the dataset that was used to end the
    #   subset of evaluation data for the machine learning model.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source for the machine learning model being described.
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
    #   Indicates the time at which the training of the machine learning
    #   model began.
    #   @return [Time]
    #
    # @!attribute [rw] training_execution_end_time
    #   Indicates the time at which the training of the machine learning
    #   model was completed.
    #   @return [Time]
    #
    # @!attribute [rw] failed_reason
    #   If the training of the machine learning model failed, this indicates
    #   the reason for that failure.
    #   @return [String]
    #
    # @!attribute [rw] model_metrics
    #   The Model Metrics show an aggregated summary of the model's
    #   performance within the evaluation time range. This is the JSON
    #   content of the metrics created when evaluating the model.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Indicates the last time the machine learning model was updated. The
    #   type of update is not specified.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   Indicates the time and date at which the machine learning model was
    #   created.
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
    # @!attribute [rw] source_model_version_arn
    #   The Amazon Resource Name (ARN) of the source model version. This
    #   field appears if the active model version was imported.
    #   @return [String]
    #
    # @!attribute [rw] import_job_start_time
    #   The date and time when the import job was started. This field
    #   appears if the active model version was imported.
    #   @return [Time]
    #
    # @!attribute [rw] import_job_end_time
    #   The date and time when the import job was completed. This field
    #   appears if the active model version was imported.
    #   @return [Time]
    #
    # @!attribute [rw] active_model_version
    #   The name of the model version used by the inference schedular when
    #   running a scheduled inference execution.
    #   @return [Integer]
    #
    # @!attribute [rw] active_model_version_arn
    #   The Amazon Resource Name (ARN) of the model version used by the
    #   inference scheduler when running a scheduled inference execution.
    #   @return [String]
    #
    # @!attribute [rw] model_version_activated_at
    #   The date the active model version was activated.
    #   @return [Time]
    #
    # @!attribute [rw] previous_active_model_version
    #   The model version that was set as the active model version prior to
    #   the current active model version.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_active_model_version_arn
    #   The ARN of the model version that was set as the active model
    #   version prior to the current active model version.
    #   @return [String]
    #
    # @!attribute [rw] previous_model_version_activated_at
    #   The date and time when the previous active model version was
    #   activated.
    #   @return [Time]
    #
    # @!attribute [rw] prior_model_metrics
    #   If the model version was retrained, this field shows a summary of
    #   the performance of the prior model on the new training range. You
    #   can use the information in this JSON-formatted object to compare the
    #   new model version and the prior model version.
    #   @return [String]
    #
    # @!attribute [rw] latest_scheduled_retraining_failed_reason
    #   If the model version was generated by retraining and the training
    #   failed, this indicates the reason for that failure.
    #   @return [String]
    #
    # @!attribute [rw] latest_scheduled_retraining_status
    #   Indicates the status of the most recent scheduled retraining run.
    #   @return [String]
    #
    # @!attribute [rw] latest_scheduled_retraining_model_version
    #   Indicates the most recent model version that was generated by
    #   retraining.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_scheduled_retraining_start_time
    #   Indicates the start time of the most recent scheduled retraining
    #   run.
    #   @return [Time]
    #
    # @!attribute [rw] latest_scheduled_retraining_available_data_in_days
    #   Indicates the number of days of data used in the most recent
    #   scheduled retraining run.
    #   @return [Integer]
    #
    # @!attribute [rw] next_scheduled_retraining_start_date
    #   Indicates the date and time that the next scheduled retraining run
    #   will start on. Lookout for Equipment truncates the time you provide
    #   to the nearest UTC day.
    #   @return [Time]
    #
    # @!attribute [rw] accumulated_inference_data_start_time
    #   Indicates the start time of the inference data that has been
    #   accumulated.
    #   @return [Time]
    #
    # @!attribute [rw] accumulated_inference_data_end_time
    #   Indicates the end time of the inference data that has been
    #   accumulated.
    #   @return [Time]
    #
    # @!attribute [rw] retraining_scheduler_status
    #   Indicates the status of the retraining scheduler.
    #   @return [String]
    #
    # @!attribute [rw] model_diagnostics_output_configuration
    #   Configuration information for the model's pointwise model
    #   diagnostics.
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    #
    # @!attribute [rw] model_quality
    #   Provides a quality assessment for a model that uses labels. If
    #   Lookout for Equipment determines that the model quality is poor
    #   based on training metrics, the value is `POOR_QUALITY_DETECTED`.
    #   Otherwise, the value is `QUALITY_THRESHOLD_MET`.
    #
    #   If the model is unlabeled, the model quality can't be assessed and
    #   the value of `ModelQuality` is `CANNOT_DETERMINE_QUALITY`. In this
    #   situation, you can get a model quality assessment by adding labels
    #   to the input dataset and retraining the model.
    #
    #   For information about using labels with your models, see
    #   [Understanding labeling][1].
    #
    #   For information about improving the quality of a model, see [Best
    #   practices with Amazon Lookout for Equipment][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html
    #   [2]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html
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
      :off_condition,
      :source_model_version_arn,
      :import_job_start_time,
      :import_job_end_time,
      :active_model_version,
      :active_model_version_arn,
      :model_version_activated_at,
      :previous_active_model_version,
      :previous_active_model_version_arn,
      :previous_model_version_activated_at,
      :prior_model_metrics,
      :latest_scheduled_retraining_failed_reason,
      :latest_scheduled_retraining_status,
      :latest_scheduled_retraining_model_version,
      :latest_scheduled_retraining_start_time,
      :latest_scheduled_retraining_available_data_in_days,
      :next_scheduled_retraining_start_date,
      :accumulated_inference_data_start_time,
      :accumulated_inference_data_end_time,
      :retraining_scheduler_status,
      :model_diagnostics_output_configuration,
      :model_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the machine learning model that this version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the machine learning model.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeModelVersionRequest AWS API Documentation
    #
    class DescribeModelVersionRequest < Struct.new(
      :model_name,
      :model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the machine learning model that this version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the parent machine learning model
    #   that this version belong to.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the machine learning model.
    #   @return [Integer]
    #
    # @!attribute [rw] model_version_arn
    #   The Amazon Resource Name (ARN) of the model version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the model version.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Indicates whether this model version was created by training or by
    #   importing.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset used to train the model version.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset used to train the
    #   model version.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the data used to train the model version.
    #   @return [String]
    #
    # @!attribute [rw] labels_input_configuration
    #   Contains the configuration information for the S3 location being
    #   used to hold label data.
    #   @return [Types::LabelsInputConfiguration]
    #
    # @!attribute [rw] training_data_start_time
    #   The date on which the training data began being gathered. If you
    #   imported the version, this is the date that the training data in the
    #   source version began being gathered.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_end_time
    #   The date on which the training data finished being gathered. If you
    #   imported the version, this is the date that the training data in the
    #   source version finished being gathered.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_start_time
    #   The date on which the data in the evaluation set began being
    #   gathered. If you imported the version, this is the date that the
    #   evaluation set data in the source version began being gathered.
    #   @return [Time]
    #
    # @!attribute [rw] evaluation_data_end_time
    #   The date on which the data in the evaluation set began being
    #   gathered. If you imported the version, this is the date that the
    #   evaluation set data in the source version finished being gathered.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that was used to train
    #   the model version.
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
    # @!attribute [rw] training_execution_start_time
    #   The time when the training of the version began.
    #   @return [Time]
    #
    # @!attribute [rw] training_execution_end_time
    #   The time when the training of the version completed.
    #   @return [Time]
    #
    # @!attribute [rw] failed_reason
    #   The failure message if the training of the model version failed.
    #   @return [String]
    #
    # @!attribute [rw] model_metrics
    #   Shows an aggregated summary, in JSON format, of the model's
    #   performance within the evaluation time range. These metrics are
    #   created when evaluating the model.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Indicates the last time the machine learning model version was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   Indicates the time and date at which the machine learning model
    #   version was created.
    #   @return [Time]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   The identifier of the KMS key key used to encrypt model version data
    #   by Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] off_condition
    #   Indicates that the asset associated with this sensor has been shut
    #   off. As long as this condition is met, Lookout for Equipment will
    #   not use data from this asset for training, evaluation, or inference.
    #   @return [String]
    #
    # @!attribute [rw] source_model_version_arn
    #   If model version was imported, then this field is the arn of the
    #   source model version.
    #   @return [String]
    #
    # @!attribute [rw] import_job_start_time
    #   The date and time when the import job began. This field appears if
    #   the model version was imported.
    #   @return [Time]
    #
    # @!attribute [rw] import_job_end_time
    #   The date and time when the import job completed. This field appears
    #   if the model version was imported.
    #   @return [Time]
    #
    # @!attribute [rw] imported_data_size_in_bytes
    #   The size in bytes of the imported data. This field appears if the
    #   model version was imported.
    #   @return [Integer]
    #
    # @!attribute [rw] prior_model_metrics
    #   If the model version was retrained, this field shows a summary of
    #   the performance of the prior model on the new training range. You
    #   can use the information in this JSON-formatted object to compare the
    #   new model version and the prior model version.
    #   @return [String]
    #
    # @!attribute [rw] retraining_available_data_in_days
    #   Indicates the number of days of data used in the most recent
    #   scheduled retraining run.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_promotion_result
    #   Indicates whether the model version was promoted to be the active
    #   version after retraining or if there was an error with or
    #   cancellation of the retraining.
    #   @return [String]
    #
    # @!attribute [rw] auto_promotion_result_reason
    #   Indicates the reason for the `AutoPromotionResult`. For example, a
    #   model might not be promoted if its performance was worse than the
    #   active version, if there was an error during training, or if the
    #   retraining scheduler was using `MANUAL` promote mode. The model will
    #   be promoted in `MANAGED` promote mode if the performance is better
    #   than the previous model.
    #   @return [String]
    #
    # @!attribute [rw] model_diagnostics_output_configuration
    #   The Amazon S3 location where Amazon Lookout for Equipment saves the
    #   pointwise model diagnostics for the model version.
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    #
    # @!attribute [rw] model_diagnostics_results_object
    #   The Amazon S3 output prefix for where Lookout for Equipment saves
    #   the pointwise model diagnostics for the model version.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] model_quality
    #   Provides a quality assessment for a model that uses labels. If
    #   Lookout for Equipment determines that the model quality is poor
    #   based on training metrics, the value is `POOR_QUALITY_DETECTED`.
    #   Otherwise, the value is `QUALITY_THRESHOLD_MET`.
    #
    #   If the model is unlabeled, the model quality can't be assessed and
    #   the value of `ModelQuality` is `CANNOT_DETERMINE_QUALITY`. In this
    #   situation, you can get a model quality assessment by adding labels
    #   to the input dataset and retraining the model.
    #
    #   For information about using labels with your models, see
    #   [Understanding labeling][1].
    #
    #   For information about improving the quality of a model, see [Best
    #   practices with Amazon Lookout for Equipment][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html
    #   [2]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeModelVersionResponse AWS API Documentation
    #
    class DescribeModelVersionResponse < Struct.new(
      :model_name,
      :model_arn,
      :model_version,
      :model_version_arn,
      :status,
      :source_type,
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
      :training_execution_start_time,
      :training_execution_end_time,
      :failed_reason,
      :model_metrics,
      :last_updated_time,
      :created_at,
      :server_side_kms_key_id,
      :off_condition,
      :source_model_version_arn,
      :import_job_start_time,
      :import_job_end_time,
      :imported_data_size_in_bytes,
      :prior_model_metrics,
      :retraining_available_data_in_days,
      :auto_promotion_result,
      :auto_promotion_result_reason,
      :model_diagnostics_output_configuration,
      :model_diagnostics_results_object,
      :model_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that is associated
    #   with the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeResourcePolicyRequest AWS API Documentation
    #
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_revision_id
    #   A unique identifier for a revision of the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   The resource policy in a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the resource policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time when the resource policy was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeResourcePolicyResponse AWS API Documentation
    #
    class DescribeResourcePolicyResponse < Struct.new(
      :policy_revision_id,
      :resource_policy,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the model that the retraining scheduler is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeRetrainingSchedulerRequest AWS API Documentation
    #
    class DescribeRetrainingSchedulerRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the model that the retraining scheduler is attached to.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the model that the retraining scheduler is attached to.
    #   @return [String]
    #
    # @!attribute [rw] retraining_start_date
    #   The start date for the retraining scheduler. Lookout for Equipment
    #   truncates the time you provide to the nearest UTC day.
    #   @return [Time]
    #
    # @!attribute [rw] retraining_frequency
    #   The frequency at which the model retraining is set. This follows the
    #   [ISO 8601][1] guidelines.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601#Durations
    #   @return [String]
    #
    # @!attribute [rw] lookback_window
    #   The number of past days of data used for retraining.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retraining scheduler.
    #   @return [String]
    #
    # @!attribute [rw] promote_mode
    #   Indicates how the service uses new models. In `MANAGED` mode, new
    #   models are used for inference if they have better performance than
    #   the current model. In `MANUAL` mode, the new models are not used
    #   until they are [manually activated][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates the time and date at which the retraining scheduler was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Indicates the time and date at which the retraining scheduler was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/DescribeRetrainingSchedulerResponse AWS API Documentation
    #
    class DescribeRetrainingSchedulerResponse < Struct.new(
      :model_name,
      :model_arn,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window,
      :status,
      :promote_mode,
      :created_at,
      :updated_at)
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

    # @!attribute [rw] source_dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to import.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the machine learning dataset to be created. If the
    #   dataset already exists, Amazon Lookout for Equipment overwrites the
    #   existing dataset. If you don't specify this field, it is filled
    #   with the name of the source dataset.
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
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key key used to encrypt model
    #   data by Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags associated with the dataset to be created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ImportDatasetRequest AWS API Documentation
    #
    class ImportDatasetRequest < Struct.new(
      :source_dataset_arn,
      :dataset_name,
      :client_token,
      :server_side_kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_name
    #   The name of the created machine learning dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that was imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the `ImportDataset` operation.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   A unique identifier for the job of importing the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ImportDatasetResponse AWS API Documentation
    #
    class ImportDatasetResponse < Struct.new(
      :dataset_name,
      :dataset_arn,
      :status,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_model_version_arn
    #   The Amazon Resource Name (ARN) of the model version to import.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name for the machine learning model to be created. If the model
    #   already exists, Amazon Lookout for Equipment creates a new version.
    #   If you do not specify this field, it is filled with the name of the
    #   source model.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset for the machine learning model being
    #   imported.
    #   @return [String]
    #
    # @!attribute [rw] labels_input_configuration
    #   Contains the configuration information for the S3 location being
    #   used to hold label data.
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
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   the data source being used to create the machine learning model.
    #   @return [String]
    #
    # @!attribute [rw] server_side_kms_key_id
    #   Provides the identifier of the KMS key key used to encrypt model
    #   data by Amazon Lookout for Equipment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the machine learning model to be created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] inference_data_import_strategy
    #   Indicates how to import the accumulated inference data when a model
    #   version is imported. The possible values are as follows:
    #
    #   * NO\_IMPORT – Don't import the data.
    #
    #   * ADD\_WHEN\_EMPTY – Only import the data from the source model if
    #     there is no existing data in the target model.
    #
    #   * OVERWRITE – Import the data from the source model and overwrite
    #     the existing data in the target model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ImportModelVersionRequest AWS API Documentation
    #
    class ImportModelVersionRequest < Struct.new(
      :source_model_version_arn,
      :model_name,
      :dataset_name,
      :labels_input_configuration,
      :client_token,
      :role_arn,
      :server_side_kms_key_id,
      :tags,
      :inference_data_import_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name for the machine learning model.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model being created.
    #   @return [String]
    #
    # @!attribute [rw] model_version_arn
    #   The Amazon Resource Name (ARN) of the model version being created.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model being created.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the `ImportModelVersion` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ImportModelVersionResponse AWS API Documentation
    #
    class ImportModelVersionResponse < Struct.new(
      :model_name,
      :model_arn,
      :model_version_arn,
      :model_version,
      :status)
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
    #   The name of the machine learning model being used for the inference
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the machine learning model used
    #   for the inference execution.
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
    #   The S3 object that the inference execution results were uploaded to.
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
    # @!attribute [rw] model_version
    #   The model version used for the inference execution.
    #   @return [Integer]
    #
    # @!attribute [rw] model_version_arn
    #   The Amazon Resource Number (ARN) of the model version used for the
    #   inference execution.
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
      :failed_reason,
      :model_version,
      :model_version_arn)
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
    #   The ID number for the KMS key key used to encrypt the inference
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
    #   The name of the machine learning model used for the inference
    #   scheduler.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the machine learning model used by
    #   the inference scheduler.
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
    #   The pattern for matching the Amazon S3 files that will be used for
    #   ingestion. If the schema was created previously without any
    #   KeyPattern, then the default KeyPattern
    #   \{prefix}/\{component\_name}/* is used to download files from
    #   Amazon S3 according to the schema. This field is required when
    #   ingestion is being done for the first time.
    #
    #   Valid Values: \{prefix}/\{component\_name}\_* \|
    #   \{prefix}/\{component\_name}/* \|
    #   \{prefix}/\{component\_name}\[DELIMITER\]* (Allowed delimiters :
    #   space, dot, underscore, hyphen)
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
    #   short date range of less than 14 days of data overall.
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
    #   The Amazon Resource Name (ARN) of the label group.
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
    #   The Amazon Resource Name (ARN) of the label group.
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
    #   greater than less than the end time given.
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
    #
    #   <note markdown="1"> If you don't supply the `InferenceSchedulerName` request parameter,
    #   or if you supply the name of an inference scheduler that doesn't
    #   exist, `ListInferenceExecutions` returns an empty array in
    #   `InferenceExecutionSummaries`.
    #
    #    </note>
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
    #   The name of the machine learning model used by the inference
    #   scheduler to be listed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current status of the inference schedulers.
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
    #   Returns the name of the label group.
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
    #
    #   <note markdown="1"> If you don't supply the `LabelGroupName` request parameter, or if
    #   you supply the name of a label group that doesn't exist,
    #   `ListLabels` returns an empty array in `LabelSummaries`.
    #
    #    </note>
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

    # @!attribute [rw] model_name
    #   Then name of the machine learning model for which the model versions
    #   are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the total number of results exceeds the limit that the response
    #   can display, the response returns an opaque pagination token
    #   indicating where to continue the listing of machine learning model
    #   versions. Use this token in the `NextToken` field in the request to
    #   list the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of machine learning model versions to
    #   list.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Filter the results based on the current status of the model version.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Filter the results based on the way the model version was generated.
    #   @return [String]
    #
    # @!attribute [rw] created_at_end_time
    #   Filter results to return all the model versions created before this
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] created_at_start_time
    #   Filter results to return all the model versions created after this
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] max_model_version
    #   Specifies the highest version of the model to return in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] min_model_version
    #   Specifies the lowest version of the model to return in the list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListModelVersionsRequest AWS API Documentation
    #
    class ListModelVersionsRequest < Struct.new(
      :model_name,
      :next_token,
      :max_results,
      :status,
      :source_type,
      :created_at_end_time,
      :created_at_start_time,
      :max_model_version,
      :min_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the total number of results exceeds the limit that the response
    #   can display, the response returns an opaque pagination token
    #   indicating where to continue the listing of machine learning model
    #   versions. Use this token in the `NextToken` field in the request to
    #   list the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] model_version_summaries
    #   Provides information on the specified model version, including the
    #   created time, model and dataset ARNs, and status.
    #
    #   <note markdown="1"> If you don't supply the `ModelName` request parameter, or if you
    #   supply the name of a model that doesn't exist, `ListModelVersions`
    #   returns an empty array in `ModelVersionSummaries`.
    #
    #    </note>
    #   @return [Array<Types::ModelVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListModelVersionsResponse AWS API Documentation
    #
    class ListModelVersionsResponse < Struct.new(
      :next_token,
      :model_version_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An opaque pagination token indicating where to continue the listing
    #   of machine learning models.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of machine learning models to list.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the machine learning model.
    #   @return [String]
    #
    # @!attribute [rw] model_name_begins_with
    #   The beginning of the name of the machine learning models being
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name_begins_with
    #   The beginning of the name of the dataset of the machine learning
    #   models to be listed.
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
    #   of machine learning models.
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

    # @!attribute [rw] model_name_begins_with
    #   Specify this field to only list retraining schedulers whose machine
    #   learning models begin with the value you specify.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specify this field to only list retraining schedulers whose status
    #   matches the value you specify.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the number of results exceeds the maximum, a pagination token is
    #   returned. Use the token in the request to show the next page of
    #   retraining schedulers.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of retraining schedulers to list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListRetrainingSchedulersRequest AWS API Documentation
    #
    class ListRetrainingSchedulersRequest < Struct.new(
      :model_name_begins_with,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retraining_scheduler_summaries
    #   Provides information on the specified retraining scheduler,
    #   including the model name, model ARN, status, and start date.
    #   @return [Array<Types::RetrainingSchedulerSummary>]
    #
    # @!attribute [rw] next_token
    #   If the number of results exceeds the maximum, this pagination token
    #   is returned. Use this token in the request to show the next page of
    #   retraining schedulers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ListRetrainingSchedulersResponse AWS API Documentation
    #
    class ListRetrainingSchedulersResponse < Struct.new(
      :retraining_scheduler_summaries,
      :next_token)
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

    # Output configuration information for the pointwise model diagnostics
    # for an Amazon Lookout for Equipment model.
    #
    # @!attribute [rw] s3_output_configuration
    #   The Amazon S3 location for the pointwise model diagnostics.
    #   @return [Types::ModelDiagnosticsS3OutputConfiguration]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services Key Management Service (KMS) key identifier
    #   to encrypt the pointwise model diagnostics files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ModelDiagnosticsOutputConfiguration AWS API Documentation
    #
    class ModelDiagnosticsOutputConfiguration < Struct.new(
      :s3_output_configuration,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location for the pointwise model diagnostics for an
    # Amazon Lookout for Equipment model.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket where the pointwise model
    #   diagnostics are located. You must be the owner of the Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The Amazon S3 prefix for the location of the pointwise model
    #   diagnostics. The prefix specifies the folder and evaluation result
    #   file name. (`bucket`).
    #
    #   When you call `CreateModel` or `UpdateModel`, specify the path
    #   within the bucket that you want Lookout for Equipment to save the
    #   model to. During training, Lookout for Equipment creates the model
    #   evaluation model as a compressed JSON file with the name
    #   `model_diagnostics_results.json.gz`.
    #
    #   When you call `DescribeModel` or `DescribeModelVersion`, `prefix`
    #   contains the file path and filename of the model evaluation file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ModelDiagnosticsS3OutputConfiguration AWS API Documentation
    #
    class ModelDiagnosticsS3OutputConfiguration < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the specified machine learning model,
    # including dataset and model names and ARNs, as well as status.
    #
    # @!attribute [rw] model_name
    #   The name of the machine learning model.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the machine learning model.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset being used for the machine learning model.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset used to create the
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the status of the machine learning model.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the specific model was created.
    #   @return [Time]
    #
    # @!attribute [rw] active_model_version
    #   The model version that the inference scheduler uses to run an
    #   inference execution.
    #   @return [Integer]
    #
    # @!attribute [rw] active_model_version_arn
    #   The Amazon Resource Name (ARN) of the model version that is set as
    #   active. The active model version is the model version that the
    #   inference scheduler uses to run an inference execution.
    #   @return [String]
    #
    # @!attribute [rw] latest_scheduled_retraining_status
    #   Indicates the status of the most recent scheduled retraining run.
    #   @return [String]
    #
    # @!attribute [rw] latest_scheduled_retraining_model_version
    #   Indicates the most recent model version that was generated by
    #   retraining.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_scheduled_retraining_start_time
    #   Indicates the start time of the most recent scheduled retraining
    #   run.
    #   @return [Time]
    #
    # @!attribute [rw] next_scheduled_retraining_start_date
    #   Indicates the date that the next scheduled retraining run will start
    #   on. Lookout for Equipment truncates the time you provide to [the
    #   nearest UTC day][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/https:/docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp
    #   @return [Time]
    #
    # @!attribute [rw] retraining_scheduler_status
    #   Indicates the status of the retraining scheduler.
    #   @return [String]
    #
    # @!attribute [rw] model_diagnostics_output_configuration
    #   Output configuration information for the pointwise model diagnostics
    #   for an Amazon Lookout for Equipment model.
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    #
    # @!attribute [rw] model_quality
    #   Provides a quality assessment for a model that uses labels. If
    #   Lookout for Equipment determines that the model quality is poor
    #   based on training metrics, the value is `POOR_QUALITY_DETECTED`.
    #   Otherwise, the value is `QUALITY_THRESHOLD_MET`.
    #
    #   If the model is unlabeled, the model quality can't be assessed and
    #   the value of `ModelQuality` is `CANNOT_DETERMINE_QUALITY`. In this
    #   situation, you can get a model quality assessment by adding labels
    #   to the input dataset and retraining the model.
    #
    #   For information about using labels with your models, see
    #   [Understanding labeling][1].
    #
    #   For information about improving the quality of a model, see [Best
    #   practices with Amazon Lookout for Equipment][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html
    #   [2]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ModelSummary AWS API Documentation
    #
    class ModelSummary < Struct.new(
      :model_name,
      :model_arn,
      :dataset_name,
      :dataset_arn,
      :status,
      :created_at,
      :active_model_version,
      :active_model_version_arn,
      :latest_scheduled_retraining_status,
      :latest_scheduled_retraining_model_version,
      :latest_scheduled_retraining_start_time,
      :next_scheduled_retraining_start_date,
      :retraining_scheduler_status,
      :model_diagnostics_output_configuration,
      :model_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the specific model version.
    #
    # @!attribute [rw] model_name
    #   The name of the model that this model version is a version of.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model that this model version
    #   is a version of.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model.
    #   @return [Integer]
    #
    # @!attribute [rw] model_version_arn
    #   The Amazon Resource Name (ARN) of the model version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when this model version was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the model version.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Indicates how this model version was generated.
    #   @return [String]
    #
    # @!attribute [rw] model_quality
    #   Provides a quality assessment for a model that uses labels. If
    #   Lookout for Equipment determines that the model quality is poor
    #   based on training metrics, the value is `POOR_QUALITY_DETECTED`.
    #   Otherwise, the value is `QUALITY_THRESHOLD_MET`.
    #
    #   If the model is unlabeled, the model quality can't be assessed and
    #   the value of `ModelQuality` is `CANNOT_DETERMINE_QUALITY`. In this
    #   situation, you can get a model quality assessment by adding labels
    #   to the input dataset and retraining the model.
    #
    #   For information about improving the quality of a model, see [Best
    #   practices with Amazon Lookout for Equipment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/ModelVersionSummary AWS API Documentation
    #
    class ModelVersionSummary < Struct.new(
      :model_name,
      :model_arn,
      :model_version,
      :model_version_arn,
      :created_at,
      :status,
      :source_type,
      :model_quality)
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which the policy
    #   is being created.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   The JSON-formatted resource policy to create.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision_id
    #   A unique identifier for a revision of the resource policy.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :resource_policy,
      :policy_revision_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which the policy
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision_id
    #   A unique identifier for a revision of the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_revision_id)
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

    # Provides information about the specified retraining scheduler,
    # including model name, status, start date, frequency, and lookback
    # window.
    #
    # @!attribute [rw] model_name
    #   The name of the model that the retraining scheduler is attached to.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the model that the retraining scheduler is attached to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retraining scheduler.
    #   @return [String]
    #
    # @!attribute [rw] retraining_start_date
    #   The start date for the retraining scheduler. Lookout for Equipment
    #   truncates the time you provide to the nearest UTC day.
    #   @return [Time]
    #
    # @!attribute [rw] retraining_frequency
    #   The frequency at which the model retraining is set. This follows the
    #   [ISO 8601][1] guidelines.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601#Durations
    #   @return [String]
    #
    # @!attribute [rw] lookback_window
    #   The number of past days of data used for retraining.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/RetrainingSchedulerSummary AWS API Documentation
    #
    class RetrainingSchedulerSummary < Struct.new(
      :model_name,
      :model_arn,
      :status,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window)
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
    #   The Amazon Web Services Key Management Service (KMS key) key being
    #   used to encrypt the S3 object. Without this key, data in the bucket
    #   is not accessible.
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
    #   Indicates the number of sensors that have less than 14 days of data.
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
    #   The Amazon Resource Name (ARN) of the machine learning model being
    #   used by the inference scheduler.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the machine learning model being used by the inference
    #   scheduler.
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

    # @!attribute [rw] model_name
    #   The name of the model whose retraining scheduler you want to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartRetrainingSchedulerRequest AWS API Documentation
    #
    class StartRetrainingSchedulerRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the model whose retraining scheduler is being started.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the model whose retraining scheduler is being started.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retraining scheduler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StartRetrainingSchedulerResponse AWS API Documentation
    #
    class StartRetrainingSchedulerResponse < Struct.new(
      :model_name,
      :model_arn,
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
    #   The Amazon Resource Name (ARN) of the machine learning model used by
    #   the inference scheduler being stopped.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the machine learning model used by the inference
    #   scheduler being stopped.
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

    # @!attribute [rw] model_name
    #   The name of the model whose retraining scheduler you want to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StopRetrainingSchedulerRequest AWS API Documentation
    #
    class StopRetrainingSchedulerRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the model whose retraining scheduler is being stopped.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The ARN of the model whose retraining scheduler is being stopped.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retraining scheduler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/StopRetrainingSchedulerResponse AWS API Documentation
    #
    class StopRetrainingSchedulerResponse < Struct.new(
      :model_name,
      :model_arn,
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

    # @!attribute [rw] model_name
    #   The name of the machine learning model for which the active model
    #   version is being set.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the machine learning model for which the active model
    #   version is being set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UpdateActiveModelVersionRequest AWS API Documentation
    #
    class UpdateActiveModelVersionRequest < Struct.new(
      :model_name,
      :model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the machine learning model for which the active model
    #   version was set.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the machine learning model for
    #   which the active model version was set.
    #   @return [String]
    #
    # @!attribute [rw] current_active_version
    #   The version that is currently active of the machine learning model
    #   for which the active model version was set.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_active_version
    #   The previous version that was active of the machine learning model
    #   for which the active model version was set.
    #   @return [Integer]
    #
    # @!attribute [rw] current_active_version_arn
    #   The Amazon Resource Name (ARN) of the machine learning model version
    #   that is the current active model version.
    #   @return [String]
    #
    # @!attribute [rw] previous_active_version_arn
    #   The Amazon Resource Name (ARN) of the machine learning model version
    #   that was the previous active model version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UpdateActiveModelVersionResponse AWS API Documentation
    #
    class UpdateActiveModelVersionResponse < Struct.new(
      :model_name,
      :model_arn,
      :current_active_version,
      :previous_active_version,
      :current_active_version_arn,
      :previous_active_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] model_name
    #   The name of the model to update.
    #   @return [String]
    #
    # @!attribute [rw] labels_input_configuration
    #   Contains the configuration information for the S3 location being
    #   used to hold label data.
    #   @return [Types::LabelsInputConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the model to update.
    #   @return [String]
    #
    # @!attribute [rw] model_diagnostics_output_configuration
    #   The Amazon S3 location where you want Amazon Lookout for Equipment
    #   to save the pointwise model diagnostics for the model. You must also
    #   specify the `RoleArn` request parameter.
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UpdateModelRequest AWS API Documentation
    #
    class UpdateModelRequest < Struct.new(
      :model_name,
      :labels_input_configuration,
      :role_arn,
      :model_diagnostics_output_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the model whose retraining scheduler you want to update.
    #   @return [String]
    #
    # @!attribute [rw] retraining_start_date
    #   The start date for the retraining scheduler. Lookout for Equipment
    #   truncates the time you provide to the nearest UTC day.
    #   @return [Time]
    #
    # @!attribute [rw] retraining_frequency
    #   This parameter uses the [ISO 8601][1] standard to set the frequency
    #   at which you want retraining to occur in terms of Years, Months,
    #   and/or Days (note: other parameters like Time are not currently
    #   supported). The minimum value is 30 days (P30D) and the maximum
    #   value is 1 year (P1Y). For example, the following values are valid:
    #
    #   * P3M15D – Every 3 months and 15 days
    #
    #   * P2M – Every 2 months
    #
    #   * P150D – Every 150 days
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601#Durations
    #   @return [String]
    #
    # @!attribute [rw] lookback_window
    #   The number of past days of data that will be used for retraining.
    #   @return [String]
    #
    # @!attribute [rw] promote_mode
    #   Indicates how the service will use new models. In `MANAGED` mode,
    #   new models will automatically be used for inference if they have
    #   better performance than the current model. In `MANUAL` mode, the new
    #   models will not be used [until they are manually activated][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutequipment-2020-12-15/UpdateRetrainingSchedulerRequest AWS API Documentation
    #
    class UpdateRetrainingSchedulerRequest < Struct.new(
      :model_name,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window,
      :promote_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy constraints specified by Amazon Lookout for
    # Equipment or a related Amazon Web Services service that's being
    # utilized.
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


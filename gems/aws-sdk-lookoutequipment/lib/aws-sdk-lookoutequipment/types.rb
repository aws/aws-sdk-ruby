# frozen_string_literal: true

# This is generated code!

module Aws::LookoutEquipment
  # This module contains the types returned by client operations.
  module Types

    # <p>The request could not be completed because you do not have access to the resource.
    #       </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutoPromotionResult
      MODEL_PROMOTED = 'MODEL_PROMOTED'
      MODEL_NOT_PROMOTED = 'MODEL_NOT_PROMOTED'
      RETRAINING_INTERNAL_ERROR = 'RETRAINING_INTERNAL_ERROR'
      RETRAINING_CUSTOMER_ERROR = 'RETRAINING_CUSTOMER_ERROR'
      RETRAINING_CANCELLED = 'RETRAINING_CANCELLED'
    end

    # <p> Entity that comprises information on categorical values in data. </p>
    # @!attribute status
    #   <p> Indicates whether there is a potential data issue related to categorical values.
    #         </p>
    #   @return [String]
    # @!attribute number_of_category
    #   <p> Indicates the number of categories in the data. </p>
    #   @return [Integer]
    class CategoricalValues < Struct.new(
      :status,
      :number_of_category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The request could not be completed due to a conflict with the current state of the
    #          target resource. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises information of count and percentage. </p>
    # @!attribute count
    #   <p> Indicates the count of occurences of the given statistic. </p>
    #   @return [Integer]
    # @!attribute percentage
    #   <p> Indicates the percentage of occurances of the given statistic. </p>
    #   @return [Float]
    class CountPercent < Struct.new(
      :count,
      :percentage,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:percentage] = 0 unless options.key?(:percentage)
        super
      end
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being created. </p>
    #   @return [String]
    # @!attribute dataset_schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    #   @return [Types::DatasetSchema]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout
    #            for Equipment. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags associated with the ingested data described in the dataset. </p>
    #   @return [Array<Types::Tag>]
    class CreateDatasetRequest < Struct.new(
      :dataset_name,
      :dataset_schema,
      :server_side_kms_key_id,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being created. </p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset being created. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the <code>CreateDataset</code> operation. </p>
    #   @return [String]
    class CreateDatasetResponse < Struct.new(
      :dataset_name,
      :dataset_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the previously trained machine learning model being used to create the
    #            inference scheduler. </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being created. </p>
    #   @return [String]
    # @!attribute data_delay_offset_in_minutes
    #   <p>The interval (in minutes) of planned delay at the start of each inference segment. For
    #            example, if inference is set to run every ten minutes, the delay is set to five minutes and
    #            the time is 09:08. The inference scheduler will wake up at the configured interval (which,
    #            without a delay configured, would be 09:10) plus the additional five minute delay time (so
    #            09:15) to check your Amazon S3 bucket. The delay provides a buffer for you to upload data at the
    #            same frequency, so that you don't have to stop and restart the scheduler when uploading new
    #            data.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html">Understanding
    #               the inference process</a>.</p>
    #   @return [Integer]
    # @!attribute data_upload_frequency
    #   <p> How often data is uploaded to the source Amazon S3 bucket for the input data. The value
    #            chosen is the length of time between data uploads. For instance, if you select 5 minutes,
    #            Amazon Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This
    #            frequency also determines how often Amazon Lookout for Equipment runs inference on your data.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html">Understanding
    #               the inference process</a>.</p>
    #   @return [String]
    # @!attribute data_input_configuration
    #   <p>Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    #   @return [Types::InferenceInputConfiguration]
    # @!attribute data_output_configuration
    #   <p>Specifies configuration information for the output results for the inference scheduler,
    #            including the S3 location for the output. </p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the data source being
    #            used for the inference. </p>
    #   @return [String]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt inference scheduler data by
    #            Amazon Lookout for Equipment. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags associated with the inference scheduler. </p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference scheduler being created. </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of inference scheduler being created. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the <code>CreateInferenceScheduler</code> operation. </p>
    #   @return [String]
    # @!attribute model_quality
    #   <p>Provides a quality assessment for a model that uses labels. 
    #            If Lookout for Equipment determines that the
    #            model quality is poor based on training metrics, the value is
    #            <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is
    #            <code>QUALITY_THRESHOLD_MET</code>. </p>
    #            <p>If the model is unlabeled, the model quality can't
    #            be assessed and the value of <code>ModelQuality</code> is
    #            <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality
    #            assessment by adding labels to the input dataset and retraining the model.</p>
    #            <p>For information about using labels with your models, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html">Understanding labeling</a>.</p>
    #            <p>For information about improving the quality of a model, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html">Best practices with
    #            Amazon Lookout for Equipment</a>.</p>
    #   @return [String]
    class CreateInferenceSchedulerResponse < Struct.new(
      :inference_scheduler_arn,
      :inference_scheduler_name,
      :status,
      :model_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> Names a group of labels.</p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data. </p>
    #   @return [String]
    # @!attribute fault_codes
    #   <p> The acceptable fault codes (indicating the type of anomaly associated with the label)
    #            that can be used with this label group.</p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p> A unique identifier for the request to create a label group. If you do not set the
    #            client request token, Lookout for Equipment generates one. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> Tags that provide metadata about the label group you are creating. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [Array<Types::Tag>]
    class CreateLabelGroupRequest < Struct.new(
      :label_group_name,
      :fault_codes,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> The name of the label group that you have created. Data in this field will be retained
    #            for service usage. Follow best practices for the security of your data. </p>
    #   @return [String]
    # @!attribute label_group_arn
    #   <p> The Amazon Resource Name (ARN) of the label group that you have created. </p>
    #   @return [String]
    class CreateLabelGroupResponse < Struct.new(
      :label_group_name,
      :label_group_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> The name of a group of labels. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The start time of the labeled event. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The end time of the labeled event. </p>
    #   @return [Time]
    # @!attribute rating
    #   <p> Indicates whether a labeled event represents an anomaly. </p>
    #   @return [String]
    # @!attribute fault_code
    #   <p> Provides additional information about the label. The fault code must be defined in the
    #            FaultCodes attribute of the label group.</p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data. </p>
    #   @return [String]
    # @!attribute notes
    #   <p> Metadata providing additional information about the label. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [String]
    # @!attribute equipment
    #   <p> Indicates that a label pertains to a particular piece of equipment. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique identifier for the request to create a label. If you do not set the client
    #            request token, Lookout for Equipment generates one. </p>
    #   @return [String]
    class CreateLabelRequest < Struct.new(
      :label_group_name,
      :start_time,
      :end_time,
      :rating,
      :fault_code,
      :notes,
      :equipment,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_id
    #   <p> The ID of the label that you have created. </p>
    #   @return [String]
    class CreateLabelResponse < Struct.new(
      :label_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name for the machine learning model to be created.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset for the machine learning model being created. </p>
    #   @return [String]
    # @!attribute dataset_schema
    #   <p>The data schema for the machine learning model being created. </p>
    #   @return [Types::DatasetSchema]
    # @!attribute labels_input_configuration
    #   <p>The input configuration for the labels being used for the machine learning model that's
    #            being created. </p>
    #   @return [Types::LabelsInputConfiguration]
    # @!attribute client_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #   @return [String]
    # @!attribute training_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            training data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute training_data_end_time
    #   <p>Indicates the time reference in the dataset that should be used to end the subset of
    #            training data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute evaluation_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            evaluation data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute evaluation_data_end_time
    #   <p> Indicates the time reference in the dataset that should be used to end the subset of
    #            evaluation data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source
    #            being used to create the machine learning model. </p>
    #   @return [String]
    # @!attribute data_pre_processing_configuration
    #   <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #            the data after post processing by Amazon Lookout for Equipment. For example, if you provide data that has been
    #            collected at a 1 second level and you want the system to resample the data at a 1 minute
    #            rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the
    #            prefix "PT" to the rate you want. The value for a 1 second rate is therefore
    #               <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,
    #            and the value for a 1 hour rate is <i>PT1H</i>
    #            </p>
    #   @return [Types::DataPreProcessingConfiguration]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout
    #            for Equipment. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> Any tags associated with the machine learning model being created. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute off_condition
    #   <p>Indicates that the asset associated with this sensor has been shut off. As long as this
    #            condition is met, Lookout for Equipment will not use data from this asset for training,
    #            evaluation, or inference.</p>
    #   @return [String]
    # @!attribute model_diagnostics_output_configuration
    #   <p>The Amazon S3 location where you want Amazon Lookout for Equipment to save the pointwise model diagnostics.
    #           
    #            
    #         You must also specify the <code>RoleArn</code> request parameter.</p>
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
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
      :model_diagnostics_output_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model being created. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the <code>CreateModel</code> operation. </p>
    #   @return [String]
    class CreateModelResponse < Struct.new(
      :model_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model to add the retraining scheduler to. </p>
    #   @return [String]
    # @!attribute retraining_start_date
    #   <p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the
    #            nearest UTC day.</p>
    #   @return [Time]
    # @!attribute retraining_frequency
    #   <p>This parameter uses the <a href="https://en.wikipedia.org/wiki/ISO_8601#Durations">ISO 8601</a> standard to set the frequency at which you want retraining to occur in
    #            terms of Years, Months, and/or Days (note: other parameters like Time are not currently
    #            supported). The minimum value is 30 days (P30D) and the maximum value is 1 year (P1Y). For
    #            example, the following values are valid:</p>
    #            <ul>
    #               <li>
    #                  <p>P3M15D – Every 3 months and 15 days</p>
    #               </li>
    #               <li>
    #                  <p>P2M – Every 2 months</p>
    #               </li>
    #               <li>
    #                  <p>P150D – Every 150 days</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lookback_window
    #   <p>The number of past days of data that will be used for retraining.</p>
    #   @return [String]
    # @!attribute promote_mode
    #   <p>Indicates how the service will use new models. In <code>MANAGED</code> mode, new models
    #            will automatically be used for inference if they have better performance than the current
    #            model. In <code>MANUAL</code> mode, the new models will not be used <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation">until they
    #               are manually activated</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #   @return [String]
    class CreateRetrainingSchedulerRequest < Struct.new(
      :model_name,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window,
      :promote_mode,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model that you added the retraining scheduler to. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The ARN of the model that you added the retraining scheduler to. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the retraining scheduler. </p>
    #   @return [String]
    class CreateRetrainingSchedulerResponse < Struct.new(
      :model_name,
      :model_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a specified data ingestion job, including dataset
    #          information, data ingestion configuration, and status. </p>
    # @!attribute job_id
    #   <p>Indicates the job ID of the data ingestion job. </p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset used for the data ingestion job. </p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset used in the data ingestion job. </p>
    #   @return [String]
    # @!attribute ingestion_input_configuration
    #   <p> Specifies information for the input data for the data inference job, including data
    #               Amazon S3 location parameters. </p>
    #   @return [Types::IngestionInputConfiguration]
    # @!attribute status
    #   <p>Indicates the status of the data ingestion job. </p>
    #   @return [String]
    class DataIngestionJobSummary < Struct.new(
      :job_id,
      :dataset_name,
      :dataset_arn,
      :ingestion_input_configuration,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #          the data after post processing by Amazon Lookout for Equipment. For example, if you provide data that has been
    #          collected at a 1 second level and you want the system to resample the data at a 1 minute
    #          rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #          <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the
    #          prefix "PT" to the rate you want. The value for a 1 second rate is therefore
    #             <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,
    #          and the value for a 1 hour rate is <i>PT1H</i>
    #          </p>
    # @!attribute target_sampling_rate
    #   <p>The sampling rate of the data after post processing by Amazon Lookout for Equipment. For example, if you
    #            provide data that has been collected at a 1 second level and you want the system to
    #            resample the data at a 1 minute rate before training, the <code>TargetSamplingRate</code>
    #            is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the
    #            prefix "PT" to the rate you want. The value for a 1 second rate is therefore
    #               <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,
    #            and the value for a 1 hour rate is <i>PT1H</i>
    #            </p>
    #   @return [String]
    class DataPreProcessingConfiguration < Struct.new(
      :target_sampling_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> DataQualitySummary gives aggregated statistics over all the sensors about a completed
    #          ingestion job. It primarily gives more information about statistics over different
    #          incorrect data like MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats,
    #          InsufficientSensorData, DuplicateTimeStamps. </p>
    # @!attribute insufficient_sensor_data
    #   <p> Parameter that gives information about insufficient data for sensors in the dataset.
    #            This includes information about those sensors that have complete data missing and those
    #            with a short date range. </p>
    #   @return [Types::InsufficientSensorData]
    # @!attribute missing_sensor_data
    #   <p> Parameter that gives information about data that is missing over all the sensors in the
    #            input data. </p>
    #   @return [Types::MissingSensorData]
    # @!attribute invalid_sensor_data
    #   <p> Parameter that gives information about data that is invalid over all the sensors in the
    #            input data. </p>
    #   @return [Types::InvalidSensorData]
    # @!attribute unsupported_timestamps
    #   <p> Parameter that gives information about unsupported timestamps in the input data.
    #         </p>
    #   @return [Types::UnsupportedTimestamps]
    # @!attribute duplicate_timestamps
    #   <p> Parameter that gives information about duplicate timestamps in the input data. </p>
    #   @return [Types::DuplicateTimestamps]
    class DataQualitySummary < Struct.new(
      :insufficient_sensor_data,
      :missing_sensor_data,
      :invalid_sensor_data,
      :unsupported_timestamps,
      :duplicate_timestamps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataUploadFrequency
      PT5M = 'PT5M'
      PT10M = 'PT10M'
      PT15M = 'PT15M'
      PT30M = 'PT30M'
      PT1H = 'PT1H'
    end

    # <p>Provides information about the data schema used with the given dataset. </p>
    # @!attribute inline_data_schema
    #   <p>The data schema used within the given dataset.</p>
    #   @return [String]
    class DatasetSchema < Struct.new(
      :inline_data_schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DatasetStatus
      CREATED = 'CREATED'
      INGESTION_IN_PROGRESS = 'INGESTION_IN_PROGRESS'
      ACTIVE = 'ACTIVE'
      IMPORT_IN_PROGRESS = 'IMPORT_IN_PROGRESS'
    end

    # <p>Contains information about the specific data set, including name, ARN, and status.
    #       </p>
    # @!attribute dataset_name
    #   <p>The name of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the specified dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the dataset. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the dataset was created in Amazon Lookout for Equipment. </p>
    #   @return [Time]
    class DatasetSummary < Struct.new(
      :dataset_name,
      :dataset_arn,
      :status,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset to be deleted. </p>
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      :dataset_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be deleted. </p>
    #   @return [String]
    class DeleteInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> The name of the label group that you want to delete. Data in this field will be
    #            retained for service usage. Follow best practices for the security of your data. </p>
    #   @return [String]
    class DeleteLabelGroupRequest < Struct.new(
      :label_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> The name of the label group that contains the label that you want to delete. Data in
    #            this field will be retained for service usage. Follow best practices for the security of
    #            your data. </p>
    #   @return [String]
    # @!attribute label_id
    #   <p> The ID of the label that you want to delete. </p>
    #   @return [String]
    class DeleteLabelRequest < Struct.new(
      :label_group_name,
      :label_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the machine learning model to be deleted. </p>
    #   @return [String]
    class DeleteModelRequest < Struct.new(
      :model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the resource policy should be
    #            deleted.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model whose retraining scheduler you want to delete. </p>
    #   @return [String]
    class DeleteRetrainingSchedulerRequest < Struct.new(
      :model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job ID of the data ingestion job. </p>
    #   @return [String]
    class DescribeDataIngestionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>Indicates the job ID of the data ingestion job. </p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset being used in the data ingestion job.
    #         </p>
    #   @return [String]
    # @!attribute ingestion_input_configuration
    #   <p>Specifies the S3 location configuration for the data input for the data ingestion job.
    #         </p>
    #   @return [Types::IngestionInputConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source
    #            being ingested. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the data ingestion job was created. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>Indicates the status of the <code>DataIngestionJob</code> operation. </p>
    #   @return [String]
    # @!attribute failed_reason
    #   <p>Specifies the reason for failure when a data ingestion job has failed. </p>
    #   @return [String]
    # @!attribute data_quality_summary
    #   <p> Gives statistics about a completed ingestion job. These statistics primarily relate to
    #            quantifying incorrect data such as MissingCompleteSensorData, MissingSensorData,
    #            UnsupportedDateFormats, InsufficientSensorData, and DuplicateTimeStamps. </p>
    #   @return [Types::DataQualitySummary]
    # @!attribute ingested_files_summary
    #   <p>Gives statistics about how many files have been ingested, and which files have not been
    #            ingested, for a particular ingestion job.</p>
    #   @return [Types::IngestedFilesSummary]
    # @!attribute status_detail
    #   <p> Provides details about status of the ingestion job that is currently in progress.
    #         </p>
    #   @return [String]
    # @!attribute ingested_data_size
    #   <p> Indicates the size of the ingested dataset. </p>
    #   @return [Integer]
    # @!attribute data_start_time
    #   <p> Indicates the earliest timestamp corresponding to data that was successfully ingested
    #            during this specific ingestion job. </p>
    #   @return [Time]
    # @!attribute data_end_time
    #   <p> Indicates the latest timestamp corresponding to data that was successfully ingested
    #            during this specific ingestion job. </p>
    #   @return [Time]
    # @!attribute source_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the source dataset from which the data used for the
    #            data ingestion job was imported from.</p>
    #   @return [String]
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
      :source_dataset_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset to be described. </p>
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      :dataset_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being described. </p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset being described. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Specifies the time the dataset was created in Lookout for Equipment. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>Specifies the time the dataset was last updated, if it was. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>Indicates the status of the dataset. </p>
    #   @return [String]
    # @!attribute schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    #   @return [String]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout
    #            for Equipment. </p>
    #   @return [String]
    # @!attribute ingestion_input_configuration
    #   <p>Specifies the S3 location configuration for the data input for the data ingestion job.
    #         </p>
    #   @return [Types::IngestionInputConfiguration]
    # @!attribute data_quality_summary
    #   <p> Gives statistics associated with the given dataset for the latest successful associated
    #            ingestion job id. These statistics primarily relate to quantifying incorrect data such as
    #            MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats,
    #            InsufficientSensorData, and DuplicateTimeStamps. </p>
    #   @return [Types::DataQualitySummary]
    # @!attribute ingested_files_summary
    #   <p>IngestedFilesSummary associated with the given dataset for the latest successful
    #            associated ingestion job id. </p>
    #   @return [Types::IngestedFilesSummary]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role that you are using for this the data
    #            ingestion job. </p>
    #   @return [String]
    # @!attribute data_start_time
    #   <p> Indicates the earliest timestamp corresponding to data that was successfully ingested
    #            during the most recent ingestion of this particular dataset. </p>
    #   @return [Time]
    # @!attribute data_end_time
    #   <p> Indicates the latest timestamp corresponding to data that was successfully ingested
    #            during the most recent ingestion of this particular dataset. </p>
    #   @return [Time]
    # @!attribute source_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the source dataset from which the current data being
    #            described was imported from.</p>
    #   @return [String]
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
      :source_dataset_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being described. </p>
    #   @return [String]
    class DescribeInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model of the inference scheduler
    #            being described. </p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the machine learning model of the inference scheduler being described.
    #         </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being described. </p>
    #   @return [String]
    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference scheduler being described. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #   @return [String]
    # @!attribute data_delay_offset_in_minutes
    #   <p> A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For
    #            example, if five minutes is selected, the inference scheduler will wake up at the
    #            configured frequency with the additional five minute delay time to check the customer S3
    #            bucket. The customer can upload data at the same frequency and they don't need to stop and
    #            restart the scheduler when uploading new data.</p>
    #   @return [Integer]
    # @!attribute data_upload_frequency
    #   <p>Specifies how often data is uploaded to the source S3 bucket for the input data. This
    #            value is the length of time between data uploads. For instance, if you select 5 minutes,
    #            Amazon Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This
    #            frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In
    #            this example, it starts once every 5 minutes. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Specifies the time at which the inference scheduler was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Specifies the time at which the inference scheduler was last updated, if it was. </p>
    #   @return [Time]
    # @!attribute data_input_configuration
    #   <p> Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    #   @return [Types::InferenceInputConfiguration]
    # @!attribute data_output_configuration
    #   <p> Specifies information for the output results for the inference scheduler, including
    #            the output S3 location. </p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the inference scheduler being described. </p>
    #   @return [String]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt inference scheduler data by
    #            Amazon Lookout for Equipment. </p>
    #   @return [String]
    # @!attribute latest_inference_result
    #   <p>Indicates whether the latest execution for the inference scheduler was Anomalous
    #            (anomalous events found) or Normal (no anomalous events found).</p>
    #   @return [String]
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
      :latest_inference_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> Returns the name of the label group. </p>
    #   @return [String]
    class DescribeLabelGroupRequest < Struct.new(
      :label_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> The name of the label group. </p>
    #   @return [String]
    # @!attribute label_group_arn
    #   <p> The Amazon Resource Name (ARN) of the label group. </p>
    #   @return [String]
    # @!attribute fault_codes
    #   <p> Codes indicating the type of anomaly associated with the labels in the lagbel group.
    #         </p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p> The time at which the label group was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The time at which the label group was updated. </p>
    #   @return [Time]
    class DescribeLabelGroupResponse < Struct.new(
      :label_group_name,
      :label_group_arn,
      :fault_codes,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> Returns the name of the group containing the label. </p>
    #   @return [String]
    # @!attribute label_id
    #   <p> Returns the ID of the label. </p>
    #   @return [String]
    class DescribeLabelRequest < Struct.new(
      :label_group_name,
      :label_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> The name of the requested label group. </p>
    #   @return [String]
    # @!attribute label_group_arn
    #   <p> The Amazon Resource Name (ARN) of the requested label group. </p>
    #   @return [String]
    # @!attribute label_id
    #   <p> The ID of the requested label. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The start time of the requested label. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The end time of the requested label. </p>
    #   @return [Time]
    # @!attribute rating
    #   <p> Indicates whether a labeled event represents an anomaly. </p>
    #   @return [String]
    # @!attribute fault_code
    #   <p> Indicates the type of anomaly associated with the label. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [String]
    # @!attribute notes
    #   <p>Metadata providing additional information about the label.</p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [String]
    # @!attribute equipment
    #   <p> Indicates that a label pertains to a particular piece of equipment. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time at which the label was created. </p>
    #   @return [Time]
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
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the machine learning model to be described. </p>
    #   @return [String]
    class DescribeModelRequest < Struct.new(
      :model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the machine learning model being described. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model being described. </p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset being used by the machine learning being described. </p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resouce Name (ARN) of the dataset used to create the machine learning model
    #            being described. </p>
    #   @return [String]
    # @!attribute schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    #   @return [String]
    # @!attribute labels_input_configuration
    #   <p>Specifies configuration information about the labels input, including its S3 location.
    #         </p>
    #   @return [Types::LabelsInputConfiguration]
    # @!attribute training_data_start_time
    #   <p> Indicates the time reference in the dataset that was used to begin the subset of
    #            training data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute training_data_end_time
    #   <p> Indicates the time reference in the dataset that was used to end the subset of training
    #            data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute evaluation_data_start_time
    #   <p> Indicates the time reference in the dataset that was used to begin the subset of
    #            evaluation data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute evaluation_data_end_time
    #   <p> Indicates the time reference in the dataset that was used to end the subset of
    #            evaluation data for the machine learning model. </p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the machine learning model being described. </p>
    #   @return [String]
    # @!attribute data_pre_processing_configuration
    #   <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #            the data after post processing by Amazon Lookout for Equipment. For example, if you provide data that has been
    #            collected at a 1 second level and you want the system to resample the data at a 1 minute
    #            rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the
    #            prefix "PT" to the rate you want. The value for a 1 second rate is therefore
    #               <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,
    #            and the value for a 1 hour rate is <i>PT1H</i>
    #            </p>
    #   @return [Types::DataPreProcessingConfiguration]
    # @!attribute status
    #   <p>Specifies the current status of the model being described. Status describes the status
    #            of the most recent action of the model. </p>
    #   @return [String]
    # @!attribute training_execution_start_time
    #   <p>Indicates the time at which the training of the machine learning model began. </p>
    #   @return [Time]
    # @!attribute training_execution_end_time
    #   <p>Indicates the time at which the training of the machine learning model was completed.
    #         </p>
    #   @return [Time]
    # @!attribute failed_reason
    #   <p>If the training of the machine learning model failed, this indicates the reason for that
    #            failure. </p>
    #   @return [String]
    # @!attribute model_metrics
    #   <p>The Model Metrics show an aggregated summary of the model's performance within the
    #            evaluation time range. This is the JSON content of the metrics created when evaluating the
    #            model. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Indicates the last time the machine learning model was updated. The type of update is
    #            not specified. </p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>Indicates the time and date at which the machine learning model was created. </p>
    #   @return [Time]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout
    #            for Equipment. </p>
    #   @return [String]
    # @!attribute off_condition
    #   <p>Indicates that the asset associated with this sensor has been shut off. As long as this
    #            condition is met, Lookout for Equipment will not use data from this asset for training, evaluation, or
    #            inference.</p>
    #   @return [String]
    # @!attribute source_model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the source model version. This field appears if the
    #            active model version was imported.</p>
    #   @return [String]
    # @!attribute import_job_start_time
    #   <p>The date and time when the import job was started. This field appears if the active
    #            model version was imported.</p>
    #   @return [Time]
    # @!attribute import_job_end_time
    #   <p>The date and time when the import job was completed. This field appears if the active
    #            model version was imported.</p>
    #   @return [Time]
    # @!attribute active_model_version
    #   <p>The name of the model version used by the inference schedular when running a scheduled
    #            inference execution.</p>
    #   @return [Integer]
    # @!attribute active_model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version used by the inference scheduler when
    #            running a scheduled inference execution.</p>
    #   @return [String]
    # @!attribute model_version_activated_at
    #   <p>The date the active model version was activated.</p>
    #   @return [Time]
    # @!attribute previous_active_model_version
    #   <p>The model version that was set as the active model version prior to the current active
    #            model version.</p>
    #   @return [Integer]
    # @!attribute previous_active_model_version_arn
    #   <p>The ARN of the model version that was set as the active model version prior to the
    #            current active model version.</p>
    #   @return [String]
    # @!attribute previous_model_version_activated_at
    #   <p>The date and time when the previous active model version was activated.</p>
    #   @return [Time]
    # @!attribute prior_model_metrics
    #   <p>If the model version was retrained, this field shows a summary of the performance of the
    #            prior model on the new training range. You can use the information in this JSON-formatted
    #            object to compare the new model version and the prior model version.</p>
    #   @return [String]
    # @!attribute latest_scheduled_retraining_failed_reason
    #   <p>If the model version was generated by retraining and the training failed, this indicates
    #            the reason for that failure. </p>
    #   @return [String]
    # @!attribute latest_scheduled_retraining_status
    #   <p>Indicates the status of the most recent scheduled retraining run. </p>
    #   @return [String]
    # @!attribute latest_scheduled_retraining_model_version
    #   <p>Indicates the most recent model version that was generated by retraining. </p>
    #   @return [Integer]
    # @!attribute latest_scheduled_retraining_start_time
    #   <p>Indicates the start time of the most recent scheduled retraining run. </p>
    #   @return [Time]
    # @!attribute latest_scheduled_retraining_available_data_in_days
    #   <p>Indicates the number of days of data used in the most recent scheduled retraining run.
    #         </p>
    #   @return [Integer]
    # @!attribute next_scheduled_retraining_start_date
    #   <p>Indicates the date and time that the next scheduled retraining run will start on. Lookout for Equipment
    #            truncates the time you provide to the nearest UTC day.</p>
    #   @return [Time]
    # @!attribute accumulated_inference_data_start_time
    #   <p>Indicates the start time of the inference data that has been accumulated. </p>
    #   @return [Time]
    # @!attribute accumulated_inference_data_end_time
    #   <p>Indicates the end time of the inference data that has been accumulated. </p>
    #   @return [Time]
    # @!attribute retraining_scheduler_status
    #   <p>Indicates the status of the retraining scheduler. </p>
    #   @return [String]
    # @!attribute model_diagnostics_output_configuration
    #   <p>Configuration information for the model's pointwise model diagnostics.</p>
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    # @!attribute model_quality
    #   <p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the
    #            model quality is poor based on training metrics, the value is
    #            <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is
    #            <code>QUALITY_THRESHOLD_MET</code>.</p>
    #            <p>If the model is unlabeled, the model quality can't
    #            be assessed and the value of <code>ModelQuality</code> is
    #            <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality
    #            assessment by adding labels to the input dataset and retraining the model.</p>
    #            <p>For information about using labels with your models, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html">Understanding labeling</a>.</p>
    #            <p>For information about improving the quality of a model, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html">Best practices with
    #            Amazon Lookout for Equipment</a>.</p>
    #   @return [String]
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
      :model_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the machine learning model that this version belongs to.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the machine learning model.</p>
    #   @return [Integer]
    class DescribeModelVersionRequest < Struct.new(
      :model_name,
      :model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the machine learning model that this version belongs to.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the parent machine learning model that this version
    #            belong to.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the machine learning model.</p>
    #   @return [Integer]
    # @!attribute model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the model version.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Indicates whether this model version was created by training or by importing.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset used to train the model version.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset used to train the model version.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The schema of the data used to train the model version.</p>
    #   @return [String]
    # @!attribute labels_input_configuration
    #   <p>Contains the configuration information for the S3 location being used to hold label
    #            data. </p>
    #   @return [Types::LabelsInputConfiguration]
    # @!attribute training_data_start_time
    #   <p>The date on which the training data began being gathered. If you imported the version,
    #            this is the date that the training data in the source version began being gathered.</p>
    #   @return [Time]
    # @!attribute training_data_end_time
    #   <p>The date on which the training data finished being gathered. If you imported the
    #            version, this is the date that the training data in the source version finished being
    #            gathered.</p>
    #   @return [Time]
    # @!attribute evaluation_data_start_time
    #   <p>The date on which the data in the evaluation set began being gathered. If you imported
    #            the version, this is the date that the evaluation set data in the source version began
    #            being gathered.</p>
    #   @return [Time]
    # @!attribute evaluation_data_end_time
    #   <p>The date on which the data in the evaluation set began being gathered. If you imported
    #            the version, this is the date that the evaluation set data in the source version finished
    #            being gathered.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that was used to train the model
    #            version.</p>
    #   @return [String]
    # @!attribute data_pre_processing_configuration
    #   <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #            the data after post processing by Amazon Lookout for Equipment. For example, if you provide data that has been
    #            collected at a 1 second level and you want the system to resample the data at a 1 minute
    #            rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach the
    #            prefix "PT" to the rate you want. The value for a 1 second rate is therefore
    #               <i>PT1S</i>, the value for a 15 minute rate is <i>PT15M</i>,
    #            and the value for a 1 hour rate is <i>PT1H</i>
    #            </p>
    #   @return [Types::DataPreProcessingConfiguration]
    # @!attribute training_execution_start_time
    #   <p>The time when the training of the version began.</p>
    #   @return [Time]
    # @!attribute training_execution_end_time
    #   <p>The time when the training of the version completed.</p>
    #   @return [Time]
    # @!attribute failed_reason
    #   <p>The failure message if the training of the model version failed.</p>
    #   @return [String]
    # @!attribute model_metrics
    #   <p>Shows an aggregated summary, in JSON format, of the model's performance within the
    #            evaluation time range. These metrics are created when evaluating the model.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Indicates the last time the machine learning model version was updated.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>Indicates the time and date at which the machine learning model version was
    #            created.</p>
    #   @return [Time]
    # @!attribute server_side_kms_key_id
    #   <p>The identifier of the KMS key key used to encrypt model version data by
    #            Amazon Lookout for Equipment.</p>
    #   @return [String]
    # @!attribute off_condition
    #   <p>Indicates that the asset associated with this sensor has been shut off. As long as this
    #            condition is met, Lookout for Equipment will not use data from this asset for training,
    #            evaluation, or inference.</p>
    #   @return [String]
    # @!attribute source_model_version_arn
    #   <p>If model version was imported, then this field is the arn of the source model
    #            version.</p>
    #   @return [String]
    # @!attribute import_job_start_time
    #   <p>The date and time when the import job began. This field appears if the model version was
    #            imported.</p>
    #   @return [Time]
    # @!attribute import_job_end_time
    #   <p>The date and time when the import job completed. This field appears if the model version
    #            was imported.</p>
    #   @return [Time]
    # @!attribute imported_data_size_in_bytes
    #   <p>The size in bytes of the imported data. This field appears if the model version was
    #            imported.</p>
    #   @return [Integer]
    # @!attribute prior_model_metrics
    #   <p>If the model version was retrained, this field shows a summary of the performance of the
    #            prior model on the new training range. You can use the information in this JSON-formatted
    #            object to compare the new model version and the prior model version.</p>
    #   @return [String]
    # @!attribute retraining_available_data_in_days
    #   <p>Indicates the number of days of data used in the most recent scheduled retraining run.
    #         </p>
    #   @return [Integer]
    # @!attribute auto_promotion_result
    #   <p>Indicates whether the model version was promoted to be the active version after
    #            retraining or if there was an error with or cancellation of the retraining. </p>
    #   @return [String]
    # @!attribute auto_promotion_result_reason
    #   <p>Indicates the reason for the <code>AutoPromotionResult</code>. For example, a model
    #            might not be promoted if its performance was worse than the active version, if there was an
    #            error during training, or if the retraining scheduler was using <code>MANUAL</code> promote
    #            mode. The model will be promoted in <code>MANAGED</code> promote mode if the performance is
    #            better than the previous model. </p>
    #   @return [String]
    # @!attribute model_diagnostics_output_configuration
    #   <p>The Amazon S3 location where Amazon Lookout for Equipment saves the pointwise model diagnostics for the model version.</p>
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    # @!attribute model_diagnostics_results_object
    #   <p>The Amazon S3 output prefix for where Lookout for Equipment saves the pointwise model diagnostics for the model version.</p>
    #   @return [Types::S3Object]
    # @!attribute model_quality
    #   <p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the
    #            model quality is poor based on training metrics, the value is
    #            <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is
    #            <code>QUALITY_THRESHOLD_MET</code>.</p>
    #            <p>If the model is unlabeled, the model quality can't
    #            be assessed and the value of <code>ModelQuality</code> is
    #            <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality
    #            assessment by adding labels to the input dataset and retraining the model.</p>
    #            <p>For information about using labels with your models, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html">Understanding labeling</a>.</p>
    #            <p>For information about improving the quality of a model, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html">Best practices with
    #            Amazon Lookout for Equipment</a>.</p>
    #   @return [String]
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
      :model_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that is associated with the resource
    #            policy.</p>
    #   @return [String]
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_revision_id
    #   <p>A unique identifier for a revision of the resource policy.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>The resource policy in a JSON-formatted string.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the resource policy was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time when the resource policy was last modified.</p>
    #   @return [Time]
    class DescribeResourcePolicyResponse < Struct.new(
      :policy_revision_id,
      :resource_policy,
      :creation_time,
      :last_modified_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model that the retraining scheduler is attached to. </p>
    #   @return [String]
    class DescribeRetrainingSchedulerRequest < Struct.new(
      :model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model that the retraining scheduler is attached to. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The ARN of the model that the retraining scheduler is attached to. </p>
    #   @return [String]
    # @!attribute retraining_start_date
    #   <p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the
    #            nearest UTC day.</p>
    #   @return [Time]
    # @!attribute retraining_frequency
    #   <p>The frequency at which the model retraining is set. This follows the <a href="https://en.wikipedia.org/wiki/ISO_8601#Durations">ISO 8601</a>
    #            guidelines.</p>
    #   @return [String]
    # @!attribute lookback_window
    #   <p>The number of past days of data used for retraining.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the retraining scheduler. </p>
    #   @return [String]
    # @!attribute promote_mode
    #   <p>Indicates how the service uses new models. In <code>MANAGED</code> mode, new models are
    #            used for inference if they have better performance than the current model. In
    #               <code>MANUAL</code> mode, the new models are not used until they are <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation">manually
    #               activated</a>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Indicates the time and date at which the retraining scheduler was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Indicates the time and date at which the retraining scheduler was updated. </p>
    #   @return [Time]
    class DescribeRetrainingSchedulerResponse < Struct.new(
      :model_name,
      :model_arn,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window,
      :status,
      :promote_mode,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises information abount duplicate timestamps in the dataset. </p>
    # @!attribute total_number_of_duplicate_timestamps
    #   <p> Indicates the total number of duplicate timestamps. </p>
    #   @return [Integer]
    class DuplicateTimestamps < Struct.new(
      :total_number_of_duplicate_timestamps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to import.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the machine learning dataset to be created. If the dataset already exists,
    #            Amazon Lookout for Equipment overwrites the existing dataset. If you don't specify this field, it is filled
    #            with the name of the source dataset.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for the request. If you do not set the client request token,
    #            Amazon Lookout for Equipment generates one. </p>
    #   @return [String]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key key used to encrypt model data by Amazon Lookout for Equipment.
    #         </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags associated with the dataset to be created.</p>
    #   @return [Array<Types::Tag>]
    class ImportDatasetRequest < Struct.new(
      :source_dataset_arn,
      :dataset_name,
      :client_token,
      :server_side_kms_key_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the created machine learning dataset.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that was imported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the <code>ImportDataset</code> operation.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>A unique identifier for the job of importing the dataset.</p>
    #   @return [String]
    class ImportDatasetResponse < Struct.new(
      :dataset_name,
      :dataset_arn,
      :status,
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version to import.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name for the machine learning model to be created. If the model already exists,
    #            Amazon Lookout for Equipment creates a new version. If you do not specify this field, it is filled with the
    #            name of the source model.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset for the machine learning model being imported. </p>
    #   @return [String]
    # @!attribute labels_input_configuration
    #   <p>Contains the configuration information for the S3 location being used to hold label
    #            data. </p>
    #   @return [Types::LabelsInputConfiguration]
    # @!attribute client_token
    #   <p>A unique identifier for the request. If you do not set the client request token,
    #            Amazon Lookout for Equipment generates one. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the data source being
    #            used to create the machine learning model. </p>
    #   @return [String]
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key key used to encrypt model data by Amazon Lookout for Equipment.
    #         </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the machine learning model to be created. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute inference_data_import_strategy
    #   <p>Indicates how to import the accumulated inference data when a model version is imported.
    #            The possible values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>NO_IMPORT – Don't import the data.</p>
    #               </li>
    #               <li>
    #                  <p>ADD_WHEN_EMPTY – Only import the data from the source model if there is no
    #                  existing data in the target model.</p>
    #               </li>
    #               <li>
    #                  <p>OVERWRITE – Import the data from the source model and overwrite the
    #                  existing data in the target model.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ImportModelVersionRequest < Struct.new(
      :source_model_version_arn,
      :model_name,
      :dataset_name,
      :labels_input_configuration,
      :client_token,
      :role_arn,
      :server_side_kms_key_id,
      :tags,
      :inference_data_import_strategy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name for the machine learning model.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model being created. </p>
    #   @return [String]
    # @!attribute model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version being created. </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model being created.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the <code>ImportModelVersion</code> operation. </p>
    #   @return [String]
    class ImportModelVersionResponse < Struct.new(
      :model_name,
      :model_arn,
      :model_version_arn,
      :model_version,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InferenceDataImportStrategy
      NO_IMPORT = 'NO_IMPORT'
      ADD_WHEN_EMPTY = 'ADD_WHEN_EMPTY'
      OVERWRITE = 'OVERWRITE'
    end

    # <p>Contains information about the specific inference event, including start and end time,
    #          diagnostics information, event duration and so on.</p>
    # @!attribute inference_scheduler_arn
    #   <p> The Amazon Resource Name (ARN) of the inference scheduler being used for the inference
    #            event. </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being used for the inference events. </p>
    #   @return [String]
    # @!attribute event_start_time
    #   <p>Indicates the starting time of an inference event. </p>
    #   @return [Time]
    # @!attribute event_end_time
    #   <p>Indicates the ending time of an inference event. </p>
    #   @return [Time]
    # @!attribute diagnostics
    #   <p> An array which specifies the names and values of all sensors contributing to an
    #            inference event.</p>
    #   @return [String]
    # @!attribute event_duration_in_seconds
    #   <p> Indicates the size of an inference event in seconds. </p>
    #   @return [Integer]
    class InferenceEventSummary < Struct.new(
      :inference_scheduler_arn,
      :inference_scheduler_name,
      :event_start_time,
      :event_end_time,
      :diagnostics,
      :event_duration_in_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InferenceExecutionStatus
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
    end

    # <p>Contains information about the specific inference execution, including input and output
    #          data configuration, inference scheduling information, status, and so on. </p>
    # @!attribute model_name
    #   <p>The name of the machine learning model being used for the inference execution. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model used for the inference
    #            execution. </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being used for the inference execution. </p>
    #   @return [String]
    # @!attribute inference_scheduler_arn
    #   <p> The Amazon Resource Name (ARN) of the inference scheduler being used for the inference
    #            execution. </p>
    #   @return [String]
    # @!attribute scheduled_start_time
    #   <p>Indicates the start time at which the inference scheduler began the specific inference
    #            execution. </p>
    #   @return [Time]
    # @!attribute data_start_time
    #   <p>Indicates the time reference in the dataset at which the inference execution began.
    #         </p>
    #   @return [Time]
    # @!attribute data_end_time
    #   <p>Indicates the time reference in the dataset at which the inference execution stopped.
    #         </p>
    #   @return [Time]
    # @!attribute data_input_configuration
    #   <p> Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    #   @return [Types::InferenceInputConfiguration]
    # @!attribute data_output_configuration
    #   <p> Specifies configuration information for the output results from for the inference
    #            execution, including the output Amazon S3 location.
    #         </p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute customer_result_object
    #   <p>The S3 object that the inference execution results were uploaded to.</p>
    #   @return [Types::S3Object]
    # @!attribute status
    #   <p>Indicates the status of the inference execution. </p>
    #   @return [String]
    # @!attribute failed_reason
    #   <p> Specifies the reason for failure when an inference execution has failed. </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The model version used for the inference execution.</p>
    #   @return [Integer]
    # @!attribute model_version_arn
    #   <p>The Amazon Resource Number (ARN) of the model version used for the inference
    #            execution.</p>
    #   @return [String]
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
      :model_version_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies configuration information for the input data for the inference, including
    #             Amazon S3 location of input data.. </p>
    # @!attribute s3_input_configuration
    #   <p> Specifies configuration information for the input data for the inference, including
    #               Amazon S3 location of input data.</p>
    #   @return [Types::InferenceS3InputConfiguration]
    # @!attribute input_time_zone_offset
    #   <p>Indicates the difference between your time zone and Coordinated Universal Time
    #            (UTC).</p>
    #   @return [String]
    # @!attribute inference_input_name_configuration
    #   <p>Specifies configuration information for the input data for the inference, including
    #            timestamp format and delimiter. </p>
    #   @return [Types::InferenceInputNameConfiguration]
    class InferenceInputConfiguration < Struct.new(
      :s3_input_configuration,
      :input_time_zone_offset,
      :inference_input_name_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies configuration information for the input data for the inference, including
    #          timestamp format and delimiter. </p>
    # @!attribute timestamp_format
    #   <p>The format of the timestamp, whether Epoch time, or standard, with or without hyphens
    #            (-). </p>
    #   @return [String]
    # @!attribute component_timestamp_delimiter
    #   <p>Indicates the delimiter character used between items in the data. </p>
    #   @return [String]
    class InferenceInputNameConfiguration < Struct.new(
      :timestamp_format,
      :component_timestamp_delimiter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies configuration information for the output results from for the inference,
    #          including KMS key ID and output S3 location. </p>
    # @!attribute s3_output_configuration
    #   <p> Specifies configuration information for the output results from for the inference,
    #            output S3 location. </p>
    #   @return [Types::InferenceS3OutputConfiguration]
    # @!attribute kms_key_id
    #   <p>The ID number for the KMS key key used to encrypt the inference output. </p>
    #   @return [String]
    class InferenceOutputConfiguration < Struct.new(
      :s3_output_configuration,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies configuration information for the input data for the inference, including
    #          input data S3 location. </p>
    # @!attribute bucket
    #   <p>The bucket containing the input dataset for the inference. </p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix for the S3 bucket used for the input data for the inference. </p>
    #   @return [String]
    class InferenceS3InputConfiguration < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies configuration information for the output results from the inference,
    #          including output S3 location. </p>
    # @!attribute bucket
    #   <p> The bucket containing the output results from the inference </p>
    #   @return [String]
    # @!attribute prefix
    #   <p> The prefix for the S3 bucket used for the output results from the inference. </p>
    #   @return [String]
    class InferenceS3OutputConfiguration < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InferenceSchedulerStatus
      PENDING = 'PENDING'
      RUNNING = 'RUNNING'
      STOPPING = 'STOPPING'
      STOPPED = 'STOPPED'
    end

    # <p>Contains information about the specific inference scheduler, including data delay
    #          offset, model name and ARN, status, and so on. </p>
    # @!attribute model_name
    #   <p>The name of the machine learning model used for the inference scheduler. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p> The Amazon Resource Name (ARN) of the machine learning model used by the inference
    #            scheduler. </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler. </p>
    #   @return [String]
    # @!attribute inference_scheduler_arn
    #   <p> The Amazon Resource Name (ARN) of the inference scheduler. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #   @return [String]
    # @!attribute data_delay_offset_in_minutes
    #   <p>A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if an offset delay time of five minutes was selected, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For
    #            example, if five minutes is selected, the inference scheduler will wake up at the
    #            configured frequency with the additional five minute delay time to check the customer S3
    #            bucket. The customer can upload data at the same frequency and they don't need to stop and
    #            restart the scheduler when uploading new data. </p>
    #   @return [Integer]
    # @!attribute data_upload_frequency
    #   <p>How often data is uploaded to the source S3 bucket for the input data. This value is the
    #            length of time between data uploads. For instance, if you select 5 minutes, Amazon Lookout
    #            for Equipment will upload the real-time data to the source bucket once every 5 minutes.
    #            This frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on your
    #            data. In this example, it starts once every 5 minutes. </p>
    #   @return [String]
    # @!attribute latest_inference_result
    #   <p>Indicates whether the latest execution for the inference scheduler was Anomalous
    #            (anomalous events found) or Normal (no anomalous events found).</p>
    #   @return [String]
    class InferenceSchedulerSummary < Struct.new(
      :model_name,
      :model_arn,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :latest_inference_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Gives statistics about how many files have been ingested, and which files have not been
    #          ingested, for a particular ingestion job.</p>
    # @!attribute total_number_of_files
    #   <p>Indicates the total number of files that were submitted for ingestion.</p>
    #   @return [Integer]
    # @!attribute ingested_number_of_files
    #   <p>Indicates the number of files that were successfully ingested.</p>
    #   @return [Integer]
    # @!attribute discarded_files
    #   <p>Indicates the number of files that were discarded. A file could be discarded because its
    #            format is invalid (for example, a jpg or pdf) or not readable.</p>
    #   @return [Array<Types::S3Object>]
    class IngestedFilesSummary < Struct.new(
      :total_number_of_files,
      :ingested_number_of_files,
      :discarded_files,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies configuration information for the input data for the data ingestion job,
    #          including input data S3 location. </p>
    # @!attribute s3_input_configuration
    #   <p>The location information for the S3 bucket used for input data for the data ingestion.
    #         </p>
    #   @return [Types::IngestionS3InputConfiguration]
    class IngestionInputConfiguration < Struct.new(
      :s3_input_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IngestionJobStatus
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
      IMPORT_IN_PROGRESS = 'IMPORT_IN_PROGRESS'
    end

    # <p> Specifies S3 configuration information for the input data for the data ingestion job.
    #       </p>
    # @!attribute bucket
    #   <p>The name of the S3 bucket used for the input data for the data ingestion. </p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix for the S3 location being used for the input data for the data ingestion.
    #         </p>
    #   @return [String]
    # @!attribute key_pattern
    #   <p> The pattern for matching the Amazon S3 files that will be used for ingestion.
    #            If the schema was created previously without any KeyPattern, then the default KeyPattern
    #            {prefix}/{component_name}/* is used to download files from Amazon S3 according to
    #            the schema. This field is required when ingestion is being done for the first time.</p>
    #            <p>Valid Values: {prefix}/{component_name}_* | {prefix}/{component_name}/* |
    #            {prefix}/{component_name}[DELIMITER]* (Allowed delimiters : space, dot, underscore,
    #            hyphen)</p>
    #   @return [String]
    class IngestionS3InputConfiguration < Struct.new(
      :bucket,
      :prefix,
      :key_pattern,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises aggregated information on sensors having insufficient data.
    #       </p>
    # @!attribute missing_complete_sensor_data
    #   <p> Parameter that describes the total number of sensors that have data completely missing
    #            for it. </p>
    #   @return [Types::MissingCompleteSensorData]
    # @!attribute sensors_with_short_date_range
    #   <p> Parameter that describes the total number of sensors that have a short date range of
    #            less than 14 days of data overall. </p>
    #   @return [Types::SensorsWithShortDateRange]
    class InsufficientSensorData < Struct.new(
      :missing_complete_sensor_data,
      :sensors_with_short_date_range,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Processing of the request has failed because of an unknown error, exception or failure.
    #       </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises aggregated information on sensors having insufficient data.
    #       </p>
    # @!attribute affected_sensor_count
    #   <p> Indicates the number of sensors that have at least some invalid values. </p>
    #   @return [Integer]
    # @!attribute total_number_of_invalid_values
    #   <p> Indicates the total number of invalid values across all the sensors. </p>
    #   @return [Integer]
    class InvalidSensorData < Struct.new(
      :affected_sensor_count,
      :total_number_of_invalid_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains information about the label group. </p>
    # @!attribute label_group_name
    #   <p> The name of the label group. </p>
    #   @return [String]
    # @!attribute label_group_arn
    #   <p> The Amazon Resource Name (ARN) of the label group. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time at which the label group was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The time at which the label group was updated. </p>
    #   @return [Time]
    class LabelGroupSummary < Struct.new(
      :label_group_name,
      :label_group_arn,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LabelRating
      ANOMALY = 'ANOMALY'
      NO_ANOMALY = 'NO_ANOMALY'
      NEUTRAL = 'NEUTRAL'
    end

    # <p> Information about the label. </p>
    # @!attribute label_group_name
    #   <p> The name of the label group. </p>
    #   @return [String]
    # @!attribute label_id
    #   <p> The ID of the label. </p>
    #   @return [String]
    # @!attribute label_group_arn
    #   <p> The Amazon Resource Name (ARN) of the label group. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The timestamp indicating the start of the label. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The timestamp indicating the end of the label. </p>
    #   @return [Time]
    # @!attribute rating
    #   <p> Indicates whether a labeled event represents an anomaly. </p>
    #   @return [String]
    # @!attribute fault_code
    #   <p> Indicates the type of anomaly associated with the label. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [String]
    # @!attribute equipment
    #   <p> Indicates that a label pertains to a particular piece of equipment. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time at which the label was created. </p>
    #   @return [Time]
    class LabelSummary < Struct.new(
      :label_group_name,
      :label_id,
      :label_group_arn,
      :start_time,
      :end_time,
      :rating,
      :fault_code,
      :equipment,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the configuration information for the S3 location being used to hold label
    #          data. </p>
    # @!attribute s3_input_configuration
    #   <p>Contains location information for the S3 location being used for label data. </p>
    #   @return [Types::LabelsS3InputConfiguration]
    # @!attribute label_group_name
    #   <p> The name of the label group to be used for label data. </p>
    #   @return [String]
    class LabelsInputConfiguration < Struct.new(
      :s3_input_configuration,
      :label_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The location information (prefix and bucket name) for the s3 location being used for
    #          label data. </p>
    # @!attribute bucket
    #   <p>The name of the S3 bucket holding the label data. </p>
    #   @return [String]
    # @!attribute prefix
    #   <p> The prefix for the S3 bucket used for the label data. </p>
    #   @return [String]
    class LabelsS3InputConfiguration < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises information on large gaps between consecutive timestamps in data.
    #       </p>
    # @!attribute status
    #   <p> Indicates whether there is a potential data issue related to large gaps in timestamps.
    #         </p>
    #   @return [String]
    # @!attribute number_of_large_timestamp_gaps
    #   <p> Indicates the number of large timestamp gaps, if there are any. </p>
    #   @return [Integer]
    # @!attribute max_timestamp_gap_in_days
    #   <p> Indicates the size of the largest timestamp gap, in days. </p>
    #   @return [Integer]
    class LargeTimestampGaps < Struct.new(
      :status,
      :number_of_large_timestamp_gaps,
      :max_timestamp_gap_in_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LatestInferenceResult
      ANOMALOUS = 'ANOMALOUS'
      NORMAL = 'NORMAL'
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being used for the data ingestion job. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An opaque pagination token indicating where to continue the listing of data ingestion
    #            jobs. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of data ingestion jobs to list. </p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Indicates the status of the data ingestion job. </p>
    #   @return [String]
    class ListDataIngestionJobsRequest < Struct.new(
      :dataset_name,
      :next_token,
      :max_results,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of data ingestion
    #            jobs. </p>
    #   @return [String]
    # @!attribute data_ingestion_job_summaries
    #   <p>Specifies information about the specific data ingestion job, including dataset name and
    #            status. </p>
    #   @return [Array<Types::DataIngestionJobSummary>]
    class ListDataIngestionJobsResponse < Struct.new(
      :next_token,
      :data_ingestion_job_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of datasets.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of datasets to list. </p>
    #   @return [Integer]
    # @!attribute dataset_name_begins_with
    #   <p>The beginning of the name of the datasets to be listed. </p>
    #   @return [String]
    class ListDatasetsRequest < Struct.new(
      :next_token,
      :max_results,
      :dataset_name_begins_with,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of datasets.
    #         </p>
    #   @return [String]
    # @!attribute dataset_summaries
    #   <p>Provides information about the specified dataset, including creation time, dataset ARN,
    #            and status. </p>
    #   @return [Array<Types::DatasetSummary>]
    class ListDatasetsResponse < Struct.new(
      :next_token,
      :dataset_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token indicating where to continue the listing of inference
    #            events.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of inference events to list. </p>
    #   @return [Integer]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler for the inference events listed. </p>
    #   @return [String]
    # @!attribute interval_start_time
    #   <p> Lookout for Equipment will return all the inference events with an end time equal to or greater than
    #            the start time given.</p>
    #   @return [Time]
    # @!attribute interval_end_time
    #   <p>Returns all the inference events with an end start time equal to or greater than less
    #            than the end time given.</p>
    #   @return [Time]
    class ListInferenceEventsRequest < Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name,
      :interval_start_time,
      :interval_end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token indicating where to continue the listing of inference
    #            executions. </p>
    #   @return [String]
    # @!attribute inference_event_summaries
    #   <p>Provides an array of information about the individual inference events returned from the
    #               <code>ListInferenceEvents</code> operation, including scheduler used, event start time,
    #            event end time, diagnostics, and so on. </p>
    #   @return [Array<Types::InferenceEventSummary>]
    class ListInferenceEventsResponse < Struct.new(
      :next_token,
      :inference_event_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token indicating where to continue the listing of inference
    #            executions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of inference executions to list. </p>
    #   @return [Integer]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler for the inference execution listed. </p>
    #   @return [String]
    # @!attribute data_start_time_after
    #   <p>The time reference in the inferenced dataset after which Amazon Lookout for Equipment started the inference
    #            execution. </p>
    #   @return [Time]
    # @!attribute data_end_time_before
    #   <p>The time reference in the inferenced dataset before which Amazon Lookout for Equipment stopped the
    #            inference execution. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the inference execution. </p>
    #   @return [String]
    class ListInferenceExecutionsRequest < Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name,
      :data_start_time_after,
      :data_end_time_before,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            executions. </p>
    #   @return [String]
    # @!attribute inference_execution_summaries
    #   <p>Provides an array of information about the individual inference executions returned from
    #            the <code>ListInferenceExecutions</code> operation, including model used, inference
    #            scheduler, data configuration, and so on.  </p>
    #            <note>
    #               <p>If you don't supply the <code>InferenceSchedulerName</code> request parameter, or
    #               if you supply the name of an inference scheduler that doesn't exist,
    #                  <code>ListInferenceExecutions</code> returns an empty array in
    #                  <code>InferenceExecutionSummaries</code>.</p>
    #            </note>
    #   @return [Array<Types::InferenceExecutionSummary>]
    class ListInferenceExecutionsResponse < Struct.new(
      :next_token,
      :inference_execution_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            schedulers. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of inference schedulers to list. </p>
    #   @return [Integer]
    # @!attribute inference_scheduler_name_begins_with
    #   <p>The beginning of the name of the inference schedulers to be listed. </p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the machine learning model used by the inference scheduler to be listed.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the current status of the inference schedulers.</p>
    #   @return [String]
    class ListInferenceSchedulersRequest < Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name_begins_with,
      :model_name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            schedulers. </p>
    #   @return [String]
    # @!attribute inference_scheduler_summaries
    #   <p>Provides information about the specified inference scheduler, including data upload
    #            frequency, model name and ARN, and status. </p>
    #   @return [Array<Types::InferenceSchedulerSummary>]
    class ListInferenceSchedulersResponse < Struct.new(
      :next_token,
      :inference_scheduler_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name_begins_with
    #   <p> The beginning of the name of the label groups to be listed. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of label groups.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of label groups to list. </p>
    #   @return [Integer]
    class ListLabelGroupsRequest < Struct.new(
      :label_group_name_begins_with,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of label groups.
    #         </p>
    #   @return [String]
    # @!attribute label_group_summaries
    #   <p> A summary of the label groups. </p>
    #   @return [Array<Types::LabelGroupSummary>]
    class ListLabelGroupsResponse < Struct.new(
      :next_token,
      :label_group_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> Returns the name of the label group. </p>
    #   @return [String]
    # @!attribute interval_start_time
    #   <p> Returns all the labels with a end time equal to or later than the start time given.
    #         </p>
    #   @return [Time]
    # @!attribute interval_end_time
    #   <p> Returns all labels with a start time earlier than the end time given. </p>
    #   @return [Time]
    # @!attribute fault_code
    #   <p> Returns labels with a particular fault code. </p>
    #   @return [String]
    # @!attribute equipment
    #   <p> Lists the labels that pertain to a particular piece of equipment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of label groups.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of labels to list. </p>
    #   @return [Integer]
    class ListLabelsRequest < Struct.new(
      :label_group_name,
      :interval_start_time,
      :interval_end_time,
      :fault_code,
      :equipment,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of datasets.
    #         </p>
    #   @return [String]
    # @!attribute label_summaries
    #   <p> A summary of the items in the label group. </p>
    #            <note>
    #               <p>If you don't supply the <code>LabelGroupName</code> request parameter, or if you supply
    #               the name of a label group that doesn't exist, <code>ListLabels</code> returns an empty array in
    #                  <code>LabelSummaries</code>.</p>
    #            </note>
    #   @return [Array<Types::LabelSummary>]
    class ListLabelsResponse < Struct.new(
      :next_token,
      :label_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>Then name of the machine learning model for which the model versions are to be
    #            listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the total number of results exceeds the limit that the response can display, the
    #            response returns an opaque pagination token indicating where to continue the listing of
    #            machine learning model versions. Use this token in the <code>NextToken</code> field in the
    #            request to list the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of machine learning model versions to list.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Filter the results based on the current status of the model version.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Filter the results based on the way the model version was generated.</p>
    #   @return [String]
    # @!attribute created_at_end_time
    #   <p>Filter results to return all the model versions created before this time.</p>
    #   @return [Time]
    # @!attribute created_at_start_time
    #   <p>Filter results to return all the model versions created after this time.</p>
    #   @return [Time]
    # @!attribute max_model_version
    #   <p>Specifies the highest version of the model to return in the list.</p>
    #   @return [Integer]
    # @!attribute min_model_version
    #   <p>Specifies the lowest version of the model to return in the list.</p>
    #   @return [Integer]
    class ListModelVersionsRequest < Struct.new(
      :model_name,
      :next_token,
      :max_results,
      :status,
      :source_type,
      :created_at_end_time,
      :created_at_start_time,
      :max_model_version,
      :min_model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results exceeds the limit that the response can display, the
    #            response returns an opaque pagination token indicating where to continue the listing of
    #            machine learning model versions. Use this token in the <code>NextToken</code> field in the
    #            request to list the next page of results.</p>
    #   @return [String]
    # @!attribute model_version_summaries
    #   <p>Provides information on the specified model version, including the created time, model
    #            and dataset ARNs, and status.</p>
    #            <note>
    #               <p>If you don't supply the <code>ModelName</code> request parameter, or if you supply the name
    #               of a model that doesn't exist, <code>ListModelVersions</code> returns an empty array in
    #                  <code>ModelVersionSummaries</code>. </p>
    #            </note>
    #   @return [Array<Types::ModelVersionSummary>]
    class ListModelVersionsResponse < Struct.new(
      :next_token,
      :model_version_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of machine learning
    #            models. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Specifies the maximum number of machine learning models to list. </p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the machine learning model. </p>
    #   @return [String]
    # @!attribute model_name_begins_with
    #   <p>The beginning of the name of the machine learning models being listed. </p>
    #   @return [String]
    # @!attribute dataset_name_begins_with
    #   <p>The beginning of the name of the dataset of the machine learning models to be listed.
    #         </p>
    #   @return [String]
    class ListModelsRequest < Struct.new(
      :next_token,
      :max_results,
      :status,
      :model_name_begins_with,
      :dataset_name_begins_with,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of machine learning
    #            models. </p>
    #   @return [String]
    # @!attribute model_summaries
    #   <p>Provides information on the specified model, including created time, model and dataset
    #            ARNs, and status. </p>
    #   @return [Array<Types::ModelSummary>]
    class ListModelsResponse < Struct.new(
      :next_token,
      :model_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name_begins_with
    #   <p>Specify this field to only list retraining schedulers whose machine learning models
    #            begin with the value you specify. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Specify this field to only list retraining schedulers whose status matches the value you
    #            specify. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the number of results exceeds the maximum, a pagination token is returned. Use the
    #            token in the request to show the next page of retraining schedulers.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of retraining schedulers to list. </p>
    #   @return [Integer]
    class ListRetrainingSchedulersRequest < Struct.new(
      :model_name_begins_with,
      :status,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retraining_scheduler_summaries
    #   <p>Provides information on the specified retraining scheduler, including the model name,
    #            model ARN, status, and start date. </p>
    #   @return [Array<Types::RetrainingSchedulerSummary>]
    # @!attribute next_token
    #   <p>If the number of results exceeds the maximum, this pagination token is returned. Use
    #            this token in the request to show the next page of retraining schedulers.</p>
    #   @return [String]
    class ListRetrainingSchedulersResponse < Struct.new(
      :retraining_scheduler_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p> The name of the dataset associated with the list of Sensor Statistics. </p>
    #   @return [String]
    # @!attribute ingestion_job_id
    #   <p> The ingestion job id associated with the list of Sensor Statistics. To get sensor
    #            statistics for a particular ingestion job id, both dataset name and ingestion job id must
    #            be submitted as inputs. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of sensors for which to retrieve statistics. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An opaque pagination token indicating where to continue the listing of sensor
    #            statistics. </p>
    #   @return [String]
    class ListSensorStatisticsRequest < Struct.new(
      :dataset_name,
      :ingestion_job_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sensor_statistics_summaries
    #   <p>Provides ingestion-based statistics regarding the specified sensor with respect to
    #            various validation types, such as whether data exists, the number and percentage of missing
    #            values, and the number and percentage of duplicate timestamps. </p>
    #   @return [Array<Types::SensorStatisticsSummary>]
    # @!attribute next_token
    #   <p>An opaque pagination token indicating where to continue the listing of sensor
    #            statistics. </p>
    #   @return [String]
    class ListSensorStatisticsResponse < Struct.new(
      :sensor_statistics_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource (such as the dataset or model) that is
    #            the focus of the <code>ListTagsForResource</code> operation. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> Any tags associated with the resource. </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises information on sensors that have sensor data completely missing.
    #       </p>
    # @!attribute affected_sensor_count
    #   <p> Indicates the number of sensors that have data missing completely. </p>
    #   @return [Integer]
    class MissingCompleteSensorData < Struct.new(
      :affected_sensor_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises aggregated information on sensors having missing data. </p>
    # @!attribute affected_sensor_count
    #   <p> Indicates the number of sensors that have atleast some data missing. </p>
    #   @return [Integer]
    # @!attribute total_number_of_missing_values
    #   <p> Indicates the total number of missing values across all the sensors. </p>
    #   @return [Integer]
    class MissingSensorData < Struct.new(
      :affected_sensor_count,
      :total_number_of_missing_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output configuration information for the pointwise model diagnostics for an Amazon Lookout for Equipment model.</p>
    # @!attribute s3_output_configuration
    #   <p>The Amazon S3 location for the pointwise model diagnostics. </p>
    #   @return [Types::ModelDiagnosticsS3OutputConfiguration]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services Key Management Service (KMS) key identifier to encrypt the pointwise model diagnostics files.</p>
    #   @return [String]
    class ModelDiagnosticsOutputConfiguration < Struct.new(
      :s3_output_configuration,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location for the pointwise model diagnostics for an Amazon Lookout for Equipment model. </p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket where the pointwise model diagnostics are located. You must be the owner of the Amazon S3 bucket. </p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The Amazon S3 prefix for the location of the pointwise model diagnostics. The
    #            prefix specifies the folder and evaluation result file name.
    #            (<code>bucket</code>).</p>
    #            <p>When you call <code>CreateModel</code> or <code>UpdateModel</code>, specify the path
    #            within the bucket that you want Lookout for Equipment to save the model to. During training, Lookout for Equipment creates the model evaluation model
    #            as a compressed JSON file with the name <code>model_diagnostics_results.json.gz</code>.</p>
    #            <p>When you call <code>DescribeModel</code> or <code>DescribeModelVersion</code>, <code>prefix</code> contains
    #            the file path and filename of the model evaluation file. </p>
    #   @return [String]
    class ModelDiagnosticsS3OutputConfiguration < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelPromoteMode
      MANAGED = 'MANAGED'
      MANUAL = 'MANUAL'
    end

    module ModelQuality
      QUALITY_THRESHOLD_MET = 'QUALITY_THRESHOLD_MET'
      CANNOT_DETERMINE_QUALITY = 'CANNOT_DETERMINE_QUALITY'
      POOR_QUALITY_DETECTED = 'POOR_QUALITY_DETECTED'
    end

    module ModelStatus
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
      IMPORT_IN_PROGRESS = 'IMPORT_IN_PROGRESS'
    end

    # <p>Provides information about the specified machine learning model, including dataset and
    #          model names and ARNs, as well as status. </p>
    # @!attribute model_name
    #   <p>The name of the machine learning model. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p> The Amazon Resource Name (ARN) of the machine learning model. </p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset being used for the machine learning model. </p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset used to create the model. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the machine learning model. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the specific model was created. </p>
    #   @return [Time]
    # @!attribute active_model_version
    #   <p>The model version that the inference scheduler uses to run an inference
    #            execution.</p>
    #   @return [Integer]
    # @!attribute active_model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version that is set as active. The active
    #            model version is the model version that the inference scheduler uses to run an inference
    #            execution.</p>
    #   @return [String]
    # @!attribute latest_scheduled_retraining_status
    #   <p>Indicates the status of the most recent scheduled retraining run. </p>
    #   @return [String]
    # @!attribute latest_scheduled_retraining_model_version
    #   <p>Indicates the most recent model version that was generated by retraining. </p>
    #   @return [Integer]
    # @!attribute latest_scheduled_retraining_start_time
    #   <p>Indicates the start time of the most recent scheduled retraining run. </p>
    #   @return [Time]
    # @!attribute next_scheduled_retraining_start_date
    #   <p>Indicates the date that the next scheduled retraining run will start on. Lookout for Equipment truncates
    #            the time you provide to <a href="https://docs.aws.amazon.com/https:/docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp">the nearest UTC day</a>.</p>
    #   @return [Time]
    # @!attribute retraining_scheduler_status
    #   <p>Indicates the status of the retraining scheduler. </p>
    #   @return [String]
    # @!attribute model_diagnostics_output_configuration
    #   <p>Output configuration information for the pointwise model diagnostics for an Amazon Lookout for Equipment model.</p>
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    # @!attribute model_quality
    #   <p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the
    #            model quality is poor based on training metrics, the value is
    #            <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is
    #            <code>QUALITY_THRESHOLD_MET</code>.</p>
    #            <p>If the model is unlabeled, the model quality can't
    #            be assessed and the value of <code>ModelQuality</code> is
    #            <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality
    #            assessment by adding labels to the input dataset and retraining the model.</p>
    #            <p>For information about using labels with your models, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html">Understanding labeling</a>.</p>
    #            <p>For information about improving the quality of a model, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html">Best practices with
    #            Amazon Lookout for Equipment</a>.</p>
    #   @return [String]
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
      :model_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelVersionSourceType
      TRAINING = 'TRAINING'
      RETRAINING = 'RETRAINING'
      IMPORT = 'IMPORT'
    end

    module ModelVersionStatus
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
      IMPORT_IN_PROGRESS = 'IMPORT_IN_PROGRESS'
      CANCELED = 'CANCELED'
    end

    # <p>Contains information about the specific model version.</p>
    # @!attribute model_name
    #   <p>The name of the model that this model version is a version of.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model that this model version is a version
    #            of.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model.</p>
    #   @return [Integer]
    # @!attribute model_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when this model version was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the model version.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Indicates how this model version was generated.</p>
    #   @return [String]
    # @!attribute model_quality
    #   <p>Provides a quality assessment for a model that uses labels. If Lookout for Equipment determines that the
    #            model quality is poor based on training metrics, the value is
    #            <code>POOR_QUALITY_DETECTED</code>. Otherwise, the value is
    #            <code>QUALITY_THRESHOLD_MET</code>. </p>
    #            <p>If the model is unlabeled, the model quality can't
    #            be assessed and the value of <code>ModelQuality</code> is
    #            <code>CANNOT_DETERMINE_QUALITY</code>. In this situation, you can get a model quality
    #            assessment by adding labels to the input dataset and retraining the model.</p>
    #            <p>For information about improving the quality of a model, see <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html">Best practices with
    #            Amazon Lookout for Equipment</a>.</p>
    #   @return [String]
    class ModelVersionSummary < Struct.new(
      :model_name,
      :model_arn,
      :model_version,
      :model_version_arn,
      :created_at,
      :status,
      :source_type,
      :model_quality,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises information on monotonic values in the data. </p>
    # @!attribute status
    #   <p> Indicates whether there is a potential data issue related to having monotonic values.
    #         </p>
    #   @return [String]
    # @!attribute monotonicity
    #   <p> Indicates the monotonicity of values. Can be INCREASING, DECREASING, or STATIC. </p>
    #   @return [String]
    class MonotonicValues < Struct.new(
      :status,
      :monotonicity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Monotonicity
      DECREASING = 'DECREASING'
      INCREASING = 'INCREASING'
      STATIC = 'STATIC'
    end

    # <p> Entity that comprises information on operating modes in data. </p>
    # @!attribute status
    #   <p> Indicates whether there is a potential data issue related to having multiple operating
    #            modes. </p>
    #   @return [String]
    class MultipleOperatingModes < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the policy is being
    #            created.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>The JSON-formatted resource policy to create.</p>
    #   @return [String]
    # @!attribute policy_revision_id
    #   <p>A unique identifier for a revision of the resource policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for the request. If you do not set the client request token,
    #            Amazon Lookout for Equipment generates one. </p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :resource_policy,
      :policy_revision_id,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the policy was created.</p>
    #   @return [String]
    # @!attribute policy_revision_id
    #   <p>A unique identifier for a revision of the resource policy.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The resource requested could not be found. Verify the resource ID and retry your
    #          request. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RetrainingSchedulerStatus
      PENDING = 'PENDING'
      RUNNING = 'RUNNING'
      STOPPING = 'STOPPING'
      STOPPED = 'STOPPED'
    end

    # <p>Provides information about the specified retraining scheduler, including model name,
    #          status, start date, frequency, and lookback window. </p>
    # @!attribute model_name
    #   <p>The name of the model that the retraining scheduler is attached to. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The ARN of the model that the retraining scheduler is attached to. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the retraining scheduler. </p>
    #   @return [String]
    # @!attribute retraining_start_date
    #   <p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the
    #            nearest UTC day.</p>
    #   @return [Time]
    # @!attribute retraining_frequency
    #   <p>The frequency at which the model retraining is set. This follows the <a href="https://en.wikipedia.org/wiki/ISO_8601#Durations">ISO 8601</a>
    #            guidelines.</p>
    #   @return [String]
    # @!attribute lookback_window
    #   <p>The number of past days of data used for retraining.</p>
    #   @return [String]
    class RetrainingSchedulerSummary < Struct.new(
      :model_name,
      :model_arn,
      :status,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an S3 bucket. </p>
    # @!attribute bucket
    #   <p>The name of the specific S3 bucket. </p>
    #   @return [String]
    # @!attribute key
    #   <p>The Amazon Web Services Key Management Service (KMS key) key being used to encrypt the S3 object.
    #            Without this key, data in the bucket is not accessible. </p>
    #   @return [String]
    class S3Object < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Summary of ingestion statistics like whether data exists, number of missing values,
    #          number of invalid values and so on related to the particular sensor. </p>
    # @!attribute component_name
    #   <p> Name of the component to which the particular sensor belongs for which the statistics
    #            belong to. </p>
    #   @return [String]
    # @!attribute sensor_name
    #   <p> Name of the sensor that the statistics belong to. </p>
    #   @return [String]
    # @!attribute data_exists
    #   <p> Parameter that indicates whether data exists for the sensor that the statistics belong
    #            to. </p>
    #   @return [Boolean]
    # @!attribute missing_values
    #   <p> Parameter that describes the total number of, and percentage of, values that are
    #            missing for the sensor that the statistics belong to. </p>
    #   @return [Types::CountPercent]
    # @!attribute invalid_values
    #   <p> Parameter that describes the total number of, and percentage of, values that are
    #            invalid for the sensor that the statistics belong to. </p>
    #   @return [Types::CountPercent]
    # @!attribute invalid_date_entries
    #   <p> Parameter that describes the total number of invalid date entries associated with the
    #            sensor that the statistics belong to. </p>
    #   @return [Types::CountPercent]
    # @!attribute duplicate_timestamps
    #   <p> Parameter that describes the total number of duplicate timestamp records associated
    #            with the sensor that the statistics belong to. </p>
    #   @return [Types::CountPercent]
    # @!attribute categorical_values
    #   <p> Parameter that describes potential risk about whether data associated with the sensor
    #            is categorical. </p>
    #   @return [Types::CategoricalValues]
    # @!attribute multiple_operating_modes
    #   <p> Parameter that describes potential risk about whether data associated with the sensor
    #            has more than one operating mode. </p>
    #   @return [Types::MultipleOperatingModes]
    # @!attribute large_timestamp_gaps
    #   <p> Parameter that describes potential risk about whether data associated with the sensor
    #            contains one or more large gaps between consecutive timestamps. </p>
    #   @return [Types::LargeTimestampGaps]
    # @!attribute monotonic_values
    #   <p> Parameter that describes potential risk about whether data associated with the sensor
    #            is mostly monotonic. </p>
    #   @return [Types::MonotonicValues]
    # @!attribute data_start_time
    #   <p> Indicates the time reference to indicate the beginning of valid data associated with
    #            the sensor that the statistics belong to. </p>
    #   @return [Time]
    # @!attribute data_end_time
    #   <p> Indicates the time reference to indicate the end of valid data associated with the
    #            sensor that the statistics belong to. </p>
    #   @return [Time]
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
      :data_end_time,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:data_exists] = false unless options.key?(:data_exists)
        super
      end
    end

    # <p> Entity that comprises information on sensors that have shorter date range. </p>
    # @!attribute affected_sensor_count
    #   <p> Indicates the number of sensors that have less than 14 days of data. </p>
    #   @return [Integer]
    class SensorsWithShortDateRange < Struct.new(
      :affected_sensor_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Resource limitations have been exceeded. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being used by the data ingestion job. </p>
    #   @return [String]
    # @!attribute ingestion_input_configuration
    #   <p> Specifies information for the input data for the data ingestion job, including dataset
    #            S3 location. </p>
    #   @return [Types::IngestionInputConfiguration]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the data ingestion job. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #   @return [String]
    class StartDataIngestionJobRequest < Struct.new(
      :dataset_name,
      :ingestion_input_configuration,
      :role_arn,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>Indicates the job ID of the data ingestion job. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the <code>StartDataIngestionJob</code> operation. </p>
    #   @return [String]
    class StartDataIngestionJobResponse < Struct.new(
      :job_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be started. </p>
    #   @return [String]
    class StartInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model being used by the inference
    #            scheduler. </p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the machine learning model being used by the inference scheduler. </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being started. </p>
    #   @return [String]
    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference scheduler being started. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #   @return [String]
    class StartInferenceSchedulerResponse < Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model whose retraining scheduler you want to start.</p>
    #   @return [String]
    class StartRetrainingSchedulerRequest < Struct.new(
      :model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model whose retraining scheduler is being started. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The ARN of the model whose retraining scheduler is being started. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the retraining scheduler. </p>
    #   @return [String]
    class StartRetrainingSchedulerResponse < Struct.new(
      :model_name,
      :model_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StatisticalIssueStatus
      POTENTIAL_ISSUE_DETECTED = 'POTENTIAL_ISSUE_DETECTED'
      NO_ISSUE_DETECTED = 'NO_ISSUE_DETECTED'
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be stopped. </p>
    #   @return [String]
    class StopInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model used by the inference
    #            scheduler being stopped. </p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the machine learning model used by the inference scheduler being stopped.
    #         </p>
    #   @return [String]
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being stopped. </p>
    #   @return [String]
    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference schedule being stopped. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #   @return [String]
    class StopInferenceSchedulerResponse < Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model whose retraining scheduler you want to stop.</p>
    #   @return [String]
    class StopRetrainingSchedulerRequest < Struct.new(
      :model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model whose retraining scheduler is being stopped. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The ARN of the model whose retraining scheduler is being stopped. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the retraining scheduler. </p>
    #   @return [String]
    class StopRetrainingSchedulerResponse < Struct.new(
      :model_name,
      :model_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A tag is a key-value pair that can be added to a resource as metadata. </p>
    # @!attribute key
    #   <p>The key for the specified tag. </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the specified tag. </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the specific resource to which the tag should be
    #            associated. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag or tags to be associated with a specific resource. Both the tag key and value
    #            are specified. </p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetSamplingRate
      PT1S = 'PT1S'
      PT5S = 'PT5S'
      PT10S = 'PT10S'
      PT15S = 'PT15S'
      PT30S = 'PT30S'
      PT1M = 'PT1M'
      PT5M = 'PT5M'
      PT10M = 'PT10M'
      PT15M = 'PT15M'
      PT30M = 'PT30M'
      PT1H = 'PT1H'
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Entity that comprises information abount unsupported timestamps in the dataset. </p>
    # @!attribute total_number_of_unsupported_timestamps
    #   <p> Indicates the total number of unsupported timestamps across the ingested data. </p>
    #   @return [Integer]
    class UnsupportedTimestamps < Struct.new(
      :total_number_of_unsupported_timestamps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tag is currently associated.
    #         </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies the key of the tag to be removed from a specified resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the machine learning model for which the active model version is being
    #            set.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the machine learning model for which the active model version is being
    #            set.</p>
    #   @return [Integer]
    class UpdateActiveModelVersionRequest < Struct.new(
      :model_name,
      :model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the machine learning model for which the active model version was
    #            set.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model for which the active model
    #            version was set.</p>
    #   @return [String]
    # @!attribute current_active_version
    #   <p>The version that is currently active of the machine learning model for which the active
    #            model version was set.</p>
    #   @return [Integer]
    # @!attribute previous_active_version
    #   <p>The previous version that was active of the machine learning model for which the active
    #            model version was set.</p>
    #   @return [Integer]
    # @!attribute current_active_version_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model version that is the current
    #            active model version.</p>
    #   @return [String]
    # @!attribute previous_active_version_arn
    #   <p>The Amazon Resource Name (ARN) of the machine learning model version that was the
    #            previous active model version.</p>
    #   @return [String]
    class UpdateActiveModelVersionResponse < Struct.new(
      :model_name,
      :model_arn,
      :current_active_version,
      :previous_active_version,
      :current_active_version_arn,
      :previous_active_version_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be updated. </p>
    #   @return [String]
    # @!attribute data_delay_offset_in_minutes
    #   <p> A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For
    #            example, if five minutes is selected, the inference scheduler will wake up at the
    #            configured frequency with the additional five minute delay time to check the customer S3
    #            bucket. The customer can upload data at the same frequency and they don't need to stop and
    #            restart the scheduler when uploading new data.</p>
    #   @return [Integer]
    # @!attribute data_upload_frequency
    #   <p>How often data is uploaded to the source S3 bucket for the input data. The value chosen
    #            is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
    #            Lookout for Equipment will upload the real-time data to the source bucket once every 5
    #            minutes. This frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on
    #            your data. In this example, it starts once every 5 minutes. </p>
    #   @return [String]
    # @!attribute data_input_configuration
    #   <p> Specifies information for the input data for the inference scheduler, including
    #            delimiter, format, and dataset location. </p>
    #   @return [Types::InferenceInputConfiguration]
    # @!attribute data_output_configuration
    #   <p> Specifies information for the output results from the inference scheduler, including
    #            the output S3 location. </p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the inference scheduler. </p>
    #   @return [String]
    class UpdateInferenceSchedulerRequest < Struct.new(
      :inference_scheduler_name,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :data_input_configuration,
      :data_output_configuration,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute label_group_name
    #   <p> The name of the label group to be updated. </p>
    #   @return [String]
    # @!attribute fault_codes
    #   <p> Updates the code indicating the type of anomaly associated with the label. </p>
    #            <p>Data in this field will be retained for service usage. Follow best practices for the
    #            security of your data.</p>
    #   @return [Array<String>]
    class UpdateLabelGroupRequest < Struct.new(
      :label_group_name,
      :fault_codes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model to update.</p>
    #   @return [String]
    # @!attribute labels_input_configuration
    #   <p>Contains the configuration information for the S3 location being used to hold label
    #            data. </p>
    #   @return [Types::LabelsInputConfiguration]
    # @!attribute role_arn
    #   <p>The ARN of the model to update.</p>
    #   @return [String]
    # @!attribute model_diagnostics_output_configuration
    #   <p>The Amazon S3 location where you want Amazon Lookout for Equipment to save the pointwise model diagnostics for the model.
    #            You must also specify the <code>RoleArn</code> request parameter.</p>
    #   @return [Types::ModelDiagnosticsOutputConfiguration]
    class UpdateModelRequest < Struct.new(
      :model_name,
      :labels_input_configuration,
      :role_arn,
      :model_diagnostics_output_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>The name of the model whose retraining scheduler you want to update. </p>
    #   @return [String]
    # @!attribute retraining_start_date
    #   <p>The start date for the retraining scheduler. Lookout for Equipment truncates the time you provide to the
    #            nearest UTC day.</p>
    #   @return [Time]
    # @!attribute retraining_frequency
    #   <p>This parameter uses the <a href="https://en.wikipedia.org/wiki/ISO_8601#Durations">ISO 8601</a> standard to set the frequency at which you want retraining to occur in
    #            terms of Years, Months, and/or Days (note: other parameters like Time are not currently
    #            supported). The minimum value is 30 days (P30D) and the maximum value is 1 year (P1Y). For
    #            example, the following values are valid:</p>
    #            <ul>
    #               <li>
    #                  <p>P3M15D – Every 3 months and 15 days</p>
    #               </li>
    #               <li>
    #                  <p>P2M – Every 2 months</p>
    #               </li>
    #               <li>
    #                  <p>P150D – Every 150 days</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lookback_window
    #   <p>The number of past days of data that will be used for retraining.</p>
    #   @return [String]
    # @!attribute promote_mode
    #   <p>Indicates how the service will use new models. In <code>MANAGED</code> mode, new models
    #            will automatically be used for inference if they have better performance than the current
    #            model. In <code>MANUAL</code> mode, the new models will not be used <a href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation">until they
    #               are manually activated</a>.</p>
    #   @return [String]
    class UpdateRetrainingSchedulerRequest < Struct.new(
      :model_name,
      :retraining_start_date,
      :retraining_frequency,
      :lookback_window,
      :promote_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The input fails to satisfy constraints specified by Amazon Lookout for Equipment or a related Amazon Web Services
    #          service that's being utilized. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end

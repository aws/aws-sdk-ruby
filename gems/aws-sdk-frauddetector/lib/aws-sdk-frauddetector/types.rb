# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FraudDetector
  module Types

    # The Account Takeover Insights (ATI) model performance metrics data
    # points.
    #
    # @!attribute [rw] cr
    #   The challenge rate. This indicates the percentage of login events
    #   that the model recommends to challenge such as one-time password,
    #   multi-factor authentication, and investigations.
    #   @return [Float]
    #
    # @!attribute [rw] adr
    #   The anomaly discovery rate. This metric quantifies the percentage of
    #   anomalies that can be detected by the model at the selected score
    #   threshold. A lower score threshold increases the percentage of
    #   anomalies captured by the model, but would also require challenging
    #   a larger percentage of login events, leading to a higher customer
    #   friction.
    #   @return [Float]
    #
    # @!attribute [rw] threshold
    #   The model's threshold that specifies an acceptable fraud capture
    #   rate. For example, a threshold of 500 means any model score 500 or
    #   above is labeled as fraud.
    #   @return [Float]
    #
    # @!attribute [rw] atodr
    #   The account takeover discovery rate. This metric quantifies the
    #   percentage of account compromise events that can be detected by the
    #   model at the selected score threshold. This metric is only available
    #   if 50 or more entities with at-least one labeled account takeover
    #   event is present in the ingested dataset.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ATIMetricDataPoint AWS API Documentation
    #
    class ATIMetricDataPoint < Struct.new(
      :cr,
      :adr,
      :threshold,
      :atodr)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Account Takeover Insights (ATI) model performance score.
    #
    # @!attribute [rw] asi
    #   The anomaly separation index (ASI) score. This metric summarizes the
    #   overall ability of the model to separate anomalous activities from
    #   the normal behavior. Depending on the business, a large fraction of
    #   these anomalous activities can be malicious and correspond to the
    #   account takeover attacks. A model with no separability power will
    #   have the lowest possible ASI score of 0.5, whereas the a model with
    #   a high separability power will have the highest possible ASI score
    #   of 1.0
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ATIModelPerformance AWS API Documentation
    #
    class ATIModelPerformance < Struct.new(
      :asi)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Account Takeover Insights (ATI) model training metric details.
    #
    # @!attribute [rw] metric_data_points
    #   The model's performance metrics data points.
    #   @return [Array<Types::ATIMetricDataPoint>]
    #
    # @!attribute [rw] model_performance
    #   The model's overall performance scores.
    #   @return [Types::ATIModelPerformance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ATITrainingMetricsValue AWS API Documentation
    #
    class ATITrainingMetricsValue < Struct.new(
      :metric_data_points,
      :model_performance)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception indicating Amazon Fraud Detector does not have the needed
    # permissions. This can occur if you submit a request, such as
    # `PutExternalModel`, that specifies a role that is not in your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log odds metric details.
    #
    # Account Takeover Insights (ATI) model uses event variables from the
    # login data you provide to continuously calculate a set of variables
    # (aggregated variables) based on historical events. For example, your
    # ATI model might calculate the number of times an user has logged in
    # using the same IP address. In this case, event variables used to
    # derive the aggregated variables are `IP address` and `user`.
    #
    # @!attribute [rw] variable_names
    #   The names of all the variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aggregated_variables_importance
    #   The relative importance of the variables in the list to the other
    #   event variable.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/AggregatedLogOddsMetric AWS API Documentation
    #
    class AggregatedLogOddsMetric < Struct.new(
      :variable_names,
      :aggregated_variables_importance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the impact of aggregated variables on the prediction
    # score.
    #
    # Account Takeover Insights (ATI) model uses the login data you provide
    # to continuously calculate a set of variables (aggregated variables)
    # based on historical events. For example, the model might calculate the
    # number of times an user has logged in using the same IP address. In
    # this case, event variables used to derive the aggregated variables are
    # `IP address` and `user`.
    #
    # @!attribute [rw] event_variable_names
    #   The names of all the event variables that were used to derive the
    #   aggregated variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] relative_impact
    #   The relative impact of the aggregated variables in terms of
    #   magnitude on the prediction scores.
    #   @return [String]
    #
    # @!attribute [rw] log_odds_impact
    #   The raw, uninterpreted value represented as log-odds of the fraud.
    #   These values are usually between -10 to +10, but range from
    #   -infinity to +infinity.
    #
    #   * A positive value indicates that the variables drove the risk score
    #     up.
    #
    #   * A negative value indicates that the variables drove the risk score
    #     down.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/AggregatedVariablesImpactExplanation AWS API Documentation
    #
    class AggregatedVariablesImpactExplanation < Struct.new(
      :event_variable_names,
      :relative_impact,
      :log_odds_impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the relative importance of the aggregated variables.
    #
    # Account Takeover Insights (ATI) model uses event variables from the
    # login data you provide to continuously calculate a set of variables
    # (aggregated variables) based on historical events. For example, your
    # ATI model might calculate the number of times an user has logged in
    # using the same IP address. In this case, event variables used to
    # derive the aggregated variables are `IP address` and `user`.
    #
    # @!attribute [rw] log_odds_metrics
    #   List of variables' metrics.
    #   @return [Array<Types::AggregatedLogOddsMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/AggregatedVariablesImportanceMetrics AWS API Documentation
    #
    class AggregatedVariablesImportanceMetrics < Struct.new(
      :log_odds_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of a list.
    #
    # @!attribute [rw] name
    #   The name of the list.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the list.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type of the list.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time the list was created.
    #   @return [String]
    #
    # @!attribute [rw] updated_time
    #   The time the list was last updated.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/AllowDenyList AWS API Documentation
    #
    class AllowDenyList < Struct.new(
      :name,
      :description,
      :variable_type,
      :created_time,
      :updated_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the error of the batch create variable API.
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariableError AWS API Documentation
    #
    class BatchCreateVariableError < Struct.new(
      :name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] variable_entries
    #   The list of variables for the batch create variable request.
    #   @return [Array<Types::VariableEntry>]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariableRequest AWS API Documentation
    #
    class BatchCreateVariableRequest < Struct.new(
      :variable_entries,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Provides the errors for the `BatchCreateVariable` request.
    #   @return [Array<Types::BatchCreateVariableError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariableResult AWS API Documentation
    #
    class BatchCreateVariableResult < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the error of the batch get variable API.
    #
    # @!attribute [rw] name
    #   The error name.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchGetVariableError AWS API Documentation
    #
    class BatchGetVariableError < Struct.new(
      :name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   The list of variable names to get.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchGetVariableRequest AWS API Documentation
    #
    class BatchGetVariableRequest < Struct.new(
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] variables
    #   The returned variables.
    #   @return [Array<Types::Variable>]
    #
    # @!attribute [rw] errors
    #   The errors from the request.
    #   @return [Array<Types::BatchGetVariableError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchGetVariableResult AWS API Documentation
    #
    class BatchGetVariableResult < Struct.new(
      :variables,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The batch import job details.
    #
    # @!attribute [rw] job_id
    #   The ID of the batch import job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch import job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason batch import job failed.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Timestamp of when the batch import job started.
    #   @return [String]
    #
    # @!attribute [rw] completion_time
    #   Timestamp of when batch import job completed.
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The Amazon S3 location of your data file for batch import.
    #   @return [String]
    #
    # @!attribute [rw] output_path
    #   The Amazon S3 location of your output file.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role to use for this job request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the batch import job.
    #   @return [String]
    #
    # @!attribute [rw] processed_records_count
    #   The number of records processed by batch import job.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_records_count
    #   The number of records that failed to import.
    #   @return [Integer]
    #
    # @!attribute [rw] total_records_count
    #   The total number of records in the batch import job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchImport AWS API Documentation
    #
    class BatchImport < Struct.new(
      :job_id,
      :status,
      :failure_reason,
      :start_time,
      :completion_time,
      :input_path,
      :output_path,
      :event_type_name,
      :iam_role_arn,
      :arn,
      :processed_records_count,
      :failed_records_count,
      :total_records_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The batch prediction details.
    #
    # @!attribute [rw] job_id
    #   The job ID for the batch prediction.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The batch prediction status.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason a batch prediction job failed.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Timestamp of when the batch prediction job started.
    #   @return [String]
    #
    # @!attribute [rw] completion_time
    #   Timestamp of when the batch prediction job completed.
    #   @return [String]
    #
    # @!attribute [rw] last_heartbeat_time
    #   Timestamp of most recent heartbeat indicating the batch prediction
    #   job was making progress.
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The Amazon S3 location of your training file.
    #   @return [String]
    #
    # @!attribute [rw] output_path
    #   The Amazon S3 location of your output file.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] detector_name
    #   The name of the detector.
    #   @return [String]
    #
    # @!attribute [rw] detector_version
    #   The detector version.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role to use for this job request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of batch prediction job.
    #   @return [String]
    #
    # @!attribute [rw] processed_records_count
    #   The number of records processed by the batch prediction job.
    #   @return [Integer]
    #
    # @!attribute [rw] total_records_count
    #   The total number of records in the batch prediction job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchPrediction AWS API Documentation
    #
    class BatchPrediction < Struct.new(
      :job_id,
      :status,
      :failure_reason,
      :start_time,
      :completion_time,
      :last_heartbeat_time,
      :input_path,
      :output_path,
      :event_type_name,
      :detector_name,
      :detector_version,
      :iam_role_arn,
      :arn,
      :processed_records_count,
      :total_records_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of an in-progress batch import job to cancel.
    #
    #   Amazon Fraud Detector will throw an error if the batch import job is
    #   in `FAILED`, `CANCELED`, or `COMPLETED` state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CancelBatchImportJobRequest AWS API Documentation
    #
    class CancelBatchImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CancelBatchImportJobResult AWS API Documentation
    #
    class CancelBatchImportJobResult < Aws::EmptyStructure; end

    # @!attribute [rw] job_id
    #   The ID of the batch prediction job to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CancelBatchPredictionJobRequest AWS API Documentation
    #
    class CancelBatchPredictionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CancelBatchPredictionJobResult AWS API Documentation
    #
    class CancelBatchPredictionJobResult < Aws::EmptyStructure; end

    # An exception indicating there was a conflict during a delete
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the batch import job. The ID cannot be of a past job,
    #   unless the job exists in `CREATE_FAILED` state.
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The URI that points to the Amazon S3 location of your data file.
    #   @return [String]
    #
    # @!attribute [rw] output_path
    #   The URI that points to the Amazon S3 location for storing your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role created for Amazon S3 bucket that holds your
    #   data file.
    #
    #   The IAM role must have read permissions to your input S3 bucket and
    #   write permissions to your output S3 bucket. For more information
    #   about bucket permissions, see [User policy examples][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key-value pairs associated with this request.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateBatchImportJobRequest AWS API Documentation
    #
    class CreateBatchImportJobRequest < Struct.new(
      :job_id,
      :input_path,
      :output_path,
      :event_type_name,
      :iam_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateBatchImportJobResult AWS API Documentation
    #
    class CreateBatchImportJobResult < Aws::EmptyStructure; end

    # @!attribute [rw] job_id
    #   The ID of the batch prediction job.
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The Amazon S3 location of your training file.
    #   @return [String]
    #
    # @!attribute [rw] output_path
    #   The Amazon S3 location of your output file.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] detector_name
    #   The name of the detector.
    #   @return [String]
    #
    # @!attribute [rw] detector_version
    #   The detector version.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role to use for this job request.
    #
    #   The IAM Role must have read permissions to your input S3 bucket and
    #   write permissions to your output S3 bucket. For more information
    #   about bucket permissions, see [User policy examples][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateBatchPredictionJobRequest AWS API Documentation
    #
    class CreateBatchPredictionJobRequest < Struct.new(
      :job_id,
      :input_path,
      :output_path,
      :event_type_name,
      :detector_name,
      :detector_version,
      :iam_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateBatchPredictionJobResult AWS API Documentation
    #
    class CreateBatchPredictionJobResult < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The ID of the detector under which you want to create a new version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the detector version.
    #   @return [String]
    #
    # @!attribute [rw] external_model_endpoints
    #   The Amazon Sagemaker model endpoints to include in the detector
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rules
    #   The rules to include in the detector version.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] model_versions
    #   The model versions to include in the detector version.
    #   @return [Array<Types::ModelVersion>]
    #
    # @!attribute [rw] rule_execution_mode
    #   The rule execution mode for the rules included in the detector
    #   version.
    #
    #   You can define and edit the rule mode at the detector version level,
    #   when it is in draft status.
    #
    #   If you specify `FIRST_MATCHED`, Amazon Fraud Detector evaluates
    #   rules sequentially, first to last, stopping at the first matched
    #   rule. Amazon Fraud dectector then provides the outcomes for that
    #   single rule.
    #
    #   If you specifiy `ALL_MATCHED`, Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules.
    #
    #   The default behavior is `FIRST_MATCHED`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateDetectorVersionRequest AWS API Documentation
    #
    class CreateDetectorVersionRequest < Struct.new(
      :detector_id,
      :description,
      :external_model_endpoints,
      :rules,
      :model_versions,
      :rule_execution_mode,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID for the created version's parent detector.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The ID for the created detector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the detector version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateDetectorVersionResult AWS API Documentation
    #
    class CreateDetectorVersionResult < Struct.new(
      :detector_id,
      :detector_version_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the list.
    #   @return [String]
    #
    # @!attribute [rw] elements
    #   The names of the elements, if providing. You can also create an
    #   empty list and add elements later using the [UpdateList][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/api/API_Updatelist.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] variable_type
    #   The variable type of the list. You can only assign the variable type
    #   with String data type. For more information, see [Variable
    #   types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the list.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of the key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateListRequest AWS API Documentation
    #
    class CreateListRequest < Struct.new(
      :name,
      :elements,
      :variable_type,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateListResult AWS API Documentation
    #
    class CreateListResult < Aws::EmptyStructure; end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model description.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelRequest AWS API Documentation
    #
    class CreateModelRequest < Struct.new(
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelResult AWS API Documentation
    #
    class CreateModelResult < Aws::EmptyStructure; end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The training data source location in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] training_data_schema
    #   The training data schema.
    #   @return [Types::TrainingDataSchema]
    #
    # @!attribute [rw] external_events_detail
    #   Details of the external events data used for model version training.
    #   Required if `trainingDataSource` is `EXTERNAL_EVENTS`.
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] ingested_events_detail
    #   Details of the ingested events data used for model version training.
    #   Required if `trainingDataSource` is `INGESTED_EVENTS`.
    #   @return [Types::IngestedEventsDetail]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelVersionRequest AWS API Documentation
    #
    class CreateModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number of the model version created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The model version status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelVersionResult AWS API Documentation
    #
    class CreateModelVersionResult < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID for the rule's parent detector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule expression.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the rule.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The outcome or outcomes returned when the rule expression matches.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateRuleRequest AWS API Documentation
    #
    class CreateRuleRequest < Struct.new(
      :rule_id,
      :detector_id,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   The created rule.
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateRuleResult AWS API Documentation
    #
    class CreateRuleResult < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The source of the data.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for the variable when no value is received.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type. For more information see [Variable types][1].
    #
    #   Valid Values: `AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
    #   BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
    #   BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL
    #   | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
    #   FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
    #   PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
    #   SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY |
    #   SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP |
    #   USERAGENT`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateVariableRequest AWS API Documentation
    #
    class CreateVariableRequest < Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateVariableResult AWS API Documentation
    #
    class CreateVariableResult < Aws::EmptyStructure; end

    # The model training data validation metrics.
    #
    # @!attribute [rw] file_level_messages
    #   The file-specific model training data validation messages.
    #   @return [Array<Types::FileValidationMessage>]
    #
    # @!attribute [rw] field_level_messages
    #   The field-specific model training validation messages.
    #   @return [Array<Types::FieldValidationMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DataValidationMetrics AWS API Documentation
    #
    class DataValidationMetrics < Struct.new(
      :file_level_messages,
      :field_level_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the batch import job to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteBatchImportJobRequest AWS API Documentation
    #
    class DeleteBatchImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteBatchImportJobResult AWS API Documentation
    #
    class DeleteBatchImportJobResult < Aws::EmptyStructure; end

    # @!attribute [rw] job_id
    #   The ID of the batch prediction job to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteBatchPredictionJobRequest AWS API Documentation
    #
    class DeleteBatchPredictionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteBatchPredictionJobResult AWS API Documentation
    #
    class DeleteBatchPredictionJobResult < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The ID of the detector to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorRequest AWS API Documentation
    #
    class DeleteDetectorRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorResult AWS API Documentation
    #
    class DeleteDetectorResult < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The ID of the parent detector for the detector version to delete.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The ID of the detector version to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorVersionRequest AWS API Documentation
    #
    class DeleteDetectorVersionRequest < Struct.new(
      :detector_id,
      :detector_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorVersionResult AWS API Documentation
    #
    class DeleteDetectorVersionResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the entity type to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEntityTypeRequest AWS API Documentation
    #
    class DeleteEntityTypeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEntityTypeResult AWS API Documentation
    #
    class DeleteEntityTypeResult < Aws::EmptyStructure; end

    # @!attribute [rw] event_id
    #   The ID of the event to delete.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] delete_audit_history
    #   Specifies whether or not to delete any predictions associated with
    #   the event. If set to `True`,
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventRequest AWS API Documentation
    #
    class DeleteEventRequest < Struct.new(
      :event_id,
      :event_type_name,
      :delete_audit_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventResult AWS API Documentation
    #
    class DeleteEventResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the event type to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventTypeRequest AWS API Documentation
    #
    class DeleteEventTypeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventTypeResult AWS API Documentation
    #
    class DeleteEventTypeResult < Aws::EmptyStructure; end

    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventsByEventTypeRequest AWS API Documentation
    #
    class DeleteEventsByEventTypeRequest < Struct.new(
      :event_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_type_name
    #   Name of event type for which to delete the events.
    #   @return [String]
    #
    # @!attribute [rw] events_deletion_status
    #   The status of the delete request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventsByEventTypeResult AWS API Documentation
    #
    class DeleteEventsByEventTypeResult < Struct.new(
      :event_type_name,
      :events_deletion_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_endpoint
    #   The endpoint of the Amazon Sagemaker model to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteExternalModelRequest AWS API Documentation
    #
    class DeleteExternalModelRequest < Struct.new(
      :model_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteExternalModelResult AWS API Documentation
    #
    class DeleteExternalModelResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the label to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteLabelRequest AWS API Documentation
    #
    class DeleteLabelRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteLabelResult AWS API Documentation
    #
    class DeleteLabelResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the list to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteListRequest AWS API Documentation
    #
    class DeleteListRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteListResult AWS API Documentation
    #
    class DeleteListResult < Aws::EmptyStructure; end

    # @!attribute [rw] model_id
    #   The model ID of the model to delete.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type of the model to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteModelRequest AWS API Documentation
    #
    class DeleteModelRequest < Struct.new(
      :model_id,
      :model_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteModelResult AWS API Documentation
    #
    class DeleteModelResult < Aws::EmptyStructure; end

    # @!attribute [rw] model_id
    #   The model ID of the model version to delete.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type of the model version to delete.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number of the model version to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteModelVersionRequest AWS API Documentation
    #
    class DeleteModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :model_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteModelVersionResult AWS API Documentation
    #
    class DeleteModelVersionResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the outcome to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteOutcomeRequest AWS API Documentation
    #
    class DeleteOutcomeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteOutcomeResult AWS API Documentation
    #
    class DeleteOutcomeResult < Aws::EmptyStructure; end

    # @!attribute [rw] rule
    #   A rule.
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteRuleResult AWS API Documentation
    #
    class DeleteRuleResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the variable to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteVariableRequest AWS API Documentation
    #
    class DeleteVariableRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteVariableResult AWS API Documentation
    #
    class DeleteVariableResult < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeDetectorRequest AWS API Documentation
    #
    class DescribeDetectorRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_summaries
    #   The status and description for each detector version.
    #   @return [Array<Types::DetectorVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token to be used for subsequent requests.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The detector ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeDetectorResult AWS API Documentation
    #
    class DescribeDetectorResult < Struct.new(
      :detector_id,
      :detector_version_summaries,
      :next_token,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeModelVersionsRequest AWS API Documentation
    #
    class DescribeModelVersionsRequest < Struct.new(
      :model_id,
      :model_version_number,
      :model_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_version_details
    #   The model version details.
    #   @return [Array<Types::ModelVersionDetail>]
    #
    # @!attribute [rw] next_token
    #   The next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeModelVersionsResult AWS API Documentation
    #
    class DescribeModelVersionsResult < Struct.new(
      :model_version_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detector.
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detector description.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the detector was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the detector was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The detector ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Detector AWS API Documentation
    #
    class Detector < Struct.new(
      :detector_id,
      :description,
      :event_type_name,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the detector version.
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The detector version status.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detector version description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the detector version was last updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DetectorVersionSummary AWS API Documentation
    #
    class DetectorVersionSummary < Struct.new(
      :detector_version_id,
      :status,
      :description,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entity details.
    #
    # @!attribute [rw] entity_type
    #   The entity type.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The entity ID. If you do not know the `entityId`, you can pass
    #   `unknown`, which is areserved string literal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :entity_type,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entity type details.
    #
    # @!attribute [rw] name
    #   The entity type name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The entity type description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the entity type was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the entity type was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The entity type ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EntityType AWS API Documentation
    #
    class EntityType < Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the external (Amazon Sagemaker) model evaluated for
    # generating predictions.
    #
    # @!attribute [rw] model_endpoint
    #   The endpoint of the external (Amazon Sagemaker) model.
    #   @return [String]
    #
    # @!attribute [rw] use_event_variables
    #   Indicates whether event variables were used to generate predictions.
    #   @return [Boolean]
    #
    # @!attribute [rw] input_variables
    #   Input variables use for generating predictions.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] output_variables
    #   Output variables.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EvaluatedExternalModel AWS API Documentation
    #
    class EvaluatedExternalModel < Struct.new(
      :model_endpoint,
      :use_event_variables,
      :input_variables,
      :output_variables)
      SENSITIVE = [:input_variables, :output_variables]
      include Aws::Structure
    end

    # The model version evaluated for generating prediction.
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The model version.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #
    #   Valid values: `ONLINE_FRAUD_INSIGHTS` \|
    #   `TRANSACTION_FRAUD_INSIGHTS`
    #   @return [String]
    #
    # @!attribute [rw] evaluations
    #   Evaluations generated for the model version.
    #   @return [Array<Types::ModelVersionEvaluation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EvaluatedModelVersion AWS API Documentation
    #
    class EvaluatedModelVersion < Struct.new(
      :model_id,
      :model_version,
      :model_type,
      :evaluations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the rule used for evaluating variable values.
    #
    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule expression.
    #   @return [String]
    #
    # @!attribute [rw] expression_with_values
    #   The rule expression value.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The rule outcome.
    #   @return [Array<String>]
    #
    # @!attribute [rw] evaluated
    #   Indicates whether the rule was evaluated.
    #   @return [Boolean]
    #
    # @!attribute [rw] matched
    #   Indicates whether the rule matched.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EvaluatedRule AWS API Documentation
    #
    class EvaluatedRule < Struct.new(
      :rule_id,
      :rule_version,
      :expression,
      :expression_with_values,
      :outcomes,
      :evaluated,
      :matched)
      SENSITIVE = [:expression, :expression_with_values]
      include Aws::Structure
    end

    # The event details.
    #
    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp that defines when the event under evaluation occurred.
    #   The timestamp must be specified using ISO 8601 standard in UTC.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   Names of the event type's variables you defined in Amazon Fraud
    #   Detector to represent data elements and their corresponding values
    #   for the event you are sending for evaluation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] current_label
    #   The label associated with the event.
    #   @return [String]
    #
    # @!attribute [rw] label_timestamp
    #   The timestamp associated with the label to update. The timestamp
    #   must be specified using ISO 8601 standard in UTC.
    #   @return [String]
    #
    # @!attribute [rw] entities
    #   The event entities.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :event_type_name,
      :event_timestamp,
      :event_variables,
      :current_label,
      :label_timestamp,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event orchestration status.
    #
    # @!attribute [rw] event_bridge_enabled
    #   Specifies if event orchestration is enabled through Amazon
    #   EventBridge.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EventOrchestration AWS API Documentation
    #
    class EventOrchestration < Struct.new(
      :event_bridge_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the summary of an event prediction.
    #
    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp of the event.
    #   @return [String]
    #
    # @!attribute [rw] prediction_timestamp
    #   The timestamp when the prediction was generated.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EventPredictionSummary AWS API Documentation
    #
    class EventPredictionSummary < Struct.new(
      :event_id,
      :event_type_name,
      :event_timestamp,
      :prediction_timestamp,
      :detector_id,
      :detector_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event type details.
    #
    # @!attribute [rw] name
    #   The event type name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The event type description.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   The event type event variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] labels
    #   The event type labels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_types
    #   The event type entity types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_ingestion
    #   If `Enabled`, Amazon Fraud Detector stores event data when you
    #   generate a prediction and uses that data to update calculated
    #   variables in near real-time. Amazon Fraud Detector uses this data,
    #   known as `INGESTED_EVENTS`, to train your model and improve fraud
    #   predictions.
    #   @return [String]
    #
    # @!attribute [rw] ingested_event_statistics
    #   Data about the stored events.
    #   @return [Types::IngestedEventStatistics]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the event type was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the event type was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The entity type ARN.
    #   @return [String]
    #
    # @!attribute [rw] event_orchestration
    #   The event orchestration status.
    #   @return [Types::EventOrchestration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EventType AWS API Documentation
    #
    class EventType < Struct.new(
      :name,
      :description,
      :event_variables,
      :labels,
      :entity_types,
      :event_ingestion,
      :ingested_event_statistics,
      :last_updated_time,
      :created_time,
      :arn,
      :event_orchestration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the summary of an event variable that was evaluated
    # for generating prediction.
    #
    # @!attribute [rw] name
    #   The event variable name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the event variable.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The event variable source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EventVariableSummary AWS API Documentation
    #
    class EventVariableSummary < Struct.new(
      :name,
      :value,
      :source)
      SENSITIVE = [:name, :value, :source]
      include Aws::Structure
    end

    # Details for the external events data used for model version training.
    #
    # @!attribute [rw] data_location
    #   The Amazon S3 bucket location for the data.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The ARN of the role that provides Amazon Fraud Detector access to
    #   the data location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ExternalEventsDetail AWS API Documentation
    #
    class ExternalEventsDetail < Struct.new(
      :data_location,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon SageMaker model.
    #
    # @!attribute [rw] model_endpoint
    #   The Amazon SageMaker model endpoints.
    #   @return [String]
    #
    # @!attribute [rw] model_source
    #   The source of the model.
    #   @return [String]
    #
    # @!attribute [rw] invoke_model_endpoint_role_arn
    #   The role used to invoke the model.
    #   @return [String]
    #
    # @!attribute [rw] input_configuration
    #   The input configuration.
    #   @return [Types::ModelInputConfiguration]
    #
    # @!attribute [rw] output_configuration
    #   The output configuration.
    #   @return [Types::ModelOutputConfiguration]
    #
    # @!attribute [rw] model_endpoint_status
    #   The Amazon Fraud Detector status for the external model endpoint
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the model was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the model was last created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The model ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ExternalModel AWS API Documentation
    #
    class ExternalModel < Struct.new(
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fraud prediction scores from Amazon SageMaker model.
    #
    # @!attribute [rw] external_model
    #   The Amazon SageMaker model.
    #   @return [Types::ExternalModelSummary]
    #
    # @!attribute [rw] outputs
    #   The fraud prediction scores from Amazon SageMaker model.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ExternalModelOutputs AWS API Documentation
    #
    class ExternalModelOutputs < Struct.new(
      :external_model,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon SageMaker model.
    #
    # @!attribute [rw] model_endpoint
    #   The endpoint of the Amazon SageMaker model.
    #   @return [String]
    #
    # @!attribute [rw] model_source
    #   The source of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ExternalModelSummary AWS API Documentation
    #
    class ExternalModelSummary < Struct.new(
      :model_endpoint,
      :model_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message details.
    #
    # @!attribute [rw] field_name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The message ID.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The message title.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message content.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The message type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/FieldValidationMessage AWS API Documentation
    #
    class FieldValidationMessage < Struct.new(
      :field_name,
      :identifier,
      :title,
      :content,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message details.
    #
    # @!attribute [rw] title
    #   The message title.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message content.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The message type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/FileValidationMessage AWS API Documentation
    #
    class FileValidationMessage < Struct.new(
      :title,
      :content,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conditional statement for filtering a list of past predictions.
    #
    # @!attribute [rw] value
    #   A statement containing a resource property and a value to specify
    #   filter condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/FilterCondition AWS API Documentation
    #
    class FilterCondition < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the batch import job to get.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetBatchImportJobsRequest AWS API Documentation
    #
    class GetBatchImportJobsRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_imports
    #   An array containing the details of each batch import job.
    #   @return [Array<Types::BatchImport>]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent resquest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetBatchImportJobsResult AWS API Documentation
    #
    class GetBatchImportJobsResult < Struct.new(
      :batch_imports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The batch prediction job for which to get the details.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetBatchPredictionJobsRequest AWS API Documentation
    #
    class GetBatchPredictionJobsRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_predictions
    #   An array containing the details of each batch prediction job.
    #   @return [Array<Types::BatchPrediction>]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetBatchPredictionJobsResult AWS API Documentation
    #
    class GetBatchPredictionJobsResult < Struct.new(
      :batch_predictions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_type_name
    #   Name of event type for which to get the deletion status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDeleteEventsByEventTypeStatusRequest AWS API Documentation
    #
    class GetDeleteEventsByEventTypeStatusRequest < Struct.new(
      :event_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_type_name
    #   The event type name.
    #   @return [String]
    #
    # @!attribute [rw] events_deletion_status
    #   The deletion status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDeleteEventsByEventTypeStatusResult AWS API Documentation
    #
    class GetDeleteEventsByEventTypeStatusResult < Struct.new(
      :event_type_name,
      :events_deletion_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorVersionRequest AWS API Documentation
    #
    class GetDetectorVersionRequest < Struct.new(
      :detector_id,
      :detector_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detector version description.
    #   @return [String]
    #
    # @!attribute [rw] external_model_endpoints
    #   The Amazon SageMaker model endpoints included in the detector
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] model_versions
    #   The model versions included in the detector version.
    #   @return [Array<Types::ModelVersion>]
    #
    # @!attribute [rw] rules
    #   The rules included in the detector version.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] status
    #   The status of the detector version.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the detector version was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the detector version was created.
    #   @return [String]
    #
    # @!attribute [rw] rule_execution_mode
    #   The execution mode of the rule in the dectector
    #
    #   `FIRST_MATCHED` indicates that Amazon Fraud Detector evaluates rules
    #   sequentially, first to last, stopping at the first matched rule.
    #   Amazon Fraud dectector then provides the outcomes for that single
    #   rule.
    #
    #   `ALL_MATCHED` indicates that Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules. You can define
    #   and edit the rule mode at the detector version level, when it is in
    #   draft status.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The detector version ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorVersionResult AWS API Documentation
    #
    class GetDetectorVersionResult < Struct.new(
      :detector_id,
      :detector_version_id,
      :description,
      :external_model_endpoints,
      :model_versions,
      :rules,
      :status,
      :last_updated_time,
      :created_time,
      :rule_execution_mode,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorsRequest AWS API Documentation
    #
    class GetDetectorsRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detectors
    #   The detectors.
    #   @return [Array<Types::Detector>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorsResult AWS API Documentation
    #
    class GetDetectorsResult < Struct.new(
      :detectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEntityTypesRequest AWS API Documentation
    #
    class GetEntityTypesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_types
    #   An array of entity types.
    #   @return [Array<Types::EntityType>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEntityTypesResult AWS API Documentation
    #
    class GetEntityTypesResult < Struct.new(
      :entity_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type associated with the detector specified for the
    #   prediction.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] prediction_timestamp
    #   The timestamp that defines when the prediction was generated. The
    #   timestamp must be specified using ISO 8601 standard in UTC.
    #
    #   We recommend calling [ListEventPredictions][1] first, and using the
    #   `predictionTimestamp` value in the response to provide an accurate
    #   prediction timestamp value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/api/API_ListEventPredictions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventPredictionMetadataRequest AWS API Documentation
    #
    class GetEventPredictionMetadataRequest < Struct.new(
      :event_id,
      :event_type_name,
      :detector_id,
      :detector_version_id,
      :prediction_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type associated with the detector specified for this
    #   prediction.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The entity ID.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The entity type.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp for when the prediction was generated for the
    #   associated event ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_status
    #   The status of the detector version.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   A list of event variables that influenced the prediction scores.
    #   @return [Array<Types::EventVariableSummary>]
    #
    # @!attribute [rw] rules
    #   List of rules associated with the detector version that were used
    #   for evaluating variable values.
    #   @return [Array<Types::EvaluatedRule>]
    #
    # @!attribute [rw] rule_execution_mode
    #   The execution mode of the rule used for evaluating variable values.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The outcomes of the matched rule, based on the rule execution mode.
    #   @return [Array<String>]
    #
    # @!attribute [rw] evaluated_model_versions
    #   Model versions that were evaluated for generating predictions.
    #   @return [Array<Types::EvaluatedModelVersion>]
    #
    # @!attribute [rw] evaluated_external_models
    #   External (Amazon SageMaker) models that were evaluated for
    #   generating predictions.
    #   @return [Array<Types::EvaluatedExternalModel>]
    #
    # @!attribute [rw] prediction_timestamp
    #   The timestamp that defines when the prediction was generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventPredictionMetadataResult AWS API Documentation
    #
    class GetEventPredictionMetadataResult < Struct.new(
      :event_id,
      :event_type_name,
      :entity_id,
      :entity_type,
      :event_timestamp,
      :detector_id,
      :detector_version_id,
      :detector_version_status,
      :event_variables,
      :rules,
      :rule_execution_mode,
      :outcomes,
      :evaluated_model_versions,
      :evaluated_external_models,
      :prediction_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The unique ID used to identify the event.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type associated with the detector specified for the
    #   prediction.
    #   @return [String]
    #
    # @!attribute [rw] entities
    #   The entity type (associated with the detector's event type) and
    #   specific entity ID representing who performed the event. If an
    #   entity id is not available, use "UNKNOWN."
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] event_timestamp
    #   Timestamp that defines when the event under evaluation occurred. The
    #   timestamp must be specified using ISO 8601 standard in UTC.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   Names of the event type's variables you defined in Amazon Fraud
    #   Detector to represent data elements and their corresponding values
    #   for the event you are sending for evaluation.
    #
    #   You must provide at least one eventVariable
    #
    #   To ensure most accurate fraud prediction and to simplify your data
    #   preparation, Amazon Fraud Detector will replace all missing
    #   variables or values as follows:
    #
    #   **For Amazon Fraud Detector trained models:**
    #
    #   If a null value is provided explicitly for a variable or if a
    #   variable is missing, model will replace the null value or the
    #   missing variable (no variable name in the eventVariables map) with
    #   calculated default mean/medians for numeric variables and with
    #   special values for categorical variables.
    #
    #   **For imported SageMaker models:**
    #
    #   If a null value is provided explicitly for a variable, the model and
    #   rules will use “null” as the value. If a variable is not provided
    #   (no variable name in the eventVariables map), model and rules will
    #   use the default value that is provided for the variable.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] external_model_endpoint_data_blobs
    #   The Amazon SageMaker model endpoint input data blobs.
    #   @return [Hash<String,Types::ModelEndpointDataBlob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventPredictionRequest AWS API Documentation
    #
    class GetEventPredictionRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :event_id,
      :event_type_name,
      :entities,
      :event_timestamp,
      :event_variables,
      :external_model_endpoint_data_blobs)
      SENSITIVE = [:external_model_endpoint_data_blobs]
      include Aws::Structure
    end

    # @!attribute [rw] model_scores
    #   The model scores. Amazon Fraud Detector generates model scores
    #   between 0 and 1000, where 0 is low fraud risk and 1000 is high fraud
    #   risk. Model scores are directly related to the false positive rate
    #   (FPR). For example, a score of 600 corresponds to an estimated 10%
    #   false positive rate whereas a score of 900 corresponds to an
    #   estimated 2% false positive rate.
    #   @return [Array<Types::ModelScores>]
    #
    # @!attribute [rw] rule_results
    #   The results from the rules.
    #   @return [Array<Types::RuleResult>]
    #
    # @!attribute [rw] external_model_outputs
    #   The model scores for Amazon SageMaker models.
    #   @return [Array<Types::ExternalModelOutputs>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventPredictionResult AWS API Documentation
    #
    class GetEventPredictionResult < Struct.new(
      :model_scores,
      :rule_results,
      :external_model_outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the event to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type of the event to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventRequest AWS API Documentation
    #
    class GetEventRequest < Struct.new(
      :event_id,
      :event_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event
    #   The details of the event.
    #   @return [Types::Event]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventResult AWS API Documentation
    #
    class GetEventResult < Struct.new(
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventTypesRequest AWS API Documentation
    #
    class GetEventTypesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_types
    #   An array of event types.
    #   @return [Array<Types::EventType>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventTypesResult AWS API Documentation
    #
    class GetEventTypesResult < Struct.new(
      :event_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_endpoint
    #   The Amazon SageMaker model endpoint.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetExternalModelsRequest AWS API Documentation
    #
    class GetExternalModelsRequest < Struct.new(
      :model_endpoint,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] external_models
    #   Gets the Amazon SageMaker models.
    #   @return [Array<Types::ExternalModel>]
    #
    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetExternalModelsResult AWS API Documentation
    #
    class GetExternalModelsResult < Struct.new(
      :external_models,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key
    #   The KMS encryption key.
    #   @return [Types::KMSKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetKMSEncryptionKeyResult AWS API Documentation
    #
    class GetKMSEncryptionKeyResult < Struct.new(
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the label or labels to get.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetLabelsRequest AWS API Documentation
    #
    class GetLabelsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labels
    #   An array of labels.
    #   @return [Array<Types::Label>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetLabelsResult AWS API Documentation
    #
    class GetLabelsResult < Struct.new(
      :labels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetListElementsRequest AWS API Documentation
    #
    class GetListElementsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elements
    #   The list elements.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetListElementsResult AWS API Documentation
    #
    class GetListElementsResult < Struct.new(
      :elements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetListsMetadataRequest AWS API Documentation
    #
    class GetListsMetadataRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lists
    #   The metadata of the specified list or all lists under the account.
    #   @return [Array<Types::AllowDenyList>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetListsMetadataResult AWS API Documentation
    #
    class GetListsMetadataResult < Struct.new(
      :lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelVersionRequest AWS API Documentation
    #
    class GetModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :model_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The training data source.
    #   @return [String]
    #
    # @!attribute [rw] training_data_schema
    #   The training data schema.
    #   @return [Types::TrainingDataSchema]
    #
    # @!attribute [rw] external_events_detail
    #   The details of the external events data used for training the model
    #   version. This will be populated if the `trainingDataSource` is
    #   `EXTERNAL_EVENTS`
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] ingested_events_detail
    #   The details of the ingested events data used for training the model
    #   version. This will be populated if the `trainingDataSource` is
    #   `INGESTED_EVENTS`.
    #   @return [Types::IngestedEventsDetail]
    #
    # @!attribute [rw] status
    #   The model version status.
    #
    #   Possible values are:
    #
    #   * `TRAINING_IN_PROGRESS`
    #
    #   * `TRAINING_COMPLETE`
    #
    #   * `ACTIVATE_REQUESTED`
    #
    #   * `ACTIVATE_IN_PROGRESS`
    #
    #   * `ACTIVE`
    #
    #   * `INACTIVATE_REQUESTED`
    #
    #   * `INACTIVATE_IN_PROGRESS`
    #
    #   * `INACTIVE`
    #
    #   * `ERROR`
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The model version ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelVersionResult AWS API Documentation
    #
    class GetModelVersionResult < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :status,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelsRequest AWS API Documentation
    #
    class GetModelsRequest < Struct.new(
      :model_id,
      :model_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @!attribute [rw] models
    #   The array of models.
    #   @return [Array<Types::Model>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelsResult AWS API Documentation
    #
    class GetModelsResult < Struct.new(
      :next_token,
      :models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the outcome or outcomes to get.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetOutcomesRequest AWS API Documentation
    #
    class GetOutcomesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outcomes
    #   The outcomes.
    #   @return [Array<Types::Outcome>]
    #
    # @!attribute [rw] next_token
    #   The next page token for subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetOutcomesResult AWS API Documentation
    #
    class GetOutcomesResult < Struct.new(
      :outcomes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of rules to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetRulesRequest AWS API Documentation
    #
    class GetRulesRequest < Struct.new(
      :rule_id,
      :detector_id,
      :rule_version,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_details
    #   The details of the requested rule.
    #   @return [Array<Types::RuleDetail>]
    #
    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetRulesResult AWS API Documentation
    #
    class GetRulesResult < Struct.new(
      :rule_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token of the get variable request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max size per page determined for the get variable request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetVariablesRequest AWS API Documentation
    #
    class GetVariablesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] variables
    #   The names of the variables returned.
    #   @return [Array<Types::Variable>]
    #
    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetVariablesResult AWS API Documentation
    #
    class GetVariablesResult < Struct.new(
      :variables,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data about the stored events.
    #
    # @!attribute [rw] number_of_events
    #   The number of stored events.
    #   @return [Integer]
    #
    # @!attribute [rw] event_data_size_in_bytes
    #   The total size of the stored events.
    #   @return [Integer]
    #
    # @!attribute [rw] least_recent_event
    #   The oldest stored event.
    #   @return [String]
    #
    # @!attribute [rw] most_recent_event
    #   The newest stored event.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the stored event was last updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/IngestedEventStatistics AWS API Documentation
    #
    class IngestedEventStatistics < Struct.new(
      :number_of_events,
      :event_data_size_in_bytes,
      :least_recent_event,
      :most_recent_event,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the ingested event.
    #
    # @!attribute [rw] ingested_events_time_window
    #   The start and stop time of the ingested events.
    #   @return [Types::IngestedEventsTimeWindow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/IngestedEventsDetail AWS API Documentation
    #
    class IngestedEventsDetail < Struct.new(
      :ingested_events_time_window)
      SENSITIVE = []
      include Aws::Structure
    end

    # The start and stop time of the ingested events.
    #
    # @!attribute [rw] start_time
    #   Timestamp of the first ingensted event.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   Timestamp of the final ingested event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/IngestedEventsTimeWindow AWS API Documentation
    #
    class IngestedEventsTimeWindow < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception indicating an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The KMS key details.
    #
    # @!attribute [rw] kms_encryption_key_arn
    #   The encryption key ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/KMSKey AWS API Documentation
    #
    class KMSKey < Struct.new(
      :kms_encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label details.
    #
    # @!attribute [rw] name
    #   The label name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The label description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the label was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the event type was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The label ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Label AWS API Documentation
    #
    class Label < Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label schema.
    #
    # @!attribute [rw] label_mapper
    #   The label mapper maps the Amazon Fraud Detector supported model
    #   classification labels (`FRAUD`, `LEGIT`) to the appropriate event
    #   type labels. For example, if "`FRAUD`" and "`LEGIT`" are Amazon
    #   Fraud Detector supported labels, this mapper could be: `\{"FRAUD" =>
    #   ["0"]`, `"LEGIT" => ["1"]\}` or `\{"FRAUD" => ["false"]`, `"LEGIT"
    #   => ["true"]\}` or `\{"FRAUD" => ["fraud", "abuse"]`, `"LEGIT" =>
    #   ["legit", "safe"]\}`. The value part of the mapper is a list,
    #   because you may have multiple label variants from your event type
    #   for a single Amazon Fraud Detector label.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] unlabeled_events_treatment
    #   The action to take for unlabeled events.
    #
    #   * Use `IGNORE` if you want the unlabeled events to be ignored. This
    #     is recommended when the majority of the events in the dataset are
    #     labeled.
    #
    #   * Use `FRAUD` if you want to categorize all unlabeled events as
    #     “Fraud”. This is recommended when most of the events in your
    #     dataset are fraudulent.
    #
    #   * Use `LEGIT` if you want to categorize all unlabeled events as
    #     “Legit”. This is recommended when most of the events in your
    #     dataset are legitimate.
    #
    #   * Use `AUTO` if you want Amazon Fraud Detector to decide how to use
    #     the unlabeled data. This is recommended when there is significant
    #     unlabeled events in the dataset.
    #
    #   By default, Amazon Fraud Detector ignores the unlabeled data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/LabelSchema AWS API Documentation
    #
    class LabelSchema < Struct.new(
      :label_mapper,
      :unlabeled_events_treatment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The event ID.
    #   @return [Types::FilterCondition]
    #
    # @!attribute [rw] event_type
    #   The event type associated with the detector.
    #   @return [Types::FilterCondition]
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [Types::FilterCondition]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [Types::FilterCondition]
    #
    # @!attribute [rw] prediction_time_range
    #   The time period for when the predictions were generated.
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return. Use the token to make
    #   the call again to retrieve the next page. Keep all other arguments
    #   unchanged. Each pagination token expires after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of predictions to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ListEventPredictionsRequest AWS API Documentation
    #
    class ListEventPredictionsRequest < Struct.new(
      :event_id,
      :event_type,
      :detector_id,
      :detector_version_id,
      :prediction_time_range,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_prediction_summaries
    #   The summary of the past predictions.
    #   @return [Array<Types::EventPredictionSummary>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return. Use the token to make
    #   the call again to retrieve the next page. Keep all other arguments
    #   unchanged. Each pagination token expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ListEventPredictionsResult AWS API Documentation
    #
    class ListEventPredictionsResult < Struct.new(
      :event_prediction_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN that specifies the resource whose tags you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The next token for subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log odds metric details.
    #
    # @!attribute [rw] variable_name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The type of variable.
    #   @return [String]
    #
    # @!attribute [rw] variable_importance
    #   The relative importance of the variable. For more information, see
    #   [Model variable importance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/model-variable-importance.html
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/LogOddsMetric AWS API Documentation
    #
    class LogOddsMetric < Struct.new(
      :variable_name,
      :variable_type,
      :variable_importance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Model performance metrics data points.
    #
    # @!attribute [rw] fpr
    #   The false positive rate. This is the percentage of total legitimate
    #   events that are incorrectly predicted as fraud.
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The percentage of fraud events correctly predicted as fraudulent as
    #   compared to all events predicted as fraudulent.
    #   @return [Float]
    #
    # @!attribute [rw] tpr
    #   The true positive rate. This is the percentage of total fraud the
    #   model detects. Also known as capture rate.
    #   @return [Float]
    #
    # @!attribute [rw] threshold
    #   The model threshold that specifies an acceptable fraud capture rate.
    #   For example, a threshold of 500 means any model score 500 or above
    #   is labeled as fraud.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/MetricDataPoint AWS API Documentation
    #
    class MetricDataPoint < Struct.new(
      :fpr,
      :precision,
      :tpr,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model.
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model description.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the model was created.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of last time the model was updated.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Model AWS API Documentation
    #
    class Model < Struct.new(
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :created_time,
      :last_updated_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pre-formed Amazon SageMaker model input you can include if your
    # detector version includes an imported Amazon SageMaker model endpoint
    # with pass-through input configuration.
    #
    # @!attribute [rw] byte_buffer
    #   The byte buffer of the Amazon SageMaker model endpoint input data
    #   blob.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the Amazon SageMaker model endpoint input data
    #   blob.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelEndpointDataBlob AWS API Documentation
    #
    class ModelEndpointDataBlob < Struct.new(
      :byte_buffer,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon SageMaker model input configuration.
    #
    # @!attribute [rw] event_type_name
    #   The event type name.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the model input configuration. The format differs
    #   depending on if it is passed through to SageMaker or constructed by
    #   Amazon Fraud Detector.
    #   @return [String]
    #
    # @!attribute [rw] use_event_variables
    #   The event variables.
    #   @return [Boolean]
    #
    # @!attribute [rw] json_input_template
    #   Template for constructing the JSON input-data sent to SageMaker. At
    #   event-evaluation, the placeholders for variable names in the
    #   template will be replaced with the variable values before being sent
    #   to SageMaker.
    #   @return [String]
    #
    # @!attribute [rw] csv_input_template
    #   Template for constructing the CSV input-data sent to SageMaker. At
    #   event-evaluation, the placeholders for variable-names in the
    #   template will be replaced with the variable values before being sent
    #   to SageMaker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelInputConfiguration AWS API Documentation
    #
    class ModelInputConfiguration < Struct.new(
      :event_type_name,
      :format,
      :use_event_variables,
      :json_input_template,
      :csv_input_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the Amazon Sagemaker model output configuration.
    #
    # @!attribute [rw] format
    #   The format of the model output configuration.
    #   @return [String]
    #
    # @!attribute [rw] json_key_to_variable_map
    #   A map of JSON keys in response from SageMaker to the Amazon Fraud
    #   Detector variables.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] csv_index_to_variable_map
    #   A map of CSV index values in the SageMaker response to the Amazon
    #   Fraud Detector variables.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelOutputConfiguration AWS API Documentation
    #
    class ModelOutputConfiguration < Struct.new(
      :format,
      :json_key_to_variable_map,
      :csv_index_to_variable_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fraud prediction scores.
    #
    # @!attribute [rw] model_version
    #   The model version.
    #   @return [Types::ModelVersion]
    #
    # @!attribute [rw] scores
    #   The model's fraud prediction scores.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelScores AWS API Documentation
    #
    class ModelScores < Struct.new(
      :model_version,
      :scores)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model version.
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The model version ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVersion AWS API Documentation
    #
    class ModelVersion < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the model version.
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the model version.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The model version training data source.
    #   @return [String]
    #
    # @!attribute [rw] training_data_schema
    #   The training data schema.
    #   @return [Types::TrainingDataSchema]
    #
    # @!attribute [rw] external_events_detail
    #   The external events data details. This will be populated if the
    #   `trainingDataSource` for the model version is specified as
    #   `EXTERNAL_EVENTS`.
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] ingested_events_detail
    #   The ingested events data details. This will be populated if the
    #   `trainingDataSource` for the model version is specified as
    #   `INGESTED_EVENTS`.
    #   @return [Types::IngestedEventsDetail]
    #
    # @!attribute [rw] training_result
    #   The training results.
    #   @return [Types::TrainingResult]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the model was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the model was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The model version ARN.
    #   @return [String]
    #
    # @!attribute [rw] training_result_v2
    #   The training result details. The details include the relative
    #   importance of the variables.
    #   @return [Types::TrainingResultV2]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVersionDetail AWS API Documentation
    #
    class ModelVersionDetail < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :training_result,
      :last_updated_time,
      :created_time,
      :arn,
      :training_result_v2)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model version evalutions.
    #
    # @!attribute [rw] output_variable_name
    #   The output variable name.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_score
    #   The evaluation score generated for the model version.
    #   @return [String]
    #
    # @!attribute [rw] prediction_explanations
    #   The prediction explanations generated for the model version.
    #   @return [Types::PredictionExplanations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVersionEvaluation AWS API Documentation
    #
    class ModelVersionEvaluation < Struct.new(
      :output_variable_name,
      :evaluation_score,
      :prediction_explanations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Online Fraud Insights (OFI) model performance metrics data points.
    #
    # @!attribute [rw] fpr
    #   The false positive rate. This is the percentage of total legitimate
    #   events that are incorrectly predicted as fraud.
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The percentage of fraud events correctly predicted as fraudulent as
    #   compared to all events predicted as fraudulent.
    #   @return [Float]
    #
    # @!attribute [rw] tpr
    #   The true positive rate. This is the percentage of total fraud the
    #   model detects. Also known as capture rate.
    #   @return [Float]
    #
    # @!attribute [rw] threshold
    #   The model threshold that specifies an acceptable fraud capture rate.
    #   For example, a threshold of 500 means any model score 500 or above
    #   is labeled as fraud.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/OFIMetricDataPoint AWS API Documentation
    #
    class OFIMetricDataPoint < Struct.new(
      :fpr,
      :precision,
      :tpr,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Online Fraud Insights (OFI) model performance score.
    #
    # @!attribute [rw] auc
    #   The area under the curve (auc). This summarizes the total positive
    #   rate (tpr) and false positive rate (FPR) across all possible model
    #   score thresholds.
    #   @return [Float]
    #
    # @!attribute [rw] uncertainty_range
    #   Indicates the range of area under curve (auc) expected from the OFI
    #   model. A range greater than 0.1 indicates higher model uncertainity.
    #   @return [Types::UncertaintyRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/OFIModelPerformance AWS API Documentation
    #
    class OFIModelPerformance < Struct.new(
      :auc,
      :uncertainty_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Online Fraud Insights (OFI) model training metric details.
    #
    # @!attribute [rw] metric_data_points
    #   The model's performance metrics data points.
    #   @return [Array<Types::OFIMetricDataPoint>]
    #
    # @!attribute [rw] model_performance
    #   The model's overall performance score.
    #   @return [Types::OFIModelPerformance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/OFITrainingMetricsValue AWS API Documentation
    #
    class OFITrainingMetricsValue < Struct.new(
      :metric_data_points,
      :model_performance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The outcome.
    #
    # @!attribute [rw] name
    #   The outcome name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The outcome description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the outcome was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the outcome was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The outcome ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Outcome AWS API Documentation
    #
    class Outcome < Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The prediction explanations that provide insight into how each event
    # variable impacted the model version's fraud prediction score.
    #
    # @!attribute [rw] variable_impact_explanations
    #   The details of the event variable's impact on the prediction score.
    #   @return [Array<Types::VariableImpactExplanation>]
    #
    # @!attribute [rw] aggregated_variables_impact_explanations
    #   The details of the aggregated variables impact on the prediction
    #   score.
    #
    #   Account Takeover Insights (ATI) model uses event variables from the
    #   login data you provide to continuously calculate a set of variables
    #   (aggregated variables) based on historical events. For example, your
    #   ATI model might calculate the number of times an user has logged in
    #   using the same IP address. In this case, event variables used to
    #   derive the aggregated variables are `IP address` and `user`.
    #   @return [Array<Types::AggregatedVariablesImpactExplanation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PredictionExplanations AWS API Documentation
    #
    class PredictionExplanations < Struct.new(
      :variable_impact_explanations,
      :aggregated_variables_impact_explanations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time period for when the predictions were generated.
    #
    # @!attribute [rw] start_time
    #   The start time of the time period for when the predictions were
    #   generated.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time of the time period for when the predictions were
    #   generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PredictionTimeRange AWS API Documentation
    #
    class PredictionTimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the detector.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutDetectorRequest AWS API Documentation
    #
    class PutDetectorRequest < Struct.new(
      :detector_id,
      :description,
      :event_type_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutDetectorResult AWS API Documentation
    #
    class PutDetectorResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the entity type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEntityTypeRequest AWS API Documentation
    #
    class PutEntityTypeRequest < Struct.new(
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEntityTypeResult AWS API Documentation
    #
    class PutEntityTypeResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event type.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   The event type variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] labels
    #   The event type labels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_types
    #   The entity type for the event type. Example entity types: customer,
    #   merchant, account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_ingestion
    #   Specifies if ingestion is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] event_orchestration
    #   Enables or disables event orchestration. If enabled, you can send
    #   event predictions to select AWS services for downstream processing
    #   of the events.
    #   @return [Types::EventOrchestration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEventTypeRequest AWS API Documentation
    #
    class PutEventTypeRequest < Struct.new(
      :name,
      :description,
      :event_variables,
      :labels,
      :entity_types,
      :event_ingestion,
      :tags,
      :event_orchestration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEventTypeResult AWS API Documentation
    #
    class PutEventTypeResult < Aws::EmptyStructure; end

    # @!attribute [rw] model_endpoint
    #   The model endpoints name.
    #   @return [String]
    #
    # @!attribute [rw] model_source
    #   The source of the model.
    #   @return [String]
    #
    # @!attribute [rw] invoke_model_endpoint_role_arn
    #   The IAM role used to invoke the model endpoint.
    #   @return [String]
    #
    # @!attribute [rw] input_configuration
    #   The model endpoint input configuration.
    #   @return [Types::ModelInputConfiguration]
    #
    # @!attribute [rw] output_configuration
    #   The model endpoint output configuration.
    #   @return [Types::ModelOutputConfiguration]
    #
    # @!attribute [rw] model_endpoint_status
    #   The model endpoint’s status in Amazon Fraud Detector.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutExternalModelRequest AWS API Documentation
    #
    class PutExternalModelRequest < Struct.new(
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutExternalModelResult AWS API Documentation
    #
    class PutExternalModelResult < Aws::EmptyStructure; end

    # @!attribute [rw] kms_encryption_key_arn
    #   The KMS encryption key ARN.
    #
    #   The KMS key must be single-Region key. Amazon Fraud Detector does
    #   not support multi-Region KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutKMSEncryptionKeyRequest AWS API Documentation
    #
    class PutKMSEncryptionKeyRequest < Struct.new(
      :kms_encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutKMSEncryptionKeyResult AWS API Documentation
    #
    class PutKMSEncryptionKeyResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The label name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The label description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutLabelRequest AWS API Documentation
    #
    class PutLabelRequest < Struct.new(
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutLabelResult AWS API Documentation
    #
    class PutLabelResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the outcome.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The outcome description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutOutcomeRequest AWS API Documentation
    #
    class PutOutcomeRequest < Struct.new(
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutOutcomeResult AWS API Documentation
    #
    class PutOutcomeResult < Aws::EmptyStructure; end

    # An exception indicating the specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception indicating that the attached customer-owned (external)
    # model threw an exception when Amazon Fraud Detector invoked the model.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule.
    #
    # @!attribute [rw] detector_id
    #   The detector for which the rule is associated.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :detector_id,
      :rule_id,
      :rule_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the rule.
    #
    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector for which the rule is associated.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule expression.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The rule language.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The rule outcomes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of the last time the rule was updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp of when the rule was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The rule ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/RuleDetail AWS API Documentation
    #
    class RuleDetail < Struct.new(
      :rule_id,
      :description,
      :detector_id,
      :rule_version,
      :expression,
      :language,
      :outcomes,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # The rule results.
    #
    # @!attribute [rw] rule_id
    #   The rule ID that was matched, based on the rule execution mode.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The outcomes of the matched rule, based on the rule execution mode.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/RuleResult AWS API Documentation
    #
    class RuleResult < Struct.new(
      :rule_id,
      :outcomes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The event ID to upload.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type name of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp that defines when the event under evaluation occurred.
    #   The timestamp must be specified using ISO 8601 standard in UTC.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   Names of the event type's variables you defined in Amazon Fraud
    #   Detector to represent data elements and their corresponding values
    #   for the event you are sending for evaluation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] assigned_label
    #   The label to associate with the event. Required if specifying
    #   `labelTimestamp`.
    #   @return [String]
    #
    # @!attribute [rw] label_timestamp
    #   The timestamp associated with the label. Required if specifying
    #   `assignedLabel`.
    #   @return [String]
    #
    # @!attribute [rw] entities
    #   An array of entities.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/SendEventRequest AWS API Documentation
    #
    class SendEventRequest < Struct.new(
      :event_id,
      :event_type_name,
      :event_timestamp,
      :event_variables,
      :assigned_label,
      :label_timestamp,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/SendEventResult AWS API Documentation
    #
    class SendEventResult < Aws::EmptyStructure; end

    # The performance metrics data points for Transaction Fraud Insights
    # (TFI) model.
    #
    # @!attribute [rw] fpr
    #   The false positive rate. This is the percentage of total legitimate
    #   events that are incorrectly predicted as fraud.
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The percentage of fraud events correctly predicted as fraudulent as
    #   compared to all events predicted as fraudulent.
    #   @return [Float]
    #
    # @!attribute [rw] tpr
    #   The true positive rate. This is the percentage of total fraud the
    #   model detects. Also known as capture rate.
    #   @return [Float]
    #
    # @!attribute [rw] threshold
    #   The model threshold that specifies an acceptable fraud capture rate.
    #   For example, a threshold of 500 means any model score 500 or above
    #   is labeled as fraud.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TFIMetricDataPoint AWS API Documentation
    #
    class TFIMetricDataPoint < Struct.new(
      :fpr,
      :precision,
      :tpr,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Transaction Fraud Insights (TFI) model performance score.
    #
    # @!attribute [rw] auc
    #   The area under the curve (auc). This summarizes the total positive
    #   rate (tpr) and false positive rate (FPR) across all possible model
    #   score thresholds.
    #   @return [Float]
    #
    # @!attribute [rw] uncertainty_range
    #   Indicates the range of area under curve (auc) expected from the TFI
    #   model. A range greater than 0.1 indicates higher model uncertainity.
    #   @return [Types::UncertaintyRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TFIModelPerformance AWS API Documentation
    #
    class TFIModelPerformance < Struct.new(
      :auc,
      :uncertainty_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Transaction Fraud Insights (TFI) model training metric details.
    #
    # @!attribute [rw] metric_data_points
    #   The model's performance metrics data points.
    #   @return [Array<Types::TFIMetricDataPoint>]
    #
    # @!attribute [rw] model_performance
    #   The model performance score.
    #   @return [Types::TFIModelPerformance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TFITrainingMetricsValue AWS API Documentation
    #
    class TFITrainingMetricsValue < Struct.new(
      :metric_data_points,
      :model_performance)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key and value pair.
    #
    # @!attribute [rw] key
    #   A tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value assigned to a tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

    # An exception indicating a throttling error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training data schema.
    #
    # @!attribute [rw] model_variables
    #   The training data schema variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] label_schema
    #   The label schema.
    #   @return [Types::LabelSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingDataSchema AWS API Documentation
    #
    class TrainingDataSchema < Struct.new(
      :model_variables,
      :label_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training metric details.
    #
    # @!attribute [rw] auc
    #   The area under the curve. This summarizes true positive rate (TPR)
    #   and false positive rate (FPR) across all possible model score
    #   thresholds. A model with no predictive power has an AUC of 0.5,
    #   whereas a perfect model has a score of 1.0.
    #   @return [Float]
    #
    # @!attribute [rw] metric_data_points
    #   The data points details.
    #   @return [Array<Types::MetricDataPoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingMetrics AWS API Documentation
    #
    class TrainingMetrics < Struct.new(
      :auc,
      :metric_data_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training metrics details.
    #
    # @!attribute [rw] ofi
    #   The Online Fraud Insights (OFI) model training metric details.
    #   @return [Types::OFITrainingMetricsValue]
    #
    # @!attribute [rw] tfi
    #   The Transaction Fraud Insights (TFI) model training metric details.
    #   @return [Types::TFITrainingMetricsValue]
    #
    # @!attribute [rw] ati
    #   The Account Takeover Insights (ATI) model training metric details.
    #   @return [Types::ATITrainingMetricsValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingMetricsV2 AWS API Documentation
    #
    class TrainingMetricsV2 < Struct.new(
      :ofi,
      :tfi,
      :ati)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training result details.
    #
    # @!attribute [rw] data_validation_metrics
    #   The validation metrics.
    #   @return [Types::DataValidationMetrics]
    #
    # @!attribute [rw] training_metrics
    #   The training metric details.
    #   @return [Types::TrainingMetrics]
    #
    # @!attribute [rw] variable_importance_metrics
    #   The variable importance metrics.
    #   @return [Types::VariableImportanceMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingResult AWS API Documentation
    #
    class TrainingResult < Struct.new(
      :data_validation_metrics,
      :training_metrics,
      :variable_importance_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training result details.
    #
    # @!attribute [rw] data_validation_metrics
    #   The model training data validation metrics.
    #   @return [Types::DataValidationMetrics]
    #
    # @!attribute [rw] training_metrics_v2
    #   The training metric details.
    #   @return [Types::TrainingMetricsV2]
    #
    # @!attribute [rw] variable_importance_metrics
    #   The variable importance metrics details.
    #   @return [Types::VariableImportanceMetrics]
    #
    # @!attribute [rw] aggregated_variables_importance_metrics
    #   The variable importance metrics of the aggregated variables.
    #
    #   Account Takeover Insights (ATI) model uses event variables from the
    #   login data you provide to continuously calculate a set of variables
    #   (aggregated variables) based on historical events. For example, your
    #   ATI model might calculate the number of times an user has logged in
    #   using the same IP address. In this case, event variables used to
    #   derive the aggregated variables are `IP address` and `user`.
    #   @return [Types::AggregatedVariablesImportanceMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingResultV2 AWS API Documentation
    #
    class TrainingResultV2 < Struct.new(
      :data_validation_metrics,
      :training_metrics_v2,
      :variable_importance_metrics,
      :aggregated_variables_importance_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Range of area under curve (auc) expected from the model. A range
    # greater than 0.1 indicates higher model uncertainity. A range is the
    # difference between upper and lower bound of auc.
    #
    # @!attribute [rw] lower_bound_value
    #   The lower bound value of the area under curve (auc).
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound_value
    #   The upper bound value of the area under curve (auc).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UncertaintyRange AWS API Documentation
    #
    class UncertaintyRange < Struct.new(
      :lower_bound_value,
      :upper_bound_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource from which to remove the tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The resource ARN.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionMetadataRequest AWS API Documentation
    #
    class UpdateDetectorVersionMetadataRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionMetadataResult AWS API Documentation
    #
    class UpdateDetectorVersionMetadataResult < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The parent detector ID for the detector version you want to update.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] external_model_endpoints
    #   The Amazon SageMaker model endpoints to include in the detector
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rules
    #   The rules to include in the detector version.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] description
    #   The detector version description.
    #   @return [String]
    #
    # @!attribute [rw] model_versions
    #   The model versions to include in the detector version.
    #   @return [Array<Types::ModelVersion>]
    #
    # @!attribute [rw] rule_execution_mode
    #   The rule execution mode to add to the detector.
    #
    #   If you specify `FIRST_MATCHED`, Amazon Fraud Detector evaluates
    #   rules sequentially, first to last, stopping at the first matched
    #   rule. Amazon Fraud dectector then provides the outcomes for that
    #   single rule.
    #
    #   If you specifiy `ALL_MATCHED`, Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules. You can define
    #   and edit the rule mode at the detector version level, when it is in
    #   draft status.
    #
    #   The default behavior is `FIRST_MATCHED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionRequest AWS API Documentation
    #
    class UpdateDetectorVersionRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :external_model_endpoints,
      :rules,
      :description,
      :model_versions,
      :rule_execution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionResult AWS API Documentation
    #
    class UpdateDetectorVersionResult < Aws::EmptyStructure; end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status.
    #
    #   The only supported values are `ACTIVE` and `INACTIVE`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionStatusRequest AWS API Documentation
    #
    class UpdateDetectorVersionStatusRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionStatusResult AWS API Documentation
    #
    class UpdateDetectorVersionStatusResult < Aws::EmptyStructure; end

    # @!attribute [rw] event_id
    #   The ID of the event associated with the label to update.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The event type of the event associated with the label to update.
    #   @return [String]
    #
    # @!attribute [rw] assigned_label
    #   The new label to assign to the event.
    #   @return [String]
    #
    # @!attribute [rw] label_timestamp
    #   The timestamp associated with the label. The timestamp must be
    #   specified using ISO 8601 standard in UTC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateEventLabelRequest AWS API Documentation
    #
    class UpdateEventLabelRequest < Struct.new(
      :event_id,
      :event_type_name,
      :assigned_label,
      :label_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateEventLabelResult AWS API Documentation
    #
    class UpdateEventLabelResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the list to update.
    #   @return [String]
    #
    # @!attribute [rw] elements
    #   One or more list elements to add or replace. If you are providing
    #   the elements, make sure to specify the `updateMode` to use.
    #
    #   If you are deleting all elements from the list, use `REPLACE` for
    #   the `updateMode` and provide an empty list (0 elements).
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The new description.
    #   @return [String]
    #
    # @!attribute [rw] update_mode
    #   The update mode (type).
    #
    #   * Use `APPEND` if you are adding elements to the list.
    #
    #   * Use `REPLACE` if you replacing existing elements in the list.
    #
    #   * Use `REMOVE` if you are removing elements from the list.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type you want to assign to the list.
    #
    #   <note markdown="1"> You cannot update a variable type of a list that already has a
    #   variable type assigned to it. You can assign a variable type to a
    #   list only if the list does not already have a variable type.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateListRequest AWS API Documentation
    #
    class UpdateListRequest < Struct.new(
      :name,
      :elements,
      :description,
      :update_mode,
      :variable_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateListResult AWS API Documentation
    #
    class UpdateListResult < Aws::EmptyStructure; end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new model description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelRequest AWS API Documentation
    #
    class UpdateModelRequest < Struct.new(
      :model_id,
      :model_type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelResult AWS API Documentation
    #
    class UpdateModelResult < Aws::EmptyStructure; end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] major_version_number
    #   The major version number.
    #   @return [String]
    #
    # @!attribute [rw] external_events_detail
    #   The details of the external events data used for training the model
    #   version. Required if `trainingDataSource` is `EXTERNAL_EVENTS`.
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] ingested_events_detail
    #   The details of the ingested event used for training the model
    #   version. Required if your `trainingDataSource` is `INGESTED_EVENTS`.
    #   @return [Types::IngestedEventsDetail]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionRequest AWS API Documentation
    #
    class UpdateModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :major_version_number,
      :external_events_detail,
      :ingested_events_detail,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number of the model version updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the updated model version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionResult AWS API Documentation
    #
    class UpdateModelVersionResult < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID of the model version to update.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The model version status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionStatusRequest AWS API Documentation
    #
    class UpdateModelVersionStatusRequest < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionStatusResult AWS API Documentation
    #
    class UpdateModelVersionStatusResult < Aws::EmptyStructure; end

    # @!attribute [rw] rule
    #   The rule to update.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleMetadataRequest AWS API Documentation
    #
    class UpdateRuleMetadataRequest < Struct.new(
      :rule,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleMetadataResult AWS API Documentation
    #
    class UpdateRuleMetadataResult < Aws::EmptyStructure; end

    # @!attribute [rw] rule
    #   The rule to update.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule expression.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The outcomes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the rule version.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleVersionRequest AWS API Documentation
    #
    class UpdateRuleVersionRequest < Struct.new(
      :rule,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   The new rule version that was created.
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleVersionResult AWS API Documentation
    #
    class UpdateRuleVersionResult < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The new default value of the variable.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type. For more information see [Variable types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateVariableRequest AWS API Documentation
    #
    class UpdateVariableRequest < Struct.new(
      :name,
      :default_value,
      :description,
      :variable_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateVariableResult AWS API Documentation
    #
    class UpdateVariableResult < Aws::EmptyStructure; end

    # An exception indicating a specified value is not allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The variable.
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the variable. For more information see [Variable
    #   types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The data source of the variable.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the variable.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the variable.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type of the variable.
    #
    #   Valid Values: `AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
    #   BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
    #   BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL
    #   | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
    #   FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
    #   PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
    #   SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY |
    #   SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP |
    #   USERAGENT `
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time when variable was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time when the variable was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Variable AWS API Documentation
    #
    class Variable < Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A variable in the list of variables for the batch create variable
    # request.
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The data source of the variable.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the variable.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the variable.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The type of the variable. For more information see [Variable
    #   types][1].
    #
    #   Valid Values: `AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
    #   BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
    #   BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL
    #   | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
    #   FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
    #   PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
    #   SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY |
    #   SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP |
    #   USERAGENT `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/VariableEntry AWS API Documentation
    #
    class VariableEntry < Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the event variable's impact on the prediction score.
    #
    # @!attribute [rw] event_variable_name
    #   The event variable name.
    #   @return [String]
    #
    # @!attribute [rw] relative_impact
    #   The event variable's relative impact in terms of magnitude on the
    #   prediction scores. The relative impact values consist of a numerical
    #   rating (0-5, 5 being the highest) and direction
    #   (increased/decreased) impact of the fraud risk.
    #   @return [String]
    #
    # @!attribute [rw] log_odds_impact
    #   The raw, uninterpreted value represented as log-odds of the fraud.
    #   These values are usually between -10 to +10, but range from -
    #   infinity to + infinity.
    #
    #   * A positive value indicates that the variable drove the risk score
    #     up.
    #
    #   * A negative value indicates that the variable drove the risk score
    #     down.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/VariableImpactExplanation AWS API Documentation
    #
    class VariableImpactExplanation < Struct.new(
      :event_variable_name,
      :relative_impact,
      :log_odds_impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # The variable importance metrics details.
    #
    # @!attribute [rw] log_odds_metrics
    #   List of variable metrics.
    #   @return [Array<Types::LogOddsMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/VariableImportanceMetrics AWS API Documentation
    #
    class VariableImportanceMetrics < Struct.new(
      :log_odds_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

# frozen_string_literal: true

# This is generated code!

module Aws::FraudDetector
  # This module contains the types returned by client operations.
  module Types

    # <p>
    #             The Account Takeover Insights (ATI) model performance metrics data points.
    #         </p>
    # @!attribute cr
    #   <p>
    #             The challenge rate. This indicates the percentage of login events that the model recommends to challenge such as  
    #             one-time password, multi-factor authentication, and investigations.
    #           </p>
    #   @return [Float]
    # @!attribute adr
    #   <p>
    #               The anomaly discovery rate. This metric quantifies the percentage of anomalies that can be detected by the model at the selected score threshold.  
    #               A lower score threshold increases the percentage of anomalies captured by the model, but would also require challenging a larger percentage of 
    #               login events, leading to a higher customer friction.
    #           </p>
    #   @return [Float]
    # @!attribute threshold
    #   <p>
    #               The model's threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any model score 500 or above is 
    #               labeled as fraud.
    #           </p>
    #   @return [Float]
    # @!attribute atodr
    #   <p>
    #               The account takeover discovery rate. This metric quantifies the percentage of account compromise events that can be detected by the model at the selected score threshold.
    #               This metric is only available if 50 or more entities with at-least one labeled account takeover event is present in the ingested dataset.
    #           </p>
    #   @return [Float]
    class ATIMetricDataPoint < Struct.new(
      nil,
      :cr,
      :adr,
      :threshold,
      :atodr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Account Takeover Insights (ATI) model performance score.
    #         </p>
    # @!attribute asi
    #   <p>
    #               The anomaly separation index (ASI) score. This metric summarizes the overall ability of the model to separate anomalous activities from the normal behavior. Depending on the business, a 
    #               large fraction of these anomalous activities can be malicious and correspond to the account takeover attacks. A model with no separability power will have the lowest possible 
    #               ASI score of 0.5, whereas the a model with a high separability power will have the highest possible ASI score of 1.0
    #           </p>
    #   @return [Float]
    class ATIModelPerformance < Struct.new(
      nil,
      :asi,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Account Takeover Insights (ATI) model training metric details. 
    #         </p>
    # @!attribute metric_data_points
    #   <p>
    #               The model's performance metrics data points.
    #           </p>
    #   @return [Array<Types::ATIMetricDataPoint>]
    # @!attribute model_performance
    #   <p>
    #               The model's overall performance scores.
    #           </p>
    #   @return [Types::ATIModelPerformance]
    class ATITrainingMetricsValue < Struct.new(
      nil,
      :metric_data_points,
      :model_performance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating Amazon Fraud Detector does not have the needed permissions. This can occur if you submit a request, such as <code>PutExternalModel</code>, that specifies a role that is not in your account.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log odds metric details.</p>
    #          <p>Account Takeover Insights (ATI) model uses event variables from the login data you 
    #             provide to continuously calculate a set of variables (aggregated variables) based on historical events. For example, your ATI model might calculate the number of times an user has logged in using the same IP address. 
    #             In this case, event variables used to derive the aggregated variables are <code>IP address</code> and <code>user</code>.</p>
    # @!attribute variable_names
    #   <p>
    #               The names of all the variables.  
    #           </p>
    #   @return [Array<String>]
    # @!attribute aggregated_variables_importance
    #   <p>
    #               The relative importance of the variables in the list to the other event variable. 
    #           </p>
    #   @return [Float]
    class AggregatedLogOddsMetric < Struct.new(
      nil,
      :variable_names,
      :aggregated_variables_importance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The details of the impact of aggregated variables on the prediction score. </p>
    #          <p>Account Takeover Insights (ATI) model  uses the login data you 
    #             provide to continuously calculate a set of variables (aggregated variables) based on historical events. For example, the model might calculate the number of times an user has logged in using the same IP address. 
    #             In this case, event variables used to derive the aggregated variables are <code>IP address</code> and <code>user</code>.</p>
    # @!attribute event_variable_names
    #   <p>
    #               The names of all the event variables that were used to derive the aggregated variables.  
    #           </p>
    #   @return [Array<String>]
    # @!attribute relative_impact
    #   <p>
    #               The relative impact of the aggregated variables in terms of magnitude on the prediction scores.  
    #           </p>
    #   @return [String]
    # @!attribute log_odds_impact
    #   <p>
    #               The raw, uninterpreted value represented as log-odds of the fraud.  These values are usually between -10 to +10, but range from -infinity to +infinity.</p>
    #            <ul>
    #               <li>
    #                  <p>A positive value indicates that the variables drove the risk score up.</p>
    #               </li>
    #               <li>
    #                  <p>A negative value indicates that the variables drove the risk score down.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    class AggregatedVariablesImpactExplanation < Struct.new(
      nil,
      :event_variable_names,
      :relative_impact,
      :log_odds_impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the relative importance of the aggregated variables.</p>
    #          <p>Account Takeover Insights (ATI) model uses event variables from the login data you 
    #             provide to continuously calculate a set of variables (aggregated variables) based on historical events. For example, your ATI model might calculate the number of times an user has logged in using the same IP address. 
    #             In this case, event variables used to derive the aggregated variables are <code>IP address</code> and <code>user</code>.</p>
    # @!attribute log_odds_metrics
    #   <p>
    #               List of variables' metrics.
    #           </p>
    #   @return [Array<Types::AggregatedLogOddsMetric>]
    class AggregatedVariablesImportanceMetrics < Struct.new(
      nil,
      :log_odds_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The metadata of a list.
    #         </p>
    # @!attribute name
    #   <p>
    #               The name of the list.
    #           </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #               The description of the list.
    #           </p>
    #   @return [String]
    # @!attribute variable_type
    #   <p>
    #               The variable type of the list.
    #           </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>
    #               The time the list was created.
    #           </p>
    #   @return [String]
    # @!attribute updated_time
    #   <p>
    #               The time the list was last updated.
    #           </p>
    #   @return [String]
    # @!attribute arn
    #   <p>
    #               The ARN of the list.
    #           </p>
    #   @return [String]
    class AllowDenyList < Struct.new(
      nil,
      :name,
      :description,
      :variable_type,
      :created_time,
      :updated_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the error of the batch create variable API.</p>
    # @!attribute name
    #   <p>The name.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code. </p>
    #   @return [Integer]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchCreateVariableError < Struct.new(
      nil,
      :name,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # @!attribute variable_entries
    #   <p>The list of variables for the batch create variable request.</p>
    #   @return [Array<Types::VariableEntry>]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class BatchCreateVariableRequest < Struct.new(
      nil,
      :variable_entries,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Provides the errors for the <code>BatchCreateVariable</code> request.</p>
    #   @return [Array<Types::BatchCreateVariableError>]
    class BatchCreateVariableResult < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the error of the batch get variable API.</p>
    # @!attribute name
    #   <p>The error name. </p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code. </p>
    #   @return [Integer]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchGetVariableError < Struct.new(
      nil,
      :name,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # @!attribute names
    #   <p>The list of variable names to get.</p>
    #   @return [Array<String>]
    class BatchGetVariableRequest < Struct.new(
      nil,
      :names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute variables
    #   <p>The returned variables.</p>
    #   @return [Array<Types::Variable>]
    # @!attribute errors
    #   <p>The errors from the request.</p>
    #   @return [Array<Types::BatchGetVariableError>]
    class BatchGetVariableResult < Struct.new(
      nil,
      :variables,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The batch import job details.</p>
    # @!attribute job_id
    #   <p>The ID of the batch import job. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch import job.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason batch import job failed.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Timestamp of when the batch import job started.</p>
    #   @return [String]
    # @!attribute completion_time
    #   <p>Timestamp of when batch import job completed.</p>
    #   @return [String]
    # @!attribute input_path
    #   <p>The Amazon S3 location of your data file for batch import.</p>
    #   @return [String]
    # @!attribute output_path
    #   <p>The Amazon S3 location of your output file.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the batch import job.</p>
    #   @return [String]
    # @!attribute processed_records_count
    #   <p>The number of records processed by batch import job.</p>
    #   @return [Integer]
    # @!attribute failed_records_count
    #   <p>The number of records that failed to import. </p>
    #   @return [Integer]
    # @!attribute total_records_count
    #   <p>The total number of records in the batch import job.</p>
    #   @return [Integer]
    class BatchImport < Struct.new(
      nil,
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
      :total_records_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The batch prediction details.</p>
    # @!attribute job_id
    #   <p>The job ID for the batch prediction.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The batch prediction status.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason a batch prediction job failed.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Timestamp of when the batch prediction job started.</p>
    #   @return [String]
    # @!attribute completion_time
    #   <p>Timestamp of when the batch prediction job completed.</p>
    #   @return [String]
    # @!attribute last_heartbeat_time
    #   <p>Timestamp of most recent heartbeat indicating the batch prediction job was making progress.</p>
    #   @return [String]
    # @!attribute input_path
    #   <p>The Amazon S3 location of your training file.</p>
    #   @return [String]
    # @!attribute output_path
    #   <p>The Amazon S3 location of your output file.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute detector_name
    #   <p>The name of the detector.</p>
    #   @return [String]
    # @!attribute detector_version
    #   <p>The detector version. </p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of batch prediction job.</p>
    #   @return [String]
    # @!attribute processed_records_count
    #   <p>The number of records processed by the batch prediction job.</p>
    #   @return [Integer]
    # @!attribute total_records_count
    #   <p>The total number of records in the batch prediction job.</p>
    #   @return [Integer]
    class BatchPrediction < Struct.new(
      nil,
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
      :total_records_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p> The ID of an in-progress batch import job to cancel. </p>
    #            <p>Amazon Fraud Detector will throw an error if the batch import job is in <code>FAILED</code>, <code>CANCELED</code>, or  <code>COMPLETED</code> state.</p>
    #   @return [String]
    class CancelBatchImportJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelBatchImportJobResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch prediction job to cancel.</p>
    #   @return [String]
    class CancelBatchPredictionJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelBatchPredictionJobResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating there was a conflict during a delete operation.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch import job. The ID cannot be of a past job, unless the job exists in <code>CREATE_FAILED</code> state.</p>
    #   @return [String]
    # @!attribute input_path
    #   <p>The URI that points to the Amazon S3 location of your data file.</p>
    #   @return [String]
    # @!attribute output_path
    #   <p>The URI that points to the Amazon S3 location for storing your results. </p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role created for Amazon S3 bucket that holds your data file.</p>
    #            <p>The IAM role must have read permissions to your input S3 bucket and write permissions to your output S3 bucket.
    #            For more information about bucket permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html">User policy examples</a> in the 
    #            <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key-value pairs associated with this request.  </p>
    #   @return [Array<Types::Tag>]
    class CreateBatchImportJobRequest < Struct.new(
      nil,
      :job_id,
      :input_path,
      :output_path,
      :event_type_name,
      :iam_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateBatchImportJobResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch prediction job.</p>
    #   @return [String]
    # @!attribute input_path
    #   <p>The Amazon S3 location of your training file.</p>
    #   @return [String]
    # @!attribute output_path
    #   <p>The Amazon S3 location of your output file.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute detector_name
    #   <p>The name of the detector.</p>
    #   @return [String]
    # @!attribute detector_version
    #   <p>The detector version.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #            <p>The IAM Role must have read permissions to your input S3 bucket and write permissions to your output S3 bucket.
    #            For more information about bucket permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html">User policy examples</a> in the 
    #            <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateBatchPredictionJobRequest < Struct.new(
      nil,
      :job_id,
      :input_path,
      :output_path,
      :event_type_name,
      :detector_name,
      :detector_version,
      :iam_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateBatchPredictionJobResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector under which you want to create a new version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the detector version.</p>
    #   @return [String]
    # @!attribute external_model_endpoints
    #   <p>The Amazon Sagemaker model endpoints to include in the detector version.</p>
    #   @return [Array<String>]
    # @!attribute rules
    #   <p>The rules to include in the detector version.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute model_versions
    #   <p>The model versions to include in the detector version.</p>
    #   @return [Array<Types::ModelVersion>]
    # @!attribute rule_execution_mode
    #   <p>The rule execution mode for the rules included in the detector version.</p>
    #            <p>You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #            <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #            <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. </p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateDetectorVersionRequest < Struct.new(
      nil,
      :detector_id,
      :description,
      :external_model_endpoints,
      :rules,
      :model_versions,
      :rule_execution_mode,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID for the created version's parent detector.</p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The ID for the created detector. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the detector version.</p>
    #   @return [String]
    class CreateDetectorVersionResult < Struct.new(
      nil,
      :detector_id,
      :detector_version_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #               The name of the list.
    #           </p>
    #   @return [String]
    # @!attribute elements
    #   <p>
    #               The names of the elements, if providing.  You can also create an empty list and add elements later using the <a href="https://docs.aws.amazon.com/frauddetector/latest/api/API_Updatelist.html">UpdateList</a> API.
    #           </p>
    #   @return [Array<String>]
    # @!attribute variable_type
    #   <p>
    #               The variable type of the list. You can only assign the variable type with String data type.  For more information, see 
    #               <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.
    #           </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #               The description of the list.
    #           </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #               A collection of the key and value pairs.
    #           </p>
    #   @return [Array<Types::Tag>]
    class CreateListRequest < Struct.new(
      nil,
      :name,
      :elements,
      :variable_type,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateListResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The model description. </p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateModelRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateModelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID. </p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute training_data_source
    #   <p>The training data source location in Amazon S3. </p>
    #   @return [String]
    # @!attribute training_data_schema
    #   <p>The training data schema.</p>
    #   @return [Types::TrainingDataSchema]
    # @!attribute external_events_detail
    #   <p>Details of the external events data used for model version training. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    #   @return [Types::ExternalEventsDetail]
    # @!attribute ingested_events_detail
    #   <p>Details of the ingested events data used for model version training. Required if <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #   @return [Types::IngestedEventsDetail]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateModelVersionRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number of the model version created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The model version status. </p>
    #   @return [String]
    class CreateModelVersionResult < Struct.new(
      nil,
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>The detector ID for the rule's parent detector.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The rule description.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The rule expression.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language of the rule.</p>
    #   @return [String]
    # @!attribute outcomes
    #   <p>The outcome or outcomes returned when the rule expression matches.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateRuleRequest < Struct.new(
      nil,
      :rule_id,
      :detector_id,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule
    #   <p>The created rule.</p>
    #   @return [Types::Rule]
    class CreateRuleResult < Struct.new(
      nil,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the variable.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The source of the data.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value for the variable when no value is received.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.
    #   				</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT</code>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateVariableRequest < Struct.new(
      nil,
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateVariableResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The model training data validation metrics.</p>
    # @!attribute file_level_messages
    #   <p>The file-specific model training data validation messages.</p>
    #   @return [Array<Types::FileValidationMessage>]
    # @!attribute field_level_messages
    #   <p>The field-specific model training validation messages.</p>
    #   @return [Array<Types::FieldValidationMessage>]
    class DataValidationMetrics < Struct.new(
      nil,
      :file_level_messages,
      :field_level_messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch import job to delete. </p>
    #   @return [String]
    class DeleteBatchImportJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteBatchImportJobResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch prediction job to delete.</p>
    #   @return [String]
    class DeleteBatchPredictionJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteBatchPredictionJobResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector to delete.</p>
    #   @return [String]
    class DeleteDetectorRequest < Struct.new(
      nil,
      :detector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDetectorResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the parent detector for the detector version to delete.</p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The ID of the detector version to delete.</p>
    #   @return [String]
    class DeleteDetectorVersionRequest < Struct.new(
      nil,
      :detector_id,
      :detector_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDetectorVersionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the entity type to delete.</p>
    #   @return [String]
    class DeleteEntityTypeRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEntityTypeResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The ID of the event to delete.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute delete_audit_history
    #   <p>Specifies whether or not to delete any predictions associated with the event. If set to <code>True</code>, </p>
    #   @return [Boolean]
    class DeleteEventRequest < Struct.new(
      nil,
      :event_id,
      :event_type_name,
      :delete_audit_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEventResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the event type to delete.</p>
    #   @return [String]
    class DeleteEventTypeRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEventTypeResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    class DeleteEventsByEventTypeRequest < Struct.new(
      nil,
      :event_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type_name
    #   <p>Name of event type for which to delete the events.</p>
    #   @return [String]
    # @!attribute events_deletion_status
    #   <p>The status of the delete request.</p>
    #   @return [String]
    class DeleteEventsByEventTypeResult < Struct.new(
      nil,
      :event_type_name,
      :events_deletion_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_endpoint
    #   <p>The endpoint of the Amazon Sagemaker model to delete.</p>
    #   @return [String]
    class DeleteExternalModelRequest < Struct.new(
      nil,
      :model_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteExternalModelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the label to delete.</p>
    #   @return [String]
    class DeleteLabelRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLabelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #               The name of the list to delete.
    #           </p>
    #   @return [String]
    class DeleteListRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteListResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID of the model to delete.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type of the model to delete.</p>
    #   @return [String]
    class DeleteModelRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteModelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID of the model version to delete.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type of the model version to delete.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number of the model version to delete.</p>
    #   @return [String]
    class DeleteModelVersionRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :model_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteModelVersionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the outcome to delete.</p>
    #   @return [String]
    class DeleteOutcomeRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteOutcomeResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule
    #   <p>A rule.</p>
    #   @return [Types::Rule]
    class DeleteRuleRequest < Struct.new(
      nil,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRuleResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the variable to delete.</p>
    #   @return [String]
    class DeleteVariableRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVariableResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token from the previous response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for the request.</p>
    #   @return [Integer]
    class DescribeDetectorRequest < Struct.new(
      nil,
      :detector_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute detector_version_summaries
    #   <p>The status and description for each detector version.</p>
    #   @return [Array<Types::DetectorVersionSummary>]
    # @!attribute next_token
    #   <p>The next token to be used for subsequent requests.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The detector ARN.</p>
    #   @return [String]
    class DescribeDetectorResult < Struct.new(
      nil,
      :detector_id,
      :detector_version_summaries,
      :next_token,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token from the previous results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class DescribeModelVersionsRequest < Struct.new(
      nil,
      :model_id,
      :model_version_number,
      :model_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_version_details
    #   <p>The model version details.</p>
    #   @return [Array<Types::ModelVersionDetail>]
    # @!attribute next_token
    #   <p>The next token.</p>
    #   @return [String]
    class DescribeModelVersionsResult < Struct.new(
      nil,
      :model_version_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The detector.</p>
    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detector description.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Timestamp of when the detector was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>Timestamp of when the detector was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The detector ARN.</p>
    #   @return [String]
    class Detector < Struct.new(
      nil,
      :detector_id,
      :description,
      :event_type_name,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the detector version.</p>
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The detector version status. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The detector version description. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Timestamp of when the detector version was last updated.</p>
    #   @return [String]
    class DetectorVersionSummary < Struct.new(
      nil,
      :detector_version_id,
      :status,
      :description,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The entity details. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute entity_type
    #   <p>The entity type.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The entity ID. If you do not know the <code>entityId</code>, you can pass <code>unknown</code>, which is areserved string literal.</p>
    #   @return [String]
    class Entity < Struct.new(
      nil,
      :entity_type,
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The entity type details.</p>
    # @!attribute name
    #   <p>The entity type name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The entity type description.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Timestamp of when the entity type was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>Timestamp of when the entity type was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The entity type ARN.</p>
    #   @return [String]
    class EntityType < Struct.new(
      nil,
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The details of the external (Amazon Sagemaker) model evaluated for generating predictions.
    # </p>
    # @!attribute model_endpoint
    #   <p>
    #   The endpoint of the external (Amazon Sagemaker) model.
    #   </p>
    #   @return [String]
    # @!attribute use_event_variables
    #   <p>
    #   Indicates whether event variables were used to generate predictions.
    #   </p>
    #   @return [Boolean]
    # @!attribute input_variables
    #   <p>
    #   Input variables use for generating predictions.
    #   </p>
    #   @return [Hash<String, String>]
    # @!attribute output_variables
    #   <p>
    #   Output variables.
    #   </p>
    #   @return [Hash<String, String>]
    class EvaluatedExternalModel < Struct.new(
      nil,
      :model_endpoint,
      :use_event_variables,
      :input_variables,
      :output_variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The model version evaluated for generating prediction.
    # </p>
    # @!attribute model_id
    #   <p>
    #   The model ID.
    #   </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>
    #   The model version.
    #   </p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type. </p>
    #            <p>Valid values: <code>ONLINE_FRAUD_INSIGHTS</code> | <code>TRANSACTION_FRAUD_INSIGHTS</code>
    #            </p>
    #   @return [String]
    # @!attribute evaluations
    #   <p>
    #   Evaluations generated for the model version.
    #   </p>
    #   @return [Array<Types::ModelVersionEvaluation>]
    class EvaluatedModelVersion < Struct.new(
      nil,
      :model_id,
      :model_version,
      :model_type,
      :evaluations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The details of the rule used for evaluating variable values.
    # </p>
    # @!attribute rule_id
    #   <p>
    #   The rule ID.
    #   </p>
    #   @return [String]
    # @!attribute rule_version
    #   <p>
    #   The rule version.
    #   </p>
    #   @return [String]
    # @!attribute expression
    #   <p>
    #   The rule expression.
    #   </p>
    #   @return [String]
    # @!attribute expression_with_values
    #   <p>
    #   The rule expression value.
    #   </p>
    #   @return [String]
    # @!attribute outcomes
    #   <p>
    #   The rule outcome.
    #   </p>
    #   @return [Array<String>]
    # @!attribute evaluated
    #   <p>
    #   Indicates whether the rule was evaluated.
    #   </p>
    #   @return [Boolean]
    # @!attribute matched
    #   <p>
    #   Indicates whether the rule matched.
    #   </p>
    #   @return [Boolean]
    class EvaluatedRule < Struct.new(
      nil,
      :rule_id,
      :rule_version,
      :expression,
      :expression_with_values,
      :outcomes,
      :evaluated,
      :matched,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event details.</p>
    # @!attribute event_id
    #   <p>The event ID.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The event type.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #   @return [String]
    # @!attribute event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>
    #   @return [Hash<String, String>]
    # @!attribute current_label
    #   <p>The label associated with the event.</p>
    #   @return [String]
    # @!attribute label_timestamp
    #   <p>The timestamp associated with the label to update. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #   @return [String]
    # @!attribute entities
    #   <p>The event entities.</p>
    #   @return [Array<Types::Entity>]
    class Event < Struct.new(
      nil,
      :event_id,
      :event_type_name,
      :event_timestamp,
      :event_variables,
      :current_label,
      :label_timestamp,
      :entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          The event orchestration status. 
    #       </p>
    # @!attribute event_bridge_enabled
    #   <p>Specifies if event orchestration is enabled through Amazon EventBridge.</p>
    #   @return [Boolean]
    class EventOrchestration < Struct.new(
      nil,
      :event_bridge_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # Information about the summary of an event prediction.
    # </p>
    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>
    #   The event type.
    #   </p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>
    #   The timestamp of the event.
    #   </p>
    #   @return [String]
    # @!attribute prediction_timestamp
    #   <p>
    #   The timestamp when the prediction was generated.
    #   </p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #   @return [String]
    class EventPredictionSummary < Struct.new(
      nil,
      :event_id,
      :event_type_name,
      :event_timestamp,
      :prediction_timestamp,
      :detector_id,
      :detector_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The event type details.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The event type name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The event type description.</p>
    #   @return [String]
    # @!attribute event_variables
    #   <p>The event type event variables.</p>
    #   @return [Array<String>]
    # @!attribute labels
    #   <p>The event type labels.</p>
    #   @return [Array<String>]
    # @!attribute entity_types
    #   <p>The event type entity types.</p>
    #   @return [Array<String>]
    # @!attribute event_ingestion
    #   <p>If <code>Enabled</code>, Amazon Fraud Detector stores event data when you generate a prediction and uses that data to update calculated variables in near real-time. Amazon Fraud Detector uses this data, known as <code>INGESTED_EVENTS</code>, to train your model and  improve fraud predictions.</p>
    #   @return [String]
    # @!attribute ingested_event_statistics
    #   <p>Data about the stored events.</p>
    #   @return [Types::IngestedEventStatistics]
    # @!attribute last_updated_time
    #   <p>Timestamp of when the event type was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>Timestamp of when the event type was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The entity type ARN.</p>
    #   @return [String]
    # @!attribute event_orchestration
    #   <p>The event orchestration status. </p>
    #   @return [Types::EventOrchestration]
    class EventType < Struct.new(
      nil,
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
      :event_orchestration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # Information about the summary of an event variable that was evaluated for generating prediction.
    # </p>
    # @!attribute name
    #   <p>
    #   The event variable name.
    #   </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #   The value of the event variable.
    #   </p>
    #   @return [String]
    # @!attribute source
    #   <p>
    #   The event variable source. 
    #   </p>
    #   @return [String]
    class EventVariableSummary < Struct.new(
      nil,
      :name,
      :value,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for the external events data used for model version training.</p>
    # @!attribute data_location
    #   <p>The Amazon S3 bucket location for the data.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The ARN of the role that provides Amazon Fraud Detector access to the data location.</p>
    #   @return [String]
    class ExternalEventsDetail < Struct.new(
      nil,
      :data_location,
      :data_access_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon SageMaker model.</p>
    # @!attribute model_endpoint
    #   <p>The Amazon SageMaker model endpoints.</p>
    #   @return [String]
    # @!attribute model_source
    #   <p>The source of the model.</p>
    #   @return [String]
    # @!attribute invoke_model_endpoint_role_arn
    #   <p>The role used to invoke the model. </p>
    #   @return [String]
    # @!attribute input_configuration
    #   <p>The input configuration.</p>
    #   @return [Types::ModelInputConfiguration]
    # @!attribute output_configuration
    #   <p>The output configuration.</p>
    #   @return [Types::ModelOutputConfiguration]
    # @!attribute model_endpoint_status
    #   <p>The Amazon Fraud Detector status for the external model endpoint</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Timestamp of when the model was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>Timestamp of when the model was last created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The model ARN.</p>
    #   @return [String]
    class ExternalModel < Struct.new(
      nil,
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The fraud prediction scores from Amazon SageMaker model.</p>
    # @!attribute external_model
    #   <p>The Amazon SageMaker model.</p>
    #   @return [Types::ExternalModelSummary]
    # @!attribute outputs
    #   <p>The fraud prediction scores from Amazon SageMaker model.</p>
    #   @return [Hash<String, String>]
    class ExternalModelOutputs < Struct.new(
      nil,
      :external_model,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon SageMaker model.</p>
    # @!attribute model_endpoint
    #   <p>The endpoint of the Amazon SageMaker model.</p>
    #   @return [String]
    # @!attribute model_source
    #   <p>The source of the model.</p>
    #   @return [String]
    class ExternalModelSummary < Struct.new(
      nil,
      :model_endpoint,
      :model_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message details.</p>
    # @!attribute field_name
    #   <p>The field name.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The message ID.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The message title.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The message content.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The message type.</p>
    #   @return [String]
    class FieldValidationMessage < Struct.new(
      nil,
      :field_name,
      :identifier,
      :title,
      :content,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message details.</p>
    # @!attribute title
    #   <p>The message title.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The message content.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The message type.</p>
    #   @return [String]
    class FileValidationMessage < Struct.new(
      nil,
      :title,
      :content,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # A conditional statement for filtering a list of past predictions.  
    # </p>
    # @!attribute value
    #   <p>
    #   A statement containing a resource property and a value to specify filter condition. 
    #   </p>
    #   @return [String]
    class FilterCondition < Struct.new(
      nil,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch import job to get.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next token from the previous request.</p>
    #   @return [String]
    class GetBatchImportJobsRequest < Struct.new(
      nil,
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_imports
    #   <p>An array containing the details of each batch import job.</p>
    #   @return [Array<Types::BatchImport>]
    # @!attribute next_token
    #   <p>The next token for the subsequent resquest.</p>
    #   @return [String]
    class GetBatchImportJobsResult < Struct.new(
      nil,
      :batch_imports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The batch prediction job for which to get the details.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next token from the previous request.</p>
    #   @return [String]
    class GetBatchPredictionJobsRequest < Struct.new(
      nil,
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_predictions
    #   <p>An array containing the details of each batch prediction job.</p>
    #   @return [Array<Types::BatchPrediction>]
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #   @return [String]
    class GetBatchPredictionJobsResult < Struct.new(
      nil,
      :batch_predictions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type_name
    #   <p>Name of event type for which to get the deletion status.</p>
    #   @return [String]
    class GetDeleteEventsByEventTypeStatusRequest < Struct.new(
      nil,
      :event_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_type_name
    #   <p>The event type name.</p>
    #   @return [String]
    # @!attribute events_deletion_status
    #   <p>The deletion status.</p>
    #   @return [String]
    class GetDeleteEventsByEventTypeStatusResult < Struct.new(
      nil,
      :event_type_name,
      :events_deletion_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The detector version ID.</p>
    #   @return [String]
    class GetDetectorVersionRequest < Struct.new(
      nil,
      :detector_id,
      :detector_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The detector version ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The detector version description.</p>
    #   @return [String]
    # @!attribute external_model_endpoints
    #   <p>The Amazon SageMaker model endpoints included in the detector version.</p>
    #   @return [Array<String>]
    # @!attribute model_versions
    #   <p>The model versions included in the detector version. </p>
    #   @return [Array<Types::ModelVersion>]
    # @!attribute rules
    #   <p>The rules included in the detector version.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute status
    #   <p>The status of the detector version.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The timestamp when the detector version was last updated.
    #           </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the detector version was created. </p>
    #   @return [String]
    # @!attribute rule_execution_mode
    #   <p>The execution mode of the rule in the dectector</p>
    #            <p>
    #               <code>FIRST_MATCHED</code> indicates that Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #            <p>
    #               <code>ALL_MATCHED</code> indicates that Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The detector version ARN.</p>
    #   @return [String]
    class GetDetectorVersionResult < Struct.new(
      nil,
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
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #   @return [Integer]
    class GetDetectorsRequest < Struct.new(
      nil,
      :detector_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detectors
    #   <p>The detectors.</p>
    #   @return [Array<Types::Detector>]
    # @!attribute next_token
    #   <p>The next page token.</p>
    #   @return [String]
    class GetDetectorsResult < Struct.new(
      nil,
      :detectors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #   @return [Integer]
    class GetEntityTypesRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_types
    #   <p>An array of entity types.</p>
    #   @return [Array<Types::EntityType>]
    # @!attribute next_token
    #   <p>The next page token.</p>
    #   @return [String]
    class GetEntityTypesResult < Struct.new(
      nil,
      :entity_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>
    #   The event type associated with the detector specified for the prediction.
    #   </p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #   @return [String]
    # @!attribute prediction_timestamp
    #   <p>
    #       The timestamp that defines when the prediction was generated. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #            <p>We recommend calling <a href="https://docs.aws.amazon.com/frauddetector/latest/api/API_ListEventPredictions.html">ListEventPredictions</a>
    #           first, and using the <code>predictionTimestamp</code> value in the response to provide an accurate prediction timestamp value.</p>
    #   @return [String]
    class GetEventPredictionMetadataRequest < Struct.new(
      nil,
      :event_id,
      :event_type_name,
      :detector_id,
      :detector_version_id,
      :prediction_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>
    #   The event type associated with the detector specified for this prediction.
    #   </p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>
    #   The entity ID.
    #   </p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>
    #   The entity type.
    #   </p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>
    #   The timestamp for when the prediction was generated for the associated event ID.
    #   </p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #   @return [String]
    # @!attribute detector_version_status
    #   <p>
    #   The status of the detector version.
    #   </p>
    #   @return [String]
    # @!attribute event_variables
    #   <p>
    #   A list of event variables that influenced the prediction scores.
    #   </p>
    #   @return [Array<Types::EventVariableSummary>]
    # @!attribute rules
    #   <p>
    #   List of rules associated with the detector version that were used for evaluating variable values.
    #   </p>
    #   @return [Array<Types::EvaluatedRule>]
    # @!attribute rule_execution_mode
    #   <p>
    #   The execution mode of the rule used for evaluating variable values.
    #   </p>
    #   @return [String]
    # @!attribute outcomes
    #   <p>
    #   The outcomes of the matched rule, based on the rule execution mode.
    #   </p>
    #   @return [Array<String>]
    # @!attribute evaluated_model_versions
    #   <p>
    #   Model versions that were evaluated for generating predictions.
    #   </p>
    #   @return [Array<Types::EvaluatedModelVersion>]
    # @!attribute evaluated_external_models
    #   <p>
    #   External (Amazon SageMaker) models that were evaluated for generating predictions.
    #   </p>
    #   @return [Array<Types::EvaluatedExternalModel>]
    # @!attribute prediction_timestamp
    #   <p>The timestamp that defines when the prediction was generated. </p>
    #   @return [String]
    class GetEventPredictionMetadataResult < Struct.new(
      nil,
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
      :prediction_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The detector version ID.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The unique ID used to identify the event.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The event type associated with the detector specified for the prediction.</p>
    #   @return [String]
    # @!attribute entities
    #   <p>The entity type (associated with the detector's event type) and specific entity ID representing who performed the event. If an entity id is not available, use "UNKNOWN."</p>
    #   @return [Array<Types::Entity>]
    # @!attribute event_timestamp
    #   <p>Timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #   @return [String]
    # @!attribute event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and 
    #            their corresponding values for the event you are sending for evaluation.</p>
    #            <important>
    #               <p>You must provide at least one eventVariable</p>
    #            </important>
    #            <p>To ensure most accurate fraud prediction and to simplify your data preparation, Amazon Fraud Detector will replace all missing variables or values as follows:</p>
    #            <p>
    #               <b>For Amazon Fraud Detector trained models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable or if a variable is missing, model will replace the null value or the missing variable (no variable name in the eventVariables map) 
    #            with calculated default mean/medians for numeric variables and with special values for categorical variables.</p>
    #            <p>
    #               <b>For imported SageMaker models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable, the model and rules will use “null” as the value. If a variable is not provided (no variable name in the eventVariables map), model and rules 
    #            will use the default value that is provided for the variable. </p>
    #   @return [Hash<String, String>]
    # @!attribute external_model_endpoint_data_blobs
    #   <p>The Amazon SageMaker model endpoint input data blobs.</p>
    #   @return [Hash<String, Types::ModelEndpointDataBlob>]
    class GetEventPredictionRequest < Struct.new(
      nil,
      :detector_id,
      :detector_version_id,
      :event_id,
      :event_type_name,
      :entities,
      :event_timestamp,
      :event_variables,
      :external_model_endpoint_data_blobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_scores
    #   <p>The model scores. Amazon Fraud Detector generates model scores between 0 and 1000, where 0 is low fraud risk and 1000 is high fraud risk. Model scores are directly related to the false positive rate (FPR). For example, a score of 600 corresponds to an estimated 10% false positive rate whereas a score of 900 corresponds to an estimated 2% false positive rate.</p>
    #   @return [Array<Types::ModelScores>]
    # @!attribute rule_results
    #   <p>The results from the rules.</p>
    #   @return [Array<Types::RuleResult>]
    # @!attribute external_model_outputs
    #   <p>The model scores for Amazon SageMaker models.</p>
    #   @return [Array<Types::ExternalModelOutputs>]
    class GetEventPredictionResult < Struct.new(
      nil,
      :model_scores,
      :rule_results,
      :external_model_outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The ID of the event to retrieve.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The event type of the event to retrieve.</p>
    #   @return [String]
    class GetEventRequest < Struct.new(
      nil,
      :event_id,
      :event_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event
    #   <p>The details of the event.</p>
    #   @return [Types::Event]
    class GetEventResult < Struct.new(
      nil,
      :event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #   @return [Integer]
    class GetEventTypesRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_types
    #   <p>An array of event types.</p>
    #   @return [Array<Types::EventType>]
    # @!attribute next_token
    #   <p>The next page token.</p>
    #   @return [String]
    class GetEventTypesResult < Struct.new(
      nil,
      :event_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_endpoint
    #   <p>The Amazon SageMaker model endpoint.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page token for the request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #   @return [Integer]
    class GetExternalModelsRequest < Struct.new(
      nil,
      :model_endpoint,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute external_models
    #   <p>Gets the Amazon SageMaker models.</p>
    #   @return [Array<Types::ExternalModel>]
    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests.</p>
    #   @return [String]
    class GetExternalModelsResult < Struct.new(
      nil,
      :external_models,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kms_key
    #   <p>The KMS encryption key.</p>
    #   @return [Types::KMSKey]
    class GetKMSEncryptionKeyResult < Struct.new(
      nil,
      :kms_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the label or labels to get.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #   @return [Integer]
    class GetLabelsRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute labels
    #   <p>An array of labels.</p>
    #   @return [Array<Types::Label>]
    # @!attribute next_token
    #   <p>The next page token.</p>
    #   @return [String]
    class GetLabelsResult < Struct.new(
      nil,
      :labels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #               The name of the list.
    #           </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #               The next token for the subsequent request.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               The maximum number of objects to return for the request.
    #           </p>
    #   @return [Integer]
    class GetListElementsRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute elements
    #   <p>
    #               The list elements.
    #           </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>
    #               The next page token.
    #           </p>
    #   @return [String]
    class GetListElementsResult < Struct.new(
      nil,
      :elements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #               The name of the list.
    #           </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #               The next token for the subsequent request.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               The maximum number of objects to return for the request.
    #           </p>
    #   @return [Integer]
    class GetListsMetadataRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lists
    #   <p>
    #               The metadata of the specified list or all lists under the account.
    #           </p>
    #   @return [Array<Types::AllowDenyList>]
    # @!attribute next_token
    #   <p>
    #               The next page token.
    #           </p>
    #   @return [String]
    class GetListsMetadataResult < Struct.new(
      nil,
      :lists,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #   @return [String]
    class GetModelVersionRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :model_version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #   @return [String]
    # @!attribute training_data_source
    #   <p>The training data source.</p>
    #   @return [String]
    # @!attribute training_data_schema
    #   <p>The training data schema.</p>
    #   @return [Types::TrainingDataSchema]
    # @!attribute external_events_detail
    #   <p>The details of the external events data used for training the model version. 
    #            This will be populated if the <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>
    #            </p>
    #   @return [Types::ExternalEventsDetail]
    # @!attribute ingested_events_detail
    #   <p>The details of the ingested events data used for training the model version. 
    #            This will be populated if the <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #   @return [Types::IngestedEventsDetail]
    # @!attribute status
    #   <p>The model version status.</p>
    #            <p>Possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TRAINING_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRAINING_COMPLETE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATE_REQUESTED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATE_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVATE_REQUESTED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVATE_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute arn
    #   <p>The model version ARN.</p>
    #   @return [String]
    class GetModelVersionResult < Struct.new(
      nil,
      :model_id,
      :model_type,
      :model_version_number,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :status,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #   @return [Integer]
    class GetModelsRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests.</p>
    #   @return [String]
    # @!attribute models
    #   <p>The array of models.</p>
    #   @return [Array<Types::Model>]
    class GetModelsResult < Struct.new(
      nil,
      :next_token,
      :models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the outcome or outcomes to get.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page token for the request. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #   @return [Integer]
    class GetOutcomesRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute outcomes
    #   <p>The outcomes. </p>
    #   @return [Array<Types::Outcome>]
    # @!attribute next_token
    #   <p>The next page token for subsequent requests.</p>
    #   @return [String]
    class GetOutcomesResult < Struct.new(
      nil,
      :outcomes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute rule_version
    #   <p>The rule version.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of rules to return for the request.</p>
    #   @return [Integer]
    class GetRulesRequest < Struct.new(
      nil,
      :rule_id,
      :detector_id,
      :rule_version,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_details
    #   <p>The details of the requested rule.</p>
    #   @return [Array<Types::RuleDetail>]
    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests.</p>
    #   @return [String]
    class GetRulesResult < Struct.new(
      nil,
      :rule_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the variable. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next page token of the get variable request. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The max size per page determined for the get variable request. </p>
    #   @return [Integer]
    class GetVariablesRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute variables
    #   <p>The names of the variables returned. </p>
    #   @return [Array<Types::Variable>]
    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests. </p>
    #   @return [String]
    class GetVariablesResult < Struct.new(
      nil,
      :variables,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data about the stored events.</p>
    # @!attribute number_of_events
    #   <p>The number of stored events.</p>
    #   @return [Integer]
    # @!attribute event_data_size_in_bytes
    #   <p>The total size of the stored events.</p>
    #   @return [Integer]
    # @!attribute least_recent_event
    #   <p>The oldest stored event.</p>
    #   @return [String]
    # @!attribute most_recent_event
    #   <p>The newest stored event.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Timestamp of when the stored event was last updated.    
    #         </p>
    #   @return [String]
    class IngestedEventStatistics < Struct.new(
      nil,
      :number_of_events,
      :event_data_size_in_bytes,
      :least_recent_event,
      :most_recent_event,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the ingested event.</p>
    # @!attribute ingested_events_time_window
    #   <p>The start and stop time of the ingested events.</p>
    #   @return [Types::IngestedEventsTimeWindow]
    class IngestedEventsDetail < Struct.new(
      nil,
      :ingested_events_time_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The start and stop time of the ingested events.</p>
    # @!attribute start_time
    #   <p>Timestamp of the first ingensted event.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>Timestamp of the final ingested event.</p>
    #   @return [String]
    class IngestedEventsTimeWindow < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating an internal server error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The KMS key details.</p>
    # @!attribute kms_encryption_key_arn
    #   <p>The encryption key ARN.</p>
    #   @return [String]
    class KMSKey < Struct.new(
      nil,
      :kms_encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The label details.</p>
    # @!attribute name
    #   <p>The label name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The label description.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Timestamp of when the label was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>Timestamp of when the event type was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The label ARN.</p>
    #   @return [String]
    class Label < Struct.new(
      nil,
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The label schema.</p>
    # @!attribute label_mapper
    #   <p>The label mapper maps the Amazon Fraud Detector supported model classification labels (<code>FRAUD</code>, <code>LEGIT</code>) to the appropriate event type labels. For example, if "<code>FRAUD</code>" and "<code>LEGIT</code>" are Amazon Fraud Detector supported labels, this mapper could be: <code>{"FRAUD" => ["0"]</code>, <code>"LEGIT" => ["1"]}</code> or <code>{"FRAUD" => ["false"]</code>, <code>"LEGIT" => ["true"]}</code> or <code>{"FRAUD" => ["fraud", "abuse"]</code>, <code>"LEGIT" => ["legit", "safe"]}</code>. The value part of the mapper is a list, because you may have multiple label variants from your event type for a single Amazon Fraud Detector label.
    #           </p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute unlabeled_events_treatment
    #   <p>The action to take for unlabeled events.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>IGNORE</code> if you want the unlabeled events to be ignored. This is recommended when the majority of the events in the dataset are labeled.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>FRAUD</code>  if you want to categorize all unlabeled events as “Fraud”.  This is recommended when most of the events in your dataset are fraudulent.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>LEGIT</code> if you want to categorize all unlabeled events as “Legit”. This is recommended when most of the events in your dataset are legitimate.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>AUTO</code> if you want Amazon Fraud Detector to decide how to use the unlabeled data.  This is recommended when there is significant unlabeled events in the dataset.</p>
    #               </li>
    #            </ul>
    #            <p>By default, Amazon Fraud Detector ignores the unlabeled data.</p>
    #   @return [String]
    class LabelSchema < Struct.new(
      nil,
      :label_mapper,
      :unlabeled_events_treatment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #   @return [Types::FilterCondition]
    # @!attribute event_type
    #   <p>
    #   The event type associated with the detector.
    #   </p>
    #   @return [Types::FilterCondition]
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #   @return [Types::FilterCondition]
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #   @return [Types::FilterCondition]
    # @!attribute prediction_time_range
    #   <p>
    #   The time period for when the predictions were generated.
    #   </p>
    #   @return [Types::PredictionTimeRange]
    # @!attribute next_token
    #   <p>
    #   Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #   </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #   The maximum number of predictions to return for the request.
    #   </p>
    #   @return [Integer]
    class ListEventPredictionsRequest < Struct.new(
      nil,
      :event_id,
      :event_type,
      :detector_id,
      :detector_version_id,
      :prediction_time_range,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_prediction_summaries
    #   <p>
    #   The summary of the past predictions.
    #   </p>
    #   @return [Array<Types::EventPredictionSummary>]
    # @!attribute next_token
    #   <p>
    #   Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #   </p>
    #   @return [String]
    class ListEventPredictionsResult < Struct.new(
      nil,
      :event_prediction_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN that specifies the resource whose tags you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token from the previous results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #   @return [Integer]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>The next token for subsequent requests. </p>
    #   @return [String]
    class ListTagsForResourceResult < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log odds metric details.</p>
    # @!attribute variable_name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute variable_type
    #   <p>The type of variable.</p>
    #   @return [String]
    # @!attribute variable_importance
    #   <p>The relative importance of the variable. For more information, see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/model-variable-importance.html">Model variable importance</a>.</p>
    #   @return [Float]
    class LogOddsMetric < Struct.new(
      nil,
      :variable_name,
      :variable_type,
      :variable_importance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Model performance metrics data points.</p>
    # @!attribute fpr
    #   <p>The false positive rate. This is the percentage of total legitimate events that are incorrectly predicted as fraud.</p>
    #   @return [Float]
    # @!attribute precision
    #   <p>The percentage of fraud events correctly predicted as fraudulent as compared to all events predicted as fraudulent.</p>
    #   @return [Float]
    # @!attribute tpr
    #   <p>The true positive rate. This is the percentage of total fraud the model detects. Also known as capture rate.</p>
    #   @return [Float]
    # @!attribute threshold
    #   <p>The model threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any model score 500 or above is labeled as fraud.</p>
    #   @return [Float]
    class MetricDataPoint < Struct.new(
      nil,
      :fpr,
      :precision,
      :tpr,
      :threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The model.</p>
    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The model description.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>Timestamp of when the model was created.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>Timestamp of last time the model was updated.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the model.</p>
    #   @return [String]
    class Model < Struct.new(
      nil,
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :created_time,
      :last_updated_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pre-formed Amazon SageMaker model input you can include if your detector version includes an imported Amazon SageMaker model endpoint with pass-through input configuration.</p>
    # @!attribute byte_buffer
    #   <p>The byte buffer of the Amazon SageMaker model endpoint input data blob.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the Amazon SageMaker model endpoint input data blob. </p>
    #   @return [String]
    class ModelEndpointDataBlob < Struct.new(
      nil,
      :byte_buffer,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon SageMaker model input configuration.</p>
    # @!attribute event_type_name
    #   <p>The event type name.</p>
    #   @return [String]
    # @!attribute format
    #   <p> The format of the model input configuration. The format differs depending on if it is
    #               passed through to SageMaker or constructed by Amazon Fraud Detector.</p>
    #   @return [String]
    # @!attribute use_event_variables
    #   <p>The event variables.</p>
    #   @return [Boolean]
    # @!attribute json_input_template
    #   <p> Template for constructing the JSON input-data sent to SageMaker. At event-evaluation,
    #               the placeholders for variable names in the template will be replaced with the variable
    #               values before being sent to SageMaker. </p>
    #   @return [String]
    # @!attribute csv_input_template
    #   <p> Template for constructing the CSV input-data sent to SageMaker. At event-evaluation,
    #               the placeholders for variable-names in the template will be replaced with the variable
    #               values before being sent to SageMaker. </p>
    #   @return [String]
    class ModelInputConfiguration < Struct.new(
      nil,
      :event_type_name,
      :format,
      :use_event_variables,
      :json_input_template,
      :csv_input_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the Amazon Sagemaker model output configuration.</p>
    # @!attribute format
    #   <p>The format of the model output configuration.</p>
    #   @return [String]
    # @!attribute json_key_to_variable_map
    #   <p>A map of JSON keys in response from SageMaker to the Amazon Fraud Detector variables. </p>
    #   @return [Hash<String, String>]
    # @!attribute csv_index_to_variable_map
    #   <p>A map of CSV index values in the SageMaker response to the Amazon Fraud Detector variables. </p>
    #   @return [Hash<String, String>]
    class ModelOutputConfiguration < Struct.new(
      nil,
      :format,
      :json_key_to_variable_map,
      :csv_index_to_variable_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The fraud prediction scores.</p>
    # @!attribute model_version
    #   <p>The model version.</p>
    #   @return [Types::ModelVersion]
    # @!attribute scores
    #   <p>The model's fraud prediction scores.</p>
    #   @return [Hash<String, Float>]
    class ModelScores < Struct.new(
      nil,
      :model_version,
      :scores,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The model version.</p>
    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The model version ARN.</p>
    #   @return [String]
    class ModelVersion < Struct.new(
      nil,
      :model_id,
      :model_type,
      :model_version_number,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the model version.</p>
    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the model version.</p>
    #   @return [String]
    # @!attribute training_data_source
    #   <p>The model version training data source.</p>
    #   @return [String]
    # @!attribute training_data_schema
    #   <p>The training data schema.</p>
    #   @return [Types::TrainingDataSchema]
    # @!attribute external_events_detail
    #   <p>The external events data details. This will be populated if the <code>trainingDataSource</code> for the model version is specified as  <code>EXTERNAL_EVENTS</code>.</p>
    #   @return [Types::ExternalEventsDetail]
    # @!attribute ingested_events_detail
    #   <p>The ingested events data details. This will be populated if the <code>trainingDataSource</code> for the model version is specified as  <code>INGESTED_EVENTS</code>.</p>
    #   @return [Types::IngestedEventsDetail]
    # @!attribute training_result
    #   <p>The training results.</p>
    #   @return [Types::TrainingResult]
    # @!attribute last_updated_time
    #   <p>The timestamp when the model was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the model was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The model version ARN.</p>
    #   @return [String]
    # @!attribute training_result_v2
    #   <p>
    #               The training result details. The details include the relative importance of the variables.
    #           </p>
    #   @return [Types::TrainingResultV2]
    class ModelVersionDetail < Struct.new(
      nil,
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
      :training_result_v2,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The model version evalutions.
    # </p>
    # @!attribute output_variable_name
    #   <p>
    #   The output variable name.
    #   </p>
    #   @return [String]
    # @!attribute evaluation_score
    #   <p>
    #   The evaluation score generated for the model version.
    #   </p>
    #   @return [String]
    # @!attribute prediction_explanations
    #   <p>
    #   The prediction explanations generated for the model version.
    #   </p>
    #   @return [Types::PredictionExplanations]
    class ModelVersionEvaluation < Struct.new(
      nil,
      :output_variable_name,
      :evaluation_score,
      :prediction_explanations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Online Fraud Insights (OFI) model performance metrics data points. 
    #         </p>
    # @!attribute fpr
    #   <p>
    #               The false positive rate. This is the percentage of total legitimate events that are incorrectly predicted as fraud.
    #           </p>
    #   @return [Float]
    # @!attribute precision
    #   <p>
    #               The percentage of fraud events correctly predicted as fraudulent as compared to all events predicted as fraudulent.
    #           </p>
    #   @return [Float]
    # @!attribute tpr
    #   <p>
    #               The true positive rate. This is the percentage of total fraud the model detects. Also known as capture rate.
    #           </p>
    #   @return [Float]
    # @!attribute threshold
    #   <p>
    #               The model threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any model score 500 or above is labeled as fraud.
    #           </p>
    #   @return [Float]
    class OFIMetricDataPoint < Struct.new(
      nil,
      :fpr,
      :precision,
      :tpr,
      :threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Online Fraud Insights (OFI) model performance score.
    #         </p>
    # @!attribute auc
    #   <p>
    #               The area under the curve (auc). This summarizes the total positive rate (tpr) and false positive rate (FPR) across all possible model score thresholds.
    #           </p>
    #   @return [Float]
    # @!attribute uncertainty_range
    #   <p>
    #               Indicates the range of area under curve (auc) expected from the OFI model. A range greater than 0.1 indicates higher model uncertainity.  
    #           </p>
    #   @return [Types::UncertaintyRange]
    class OFIModelPerformance < Struct.new(
      nil,
      :auc,
      :uncertainty_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Online Fraud Insights (OFI) model training metric details. 
    #         </p>
    # @!attribute metric_data_points
    #   <p>
    #               The model's performance metrics data points.
    #           </p>
    #   @return [Array<Types::OFIMetricDataPoint>]
    # @!attribute model_performance
    #   <p>
    #               The model's overall performance score.
    #           </p>
    #   @return [Types::OFIModelPerformance]
    class OFITrainingMetricsValue < Struct.new(
      nil,
      :metric_data_points,
      :model_performance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The outcome.</p>
    # @!attribute name
    #   <p>The outcome name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The outcome description.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The timestamp when the outcome was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the outcome was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The outcome ARN.</p>
    #   @return [String]
    class Outcome < Struct.new(
      nil,
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The prediction explanations that provide insight into how each event variable impacted the model version's fraud prediction score. 
    # </p>
    # @!attribute variable_impact_explanations
    #   <p>
    #   The details of the event variable's impact on the prediction score.
    #   </p>
    #   @return [Array<Types::VariableImpactExplanation>]
    # @!attribute aggregated_variables_impact_explanations
    #   <p>
    #               The details of the aggregated variables impact on the prediction score.  
    #           </p>
    #            <p>Account Takeover Insights (ATI) model uses event variables from the login data you 
    #               provide to continuously calculate a set of variables (aggregated variables) based on historical events. For example, your ATI model might calculate the number of times an user has logged in using the same IP address. 
    #               In this case, event variables used to derive the aggregated variables are <code>IP address</code> and <code>user</code>.</p>
    #   @return [Array<Types::AggregatedVariablesImpactExplanation>]
    class PredictionExplanations < Struct.new(
      nil,
      :variable_impact_explanations,
      :aggregated_variables_impact_explanations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The time period for when the predictions were generated.
    # </p>
    # @!attribute start_time
    #   <p>
    #   The start time of the time period for when the predictions were generated.
    #   </p>
    #   @return [String]
    # @!attribute end_time
    #   <p>
    #   The end time of the time period for when the predictions were generated.
    #   </p>
    #   @return [String]
    class PredictionTimeRange < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the detector.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class PutDetectorRequest < Struct.new(
      nil,
      :detector_id,
      :description,
      :event_type_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutDetectorResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the entity type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class PutEntityTypeRequest < Struct.new(
      nil,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutEntityTypeResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event type.</p>
    #   @return [String]
    # @!attribute event_variables
    #   <p>The event type variables.</p>
    #   @return [Array<String>]
    # @!attribute labels
    #   <p>The event type labels.</p>
    #   @return [Array<String>]
    # @!attribute entity_types
    #   <p>The entity type for the event type. Example entity types: customer, merchant, account.</p>
    #   @return [Array<String>]
    # @!attribute event_ingestion
    #   <p>Specifies if ingestion is enabled or disabled.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute event_orchestration
    #   <p>Enables or disables event orchestration. If enabled, you can send event predictions to select AWS services for downstream processing of the events.</p>
    #   @return [Types::EventOrchestration]
    class PutEventTypeRequest < Struct.new(
      nil,
      :name,
      :description,
      :event_variables,
      :labels,
      :entity_types,
      :event_ingestion,
      :tags,
      :event_orchestration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutEventTypeResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_endpoint
    #   <p>The model endpoints name.</p>
    #   @return [String]
    # @!attribute model_source
    #   <p>The source of the model.</p>
    #   @return [String]
    # @!attribute invoke_model_endpoint_role_arn
    #   <p>The IAM role used to invoke the model endpoint.</p>
    #   @return [String]
    # @!attribute input_configuration
    #   <p>The model endpoint input configuration.</p>
    #   @return [Types::ModelInputConfiguration]
    # @!attribute output_configuration
    #   <p>The model endpoint output configuration.</p>
    #   @return [Types::ModelOutputConfiguration]
    # @!attribute model_endpoint_status
    #   <p>The model endpoint’s status in Amazon Fraud Detector.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class PutExternalModelRequest < Struct.new(
      nil,
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutExternalModelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kms_encryption_key_arn
    #   <p>The KMS encryption key ARN.</p>
    #            <p>The KMS key must be single-Region key. Amazon Fraud Detector does not support multi-Region KMS key.</p>
    #   @return [String]
    class PutKMSEncryptionKeyRequest < Struct.new(
      nil,
      :kms_encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutKMSEncryptionKeyResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The label name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The label description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class PutLabelRequest < Struct.new(
      nil,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutLabelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the outcome.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The outcome description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class PutOutcomeRequest < Struct.new(
      nil,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutOutcomeResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating the specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating that the attached customer-owned (external) model threw an exception when Amazon Fraud Detector invoked the model.</p>
    # @!attribute message
    #   @return [String]
    class ResourceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule.</p>
    # @!attribute detector_id
    #   <p>The detector for which the rule is associated.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #   @return [String]
    # @!attribute rule_version
    #   <p>The rule version.</p>
    #   @return [String]
    class Rule < Struct.new(
      nil,
      :detector_id,
      :rule_id,
      :rule_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the rule.</p>
    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The rule description.</p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>The detector for which the rule is associated.</p>
    #   @return [String]
    # @!attribute rule_version
    #   <p>The rule version.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The rule expression.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The rule language.</p>
    #   @return [String]
    # @!attribute outcomes
    #   <p>The rule outcomes.</p>
    #   @return [Array<String>]
    # @!attribute last_updated_time
    #   <p>Timestamp of the last time the rule was updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp of when the rule was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The rule ARN.</p>
    #   @return [String]
    class RuleDetail < Struct.new(
      nil,
      :rule_id,
      :description,
      :detector_id,
      :rule_version,
      :expression,
      :language,
      :outcomes,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rule results.</p>
    # @!attribute rule_id
    #   <p>The rule ID that was matched, based on the rule execution mode.</p>
    #   @return [String]
    # @!attribute outcomes
    #   <p>The outcomes of the matched rule, based on the rule execution mode.</p>
    #   @return [Array<String>]
    class RuleResult < Struct.new(
      nil,
      :rule_id,
      :outcomes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The event ID to upload.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The event type name of the event.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #   @return [String]
    # @!attribute event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>
    #   @return [Hash<String, String>]
    # @!attribute assigned_label
    #   <p>The label to associate with the event. Required if specifying <code>labelTimestamp</code>.</p>
    #   @return [String]
    # @!attribute label_timestamp
    #   <p>The timestamp associated with the label. Required if specifying <code>assignedLabel</code>.</p>
    #   @return [String]
    # @!attribute entities
    #   <p>An array of entities.</p>
    #   @return [Array<Types::Entity>]
    class SendEventRequest < Struct.new(
      nil,
      :event_id,
      :event_type_name,
      :event_timestamp,
      :event_variables,
      :assigned_label,
      :label_timestamp,
      :entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendEventResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The performance metrics data points for Transaction Fraud Insights (TFI) model. 
    #         </p>
    # @!attribute fpr
    #   <p>
    #               The false positive rate. This is the percentage of total legitimate events that are incorrectly predicted as fraud.
    #           </p>
    #   @return [Float]
    # @!attribute precision
    #   <p>
    #               The percentage of fraud events correctly predicted as fraudulent as compared to all events predicted as fraudulent.
    #           </p>
    #   @return [Float]
    # @!attribute tpr
    #   <p>
    #               The true positive rate. This is the percentage of total fraud the model detects. Also known as capture rate.
    #           </p>
    #   @return [Float]
    # @!attribute threshold
    #   <p>
    #               The model threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any 
    #               model score 500 or above is labeled as fraud.
    #           </p>
    #   @return [Float]
    class TFIMetricDataPoint < Struct.new(
      nil,
      :fpr,
      :precision,
      :tpr,
      :threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Transaction Fraud Insights (TFI) model performance score.
    #         </p>
    # @!attribute auc
    #   <p>
    #               The area under the curve (auc). This summarizes the total positive rate (tpr) and false positive rate (FPR) across all possible model score thresholds.
    #           </p>
    #   @return [Float]
    # @!attribute uncertainty_range
    #   <p>
    #               Indicates the range of area under curve (auc) expected from the TFI model. A range greater than 0.1 indicates higher model uncertainity. 
    #           </p>
    #   @return [Types::UncertaintyRange]
    class TFIModelPerformance < Struct.new(
      nil,
      :auc,
      :uncertainty_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The Transaction Fraud Insights (TFI) model training metric details. 
    #         </p>
    # @!attribute metric_data_points
    #   <p>
    #               The model's performance metrics data points.
    #           </p>
    #   @return [Array<Types::TFIMetricDataPoint>]
    # @!attribute model_performance
    #   <p>
    #               The model performance score.
    #           </p>
    #   @return [Types::TFIModelPerformance]
    class TFITrainingMetricsValue < Struct.new(
      nil,
      :metric_data_points,
      :model_performance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key and value pair. </p>
    # @!attribute key
    #   <p>A tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value assigned to a tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating a throttling error.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The training data schema.</p>
    # @!attribute model_variables
    #   <p>The training data schema variables.</p>
    #   @return [Array<String>]
    # @!attribute label_schema
    #   <p>The label schema.</p>
    #   @return [Types::LabelSchema]
    class TrainingDataSchema < Struct.new(
      nil,
      :model_variables,
      :label_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The training metric details.</p>
    # @!attribute auc
    #   <p>The area under the curve. This summarizes true positive rate (TPR) and false positive rate (FPR) across all possible model score thresholds. A model with no predictive power has an AUC of 0.5, whereas a perfect model has a score of 1.0.</p>
    #   @return [Float]
    # @!attribute metric_data_points
    #   <p>The data points details.</p>
    #   @return [Array<Types::MetricDataPoint>]
    class TrainingMetrics < Struct.new(
      nil,
      :auc,
      :metric_data_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The training metrics details.
    #         </p>
    # @!attribute ofi
    #   <p>
    #               The Online Fraud Insights (OFI) model training metric details.  
    #           </p>
    #   @return [Types::OFITrainingMetricsValue]
    # @!attribute tfi
    #   <p>
    #               The Transaction Fraud Insights (TFI) model training metric details. 
    #           </p>
    #   @return [Types::TFITrainingMetricsValue]
    # @!attribute ati
    #   <p>
    #               The Account Takeover Insights (ATI) model training metric details. 
    #           </p>
    #   @return [Types::ATITrainingMetricsValue]
    class TrainingMetricsV2 < Struct.new(
      nil,
      :ofi,
      :tfi,
      :ati,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The training result details.</p>
    # @!attribute data_validation_metrics
    #   <p>The validation metrics.</p>
    #   @return [Types::DataValidationMetrics]
    # @!attribute training_metrics
    #   <p>The training metric details.</p>
    #   @return [Types::TrainingMetrics]
    # @!attribute variable_importance_metrics
    #   <p>The variable importance metrics.</p>
    #   @return [Types::VariableImportanceMetrics]
    class TrainingResult < Struct.new(
      nil,
      :data_validation_metrics,
      :training_metrics,
      :variable_importance_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The training result details.
    #         </p>
    # @!attribute data_validation_metrics
    #   <p>The model training data validation metrics.</p>
    #   @return [Types::DataValidationMetrics]
    # @!attribute training_metrics_v2
    #   <p>
    #               The training metric details.
    #           </p>
    #   @return [Types::TrainingMetricsV2]
    # @!attribute variable_importance_metrics
    #   <p>The variable importance metrics details.</p>
    #   @return [Types::VariableImportanceMetrics]
    # @!attribute aggregated_variables_importance_metrics
    #   <p>
    #               The variable importance metrics of the aggregated variables.
    #           </p>
    #            <p>Account Takeover Insights (ATI) model uses event variables from the login data you 
    #               provide to continuously calculate a set of variables (aggregated variables) based on historical events. For example, your ATI model might calculate the number of times an user has logged in using the same IP address. 
    #               In this case, event variables used to derive the aggregated variables are <code>IP address</code> and <code>user</code>.</p>
    #   @return [Types::AggregatedVariablesImportanceMetrics]
    class TrainingResultV2 < Struct.new(
      nil,
      :data_validation_metrics,
      :training_metrics_v2,
      :variable_importance_metrics,
      :aggregated_variables_importance_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Range of area under curve (auc) expected from the model. A range greater than 0.1 indicates higher model uncertainity. 
    #             A range is the difference between upper and lower bound of auc. 
    #         </p>
    # @!attribute lower_bound_value
    #   <p>
    #               The lower bound value of the area under curve (auc). 
    #           </p>
    #   @return [Float]
    # @!attribute upper_bound_value
    #   <p>
    #               The upper bound value of the area under curve (auc). 
    #           </p>
    #   @return [Float]
    class UncertaintyRange < Struct.new(
      nil,
      :lower_bound_value,
      :upper_bound_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource from which to remove the tag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The resource ARN.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    class UpdateDetectorVersionMetadataRequest < Struct.new(
      nil,
      :detector_id,
      :detector_version_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDetectorVersionMetadataResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The parent detector ID for the detector version you want to update.</p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #   @return [String]
    # @!attribute external_model_endpoints
    #   <p>The Amazon SageMaker model endpoints to include in the detector version.</p>
    #   @return [Array<String>]
    # @!attribute rules
    #   <p>The rules to include in the detector version.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute description
    #   <p>The detector version description. </p>
    #   @return [String]
    # @!attribute model_versions
    #   <p>The model versions to include in the detector version.</p>
    #   @return [Array<Types::ModelVersion>]
    # @!attribute rule_execution_mode
    #   <p>The rule execution mode to add to the detector.</p>
    #            <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #            <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    #   @return [String]
    class UpdateDetectorVersionRequest < Struct.new(
      nil,
      :detector_id,
      :detector_version_id,
      :external_model_endpoints,
      :rules,
      :description,
      :model_versions,
      :rule_execution_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDetectorVersionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID. </p>
    #   @return [String]
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status.</p>
    #            <p>The only supported values are <code>ACTIVE</code> and <code>INACTIVE</code>
    #            </p>
    #   @return [String]
    class UpdateDetectorVersionStatusRequest < Struct.new(
      nil,
      :detector_id,
      :detector_version_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDetectorVersionStatusResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The ID of the event associated with the label to update.</p>
    #   @return [String]
    # @!attribute event_type_name
    #   <p>The event type of the event associated with the label to update.</p>
    #   @return [String]
    # @!attribute assigned_label
    #   <p>The new label to assign to the event.</p>
    #   @return [String]
    # @!attribute label_timestamp
    #   <p>The timestamp associated with the label. The timestamp must be specified using ISO 8601 standard in UTC. </p>
    #   @return [String]
    class UpdateEventLabelRequest < Struct.new(
      nil,
      :event_id,
      :event_type_name,
      :assigned_label,
      :label_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateEventLabelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #               The name of the list to update.
    #           </p>
    #   @return [String]
    # @!attribute elements
    #   <p>
    #               One or more list elements to add or replace. If you are providing the elements, make sure to specify the <code>updateMode</code> to use.
    #           </p>
    #            <p>If you are deleting all elements from the list, use <code>REPLACE</code> for the <code>updateMode</code> and provide an empty list (0 elements).</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>
    #               The new description.
    #           </p>
    #   @return [String]
    # @!attribute update_mode
    #   <p>
    #               The update mode (type).
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>APPEND</code> if you are adding elements to the list.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>REPLACE</code> if you replacing existing elements in the list.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>REMOVE</code> if you are removing elements from the list.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute variable_type
    #   <p>
    #               The variable type you want to assign to the list.
    #           </p>
    #            <note>
    #               <p>You cannot update a variable type of a list that already has a variable type assigned to it. You can assign a variable type to a list only if the list does not already have a variable type.</p>
    #            </note>
    #   @return [String]
    class UpdateListRequest < Struct.new(
      nil,
      :name,
      :elements,
      :description,
      :update_mode,
      :variable_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateListResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new model description.</p>
    #   @return [String]
    class UpdateModelRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateModelResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute major_version_number
    #   <p>The major version number.</p>
    #   @return [String]
    # @!attribute external_events_detail
    #   <p>The details of the external events data used for training the model version. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    #   @return [Types::ExternalEventsDetail]
    # @!attribute ingested_events_detail
    #   <p>The details of the ingested event used for training the model version. Required if your <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #   @return [Types::IngestedEventsDetail]
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class UpdateModelVersionRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :major_version_number,
      :external_events_detail,
      :ingested_events_detail,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number of the model version updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the updated model version.</p>
    #   @return [String]
    class UpdateModelVersionResult < Struct.new(
      nil,
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model ID of the model version to update.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>The model type.</p>
    #   @return [String]
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The model version status.</p>
    #   @return [String]
    class UpdateModelVersionStatusRequest < Struct.new(
      nil,
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateModelVersionStatusResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule
    #   <p>The rule to update.</p>
    #   @return [Types::Rule]
    # @!attribute description
    #   <p>The rule description.</p>
    #   @return [String]
    class UpdateRuleMetadataRequest < Struct.new(
      nil,
      :rule,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateRuleMetadataResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule
    #   <p>The rule to update.</p>
    #   @return [Types::Rule]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The rule expression.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language.</p>
    #   @return [String]
    # @!attribute outcomes
    #   <p>The outcomes.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to assign to the rule version.</p>
    #   @return [Array<Types::Tag>]
    class UpdateRuleVersionRequest < Struct.new(
      nil,
      :rule,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule
    #   <p>The new rule version that was created.</p>
    #   @return [Types::Rule]
    class UpdateRuleVersionResult < Struct.new(
      nil,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The new default value of the variable.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description.</p>
    #   @return [String]
    # @!attribute variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.</p>
    #   @return [String]
    class UpdateVariableRequest < Struct.new(
      nil,
      :name,
      :default_value,
      :description,
      :variable_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateVariableResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating a specified value is not allowed.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The variable.</p>
    # @!attribute name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the variable. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The data source of the variable.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the variable.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the variable. </p>
    #   @return [String]
    # @!attribute variable_type
    #   <p>The variable type of the variable.</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT </code>
    #            </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time when variable was last updated.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The time when the variable was created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the variable.</p>
    #   @return [String]
    class Variable < Struct.new(
      nil,
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A variable in the list of variables for the batch create variable request.</p>
    # @!attribute name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the variable.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The data source of the variable.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the variable.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the variable.</p>
    #   @return [String]
    # @!attribute variable_type
    #   <p>The type of the variable. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT </code>
    #            </p>
    #   @return [String]
    class VariableEntry < Struct.new(
      nil,
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The details of the event variable's impact on the prediction score.
    # </p>
    # @!attribute event_variable_name
    #   <p>
    #   The event variable name.
    #   </p>
    #   @return [String]
    # @!attribute relative_impact
    #   <p>
    #       The event variable's relative impact in terms of magnitude on the prediction scores. 
    #       The relative impact values consist of a numerical rating (0-5, 5 being the highest) and direction (increased/decreased) impact of the fraud risk.
    #   </p>
    #   @return [String]
    # @!attribute log_odds_impact
    #   <p>
    #       The raw, uninterpreted value represented as log-odds of the fraud. These values are usually between -10 to +10, but range from - infinity to + infinity.</p>
    #            <ul>
    #               <li>
    #                  <p>A positive value indicates that the variable drove the risk score up.</p>
    #               </li>
    #               <li>
    #                  <p>A negative value indicates that the variable drove the risk score down.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    class VariableImpactExplanation < Struct.new(
      nil,
      :event_variable_name,
      :relative_impact,
      :log_odds_impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The variable importance metrics details.</p>
    # @!attribute log_odds_metrics
    #   <p>List of variable metrics.</p>
    #   @return [Array<Types::LogOddsMetric>]
    class VariableImportanceMetrics < Struct.new(
      nil,
      :log_odds_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

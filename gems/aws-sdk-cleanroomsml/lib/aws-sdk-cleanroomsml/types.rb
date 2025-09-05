# frozen_string_literal: true

# This is generated code!

module Aws::CleanRoomsML
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Amazon S3 bucket where the configured audience is stored.</p>
    # @!attribute s3_destination
    #   <p>The Amazon S3 bucket and path for the configured audience.</p>
    #   @return [Types::S3ConfigMap]
    class AudienceDestination < Struct.new(
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the audience export job.</p>
    # @!attribute create_time
    #   <p>The time at which the audience export job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the audience export job was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the audience export job.</p>
    #   @return [String]
    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that was exported.</p>
    #   @return [String]
    # @!attribute audience_size
    #   <p>The size of the generated audience. Must match one of the sizes in the configured audience model.</p>
    #   @return [Types::AudienceSize]
    # @!attribute description
    #   <p>The description of the audience export job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the audience export job.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of a resource.</p>
    #   @return [Types::StatusDetails]
    # @!attribute output_location
    #   <p>The Amazon S3 bucket where the audience export is stored.</p>
    #   @return [String]
    class AudienceExportJobSummary < Struct.new(
      :create_time,
      :update_time,
      :name,
      :audience_generation_job_arn,
      :audience_size,
      :description,
      :status,
      :status_details,
      :output_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Amazon S3 bucket where the seed audience for the generating audience is stored.</p>
    # @!attribute data_source
    #   <p>Defines the Amazon S3 bucket where the seed audience for the generating audience is stored. A valid data source is a JSON line file in the following format:</p> <p> <code>{"user_id": "111111"}</code> </p> <p> <code>{"user_id": "222222"}</code> </p> <p> <code>...</code> </p>
    #   @return [Types::S3ConfigMap]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that can read the Amazon S3 bucket where the seed audience is stored.</p>
    #   @return [String]
    # @!attribute sql_parameters
    #   <p>The protected SQL query parameters.</p>
    #   @return [Types::ProtectedQuerySQLParameters]
    # @!attribute sql_compute_configuration
    #   <p>Provides configuration information for the instances that will perform the compute work.</p>
    #   @return [Types::ComputeConfiguration]
    class AudienceGenerationJobDataSource < Struct.new(
      :data_source,
      :role_arn,
      :sql_parameters,
      :sql_compute_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the configured audience generation job.</p>
    # @!attribute create_time
    #   <p>The time at which the audience generation job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the audience generation job was updated.</p>
    #   @return [Time]
    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the audience generation job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the audience generation job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the audience generation job.</p>
    #   @return [String]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that was used for this audience generation job.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The identifier of the collaboration that contains this audience generation job.</p>
    #   @return [String]
    # @!attribute started_by
    #   <p>The AWS Account that submitted the job.</p>
    #   @return [String]
    class AudienceGenerationJobSummary < Struct.new(
      :create_time,
      :update_time,
      :audience_generation_job_arn,
      :name,
      :description,
      :status,
      :configured_audience_model_arn,
      :collaboration_id,
      :started_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the audience model.</p>
    # @!attribute create_time
    #   <p>The time at which the audience model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the audience model was updated.</p>
    #   @return [Time]
    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the audience model.</p>
    #   @return [String]
    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset that was used for the audience model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the audience model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the audience model.</p>
    #   @return [String]
    class AudienceModelSummary < Struct.new(
      :create_time,
      :update_time,
      :audience_model_arn,
      :name,
      :training_dataset_arn,
      :status,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metrics that describe the quality of the generated audience.</p>
    # @!attribute relevance_metrics
    #   <p>The relevance scores of the generated audience.</p>
    #   @return [Array<Types::RelevanceMetric>]
    # @!attribute recall_metric
    #   <p>The recall score of the generated audience. Recall is the percentage of the most similar users (by default, the most similar 20%) from a sample of the training data that are included in the seed audience by the audience generation job. Values range from 0-1, larger values indicate a better audience. A recall value approximately equal to the maximum bin size indicates that the audience model is equivalent to random selection. </p>
    #   @return [Float]
    class AudienceQualityMetrics < Struct.new(
      :relevance_metrics,
      :recall_metric,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The size of the generated audience. Must match one of the sizes in the configured audience model.</p>
    # @!attribute type
    #   <p>Whether the audience size is defined in absolute terms or as a percentage. You can use the <code>ABSOLUTE</code> <a>AudienceSize</a> to configure out audience sizes using the count of identifiers in the output. You can use the <code>Percentage</code> <a>AudienceSize</a> to configure sizes in the range 1-100 percent.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Specify an audience size value.</p>
    #   @return [Integer]
    class AudienceSize < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the relevance scores at these audience sizes when used in the <a>GetAudienceGenerationJob</a> for a specified audience generation job and configured audience model.</p> <p>Specifies the list of allowed <code>audienceSize</code> values when used in the <a>StartAudienceExportJob</a> for an audience generation job. You can use the <code>ABSOLUTE</code> <a>AudienceSize</a> to configure out audience sizes using the count of identifiers in the output. You can use the <code>Percentage</code> <a>AudienceSize</a> to configure sizes in the range 1-100 percent.</p>
    # @!attribute audience_size_type
    #   <p>Whether the audience output sizes are defined as an absolute number or a percentage.</p>
    #   @return [String]
    # @!attribute audience_size_bins
    #   <p>An array of the different audience output sizes.</p>
    #   @return [Array<Integer>]
    class AudienceSizeConfig < Struct.new(
      :audience_size_type,
      :audience_size_bins,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the trained model inference job that you want to cancel.</p>
    #   @return [String]
    # @!attribute trained_model_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model inference job that you want to cancel.</p>
    #   @return [String]
    class CancelTrainedModelInferenceJobRequest < Struct.new(
      :membership_identifier,
      :trained_model_inference_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the trained model job that you want to cancel.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model job that you want to cancel.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the trained model to cancel. This parameter allows you to specify which version of the trained model you want to cancel when multiple versions exist.</p> <p>If <code>versionIdentifier</code> is not specified, the base model will be cancelled.</p>
    #   @return [String]
    class CancelTrainedModelRequest < Struct.new(
      :membership_identifier,
      :trained_model_arn,
      :version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a configured model algorithm in a collaboration.</p>
    # @!attribute create_time
    #   <p>The time at which the configured model algorithm association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured model algorithm association was updated.</p>
    #   @return [Time]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that is associated to the collaboration.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The account ID of the member that created the configured model algorithm association.</p>
    #   @return [String]
    class CollaborationConfiguredModelAlgorithmAssociationSummary < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_association_arn,
      :name,
      :description,
      :membership_identifier,
      :collaboration_identifier,
      :configured_model_algorithm_arn,
      :creator_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about an ML input channel in a collaboration.</p>
    # @!attribute create_time
    #   <p>The time at which the ML input channel was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the ML input channel was updated.</p>
    #   @return [Time]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the ML input channel.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_associations
    #   <p>The associated configured model algorithms used to create the ML input channel.</p>
    #   @return [Array<String>]
    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ML input channel.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The account ID of the member who created the ML input channel.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ML input channel.</p>
    #   @return [String]
    class CollaborationMLInputChannelSummary < Struct.new(
      :create_time,
      :update_time,
      :membership_identifier,
      :collaboration_identifier,
      :name,
      :configured_model_algorithm_associations,
      :ml_input_channel_arn,
      :status,
      :creator_account_id,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a trained model export job in a collaboration.</p>
    # @!attribute create_time
    #   <p>The time at which the trained model export job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model export job was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the trained model export job.</p>
    #   @return [String]
    # @!attribute output_configuration
    #   <p>Information about the output of the trained model export job.</p>
    #   @return [Types::TrainedModelExportOutputConfiguration]
    # @!attribute status
    #   <p>The status of the trained model.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of a resource.</p>
    #   @return [Types::StatusDetails]
    # @!attribute description
    #   <p>The description of the trained model.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The account ID of the member that created the trained model.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that is being exported.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model that was exported in this job.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the trained model export job.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model export job.</p>
    #   @return [String]
    class CollaborationTrainedModelExportJobSummary < Struct.new(
      :create_time,
      :update_time,
      :name,
      :output_configuration,
      :status,
      :status_details,
      :description,
      :creator_account_id,
      :trained_model_arn,
      :trained_model_version_identifier,
      :membership_identifier,
      :collaboration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a trained model inference job in a collaboration.</p>
    # @!attribute trained_model_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model inference job.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that is used for the trained model inference job.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that is used for the trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model that was used for inference in this job.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model inference job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the trained model inference job.</p>
    #   @return [String]
    # @!attribute output_configuration
    #   <p>Returns output configuration information for the trained model inference job.</p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute name
    #   <p>The name of the trained model inference job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the trained model inference job.</p>
    #   @return [String]
    # @!attribute metrics_status
    #   <p>the trained model inference job metrics status.</p>
    #   @return [String]
    # @!attribute metrics_status_details
    #   <p>Details about the metrics status for trained model inference job.</p>
    #   @return [String]
    # @!attribute logs_status
    #   <p>The trained model inference job logs status.</p>
    #   @return [String]
    # @!attribute logs_status_details
    #   <p>Details about the logs status for the trained model inference job.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the trained model inference job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model inference job was updated.</p>
    #   @return [Time]
    # @!attribute creator_account_id
    #   <p>The account ID that created the trained model inference job.</p>
    #   @return [String]
    class CollaborationTrainedModelInferenceJobSummary < Struct.new(
      :trained_model_inference_job_arn,
      :configured_model_algorithm_association_arn,
      :membership_identifier,
      :trained_model_arn,
      :trained_model_version_identifier,
      :collaboration_identifier,
      :status,
      :output_configuration,
      :name,
      :description,
      :metrics_status,
      :metrics_status_details,
      :logs_status,
      :logs_status_details,
      :create_time,
      :update_time,
      :creator_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a trained model in a collaboration.</p>
    # @!attribute create_time
    #   <p>The time at which the trained model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model was updated.</p>
    #   @return [Time]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the trained model.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of this trained model version.</p>
    #   @return [String]
    # @!attribute incremental_training_data_channels
    #   <p>Information about the incremental training data channels used to create this version of the trained model.</p>
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    # @!attribute description
    #   <p>The description of the trained model.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the trained model.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the trained model.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that is used for this trained model.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The account ID of the member that created the trained model.</p>
    #   @return [String]
    class CollaborationTrainedModelSummary < Struct.new(
      :create_time,
      :update_time,
      :trained_model_arn,
      :name,
      :version_identifier,
      :incremental_training_data_channels,
      :description,
      :membership_identifier,
      :collaboration_identifier,
      :status,
      :configured_model_algorithm_association_arn,
      :creator_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a column.</p>
    # @!attribute column_name
    #   <p>The name of a column.</p>
    #   @return [String]
    # @!attribute column_types
    #   <p>The data type of column.</p>
    #   @return [Array<String>]
    class ColumnSchema < Struct.new(
      :column_name,
      :column_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information for the instances that will perform the compute work.</p>
    # @!attribute worker
    #   <p>The worker instances that will perform the compute work.</p>
    #   @return [Types::WorkerComputeConfiguration]
    class ComputeConfiguration < Struct.new(
      :worker,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Worker < ComputeConfiguration; end
      class Unknown < ComputeConfiguration; end
    end

    # <p>Configuration information necessary for the configure audience model output.</p>
    # @!attribute destination
    #   <p>Defines the Amazon S3 bucket where the configured audience is stored.</p>
    #   @return [Types::AudienceDestination]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that can write the Amazon S3 bucket.</p>
    #   @return [String]
    class ConfiguredAudienceModelOutputConfig < Struct.new(
      :destination,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the configured audience model.</p>
    # @!attribute create_time
    #   <p>The time at which the configured audience model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured audience model was updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the configured audience model.</p>
    #   @return [String]
    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model that was used to create the configured audience model.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>The output configuration of the configured audience model.</p>
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    # @!attribute description
    #   <p>The description of the configured audience model.</p>
    #   @return [String]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you are interested in.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the configured audience model.</p>
    #   @return [String]
    class ConfiguredAudienceModelSummary < Struct.new(
      :create_time,
      :update_time,
      :name,
      :audience_model_arn,
      :output_config,
      :description,
      :configured_audience_model_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about the configured model algorithm association.</p>
    # @!attribute create_time
    #   <p>The time at which the configured model algorithm association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured model algorithm association was updated.</p>
    #   @return [Time]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that is being associated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the configured model algorithm association.</p>
    #   @return [String]
    class ConfiguredModelAlgorithmAssociationSummary < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_association_arn,
      :configured_model_algorithm_arn,
      :name,
      :description,
      :membership_identifier,
      :collaboration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about a configured model algorithm.</p>
    # @!attribute create_time
    #   <p>The time at which the configured model algorithm was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured model algorithm was updated.</p>
    #   @return [Time]
    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured model algorithm.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured model algorithm.</p>
    #   @return [String]
    class ConfiguredModelAlgorithmSummary < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_arn,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You can't complete this action because another resource depends on this resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information for the dockerized container where the model algorithm is stored.</p>
    # @!attribute image_uri
    #   <p>The registry path of the docker image that contains the algorithm. Clean Rooms ML currently only supports the <code>registry/repository[:tag]</code> image path format. For more information about using images in Clean Rooms ML, see the <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AlgorithmSpecification.html#sagemaker-Type-AlgorithmSpecification-TrainingImage">Sagemaker API reference</a>.</p>
    #   @return [String]
    # @!attribute entrypoint
    #   <p>The entrypoint script for a Docker container used to run a training job. This script takes precedence over the default train processing instructions. See How Amazon SageMaker Runs Your Training Image for additional information. For more information, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-training-algo-dockerfile.html">How Sagemaker runs your training image</a>.</p>
    #   @return [Array<String>]
    # @!attribute arguments
    #   <p>The arguments for a container used to run a training job. See How Amazon SageMaker Runs Your Training Image for additional information. For more information, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-training-algo-dockerfile.html">How Sagemaker runs your training image</a>.</p>
    #   @return [Array<String>]
    # @!attribute metric_definitions
    #   <p>A list of metric definition objects. Each object specifies the metric name and regular expressions used to parse algorithm logs. Amazon Web Services Clean Rooms ML publishes each metric to all members' Amazon CloudWatch using IAM role configured in <a>PutMLConfiguration</a>.</p>
    #   @return [Array<Types::MetricDefinition>]
    class ContainerConfig < Struct.new(
      :image_uri,
      :entrypoint,
      :arguments,
      :metric_definitions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_data_start_time
    #   <p>The start date and time of the training window.</p>
    #   @return [Time]
    # @!attribute training_data_end_time
    #   <p>The end date and time of the training window.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the audience model resource.</p>
    #   @return [String]
    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset for this audience model.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the trained ML model and the associated data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The description of the audience model.</p>
    #   @return [String]
    class CreateAudienceModelRequest < Struct.new(
      :training_data_start_time,
      :training_data_end_time,
      :name,
      :training_dataset_arn,
      :kms_key_arn,
      :tags,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model.</p>
    #   @return [String]
    class CreateAudienceModelResponse < Struct.new(
      :audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the configured audience model.</p>
    #   @return [String]
    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model to use for the configured audience model.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>Configure the Amazon S3 location and IAM Role for audiences created using this configured audience model. Each audience will have a unique location. The IAM Role must have <code>s3:PutObject</code> permission on the destination Amazon S3 location. If the destination is protected with Amazon S3 KMS-SSE, then the Role must also have the required KMS permissions.</p>
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    # @!attribute description
    #   <p>The description of the configured audience model.</p>
    #   @return [String]
    # @!attribute shared_audience_metrics
    #   <p>Whether audience metrics are shared.</p>
    #   @return [Array<String>]
    # @!attribute min_matching_seed_size
    #   <p>The minimum number of users from the seed audience that must match with users in the training data of the audience model. The default value is 500.</p>
    #   @return [Integer]
    # @!attribute audience_size_config
    #   <p>Configure the list of output sizes of audiences that can be created using this configured audience model. A request to <a>StartAudienceGenerationJob</a> that uses this configured audience model must have an <code>audienceSize</code> selected from this list. You can use the <code>ABSOLUTE</code> <a>AudienceSize</a> to configure out audience sizes using the count of identifiers in the output. You can use the <code>Percentage</code> <a>AudienceSize</a> to configure sizes in the range 1-100 percent.</p>
    #   @return [Types::AudienceSizeConfig]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute child_resource_tag_on_create_policy
    #   <p>Configure how the service tags audience generation jobs created using this configured audience model. If you specify <code>NONE</code>, the tags from the <a>StartAudienceGenerationJob</a> request determine the tags of the audience generation job. If you specify <code>FROM_PARENT_RESOURCE</code>, the audience generation job inherits the tags from the configured audience model, by default. Tags in the <a>StartAudienceGenerationJob</a> will override the default.</p> <p>When the client is in a different account than the configured audience model, the tags from the client are never applied to a resource in the caller's account.</p>
    #   @return [String]
    class CreateConfiguredAudienceModelRequest < Struct.new(
      :name,
      :audience_model_arn,
      :output_config,
      :description,
      :shared_audience_metrics,
      :min_matching_seed_size,
      :audience_size_config,
      :tags,
      :child_resource_tag_on_create_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model.</p>
    #   @return [String]
    class CreateConfiguredAudienceModelResponse < Struct.new(
      :configured_audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member who is associating this configured model algorithm.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that you want to associate.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute privacy_configuration
    #   <p>Specifies the privacy configuration information for the configured model algorithm association. This information includes the maximum data size that can be exported.</p>
    #   @return [Types::PrivacyConfiguration]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class CreateConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :membership_identifier,
      :configured_model_algorithm_arn,
      :name,
      :description,
      :privacy_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association.</p>
    #   @return [String]
    class CreateConfiguredModelAlgorithmAssociationResponse < Struct.new(
      :configured_model_algorithm_association_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the configured model algorithm.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured model algorithm.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that is used to access the repository.</p>
    #   @return [String]
    # @!attribute training_container_config
    #   <p>Configuration information for the training container, including entrypoints and arguments.</p>
    #   @return [Types::ContainerConfig]
    # @!attribute inference_container_config
    #   <p>Configuration information for the inference container that is used when you run an inference job on a configured model algorithm.</p>
    #   @return [Types::InferenceContainerConfig]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the configured ML model algorithm and associated data.</p>
    #   @return [String]
    class CreateConfiguredModelAlgorithmRequest < Struct.new(
      :name,
      :description,
      :role_arn,
      :training_container_config,
      :inference_container_config,
      :tags,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm.</p>
    #   @return [String]
    class CreateConfiguredModelAlgorithmResponse < Struct.new(
      :configured_model_algorithm_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member that is creating the ML input channel.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_associations
    #   <p>The associated configured model algorithms that are necessary to create this ML input channel.</p>
    #   @return [Array<String>]
    # @!attribute input_channel
    #   <p>The input data that is used to create this ML input channel.</p>
    #   @return [Types::InputChannel]
    # @!attribute name
    #   <p>The name of the ML input channel.</p>
    #   @return [String]
    # @!attribute retention_in_days
    #   <p>The number of days that the data in the ML input channel is retained.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the ML input channel.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to access the input channel.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class CreateMLInputChannelRequest < Struct.new(
      :membership_identifier,
      :configured_model_algorithm_associations,
      :input_channel,
      :name,
      :retention_in_days,
      :description,
      :kms_key_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel.</p>
    #   @return [String]
    class CreateMLInputChannelResponse < Struct.new(
      :ml_input_channel_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member that is creating the trained model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the trained model.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The associated configured model algorithm used to train this model.</p>
    #   @return [String]
    # @!attribute hyperparameters
    #   <p>Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process.</p>
    #   @return [Hash<String, String>]
    # @!attribute environment
    #   <p>The environment variables to set in the Docker container.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_config
    #   <p>Information about the EC2 resources that are used to train this model.</p>
    #   @return [Types::ResourceConfig]
    # @!attribute stopping_condition
    #   <p>The criteria that is used to stop model training.</p>
    #   @return [Types::StoppingCondition]
    # @!attribute incremental_training_data_channels
    #   <p>Specifies the incremental training data channels for the trained model. </p> <p>Incremental training allows you to create a new trained model with updates without retraining from scratch. You can specify up to one incremental training data channel that references a previously trained model and its version.</p> <p>Limit: Maximum of 20 channels total (including both <code>incrementalTrainingDataChannels</code> and <code>dataChannels</code>).</p>
    #   @return [Array<Types::IncrementalTrainingDataChannel>]
    # @!attribute data_channels
    #   <p>Defines the data channels that are used as input for the trained model request.</p> <p>Limit: Maximum of 20 channels total (including both <code>dataChannels</code> and <code>incrementalTrainingDataChannels</code>).</p>
    #   @return [Array<Types::ModelTrainingDataChannel>]
    # @!attribute training_input_mode
    #   <p>The input mode for accessing the training data. This parameter determines how the training data is made available to the training algorithm. Valid values are:</p> <ul> <li> <p> <code>File</code> - The training data is downloaded to the training instance and made available as files.</p> </li> <li> <p> <code>FastFile</code> - The training data is streamed directly from Amazon S3 to the training algorithm, providing faster access for large datasets.</p> </li> <li> <p> <code>Pipe</code> - The training data is streamed to the training algorithm using named pipes, which can improve performance for certain algorithms.</p> </li> </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the trained model.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the trained ML model and the associated data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class CreateTrainedModelRequest < Struct.new(
      :membership_identifier,
      :name,
      :configured_model_algorithm_association_arn,
      :hyperparameters,
      :environment,
      :resource_config,
      :stopping_condition,
      :incremental_training_data_channels,
      :data_channels,
      :training_input_mode,
      :description,
      :kms_key_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The unique version identifier assigned to the newly created trained model. This identifier can be used to reference this specific version of the trained model in subsequent operations such as inference jobs or incremental training.</p> <p>The initial version identifier for the base version of the trained model is "NULL".</p>
    #   @return [String]
    class CreateTrainedModelResponse < Struct.new(
      :trained_model_arn,
      :version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the training dataset. This name must be unique in your account and region.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that Clean Rooms ML can assume to read the data referred to in the <code>dataSource</code> field of each dataset.</p> <p>Passing a role across AWS accounts is not allowed. If you pass a role that isn't in your account, you get an <code>AccessDeniedException</code> error.</p>
    #   @return [String]
    # @!attribute training_data
    #   <p>An array of information that lists the Dataset objects, which specifies the dataset type and details on its location and schema. You must provide a role that has read access to these tables.</p>
    #   @return [Array<Types::Dataset>]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The description of the training dataset.</p>
    #   @return [String]
    class CreateTrainingDatasetRequest < Struct.new(
      :name,
      :role_arn,
      :training_data,
      :tags,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset resource.</p>
    #   @return [String]
    class CreateTrainingDatasetResponse < Struct.new(
      :training_dataset_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines information about the Glue data source that contains the training data.</p>
    # @!attribute glue_data_source
    #   <p>A GlueDataSource object that defines the catalog ID, database name, and table name for the training data.</p>
    #   @return [Types::GlueDataSource]
    class DataSource < Struct.new(
      :glue_data_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines where the training dataset is located, what type of data it contains, and how to access the data.</p>
    # @!attribute type
    #   <p>What type of information is found in the dataset.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>A DatasetInputConfig object that defines the data source and schema mapping.</p>
    #   @return [Types::DatasetInputConfig]
    class Dataset < Struct.new(
      :type,
      :input_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Glue data source and schema mapping information.</p>
    # @!attribute schema
    #   <p>The schema information for the training data.</p>
    #   @return [Array<Types::ColumnSchema>]
    # @!attribute data_source
    #   <p>A DataSource object that specifies the Glue data source for the training data.</p>
    #   @return [Types::DataSource]
    class DatasetInputConfig < Struct.new(
      :schema,
      :data_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you want to delete.</p>
    #   @return [String]
    class DeleteAudienceGenerationJobRequest < Struct.new(
      :audience_generation_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model that you want to delete.</p>
    #   @return [String]
    class DeleteAudienceModelRequest < Struct.new(
      :audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model policy that you want to delete.</p>
    #   @return [String]
    class DeleteConfiguredAudienceModelPolicyRequest < Struct.new(
      :configured_audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you want to delete.</p>
    #   @return [String]
    class DeleteConfiguredAudienceModelRequest < Struct.new(
      :configured_audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that is deleting the configured model algorithm association.</p>
    #   @return [String]
    class DeleteConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :configured_model_algorithm_association_arn,
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that you want to delete.</p>
    #   @return [String]
    class DeleteConfiguredModelAlgorithmRequest < Struct.new(
      :configured_model_algorithm_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the of the member that is deleting the ML modeling configuration.</p>
    #   @return [String]
    class DeleteMLConfigurationRequest < Struct.new(
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel that you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel you want to delete.</p>
    #   @return [String]
    class DeleteMLInputChannelDataRequest < Struct.new(
      :ml_input_channel_arn,
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model whose output you want to delete.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that is deleting the trained model output.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the trained model to delete. If not specified, the operation will delete the base version of the trained model. When specified, only the particular version will be deleted.</p>
    #   @return [String]
    class DeleteTrainedModelOutputRequest < Struct.new(
      :trained_model_arn,
      :membership_identifier,
      :version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset that you want to delete.</p>
    #   @return [String]
    class DeleteTrainingDatasetRequest < Struct.new(
      :training_dataset_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location where the exported model artifacts are stored.</p>
    # @!attribute s3_destination
    #   <p>Provides information about an Amazon S3 bucket and path.</p>
    #   @return [Types::S3ConfigMap]
    class Destination < Struct.new(
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you are interested in.</p>
    #   @return [String]
    class GetAudienceGenerationJobRequest < Struct.new(
      :audience_generation_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the audience generation job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the audience generation job was updated.</p>
    #   @return [Time]
    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the audience generation job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the audience generation job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the audience generation job.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of the audience generation job.</p>
    #   @return [Types::StatusDetails]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model used for this audience generation job.</p>
    #   @return [String]
    # @!attribute seed_audience
    #   <p>The seed audience that was used for this audience generation job. This field will be null if the account calling the API is the account that started this audience generation job. </p>
    #   @return [Types::AudienceGenerationJobDataSource]
    # @!attribute include_seed_in_output
    #   <p>Configure whether the seed users are included in the output audience. By default, Clean Rooms ML removes seed users from the output audience. If you specify <code>TRUE</code>, the seed users will appear first in the output. Clean Rooms ML does not explicitly reveal whether a user was in the seed, but the recipient of the audience will know that the first <code>minimumSeedSize</code> count of users are from the seed.</p>
    #   @return [Boolean]
    # @!attribute collaboration_id
    #   <p>The identifier of the collaboration that this audience generation job is associated with.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>The relevance scores for different audience sizes and the recall score of the generated audience. </p>
    #   @return [Types::AudienceQualityMetrics]
    # @!attribute started_by
    #   <p>The AWS account that started this audience generation job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that are associated to this audience generation job.</p>
    #   @return [Hash<String, String>]
    # @!attribute protected_query_identifier
    #   <p>The unique identifier of the protected query for this audience generation job.</p>
    #   @return [String]
    class GetAudienceGenerationJobResponse < Struct.new(
      :create_time,
      :update_time,
      :audience_generation_job_arn,
      :name,
      :description,
      :status,
      :status_details,
      :configured_audience_model_arn,
      :seed_audience,
      :include_seed_in_output,
      :collaboration_id,
      :metrics,
      :started_by,
      :tags,
      :protected_query_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model that you are interested in.</p>
    #   @return [String]
    class GetAudienceModelRequest < Struct.new(
      :audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the audience model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the audience model was updated.</p>
    #   @return [Time]
    # @!attribute training_data_start_time
    #   <p>The start date specified for the training window.</p>
    #   @return [Time]
    # @!attribute training_data_end_time
    #   <p>The end date specified for the training window.</p>
    #   @return [Time]
    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the audience model.</p>
    #   @return [String]
    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset that was used for this audience model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the audience model.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of the audience model.</p>
    #   @return [Types::StatusDetails]
    # @!attribute kms_key_arn
    #   <p>The KMS key ARN used for the audience model.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that are assigned to the audience model.</p>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The description of the audience model.</p>
    #   @return [String]
    class GetAudienceModelResponse < Struct.new(
      :create_time,
      :update_time,
      :training_data_start_time,
      :training_data_end_time,
      :audience_model_arn,
      :name,
      :training_dataset_arn,
      :status,
      :status_details,
      :kms_key_arn,
      :tags,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that you want to return information about.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID for the collaboration that contains the configured model algorithm association that you want to return information about.</p>
    #   @return [String]
    class GetCollaborationConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :configured_model_algorithm_association_arn,
      :collaboration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the configured model algorithm association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured model algorithm association was updated.</p>
    #   @return [Time]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The account ID of the member that created the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute privacy_configuration
    #   <p>Information about the privacy configuration for a configured model algorithm association.</p>
    #   @return [Types::PrivacyConfiguration]
    class GetCollaborationConfiguredModelAlgorithmAssociationResponse < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_association_arn,
      :membership_identifier,
      :collaboration_identifier,
      :configured_model_algorithm_arn,
      :name,
      :description,
      :creator_account_id,
      :privacy_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel that you want to get.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channel that you want to get.</p>
    #   @return [String]
    class GetCollaborationMLInputChannelRequest < Struct.new(
      :ml_input_channel_arn,
      :collaboration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the ML input channel was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the ML input channel was updated.</p>
    #   @return [Time]
    # @!attribute creator_account_id
    #   <p>The account ID of the member who created the ML input channel.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the ML input channel.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_associations
    #   <p>The configured model algorithm associations that were used to create the ML input channel.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the ML input channel.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of a resource.</p>
    #   @return [Types::StatusDetails]
    # @!attribute retention_in_days
    #   <p>The number of days to retain the data for the ML input channel.</p>
    #   @return [Integer]
    # @!attribute number_of_records
    #   <p>The number of records in the ML input channel.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the ML input channel.</p>
    #   @return [String]
    class GetCollaborationMLInputChannelResponse < Struct.new(
      :create_time,
      :update_time,
      :creator_account_id,
      :membership_identifier,
      :collaboration_identifier,
      :ml_input_channel_arn,
      :name,
      :configured_model_algorithm_associations,
      :status,
      :status_details,
      :retention_in_days,
      :number_of_records,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that you want to return information about.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID that contains the trained model that you want to return information about.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the trained model to retrieve. If not specified, the operation returns information about the latest version of the trained model.</p>
    #   @return [String]
    class GetCollaborationTrainedModelRequest < Struct.new(
      :trained_model_arn,
      :collaboration_identifier,
      :version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the trained model.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the trained model. This unique identifier distinguishes this version from other versions of the same trained model.</p>
    #   @return [String]
    # @!attribute incremental_training_data_channels
    #   <p>Information about the incremental training data channels used to create this version of the trained model. This includes details about the base model that was used for incremental training and the channel configuration.</p>
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    # @!attribute name
    #   <p>The name of the trained model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the trained model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the trained model.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of a resource.</p>
    #   @return [Types::StatusDetails]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that was used to create this trained model.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The EC2 resource configuration that was used to train this model.</p>
    #   @return [Types::ResourceConfig]
    # @!attribute training_input_mode
    #   <p>The input mode that was used for accessing the training data when this trained model was created. This indicates how the training data was made available to the training algorithm.</p>
    #   @return [String]
    # @!attribute stopping_condition
    #   <p>The stopping condition that determined when model training ended.</p>
    #   @return [Types::StoppingCondition]
    # @!attribute metrics_status
    #   <p>The status of the model metrics.</p>
    #   @return [String]
    # @!attribute metrics_status_details
    #   <p>Details about the status information for the model metrics.</p>
    #   @return [String]
    # @!attribute logs_status
    #   <p>Status information for the logs.</p>
    #   @return [String]
    # @!attribute logs_status_details
    #   <p>Details about the status information for the logs.</p>
    #   @return [String]
    # @!attribute training_container_image_digest
    #   <p>Information about the training container image.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the trained model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model was updated.</p>
    #   @return [Time]
    # @!attribute creator_account_id
    #   <p>The account ID of the member that created the trained model.</p>
    #   @return [String]
    class GetCollaborationTrainedModelResponse < Struct.new(
      :membership_identifier,
      :collaboration_identifier,
      :trained_model_arn,
      :version_identifier,
      :incremental_training_data_channels,
      :name,
      :description,
      :status,
      :status_details,
      :configured_model_algorithm_association_arn,
      :resource_config,
      :training_input_mode,
      :stopping_condition,
      :metrics_status,
      :metrics_status_details,
      :logs_status,
      :logs_status_details,
      :training_container_image_digest,
      :create_time,
      :update_time,
      :creator_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you are interested in.</p>
    #   @return [String]
    class GetConfiguredAudienceModelPolicyRequest < Struct.new(
      :configured_audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model.</p>
    #   @return [String]
    # @!attribute configured_audience_model_policy
    #   <p>The configured audience model policy. This is a JSON IAM resource policy.</p>
    #   @return [String]
    # @!attribute policy_hash
    #   <p>A cryptographic hash of the contents of the policy used to prevent unexpected concurrent modification of the policy.</p>
    #   @return [String]
    class GetConfiguredAudienceModelPolicyResponse < Struct.new(
      :configured_audience_model_arn,
      :configured_audience_model_policy,
      :policy_hash,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you are interested in.</p>
    #   @return [String]
    class GetConfiguredAudienceModelRequest < Struct.new(
      :configured_audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the configured audience model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured audience model was updated.</p>
    #   @return [Time]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured audience model.</p>
    #   @return [String]
    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model used for this configured audience model.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>The output configuration of the configured audience model</p>
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    # @!attribute description
    #   <p>The description of the configured audience model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the configured audience model.</p>
    #   @return [String]
    # @!attribute shared_audience_metrics
    #   <p>Whether audience metrics are shared.</p>
    #   @return [Array<String>]
    # @!attribute min_matching_seed_size
    #   <p>The minimum number of users from the seed audience that must match with users in the training data of the audience model.</p>
    #   @return [Integer]
    # @!attribute audience_size_config
    #   <p>The list of output sizes of audiences that can be created using this configured audience model. A request to <a>StartAudienceGenerationJob</a> that uses this configured audience model must have an <code>audienceSize</code> selected from this list. You can use the <code>ABSOLUTE</code> <a>AudienceSize</a> to configure out audience sizes using the count of identifiers in the output. You can use the <code>Percentage</code> <a>AudienceSize</a> to configure sizes in the range 1-100 percent.</p>
    #   @return [Types::AudienceSizeConfig]
    # @!attribute tags
    #   <p>The tags that are associated to this configured audience model.</p>
    #   @return [Hash<String, String>]
    # @!attribute child_resource_tag_on_create_policy
    #   <p>Provides the <code>childResourceTagOnCreatePolicy</code> that was used for this configured audience model.</p>
    #   @return [String]
    class GetConfiguredAudienceModelResponse < Struct.new(
      :create_time,
      :update_time,
      :configured_audience_model_arn,
      :name,
      :audience_model_arn,
      :output_config,
      :description,
      :status,
      :shared_audience_metrics,
      :min_matching_seed_size,
      :audience_size_config,
      :tags,
      :child_resource_tag_on_create_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that you want to return information about.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm association.</p>
    #   @return [String]
    class GetConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :configured_model_algorithm_association_arn,
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the configured model algorithm association was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured model algorithm association was updated.</p>
    #   @return [Time]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that was associated to the collaboration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute privacy_configuration
    #   <p>The privacy configuration information for the configured model algorithm association.</p>
    #   @return [Types::PrivacyConfiguration]
    # @!attribute description
    #   <p>The description of the configured model algorithm association.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you applied to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class GetConfiguredModelAlgorithmAssociationResponse < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_association_arn,
      :membership_identifier,
      :collaboration_identifier,
      :configured_model_algorithm_arn,
      :name,
      :privacy_configuration,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that you want to return information about.</p>
    #   @return [String]
    class GetConfiguredModelAlgorithmRequest < Struct.new(
      :configured_model_algorithm_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the configured model algorithm was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the configured model algorithm was updated.</p>
    #   @return [Time]
    # @!attribute configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configured model algorithm.</p>
    #   @return [String]
    # @!attribute training_container_config
    #   <p>The configuration information of the training container for the configured model algorithm.</p>
    #   @return [Types::ContainerConfig]
    # @!attribute inference_container_config
    #   <p>Configuration information for the inference container.</p>
    #   @return [Types::InferenceContainerConfig]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role that was used to create the configured model algorithm.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configured model algorithm.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you applied to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the configured ML model and associated data.</p>
    #   @return [String]
    class GetConfiguredModelAlgorithmResponse < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_arn,
      :name,
      :training_container_config,
      :inference_container_config,
      :role_arn,
      :description,
      :tags,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member that owns the ML configuration you want to return information about.</p>
    #   @return [String]
    class GetMLConfigurationRequest < Struct.new(
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member that owns the ML configuration you requested.</p>
    #   @return [String]
    # @!attribute default_output_location
    #   <p>The Amazon S3 location where ML model output is stored.</p>
    #   @return [Types::MLOutputConfiguration]
    # @!attribute create_time
    #   <p>The time at which the ML configuration was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the ML configuration was updated.</p>
    #   @return [Time]
    class GetMLConfigurationResponse < Struct.new(
      :membership_identifier,
      :default_output_location,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel that you want to get.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel that you want to get.</p>
    #   @return [String]
    class GetMLInputChannelRequest < Struct.new(
      :ml_input_channel_arn,
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the ML input channel was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the ML input channel was updated.</p>
    #   @return [Time]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute input_channel
    #   <p>The input channel that was used to create the ML input channel.</p>
    #   @return [Types::InputChannel]
    # @!attribute protected_query_identifier
    #   <p>The ID of the protected query that was used to create the ML input channel.</p>
    #   @return [String]
    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the ML input channel.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_associations
    #   <p>The configured model algorithm associations that were used to create the ML input channel.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the ML input channel.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of a resource.</p>
    #   @return [Types::StatusDetails]
    # @!attribute retention_in_days
    #   <p>The number of days to keep the data in the ML input channel.</p>
    #   @return [Integer]
    # @!attribute number_of_records
    #   <p>The number of records in the ML input channel.</p>
    #   @return [Integer]
    # @!attribute number_of_files
    #   <p>The number of files in the ML input channel.</p>
    #   @return [Float]
    # @!attribute size_in_gb
    #   <p>The size, in GB, of the ML input channel.</p>
    #   @return [Float]
    # @!attribute description
    #   <p>The description of the ML input channel.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that was used to create the ML input channel.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you applied to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class GetMLInputChannelResponse < Struct.new(
      :create_time,
      :update_time,
      :membership_identifier,
      :collaboration_identifier,
      :input_channel,
      :protected_query_identifier,
      :ml_input_channel_arn,
      :name,
      :configured_model_algorithm_associations,
      :status,
      :status_details,
      :retention_in_days,
      :number_of_records,
      :number_of_files,
      :size_in_gb,
      :description,
      :kms_key_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>Provides the membership ID of the membership that contains the trained model inference job that you are interested in.</p>
    #   @return [String]
    # @!attribute trained_model_inference_job_arn
    #   <p>Provides the Amazon Resource Name (ARN) of the trained model inference job that you are interested in.</p>
    #   @return [String]
    class GetTrainedModelInferenceJobRequest < Struct.new(
      :membership_identifier,
      :trained_model_inference_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the trained model inference job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model inference job was updated.</p>
    #   @return [Time]
    # @!attribute trained_model_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model inference job.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that was used for the trained model inference job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the trained model inference job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) for the trained model that was used for the trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model used for this inference job. This identifies the specific version of the trained model that was used to generate the inference results.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The resource configuration information for the trained model inference job.</p>
    #   @return [Types::InferenceResourceConfig]
    # @!attribute output_configuration
    #   <p>The output configuration information for the trained model inference job.</p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the trained model inference job.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The data source that was used for the trained model inference job.</p>
    #   @return [Types::ModelInferenceDataSource]
    # @!attribute container_execution_parameters
    #   <p>The execution parameters for the model inference job container.</p>
    #   @return [Types::InferenceContainerExecutionParameters]
    # @!attribute status_details
    #   <p>Details about the status of a resource.</p>
    #   @return [Types::StatusDetails]
    # @!attribute description
    #   <p>The description of the trained model inference job.</p>
    #   @return [String]
    # @!attribute inference_container_image_digest
    #   <p>Information about the training container image.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment variables to set in the Docker container.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the ML inference job and associated data.</p>
    #   @return [String]
    # @!attribute metrics_status
    #   <p>The metrics status for the trained model inference job.</p>
    #   @return [String]
    # @!attribute metrics_status_details
    #   <p>Details about the metrics status for the trained model inference job.</p>
    #   @return [String]
    # @!attribute logs_status
    #   <p>The logs status for the trained model inference job.</p>
    #   @return [String]
    # @!attribute logs_status_details
    #   <p>Details about the logs status for the trained model inference job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you applied to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class GetTrainedModelInferenceJobResponse < Struct.new(
      :create_time,
      :update_time,
      :trained_model_inference_job_arn,
      :configured_model_algorithm_association_arn,
      :name,
      :status,
      :trained_model_arn,
      :trained_model_version_identifier,
      :resource_config,
      :output_configuration,
      :membership_identifier,
      :data_source,
      :container_execution_parameters,
      :status_details,
      :description,
      :inference_container_image_digest,
      :environment,
      :kms_key_arn,
      :metrics_status,
      :metrics_status_details,
      :logs_status,
      :logs_status_details,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that you are interested in.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the trained model that you are interested in.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the trained model to retrieve. If not specified, the operation returns information about the latest version of the trained model.</p>
    #   @return [String]
    class GetTrainedModelRequest < Struct.new(
      :trained_model_arn,
      :membership_identifier,
      :version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the trained model.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the trained model. This unique identifier distinguishes this version from other versions of the same trained model.</p>
    #   @return [String]
    # @!attribute incremental_training_data_channels
    #   <p>Information about the incremental training data channels used to create this version of the trained model. This includes details about the base model that was used for incremental training and the channel configuration.</p>
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    # @!attribute name
    #   <p>The name of the trained model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the trained model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the trained model.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of a resource.</p>
    #   @return [Types::StatusDetails]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that was used to create the trained model.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>The EC2 resource configuration that was used to create the trained model.</p>
    #   @return [Types::ResourceConfig]
    # @!attribute training_input_mode
    #   <p>The input mode that was used for accessing the training data when this trained model was created. This indicates how the training data was made available to the training algorithm.</p>
    #   @return [String]
    # @!attribute stopping_condition
    #   <p>The stopping condition that was used to terminate model training.</p>
    #   @return [Types::StoppingCondition]
    # @!attribute metrics_status
    #   <p>The status of the model metrics.</p>
    #   @return [String]
    # @!attribute metrics_status_details
    #   <p>Details about the metrics status for the trained model.</p>
    #   @return [String]
    # @!attribute logs_status
    #   <p>The logs status for the trained model.</p>
    #   @return [String]
    # @!attribute logs_status_details
    #   <p>Details about the logs status for the trained model.</p>
    #   @return [String]
    # @!attribute training_container_image_digest
    #   <p>Information about the training image container.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the trained model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model was updated.</p>
    #   @return [Time]
    # @!attribute hyperparameters
    #   <p>The hyperparameters that were used to create the trained model.</p>
    #   @return [Hash<String, String>]
    # @!attribute environment
    #   <p>The EC2 environment that was used to create the trained model.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the trained ML model and associated data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you applied to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute data_channels
    #   <p>The data channels that were used for the trained model.</p>
    #   @return [Array<Types::ModelTrainingDataChannel>]
    class GetTrainedModelResponse < Struct.new(
      :membership_identifier,
      :collaboration_identifier,
      :trained_model_arn,
      :version_identifier,
      :incremental_training_data_channels,
      :name,
      :description,
      :status,
      :status_details,
      :configured_model_algorithm_association_arn,
      :resource_config,
      :training_input_mode,
      :stopping_condition,
      :metrics_status,
      :metrics_status_details,
      :logs_status,
      :logs_status_details,
      :training_container_image_digest,
      :create_time,
      :update_time,
      :hyperparameters,
      :environment,
      :kms_key_arn,
      :tags,
      :data_channels,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset that you are interested in.</p>
    #   @return [String]
    class GetTrainingDatasetRequest < Struct.new(
      :training_dataset_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_time
    #   <p>The time at which the training dataset was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the training dataset was updated.</p>
    #   @return [Time]
    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the training dataset.</p>
    #   @return [String]
    # @!attribute training_data
    #   <p>Metadata about the requested training data. </p>
    #   @return [Array<Types::Dataset>]
    # @!attribute status
    #   <p>The status of the training dataset.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role used to read the training data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that are assigned to this training dataset.</p>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The description of the training dataset.</p>
    #   @return [String]
    class GetTrainingDatasetResponse < Struct.new(
      :create_time,
      :update_time,
      :training_dataset_arn,
      :name,
      :training_data,
      :status,
      :role_arn,
      :tags,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Glue data source that contains the training data.</p>
    # @!attribute table_name
    #   <p>The Glue table that contains the training data.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The Glue database that contains the training data.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The Glue catalog that contains the training data.</p>
    #   @return [String]
    class GlueDataSource < Struct.new(
      :table_name,
      :database_name,
      :catalog_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an incremental training data channel that references a previously trained model. Incremental training allows you to update an existing trained model with new data, building upon the knowledge from a base model rather than training from scratch. This can significantly reduce training time and computational costs while improving model performance with additional data.</p>
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the base trained model to use for incremental training. This model serves as the starting point for the incremental training process.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the base trained model to use for incremental training. If not specified, the latest version of the trained model is used.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the incremental training data channel. This name is used to identify the channel during the training process and must be unique within the training job.</p>
    #   @return [String]
    class IncrementalTrainingDataChannel < Struct.new(
      :trained_model_arn,
      :version_identifier,
      :channel_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an incremental training data channel that was used to create a trained model. This structure provides details about the base model and channel configuration used during incremental training.</p>
    # @!attribute channel_name
    #   <p>The name of the incremental training data channel that was used.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of the trained model that was used for incremental training.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the base trained model that was used for incremental training.</p>
    #   @return [String]
    class IncrementalTrainingDataChannelOutput < Struct.new(
      :channel_name,
      :version_identifier,
      :model_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information for the inference container.</p>
    # @!attribute image_uri
    #   <p>The registry path of the docker image that contains the inference algorithm. Clean Rooms ML currently only supports the <code>registry/repository[:tag]</code> image path format. For more information about using images in Clean Rooms ML, see the <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AlgorithmSpecification.html#sagemaker-Type-AlgorithmSpecification-TrainingImage">Sagemaker API reference</a>.</p>
    #   @return [String]
    class InferenceContainerConfig < Struct.new(
      :image_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides execution parameters for the inference container.</p>
    # @!attribute max_payload_in_mb
    #   <p>The maximum size of the inference container payload, specified in MB. </p>
    #   @return [Integer]
    class InferenceContainerExecutionParameters < Struct.new(
      :max_payload_in_mb,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about how the inference output is stored.</p>
    # @!attribute accept
    #   <p>The MIME type used to specify the output data.</p>
    #   @return [String]
    # @!attribute members
    #   <p>Defines the members that can receive inference output.</p>
    #   @return [Array<Types::InferenceReceiverMember>]
    class InferenceOutputConfiguration < Struct.new(
      :accept,
      :members,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:accept] = 'application/json' unless options.key?(:accept)
        super
      end
    end

    # <p>Defines who will receive inference results.</p>
    # @!attribute account_id
    #   <p>The account ID of the member that can receive inference results.</p>
    #   @return [String]
    class InferenceReceiverMember < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the resources used to perform model inference.</p>
    # @!attribute instance_type
    #   <p>The type of instance that is used to perform model inference.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The number of instances to use.</p>
    #   @return [Integer]
    class InferenceResourceConfig < Struct.new(
      :instance_type,
      :instance_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:instance_count] = 1 unless options.key?(:instance_count)
        super
      end
    end

    # <p>Provides information about the data source that is used to create an ML input channel.</p>
    # @!attribute data_source
    #   <p>The data source that is used to create the ML input channel.</p>
    #   @return [Types::InputChannelDataSource]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role used to run the query specified in the <code>dataSource</code> field of the input channel.</p> <p>Passing a role across AWS accounts is not allowed. If you pass a role that isn't in your account, you get an <code>AccessDeniedException</code> error.</p>
    #   @return [String]
    class InputChannel < Struct.new(
      :data_source,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the data source that is used to define an input channel.</p>
    # @!attribute protected_query_input_parameters
    #   <p>Provides information necessary to perform the protected query.</p>
    #   @return [Types::ProtectedQueryInputParameters]
    class InputChannelDataSource < Struct.new(
      :protected_query_input_parameters,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ProtectedQueryInputParameters < InputChannelDataSource; end
      class Unknown < InputChannelDataSource; end
    end

    # <p>An internal service error occurred. Retry your request. If the problem persists, contact AWS Support.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you are interested in.</p>
    #   @return [String]
    class ListAudienceExportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :audience_generation_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute audience_export_jobs
    #   <p>The audience export jobs that match the request.</p>
    #   @return [Array<Types::AudienceExportJobSummary>]
    class ListAudienceExportJobsResponse < Struct.new(
      :next_token,
      :audience_export_jobs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that was used for the audience generation jobs that you are interested in.</p>
    #   @return [String]
    # @!attribute collaboration_id
    #   <p>The identifier of the collaboration that contains the audience generation jobs that you are interested in.</p>
    #   @return [String]
    class ListAudienceGenerationJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :configured_audience_model_arn,
      :collaboration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute audience_generation_jobs
    #   <p>The audience generation jobs that match the request.</p>
    #   @return [Array<Types::AudienceGenerationJobSummary>]
    class ListAudienceGenerationJobsResponse < Struct.new(
      :next_token,
      :audience_generation_jobs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    class ListAudienceModelsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute audience_models
    #   <p>The audience models that match the request.</p>
    #   @return [Array<Types::AudienceModelSummary>]
    class ListAudienceModelsResponse < Struct.new(
      :next_token,
      :audience_models,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the configured model algorithm associations that you are interested in.</p>
    #   @return [String]
    class ListCollaborationConfiguredModelAlgorithmAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute collaboration_configured_model_algorithm_associations
    #   <p>The configured model algorithm associations that belong to this collaboration.</p>
    #   @return [Array<Types::CollaborationConfiguredModelAlgorithmAssociationSummary>]
    class ListCollaborationConfiguredModelAlgorithmAssociationsResponse < Struct.new(
      :next_token,
      :collaboration_configured_model_algorithm_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channels that you want to list.</p>
    #   @return [String]
    class ListCollaborationMLInputChannelsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute collaboration_ml_input_channels_list
    #   <p>The list of ML input channels that you wanted.</p>
    #   @return [Array<Types::CollaborationMLInputChannelSummary>]
    class ListCollaborationMLInputChannelsResponse < Struct.new(
      :next_token,
      :collaboration_ml_input_channels_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model export jobs that you are interested in.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that was used to create the export jobs that you are interested in.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model to filter export jobs by. When specified, only export jobs for this specific version of the trained model are returned.</p>
    #   @return [String]
    class ListCollaborationTrainedModelExportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier,
      :trained_model_arn,
      :trained_model_version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute collaboration_trained_model_export_jobs
    #   <p>The exports jobs that exist for the requested trained model in the requested collaboration.</p>
    #   @return [Array<Types::CollaborationTrainedModelExportJobSummary>]
    class ListCollaborationTrainedModelExportJobsResponse < Struct.new(
      :next_token,
      :collaboration_trained_model_export_jobs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model inference jobs that you are interested in.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that was used to create the trained model inference jobs that you are interested in.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model to filter inference jobs by. When specified, only inference jobs that used this specific version of the trained model are returned.</p>
    #   @return [String]
    class ListCollaborationTrainedModelInferenceJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier,
      :trained_model_arn,
      :trained_model_version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute collaboration_trained_model_inference_jobs
    #   <p>The trained model inference jobs that you are interested in.</p>
    #   @return [Array<Types::CollaborationTrainedModelInferenceJobSummary>]
    class ListCollaborationTrainedModelInferenceJobsResponse < Struct.new(
      :next_token,
      :collaboration_trained_model_inference_jobs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained models you are interested in.</p>
    #   @return [String]
    class ListCollaborationTrainedModelsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute collaboration_trained_models
    #   <p>The trained models in the collaboration that you requested.</p>
    #   @return [Array<Types::CollaborationTrainedModelSummary>]
    class ListCollaborationTrainedModelsResponse < Struct.new(
      :next_token,
      :collaboration_trained_models,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    class ListConfiguredAudienceModelsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute configured_audience_models
    #   <p>The configured audience models.</p>
    #   @return [Array<Types::ConfiguredAudienceModelSummary>]
    class ListConfiguredAudienceModelsResponse < Struct.new(
      :next_token,
      :configured_audience_models,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm associations you are interested in.</p>
    #   @return [String]
    class ListConfiguredModelAlgorithmAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_associations
    #   <p>The list of configured model algorithm associations.</p>
    #   @return [Array<Types::ConfiguredModelAlgorithmAssociationSummary>]
    class ListConfiguredModelAlgorithmAssociationsResponse < Struct.new(
      :next_token,
      :configured_model_algorithm_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    class ListConfiguredModelAlgorithmsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute configured_model_algorithms
    #   <p>The list of configured model algorithms.</p>
    #   @return [Array<Types::ConfiguredModelAlgorithmSummary>]
    class ListConfiguredModelAlgorithmsResponse < Struct.new(
      :next_token,
      :configured_model_algorithms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of ML input channels to return.</p>
    #   @return [Integer]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channels that you want to list.</p>
    #   @return [String]
    class ListMLInputChannelsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute ml_input_channels_list
    #   <p>The list of ML input channels that you wanted.</p>
    #   @return [Array<Types::MLInputChannelSummary>]
    class ListMLInputChannelsResponse < Struct.new(
      :next_token,
      :ml_input_channels_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you are interested in.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags that are associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute membership_identifier
    #   <p>The membership </p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of a trained model that was used to create the trained model inference jobs that you are interested in.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model to filter inference jobs by. When specified, only inference jobs that used this specific version of the trained model are returned.</p>
    #   @return [String]
    class ListTrainedModelInferenceJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier,
      :trained_model_arn,
      :trained_model_version_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute trained_model_inference_jobs
    #   <p>Returns the requested trained model inference jobs.</p>
    #   @return [Array<Types::TrainedModelInferenceJobSummary>]
    class ListTrainedModelInferenceJobsResponse < Struct.new(
      :next_token,
      :trained_model_inference_jobs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from a previous <code>ListTrainedModelVersions</code> request. Use this token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of trained model versions to return in a single page. The default value is 10, and the maximum value is 100.</p>
    #   @return [Integer]
    # @!attribute membership_identifier
    #   <p>The membership identifier for the collaboration that contains the trained model.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model for which to list versions.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter the results to only include trained model versions with the specified status. Valid values include <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>ACTIVE</code>, <code>CREATE_FAILED</code>, and others.</p>
    #   @return [String]
    class ListTrainedModelVersionsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier,
      :trained_model_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent <code>ListTrainedModelVersions</code> request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute trained_models
    #   <p>A list of trained model versions that match the specified criteria. Each entry contains summary information about a trained model version, including its version identifier, status, and creation details.</p>
    #   @return [Array<Types::TrainedModelSummary>]
    class ListTrainedModelVersionsResponse < Struct.new(
      :next_token,
      :trained_models,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the trained models you are interested in.</p>
    #   @return [String]
    class ListTrainedModelsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute trained_models
    #   <p>The list of trained models.</p>
    #   @return [Array<Types::TrainedModelSummary>]
    class ListTrainedModelsResponse < Struct.new(
      :next_token,
      :trained_models,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    #   @return [Integer]
    class ListTrainingDatasetsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value used to access the next page of results.</p>
    #   @return [String]
    # @!attribute training_datasets
    #   <p>The training datasets that match the request.</p>
    #   @return [Array<Types::TrainingDatasetSummary>]
    class ListTrainingDatasetsResponse < Struct.new(
      :next_token,
      :training_datasets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the information necessary for a user to access the logs.</p>
    # @!attribute allowed_account_ids
    #   <p>A list of account IDs that are allowed to access the logs.</p>
    #   @return [Array<String>]
    # @!attribute filter_pattern
    #   <p>A regular expression pattern that is used to parse the logs and return information that matches the pattern.</p>
    #   @return [String]
    class LogsConfigurationPolicy < Struct.new(
      :allowed_account_ids,
      :filter_pattern,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about the ML input channel.</p>
    # @!attribute create_time
    #   <p>The time at which the ML input channel was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the ML input channel was updated.</p>
    #   @return [Time]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the ML input channel.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_associations
    #   <p>The associated configured model algorithms used to create the ML input channel.</p>
    #   @return [Array<String>]
    # @!attribute protected_query_identifier
    #   <p>The ID of the protected query that was used to create the ML input channel.</p>
    #   @return [String]
    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ML input channel.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the ML input channel.</p>
    #   @return [String]
    class MLInputChannelSummary < Struct.new(
      :create_time,
      :update_time,
      :membership_identifier,
      :collaboration_identifier,
      :name,
      :configured_model_algorithm_associations,
      :protected_query_identifier,
      :ml_input_channel_arn,
      :status,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about how the exported model artifacts are stored.</p>
    # @!attribute destination
    #   <p>The Amazon S3 location where exported model artifacts are stored.</p>
    #   @return [Types::Destination]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service access role that is used to store the model artifacts.</p>
    #   @return [String]
    class MLOutputConfiguration < Struct.new(
      :destination,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the model metric that is reported for a trained model.</p>
    # @!attribute name
    #   <p>The name of the model metric.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>The regular expression statement that defines how the model metric is reported.</p>
    #   @return [String]
    class MetricDefinition < Struct.new(
      :name,
      :regex,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the configuration policy for metrics generation.</p>
    # @!attribute noise_level
    #   <p>The noise level for the generated metrics.</p>
    #   @return [String]
    class MetricsConfigurationPolicy < Struct.new(
      :noise_level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines information about the data source used for model inference.</p>
    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel for this model inference data source.</p>
    #   @return [String]
    class ModelInferenceDataSource < Struct.new(
      :ml_input_channel_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the model training data channel. A training data channel is a named data source that the training algorithms can consume. </p>
    # @!attribute ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel for this model training data channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the training data channel.</p>
    #   @return [String]
    # @!attribute s3_data_distribution_type
    #   <p>Specifies how the training data stored in Amazon S3 should be distributed to training instances. This parameter controls the data distribution strategy for the training job:</p> <ul> <li> <p> <code>FullyReplicated</code> - The entire dataset is replicated on each training instance. This is suitable for smaller datasets and algorithms that require access to the complete dataset.</p> </li> <li> <p> <code>ShardedByS3Key</code> - The dataset is distributed across training instances based on Amazon S3 key names. This is suitable for larger datasets and distributed training scenarios where each instance processes a subset of the data.</p> </li> </ul>
    #   @return [String]
    class ModelTrainingDataChannel < Struct.new(
      :ml_input_channel_arn,
      :channel_name,
      :s3_data_distribution_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:s3_data_distribution_type] = 'FullyReplicated' unless options.key?(:s3_data_distribution_type)
        super
      end
    end

    # <p>Information about the privacy configuration for a configured model algorithm association.</p>
    # @!attribute policies
    #   <p>The privacy configuration policies for a configured model algorithm association.</p>
    #   @return [Types::PrivacyConfigurationPolicies]
    class PrivacyConfiguration < Struct.new(
      :policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the privacy configuration policies for a configured model algorithm association.</p>
    # @!attribute trained_models
    #   <p>Specifies who will receive the trained models.</p>
    #   @return [Types::TrainedModelsConfigurationPolicy]
    # @!attribute trained_model_exports
    #   <p>Specifies who will receive the trained model export.</p>
    #   @return [Types::TrainedModelExportsConfigurationPolicy]
    # @!attribute trained_model_inference_jobs
    #   <p>Specifies who will receive the trained model inference jobs.</p>
    #   @return [Types::TrainedModelInferenceJobsConfigurationPolicy]
    class PrivacyConfigurationPolicies < Struct.new(
      :trained_models,
      :trained_model_exports,
      :trained_model_inference_jobs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information necessary to perform the protected query.</p>
    # @!attribute sql_parameters
    #   <p>The parameters for the SQL type Protected Query.</p>
    #   @return [Types::ProtectedQuerySQLParameters]
    # @!attribute compute_configuration
    #   <p>Provides configuration information for the workers that will perform the protected query.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute result_format
    #   <p>The format in which the query results should be returned. If not specified, defaults to <code>CSV</code>. </p>
    #   @return [String]
    class ProtectedQueryInputParameters < Struct.new(
      :sql_parameters,
      :compute_configuration,
      :result_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:result_format] = 'CSV' unless options.key?(:result_format)
        super
      end
    end

    # <p>The parameters for the SQL type Protected Query.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute query_string
    #   <p>The query string to be submitted.</p>
    #   @return [String]
    # @!attribute analysis_template_arn
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The protected query SQL parameters.</p>
    #   @return [Hash<String, String>]
    class ProtectedQuerySQLParameters < Struct.new(
      :query_string,
      :analysis_template_arn,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that the resource policy will govern.</p>
    #   @return [String]
    # @!attribute configured_audience_model_policy
    #   <p>The IAM resource policy.</p>
    #   @return [String]
    # @!attribute previous_policy_hash
    #   <p>A cryptographic hash of the contents of the policy used to prevent unexpected concurrent modification of the policy.</p>
    #   @return [String]
    # @!attribute policy_existence_condition
    #   <p>Use this to prevent unexpected concurrent modification of the policy.</p>
    #   @return [String]
    class PutConfiguredAudienceModelPolicyRequest < Struct.new(
      :configured_audience_model_arn,
      :configured_audience_model_policy,
      :previous_policy_hash,
      :policy_existence_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_policy
    #   <p>The IAM resource policy.</p>
    #   @return [String]
    # @!attribute policy_hash
    #   <p>A cryptographic hash of the contents of the policy used to prevent unexpected concurrent modification of the policy.</p>
    #   @return [String]
    class PutConfiguredAudienceModelPolicyResponse < Struct.new(
      :configured_audience_model_policy,
      :policy_hash,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the member that is being configured.</p>
    #   @return [String]
    # @!attribute default_output_location
    #   <p>The default Amazon S3 location where ML output is stored for the specified member.</p>
    #   @return [Types::MLOutputConfiguration]
    class PutMLConfigurationRequest < Struct.new(
      :membership_identifier,
      :default_output_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The relevance score of a generated audience.</p>
    # @!attribute audience_size
    #   <p>The size of the generated audience. Must match one of the sizes in the configured audience model.</p>
    #   @return [Types::AudienceSize]
    # @!attribute score
    #   <p>The relevance score of the generated audience.</p>
    #   @return [Float]
    class RelevanceMetric < Struct.new(
      :audience_size,
      :score,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the EC2 resources that are used to train the model.</p>
    # @!attribute instance_count
    #   <p>The number of resources that are used to train the model.</p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>The instance type that is used to train the model.</p>
    #   @return [String]
    # @!attribute volume_size_in_gb
    #   <p>The maximum size of the instance that is used to train the model.</p>
    #   @return [Integer]
    class ResourceConfig < Struct.new(
      :instance_count,
      :instance_type,
      :volume_size_in_gb,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:instance_count] = 1 unless options.key?(:instance_count)
        super
      end
    end

    # <p>The resource you are requesting does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about an Amazon S3 bucket and path.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 location URI.</p>
    #   @return [String]
    class S3ConfigMap < Struct.new(
      :s3_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded your service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_name
    #   The name of the service quota limit that was exceeded
    #   @return [String]
    # @!attribute quota_value
    #   The current limit on the service quota that was exceeded
    #   @return [Float]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_name,
      :quota_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the audience export job.</p>
    #   @return [String]
    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you want to export.</p>
    #   @return [String]
    # @!attribute audience_size
    #   <p>The size of the generated audience. Must match one of the sizes in the configured audience model.</p>
    #   @return [Types::AudienceSize]
    # @!attribute description
    #   <p>The description of the audience export job.</p>
    #   @return [String]
    class StartAudienceExportJobRequest < Struct.new(
      :name,
      :audience_generation_job_arn,
      :audience_size,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the audience generation job.</p>
    #   @return [String]
    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that is used for this audience generation job.</p>
    #   @return [String]
    # @!attribute seed_audience
    #   <p>The seed audience that is used to generate the audience.</p>
    #   @return [Types::AudienceGenerationJobDataSource]
    # @!attribute include_seed_in_output
    #   <p>Whether the seed audience is included in the audience generation output.</p>
    #   @return [Boolean]
    # @!attribute collaboration_id
    #   <p>The identifier of the collaboration that contains the audience generation job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the audience generation job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class StartAudienceGenerationJobRequest < Struct.new(
      :name,
      :configured_audience_model_arn,
      :seed_audience,
      :include_seed_in_output,
      :collaboration_id,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job.</p>
    #   @return [String]
    class StartAudienceGenerationJobResponse < Struct.new(
      :audience_generation_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trained model export job.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that you want to export.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model to export. This specifies which version of the trained model should be exported to the specified destination.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that is receiving the exported trained model artifacts.</p>
    #   @return [String]
    # @!attribute output_configuration
    #   <p>The output configuration information for the trained model export job.</p>
    #   @return [Types::TrainedModelExportOutputConfiguration]
    # @!attribute description
    #   <p>The description of the trained model export job.</p>
    #   @return [String]
    class StartTrainedModelExportJobRequest < Struct.new(
      :name,
      :trained_model_arn,
      :trained_model_version_identifier,
      :membership_identifier,
      :output_configuration,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the trained model inference job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that is used for this trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model to use for inference. This specifies which version of the trained model should be used to generate predictions on the input data.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that is used for this trained model inference job.</p>
    #   @return [String]
    # @!attribute resource_config
    #   <p>Defines the resource configuration for the trained model inference job.</p>
    #   @return [Types::InferenceResourceConfig]
    # @!attribute output_configuration
    #   <p>Defines the output configuration information for the trained model inference job.</p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute data_source
    #   <p>Defines the data source that is used for the trained model inference job.</p>
    #   @return [Types::ModelInferenceDataSource]
    # @!attribute description
    #   <p>The description of the trained model inference job.</p>
    #   @return [String]
    # @!attribute container_execution_parameters
    #   <p>The execution parameters for the container.</p>
    #   @return [Types::InferenceContainerExecutionParameters]
    # @!attribute environment
    #   <p>The environment variables to set in the Docker container.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the ML inference job and associated data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class StartTrainedModelInferenceJobRequest < Struct.new(
      :membership_identifier,
      :name,
      :trained_model_arn,
      :trained_model_version_identifier,
      :configured_model_algorithm_association_arn,
      :resource_config,
      :output_configuration,
      :data_source,
      :description,
      :container_execution_parameters,
      :environment,
      :kms_key_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trained_model_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model inference job.</p>
    #   @return [String]
    class StartTrainedModelInferenceJobResponse < Struct.new(
      :trained_model_inference_job_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the status of a resource.</p>
    # @!attribute status_code
    #   <p>The status code that was returned. The status code is intended for programmatic error handling. Clean Rooms ML will not change the status code for existing error conditions.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message that was returned. The message is intended for human consumption and can change at any time. Use the <code>statusCode</code> for programmatic error handling.</p>
    #   @return [String]
    class StatusDetails < Struct.new(
      :status_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria used to stop model training.</p>
    # @!attribute max_runtime_in_seconds
    #   <p>The maximum amount of time, in seconds, that model training can run before it is terminated.</p>
    #   @return [Integer]
    class StoppingCondition < Struct.new(
      :max_runtime_in_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_runtime_in_seconds] = 86400 unless options.key?(:max_runtime_in_seconds)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to assign tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the maximum size limit for trained model artifacts. This configuration helps control storage costs and ensures that trained models don't exceed specified size constraints. The size limit applies to the total size of all artifacts produced by the training job.</p>
    # @!attribute unit
    #   <p>The unit of measurement for the maximum artifact size. Valid values include common storage units such as bytes, kilobytes, megabytes, gigabytes, and terabytes.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The numerical value for the maximum artifact size limit. This value is interpreted according to the specified unit.</p>
    #   @return [Float]
    class TrainedModelArtifactMaxSize < Struct.new(
      :unit,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the output of the trained model export job.</p>
    # @!attribute members
    #   <p>The members that will received the exported trained model output.</p>
    #   @return [Array<Types::TrainedModelExportReceiverMember>]
    class TrainedModelExportOutputConfiguration < Struct.new(
      :members,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the member who will receive trained model exports.</p>
    # @!attribute account_id
    #   <p>The account ID of the member who will receive trained model exports.</p>
    #   @return [String]
    class TrainedModelExportReceiverMember < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how the trained model exports are configured.</p>
    # @!attribute max_size
    #   <p>The maximum size of the data that can be exported.</p>
    #   @return [Types::TrainedModelExportsMaxSize]
    # @!attribute files_to_export
    #   <p>The files that are exported during the trained model export job.</p>
    #   @return [Array<String>]
    class TrainedModelExportsConfigurationPolicy < Struct.new(
      :max_size,
      :files_to_export,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum size of the trained model metrics that can be exported. If the trained model metrics dataset is larger than this value, it will not be exported.</p>
    # @!attribute unit
    #   <p>The unit of measurement for the data size.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The maximum size of the dataset to export.</p>
    #   @return [Float]
    class TrainedModelExportsMaxSize < Struct.new(
      :unit,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the trained model inference job.</p>
    # @!attribute trained_model_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model inference job.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that is used for the trained model inference job.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the membership that contains the trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that is used for the trained model inference job.</p>
    #   @return [String]
    # @!attribute trained_model_version_identifier
    #   <p>The version identifier of the trained model that was used for inference in this job.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model inference job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the trained model inference job.</p>
    #   @return [String]
    # @!attribute output_configuration
    #   <p>The output configuration information of the trained model job.</p>
    #   @return [Types::InferenceOutputConfiguration]
    # @!attribute name
    #   <p>The name of the trained model inference job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the trained model inference job.</p>
    #   @return [String]
    # @!attribute metrics_status
    #   <p>The metric status of the trained model inference job.</p>
    #   @return [String]
    # @!attribute metrics_status_details
    #   <p>Details about the metrics status for the trained model inference job.</p>
    #   @return [String]
    # @!attribute logs_status
    #   <p>The log status of the trained model inference job.</p>
    #   @return [String]
    # @!attribute logs_status_details
    #   <p>Details about the log status for the trained model inference job.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the trained model inference job was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model inference job was updated.</p>
    #   @return [Time]
    class TrainedModelInferenceJobSummary < Struct.new(
      :trained_model_inference_job_arn,
      :configured_model_algorithm_association_arn,
      :membership_identifier,
      :trained_model_arn,
      :trained_model_version_identifier,
      :collaboration_identifier,
      :status,
      :output_configuration,
      :name,
      :description,
      :metrics_status,
      :metrics_status_details,
      :logs_status,
      :logs_status_details,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information for the trained model inference job.</p>
    # @!attribute container_logs
    #   <p>The logs container for the trained model inference job.</p>
    #   @return [Array<Types::LogsConfigurationPolicy>]
    # @!attribute max_output_size
    #   <p>The maximum allowed size of the output of the trained model inference job.</p>
    #   @return [Types::TrainedModelInferenceMaxOutputSize]
    class TrainedModelInferenceJobsConfigurationPolicy < Struct.new(
      :container_logs,
      :max_output_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the maximum output size for a trained model inference job.</p>
    # @!attribute unit
    #   <p>The measurement unit to use.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The maximum output size value.</p>
    #   @return [Float]
    class TrainedModelInferenceMaxOutputSize < Struct.new(
      :unit,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the trained model.</p>
    # @!attribute create_time
    #   <p>The time at which the trained model was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the trained model was updated.</p>
    #   @return [Time]
    # @!attribute trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model.</p>
    #   @return [String]
    # @!attribute version_identifier
    #   <p>The version identifier of this trained model version.</p>
    #   @return [String]
    # @!attribute incremental_training_data_channels
    #   <p>Information about the incremental training data channels used to create this version of the trained model.</p>
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    # @!attribute name
    #   <p>The name of the trained model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the trained model.</p>
    #   @return [String]
    # @!attribute membership_identifier
    #   <p>The membership ID of the member that created the trained model.</p>
    #   @return [String]
    # @!attribute collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the trained model.</p>
    #   @return [String]
    # @!attribute configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that was used to create this trained model.</p>
    #   @return [String]
    class TrainedModelSummary < Struct.new(
      :create_time,
      :update_time,
      :trained_model_arn,
      :version_identifier,
      :incremental_training_data_channels,
      :name,
      :description,
      :membership_identifier,
      :collaboration_identifier,
      :status,
      :configured_model_algorithm_association_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration policy for the trained models.</p>
    # @!attribute container_logs
    #   <p>The container for the logs of the trained model.</p>
    #   @return [Array<Types::LogsConfigurationPolicy>]
    # @!attribute container_metrics
    #   <p>The container for the metrics of the trained model.</p>
    #   @return [Types::MetricsConfigurationPolicy]
    # @!attribute max_artifact_size
    #   <p>The maximum size limit for trained model artifacts as defined in the configuration policy. This setting helps enforce consistent size limits across trained models in the collaboration.</p>
    #   @return [Types::TrainedModelArtifactMaxSize]
    class TrainedModelsConfigurationPolicy < Struct.new(
      :container_logs,
      :container_metrics,
      :max_artifact_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the training dataset.</p>
    # @!attribute create_time
    #   <p>The time at which the training dataset was created.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The most recent time at which the training dataset was updated.</p>
    #   @return [Time]
    # @!attribute training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the training dataset.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the training dataset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the training dataset.</p>
    #   @return [String]
    class TrainingDatasetSummary < Struct.new(
      :create_time,
      :update_time,
      :training_dataset_arn,
      :name,
      :status,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key values of tags that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you want to update.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>The new output configuration.</p>
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    # @!attribute audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the new audience model that you want to use.</p>
    #   @return [String]
    # @!attribute shared_audience_metrics
    #   <p>The new value for whether to share audience metrics.</p>
    #   @return [Array<String>]
    # @!attribute min_matching_seed_size
    #   <p>The minimum number of users from the seed audience that must match with users in the training data of the audience model.</p>
    #   @return [Integer]
    # @!attribute audience_size_config
    #   <p>The new audience size configuration.</p>
    #   @return [Types::AudienceSizeConfig]
    # @!attribute description
    #   <p>The new description of the configured audience model.</p>
    #   @return [String]
    class UpdateConfiguredAudienceModelRequest < Struct.new(
      :configured_audience_model_arn,
      :output_config,
      :audience_model_arn,
      :shared_audience_metrics,
      :min_matching_seed_size,
      :audience_size_config,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that was updated.</p>
    #   @return [String]
    class UpdateConfiguredAudienceModelResponse < Struct.new(
      :configured_audience_model_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for this request are incorrect.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about the compute workers that perform the transform job.</p>
    # @!attribute type
    #   <p>The instance type of the compute workers that are used.</p>
    #   @return [String]
    # @!attribute number
    #   <p>The number of compute workers that are used.</p>
    #   @return [Integer]
    class WorkerComputeConfiguration < Struct.new(
      :type,
      :number,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'CR.1X' unless options.key?(:type)
        options[:number] = 16 unless options.key?(:number)
        super
      end
    end

  end
end

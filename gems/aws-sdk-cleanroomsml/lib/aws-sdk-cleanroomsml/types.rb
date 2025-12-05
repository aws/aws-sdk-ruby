# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CleanRoomsML
  module Types

    # An access budget that defines consumption limits for a specific
    # resource within defined time periods.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that this access
    #   budget applies to.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A list of budget details for this resource. Contains active budget
    #   periods that apply to the resource.
    #   @return [Array<Types::AccessBudgetDetails>]
    #
    # @!attribute [rw] aggregate_remaining_budget
    #   The total remaining budget across all active budget periods for this
    #   resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AccessBudget AWS API Documentation
    #
    class AccessBudget < Struct.new(
      :resource_arn,
      :details,
      :aggregate_remaining_budget)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detailed information for a specific budget period, including time
    # boundaries and budget amounts.
    #
    # @!attribute [rw] start_time
    #   The start time of this budget period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of this budget period. If not specified, the budget
    #   period continues indefinitely.
    #   @return [Time]
    #
    # @!attribute [rw] remaining_budget
    #   The amount of budget remaining in this period.
    #   @return [Integer]
    #
    # @!attribute [rw] budget
    #   The total budget amount allocated for this period.
    #   @return [Integer]
    #
    # @!attribute [rw] budget_type
    #   The type of budget period. Calendar-based types reset automatically
    #   at regular intervals, while LIFETIME budgets never reset.
    #   @return [String]
    #
    # @!attribute [rw] auto_refresh
    #   Specifies whether this budget automatically refreshes when the
    #   current period ends.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AccessBudgetDetails AWS API Documentation
    #
    class AccessBudgetDetails < Struct.new(
      :start_time,
      :end_time,
      :remaining_budget,
      :budget,
      :budget_type,
      :auto_refresh)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Amazon S3 bucket where the configured audience is stored.
    #
    # @!attribute [rw] s3_destination
    #   The Amazon S3 bucket and path for the configured audience.
    #   @return [Types::S3ConfigMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceDestination AWS API Documentation
    #
    class AudienceDestination < Struct.new(
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the audience export job.
    #
    # @!attribute [rw] create_time
    #   The time at which the audience export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience export job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the audience export job.
    #   @return [String]
    #
    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that
    #   was exported.
    #   @return [String]
    #
    # @!attribute [rw] audience_size
    #   The size of the generated audience. Must match one of the sizes in
    #   the configured audience model.
    #   @return [Types::AudienceSize]
    #
    # @!attribute [rw] description
    #   The description of the audience export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the audience export job.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of a resource.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] output_location
    #   The Amazon S3 bucket where the audience export is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceExportJobSummary AWS API Documentation
    #
    class AudienceExportJobSummary < Struct.new(
      :create_time,
      :update_time,
      :name,
      :audience_generation_job_arn,
      :audience_size,
      :description,
      :status,
      :status_details,
      :output_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Amazon S3 bucket where the seed audience for the
    # generating audience is stored.
    #
    # @!attribute [rw] data_source
    #   Defines the Amazon S3 bucket where the seed audience for the
    #   generating audience is stored. A valid data source is a JSON line
    #   file in the following format:
    #
    #   `{"user_id": "111111"}`
    #
    #   `{"user_id": "222222"}`
    #
    #   `...`
    #   @return [Types::S3ConfigMap]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that can read the Amazon S3 bucket where the
    #   seed audience is stored.
    #   @return [String]
    #
    # @!attribute [rw] sql_parameters
    #   The protected SQL query parameters.
    #   @return [Types::ProtectedQuerySQLParameters]
    #
    # @!attribute [rw] sql_compute_configuration
    #   Provides configuration information for the instances that will
    #   perform the compute work.
    #   @return [Types::ComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceGenerationJobDataSource AWS API Documentation
    #
    class AudienceGenerationJobDataSource < Struct.new(
      :data_source,
      :role_arn,
      :sql_parameters,
      :sql_compute_configuration)
      SENSITIVE = [:sql_parameters]
      include Aws::Structure
    end

    # Provides information about the configured audience generation job.
    #
    # @!attribute [rw] create_time
    #   The time at which the audience generation job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience generation job was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for this audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that contains this audience
    #   generation job.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   The AWS Account that submitted the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceGenerationJobSummary AWS API Documentation
    #
    class AudienceGenerationJobSummary < Struct.new(
      :create_time,
      :update_time,
      :audience_generation_job_arn,
      :name,
      :description,
      :status,
      :configured_audience_model_arn,
      :collaboration_id,
      :started_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the audience model.
    #
    # @!attribute [rw] create_time
    #   The time at which the audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience model was updated.
    #   @return [Time]
    #
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that was used
    #   for the audience model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceModelSummary AWS API Documentation
    #
    class AudienceModelSummary < Struct.new(
      :create_time,
      :update_time,
      :audience_model_arn,
      :name,
      :training_dataset_arn,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metrics that describe the quality of the generated audience.
    #
    # @!attribute [rw] relevance_metrics
    #   The relevance scores of the generated audience.
    #   @return [Array<Types::RelevanceMetric>]
    #
    # @!attribute [rw] recall_metric
    #   The recall score of the generated audience. Recall is the percentage
    #   of the most similar users (by default, the most similar 20%) from a
    #   sample of the training data that are included in the seed audience
    #   by the audience generation job. Values range from 0-1, larger values
    #   indicate a better audience. A recall value approximately equal to
    #   the maximum bin size indicates that the audience model is equivalent
    #   to random selection.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceQualityMetrics AWS API Documentation
    #
    class AudienceQualityMetrics < Struct.new(
      :relevance_metrics,
      :recall_metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # The size of the generated audience. Must match one of the sizes in the
    # configured audience model.
    #
    # @!attribute [rw] type
    #   Whether the audience size is defined in absolute terms or as a
    #   percentage. You can use the `ABSOLUTE` AudienceSize to configure out
    #   audience sizes using the count of identifiers in the output. You can
    #   use the `Percentage` AudienceSize to configure sizes in the range
    #   1-100 percent.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specify an audience size value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceSize AWS API Documentation
    #
    class AudienceSize < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the relevance scores at these audience sizes when used in the
    # GetAudienceGenerationJob for a specified audience generation job and
    # configured audience model.
    #
    # Specifies the list of allowed `audienceSize` values when used in the
    # StartAudienceExportJob for an audience generation job. You can use the
    # `ABSOLUTE` AudienceSize to configure out audience sizes using the
    # count of identifiers in the output. You can use the `Percentage`
    # AudienceSize to configure sizes in the range 1-100 percent.
    #
    # @!attribute [rw] audience_size_type
    #   Whether the audience output sizes are defined as an absolute number
    #   or a percentage.
    #   @return [String]
    #
    # @!attribute [rw] audience_size_bins
    #   An array of the different audience output sizes.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/AudienceSizeConfig AWS API Documentation
    #
    class AudienceSizeConfig < Struct.new(
      :audience_size_type,
      :audience_size_bins)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the trained model inference job that you want
    #   to cancel.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_inference_job_arn
    #   The Amazon Resource Name (ARN) of the trained model inference job
    #   that you want to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CancelTrainedModelInferenceJobRequest AWS API Documentation
    #
    class CancelTrainedModelInferenceJobRequest < Struct.new(
      :membership_identifier,
      :trained_model_inference_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the trained model job that you want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model job that you
    #   want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the trained model to cancel. This
    #   parameter allows you to specify which version of the trained model
    #   you want to cancel when multiple versions exist.
    #
    #   If `versionIdentifier` is not specified, the base model will be
    #   cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CancelTrainedModelRequest AWS API Documentation
    #
    class CancelTrainedModelRequest < Struct.new(
      :membership_identifier,
      :trained_model_arn,
      :version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a configured model algorithm in a
    # collaboration.
    #
    # @!attribute [rw] create_time
    #   The time at which the configured model algorithm association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured model algorithm
    #   association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the
    #   configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   that is associated to the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID of the member that created the configured model
    #   algorithm association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CollaborationConfiguredModelAlgorithmAssociationSummary AWS API Documentation
    #
    class CollaborationConfiguredModelAlgorithmAssociationSummary < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_association_arn,
      :name,
      :description,
      :membership_identifier,
      :collaboration_identifier,
      :configured_model_algorithm_arn,
      :creator_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an ML input channel in a
    # collaboration.
    #
    # @!attribute [rw] create_time
    #   The time at which the ML input channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the ML input channel was updated.
    #   @return [Time]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_associations
    #   The associated configured model algorithms used to create the ML
    #   input channel.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID of the member who created the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ML input channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CollaborationMLInputChannelSummary AWS API Documentation
    #
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
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a trained model export job in a
    # collaboration.
    #
    # @!attribute [rw] create_time
    #   The time at which the trained model export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model export job was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the trained model export job.
    #   @return [String]
    #
    # @!attribute [rw] output_configuration
    #   Information about the output of the trained model export job.
    #   @return [Types::TrainedModelExportOutputConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of a resource.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] description
    #   The description of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID of the member that created the trained model.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that is being
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model that was exported in
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the trained model
    #   export job.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CollaborationTrainedModelExportJobSummary AWS API Documentation
    #
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
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a trained model inference job in a
    # collaboration.
    #
    # @!attribute [rw] trained_model_inference_job_arn
    #   The Amazon Resource Name (ARN) of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that is used for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the trained model
    #   inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that is used for
    #   the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model that was used for
    #   inference in this job.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model inference job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] output_configuration
    #   Returns output configuration information for the trained model
    #   inference job.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status
    #   the trained model inference job metrics status.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status_details
    #   Details about the metrics status for trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] logs_status
    #   The trained model inference job logs status.
    #   @return [String]
    #
    # @!attribute [rw] logs_status_details
    #   Details about the logs status for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the trained model inference job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model inference job was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID that created the trained model inference job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CollaborationTrainedModelInferenceJobSummary AWS API Documentation
    #
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
      :creator_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a trained model in a collaboration.
    #
    # @!attribute [rw] create_time
    #   The time at which the trained model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model was updated.
    #   @return [Time]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of this trained model version.
    #   @return [String]
    #
    # @!attribute [rw] incremental_training_data_channels
    #   Information about the incremental training data channels used to
    #   create this version of the trained model.
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    #
    # @!attribute [rw] description
    #   The description of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the trained model.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that is used for this trained model.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID of the member that created the trained model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CollaborationTrainedModelSummary AWS API Documentation
    #
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
      :creator_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains classification information for data columns, including
    # mappings that specify how columns should be handled during synthetic
    # data generation and privacy analysis.
    #
    # @!attribute [rw] column_mapping
    #   A mapping that defines the classification of data columns for
    #   synthetic data generation and specifies how each column should be
    #   handled during the privacy-preserving data synthesis process.
    #   @return [Array<Types::SyntheticDataColumnProperties>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ColumnClassificationDetails AWS API Documentation
    #
    class ColumnClassificationDetails < Struct.new(
      :column_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a column.
    #
    # @!attribute [rw] column_name
    #   The name of a column.
    #   @return [String]
    #
    # @!attribute [rw] column_types
    #   The data type of column.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ColumnSchema AWS API Documentation
    #
    class ColumnSchema < Struct.new(
      :column_name,
      :column_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for the instances that will perform
    # the compute work.
    #
    # @note ComputeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ComputeConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ComputeConfiguration corresponding to the set member.
    #
    # @!attribute [rw] worker
    #   The worker instances that will perform the compute work.
    #   @return [Types::WorkerComputeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ComputeConfiguration AWS API Documentation
    #
    class ComputeConfiguration < Struct.new(
      :worker,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Worker < ComputeConfiguration; end
      class Unknown < ComputeConfiguration; end
    end

    # Configuration information necessary for the configure audience model
    # output.
    #
    # @!attribute [rw] destination
    #   Defines the Amazon S3 bucket where the configured audience is
    #   stored.
    #   @return [Types::AudienceDestination]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that can write the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ConfiguredAudienceModelOutputConfig AWS API Documentation
    #
    class ConfiguredAudienceModelOutputConfig < Struct.new(
      :destination,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the configured audience model.
    #
    # @!attribute [rw] create_time
    #   The time at which the configured audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that was used
    #   to create the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The output configuration of the configured audience model.
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the configured audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ConfiguredAudienceModelSummary AWS API Documentation
    #
    class ConfiguredAudienceModelSummary < Struct.new(
      :create_time,
      :update_time,
      :name,
      :audience_model_arn,
      :output_config,
      :description,
      :configured_audience_model_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about the configured model algorithm
    # association.
    #
    # @!attribute [rw] create_time
    #   The time at which the configured model algorithm association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured model algorithm
    #   association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   that is being associated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the
    #   configured model algorithm association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ConfiguredModelAlgorithmAssociationSummary AWS API Documentation
    #
    class ConfiguredModelAlgorithmAssociationSummary < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_association_arn,
      :configured_model_algorithm_arn,
      :name,
      :description,
      :membership_identifier,
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a configured model algorithm.
    #
    # @!attribute [rw] create_time
    #   The time at which the configured model algorithm was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured model algorithm was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ConfiguredModelAlgorithmSummary AWS API Documentation
    #
    class ConfiguredModelAlgorithmSummary < Struct.new(
      :create_time,
      :update_time,
      :configured_model_algorithm_arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't complete this action because another resource depends on
    # this resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for the dockerized container where
    # the model algorithm is stored.
    #
    # @!attribute [rw] image_uri
    #   The registry path of the docker image that contains the algorithm.
    #   Clean Rooms ML currently only supports the
    #   `registry/repository[:tag]` image path format. For more information
    #   about using images in Clean Rooms ML, see the [Sagemaker API
    #   reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AlgorithmSpecification.html#sagemaker-Type-AlgorithmSpecification-TrainingImage
    #   @return [String]
    #
    # @!attribute [rw] entrypoint
    #   The entrypoint script for a Docker container used to run a training
    #   job. This script takes precedence over the default train processing
    #   instructions. See How Amazon SageMaker Runs Your Training Image for
    #   additional information. For more information, see [How Sagemaker
    #   runs your training image][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-training-algo-dockerfile.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] arguments
    #   The arguments for a container used to run a training job. See How
    #   Amazon SageMaker Runs Your Training Image for additional
    #   information. For more information, see [How Sagemaker runs your
    #   training image][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-training-algo-dockerfile.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_definitions
    #   A list of metric definition objects. Each object specifies the
    #   metric name and regular expressions used to parse algorithm logs.
    #   Amazon Web Services Clean Rooms ML publishes each metric to all
    #   members' Amazon CloudWatch using IAM role configured in
    #   PutMLConfiguration.
    #   @return [Array<Types::MetricDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ContainerConfig AWS API Documentation
    #
    class ContainerConfig < Struct.new(
      :image_uri,
      :entrypoint,
      :arguments,
      :metric_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_data_start_time
    #   The start date and time of the training window.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_end_time
    #   The end date and time of the training window.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the audience model resource.
    #   @return [String]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset for this
    #   audience model.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the trained ML model and
    #   the associated data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description of the audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateAudienceModelRequest AWS API Documentation
    #
    class CreateAudienceModelRequest < Struct.new(
      :training_data_start_time,
      :training_data_end_time,
      :name,
      :training_dataset_arn,
      :kms_key_arn,
      :tags,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateAudienceModelResponse AWS API Documentation
    #
    class CreateAudienceModelResponse < Struct.new(
      :audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model to use for the
    #   configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   Configure the Amazon S3 location and IAM Role for audiences created
    #   using this configured audience model. Each audience will have a
    #   unique location. The IAM Role must have `s3:PutObject` permission on
    #   the destination Amazon S3 location. If the destination is protected
    #   with Amazon S3 KMS-SSE, then the Role must also have the required
    #   KMS permissions.
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] shared_audience_metrics
    #   Whether audience metrics are shared.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model. The default
    #   value is 500.
    #   @return [Integer]
    #
    # @!attribute [rw] audience_size_config
    #   Configure the list of output sizes of audiences that can be created
    #   using this configured audience model. A request to
    #   StartAudienceGenerationJob that uses this configured audience model
    #   must have an `audienceSize` selected from this list. You can use the
    #   `ABSOLUTE` AudienceSize to configure out audience sizes using the
    #   count of identifiers in the output. You can use the `Percentage`
    #   AudienceSize to configure sizes in the range 1-100 percent.
    #   @return [Types::AudienceSizeConfig]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] child_resource_tag_on_create_policy
    #   Configure how the service tags audience generation jobs created
    #   using this configured audience model. If you specify `NONE`, the
    #   tags from the StartAudienceGenerationJob request determine the tags
    #   of the audience generation job. If you specify
    #   `FROM_PARENT_RESOURCE`, the audience generation job inherits the
    #   tags from the configured audience model, by default. Tags in the
    #   StartAudienceGenerationJob will override the default.
    #
    #   When the client is in a different account than the configured
    #   audience model, the tags from the client are never applied to a
    #   resource in the caller's account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredAudienceModelRequest AWS API Documentation
    #
    class CreateConfiguredAudienceModelRequest < Struct.new(
      :name,
      :audience_model_arn,
      :output_config,
      :description,
      :shared_audience_metrics,
      :min_matching_seed_size,
      :audience_size_config,
      :tags,
      :child_resource_tag_on_create_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredAudienceModelResponse AWS API Documentation
    #
    class CreateConfiguredAudienceModelResponse < Struct.new(
      :configured_audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member who is associating this configured
    #   model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   that you want to associate.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] privacy_configuration
    #   Specifies the privacy configuration information for the configured
    #   model algorithm association. This information includes the maximum
    #   data size that can be exported.
    #   @return [Types::PrivacyConfiguration]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredModelAlgorithmAssociationRequest AWS API Documentation
    #
    class CreateConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :membership_identifier,
      :configured_model_algorithm_arn,
      :name,
      :description,
      :privacy_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredModelAlgorithmAssociationResponse AWS API Documentation
    #
    class CreateConfiguredModelAlgorithmAssociationResponse < Struct.new(
      :configured_model_algorithm_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that is used to access
    #   the repository.
    #   @return [String]
    #
    # @!attribute [rw] training_container_config
    #   Configuration information for the training container, including
    #   entrypoints and arguments.
    #   @return [Types::ContainerConfig]
    #
    # @!attribute [rw] inference_container_config
    #   Configuration information for the inference container that is used
    #   when you run an inference job on a configured model algorithm.
    #   @return [Types::InferenceContainerConfig]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the configured ML model
    #   algorithm and associated data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredModelAlgorithmRequest AWS API Documentation
    #
    class CreateConfiguredModelAlgorithmRequest < Struct.new(
      :name,
      :description,
      :role_arn,
      :training_container_config,
      :inference_container_config,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredModelAlgorithmResponse AWS API Documentation
    #
    class CreateConfiguredModelAlgorithmResponse < Struct.new(
      :configured_model_algorithm_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that is creating the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_associations
    #   The associated configured model algorithms that are necessary to
    #   create this ML input channel.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_channel
    #   The input data that is used to create this ML input channel.
    #   @return [Types::InputChannel]
    #
    # @!attribute [rw] name
    #   The name of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days that the data in the ML input channel is
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that is used to access
    #   the input channel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateMLInputChannelRequest AWS API Documentation
    #
    class CreateMLInputChannelRequest < Struct.new(
      :membership_identifier,
      :configured_model_algorithm_associations,
      :input_channel,
      :name,
      :retention_in_days,
      :description,
      :kms_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateMLInputChannelResponse AWS API Documentation
    #
    class CreateMLInputChannelResponse < Struct.new(
      :ml_input_channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that is creating the trained model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The associated configured model algorithm used to train this model.
    #   @return [String]
    #
    # @!attribute [rw] hyperparameters
    #   Algorithm-specific parameters that influence the quality of the
    #   model. You set hyperparameters before you start the learning
    #   process.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_config
    #   Information about the EC2 resources that are used to train this
    #   model.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] stopping_condition
    #   The criteria that is used to stop model training.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] incremental_training_data_channels
    #   Specifies the incremental training data channels for the trained
    #   model.
    #
    #   Incremental training allows you to create a new trained model with
    #   updates without retraining from scratch. You can specify up to one
    #   incremental training data channel that references a previously
    #   trained model and its version.
    #
    #   Limit: Maximum of 20 channels total (including both
    #   `incrementalTrainingDataChannels` and `dataChannels`).
    #   @return [Array<Types::IncrementalTrainingDataChannel>]
    #
    # @!attribute [rw] data_channels
    #   Defines the data channels that are used as input for the trained
    #   model request.
    #
    #   Limit: Maximum of 20 channels total (including both `dataChannels`
    #   and `incrementalTrainingDataChannels`).
    #   @return [Array<Types::ModelTrainingDataChannel>]
    #
    # @!attribute [rw] training_input_mode
    #   The input mode for accessing the training data. This parameter
    #   determines how the training data is made available to the training
    #   algorithm. Valid values are:
    #
    #   * `File` - The training data is downloaded to the training instance
    #     and made available as files.
    #
    #   * `FastFile` - The training data is streamed directly from Amazon S3
    #     to the training algorithm, providing faster access for large
    #     datasets.
    #
    #   * `Pipe` - The training data is streamed to the training algorithm
    #     using named pipes, which can improve performance for certain
    #     algorithms.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the trained ML model and
    #   the associated data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainedModelRequest AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The unique version identifier assigned to the newly created trained
    #   model. This identifier can be used to reference this specific
    #   version of the trained model in subsequent operations such as
    #   inference jobs or incremental training.
    #
    #   The initial version identifier for the base version of the trained
    #   model is "NULL".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainedModelResponse AWS API Documentation
    #
    class CreateTrainedModelResponse < Struct.new(
      :trained_model_arn,
      :version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the training dataset. This name must be unique in your
    #   account and region.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that Clean Rooms ML can assume to read the
    #   data referred to in the `dataSource` field of each dataset.
    #
    #   Passing a role across AWS accounts is not allowed. If you pass a
    #   role that isn't in your account, you get an `AccessDeniedException`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] training_data
    #   An array of information that lists the Dataset objects, which
    #   specifies the dataset type and details on its location and schema.
    #   You must provide a role that has read access to these tables.
    #   @return [Array<Types::Dataset>]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description of the training dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainingDatasetRequest AWS API Documentation
    #
    class CreateTrainingDatasetRequest < Struct.new(
      :name,
      :role_arn,
      :training_data,
      :tags,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainingDatasetResponse AWS API Documentation
    #
    class CreateTrainingDatasetResponse < Struct.new(
      :training_dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for defining custom patterns to be redacted from
    # logs and error messages. This is for the CUSTOM config under
    # entitiesToRedact. Both CustomEntityConfig and entitiesToRedact need to
    # be present or not present.
    #
    # @!attribute [rw] custom_data_identifiers
    #   Defines data identifiers for the custom entity configuration.
    #   Provide this only if CUSTOM redaction is configured.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CustomEntityConfig AWS API Documentation
    #
    class CustomEntityConfig < Struct.new(
      :custom_data_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Privacy evaluation scores that measure the privacy characteristics of
    # the generated synthetic data, including assessments of potential
    # privacy risks such as membership inference attacks.
    #
    # @!attribute [rw] membership_inference_attack_scores
    #   Scores that evaluate the vulnerability of the synthetic data to
    #   membership inference attacks, which attempt to determine whether a
    #   specific individual was a member of the original dataset.
    #   @return [Array<Types::MembershipInferenceAttackScore>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DataPrivacyScores AWS API Documentation
    #
    class DataPrivacyScores < Struct.new(
      :membership_inference_attack_scores)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines information about the Glue data source that contains the
    # training data.
    #
    # @!attribute [rw] glue_data_source
    #   A GlueDataSource object that defines the catalog ID, database name,
    #   and table name for the training data.
    #   @return [Types::GlueDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :glue_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines where the training dataset is located, what type of data it
    # contains, and how to access the data.
    #
    # @!attribute [rw] type
    #   What type of information is found in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   A DatasetInputConfig object that defines the data source and schema
    #   mapping.
    #   @return [Types::DatasetInputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/Dataset AWS API Documentation
    #
    class Dataset < Struct.new(
      :type,
      :input_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Glue data source and schema mapping information.
    #
    # @!attribute [rw] schema
    #   The schema information for the training data.
    #   @return [Array<Types::ColumnSchema>]
    #
    # @!attribute [rw] data_source
    #   A DataSource object that specifies the Glue data source for the
    #   training data.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DatasetInputConfig AWS API Documentation
    #
    class DatasetInputConfig < Struct.new(
      :schema,
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that
    #   you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteAudienceGenerationJobRequest AWS API Documentation
    #
    class DeleteAudienceGenerationJobRequest < Struct.new(
      :audience_generation_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that you want
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteAudienceModelRequest AWS API Documentation
    #
    class DeleteAudienceModelRequest < Struct.new(
      :audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model
    #   policy that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredAudienceModelPolicyRequest AWS API Documentation
    #
    class DeleteConfiguredAudienceModelPolicyRequest < Struct.new(
      :configured_audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredAudienceModelRequest AWS API Documentation
    #
    class DeleteConfiguredAudienceModelRequest < Struct.new(
      :configured_audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that is deleting the configured
    #   model algorithm association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredModelAlgorithmAssociationRequest AWS API Documentation
    #
    class DeleteConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :configured_model_algorithm_association_arn,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredModelAlgorithmRequest AWS API Documentation
    #
    class DeleteConfiguredModelAlgorithmRequest < Struct.new(
      :configured_model_algorithm_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the of the member that is deleting the ML
    #   modeling configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteMLConfigurationRequest AWS API Documentation
    #
    class DeleteMLConfigurationRequest < Struct.new(
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel that you want
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channel you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteMLInputChannelDataRequest AWS API Documentation
    #
    class DeleteMLInputChannelDataRequest < Struct.new(
      :ml_input_channel_arn,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model whose output you
    #   want to delete.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that is deleting the trained model
    #   output.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the trained model to delete. If not
    #   specified, the operation will delete the base version of the trained
    #   model. When specified, only the particular version will be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteTrainedModelOutputRequest AWS API Documentation
    #
    class DeleteTrainedModelOutputRequest < Struct.new(
      :trained_model_arn,
      :membership_identifier,
      :version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that you want
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteTrainingDatasetRequest AWS API Documentation
    #
    class DeleteTrainingDatasetRequest < Struct.new(
      :training_dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location where the exported model artifacts are stored.
    #
    # @!attribute [rw] s3_destination
    #   Provides information about an Amazon S3 bucket and path.
    #   @return [Types::S3ConfigMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that
    #   you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceGenerationJobRequest AWS API Documentation
    #
    class GetAudienceGenerationJobRequest < Struct.new(
      :audience_generation_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the audience generation job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience generation job was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of the audience generation job.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model used
    #   for this audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] seed_audience
    #   The seed audience that was used for this audience generation job.
    #   This field will be null if the account calling the API is the
    #   account that started this audience generation job.
    #   @return [Types::AudienceGenerationJobDataSource]
    #
    # @!attribute [rw] include_seed_in_output
    #   Configure whether the seed users are included in the output
    #   audience. By default, Clean Rooms ML removes seed users from the
    #   output audience. If you specify `TRUE`, the seed users will appear
    #   first in the output. Clean Rooms ML does not explicitly reveal
    #   whether a user was in the seed, but the recipient of the audience
    #   will know that the first `minimumSeedSize` count of users are from
    #   the seed.
    #   @return [Boolean]
    #
    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that this audience generation
    #   job is associated with.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   The relevance scores for different audience sizes and the recall
    #   score of the generated audience.
    #   @return [Types::AudienceQualityMetrics]
    #
    # @!attribute [rw] started_by
    #   The AWS account that started this audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are associated to this audience generation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] protected_query_identifier
    #   The unique identifier of the protected query for this audience
    #   generation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceGenerationJobResponse AWS API Documentation
    #
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
      :protected_query_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that you are
    #   interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceModelRequest AWS API Documentation
    #
    class GetAudienceModelRequest < Struct.new(
      :audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the audience model was updated.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_start_time
    #   The start date specified for the training window.
    #   @return [Time]
    #
    # @!attribute [rw] training_data_end_time
    #   The end date specified for the training window.
    #   @return [Time]
    #
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that was used
    #   for this audience model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the audience model.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of the audience model.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key ARN used for the audience model.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are assigned to the audience model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description of the audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceModelResponse AWS API Documentation
    #
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
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that you want to return information about.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID for the collaboration that contains the
    #   configured model algorithm association that you want to return
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationConfiguredModelAlgorithmAssociationRequest AWS API Documentation
    #
    class GetCollaborationConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :configured_model_algorithm_association_arn,
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the configured model algorithm association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured model algorithm
    #   association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the
    #   configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID of the member that created the configured model
    #   algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] privacy_configuration
    #   Information about the privacy configuration for a configured model
    #   algorithm association.
    #   @return [Types::PrivacyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationConfiguredModelAlgorithmAssociationResponse AWS API Documentation
    #
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
      :privacy_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel that you want
    #   to get.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channel that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationMLInputChannelRequest AWS API Documentation
    #
    class GetCollaborationMLInputChannelRequest < Struct.new(
      :ml_input_channel_arn,
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_associations
    #   The configured model algorithm associations that were used to create
    #   the ML input channel.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of a resource.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days to retain the data for the ML input channel.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_records
    #   The number of records in the ML input channel.
    #   @return [Integer]
    #
    # @!attribute [rw] privacy_budgets
    #   Returns the privacy budgets that control access to this Clean Rooms
    #   ML input channel. Use these budgets to monitor and limit resource
    #   consumption over specified time periods.
    #   @return [Types::PrivacyBudgets]
    #
    # @!attribute [rw] description
    #   The description of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] synthetic_data_configuration
    #   The synthetic data configuration for this ML input channel,
    #   including parameters for generating privacy-preserving synthetic
    #   data and evaluation scores for measuring the privacy of the
    #   generated data.
    #   @return [Types::SyntheticDataConfiguration]
    #
    # @!attribute [rw] create_time
    #   The time at which the ML input channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the ML input channel was updated.
    #   @return [Time]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID of the member who created the ML input channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationMLInputChannelResponse AWS API Documentation
    #
    class GetCollaborationMLInputChannelResponse < Struct.new(
      :membership_identifier,
      :collaboration_identifier,
      :ml_input_channel_arn,
      :name,
      :configured_model_algorithm_associations,
      :status,
      :status_details,
      :retention_in_days,
      :number_of_records,
      :privacy_budgets,
      :description,
      :synthetic_data_configuration,
      :create_time,
      :update_time,
      :creator_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that you want to
    #   return information about.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID that contains the trained model that you want
    #   to return information about.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the trained model to retrieve. If not
    #   specified, the operation returns information about the latest
    #   version of the trained model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationTrainedModelRequest AWS API Documentation
    #
    class GetCollaborationTrainedModelRequest < Struct.new(
      :trained_model_arn,
      :collaboration_identifier,
      :version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the trained model.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the trained model. This unique identifier
    #   distinguishes this version from other versions of the same trained
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] incremental_training_data_channels
    #   Information about the incremental training data channels used to
    #   create this version of the trained model. This includes details
    #   about the base model that was used for incremental training and the
    #   channel configuration.
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    #
    # @!attribute [rw] name
    #   The name of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of a resource.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that was used to create this trained model.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The EC2 resource configuration that was used to train this model.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] training_input_mode
    #   The input mode that was used for accessing the training data when
    #   this trained model was created. This indicates how the training data
    #   was made available to the training algorithm.
    #   @return [String]
    #
    # @!attribute [rw] stopping_condition
    #   The stopping condition that determined when model training ended.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] metrics_status
    #   The status of the model metrics.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status_details
    #   Details about the status information for the model metrics.
    #   @return [String]
    #
    # @!attribute [rw] logs_status
    #   Status information for the logs.
    #   @return [String]
    #
    # @!attribute [rw] logs_status_details
    #   Details about the status information for the logs.
    #   @return [String]
    #
    # @!attribute [rw] training_container_image_digest
    #   Information about the training container image.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the trained model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model was updated.
    #   @return [Time]
    #
    # @!attribute [rw] creator_account_id
    #   The account ID of the member that created the trained model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationTrainedModelResponse AWS API Documentation
    #
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
      :creator_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModelPolicyRequest AWS API Documentation
    #
    class GetConfiguredAudienceModelPolicyRequest < Struct.new(
      :configured_audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_policy
    #   The configured audience model policy. This is a JSON IAM resource
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   A cryptographic hash of the contents of the policy used to prevent
    #   unexpected concurrent modification of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModelPolicyResponse AWS API Documentation
    #
    class GetConfiguredAudienceModelPolicyResponse < Struct.new(
      :configured_audience_model_arn,
      :configured_audience_model_policy,
      :policy_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModelRequest AWS API Documentation
    #
    class GetConfiguredAudienceModelRequest < Struct.new(
      :configured_audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the configured audience model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured audience model was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model used for this
    #   configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The output configuration of the configured audience model
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    #
    # @!attribute [rw] description
    #   The description of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the configured audience model.
    #   @return [String]
    #
    # @!attribute [rw] shared_audience_metrics
    #   Whether audience metrics are shared.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #   @return [Integer]
    #
    # @!attribute [rw] audience_size_config
    #   The list of output sizes of audiences that can be created using this
    #   configured audience model. A request to StartAudienceGenerationJob
    #   that uses this configured audience model must have an `audienceSize`
    #   selected from this list. You can use the `ABSOLUTE` AudienceSize to
    #   configure out audience sizes using the count of identifiers in the
    #   output. You can use the `Percentage` AudienceSize to configure sizes
    #   in the range 1-100 percent.
    #   @return [Types::AudienceSizeConfig]
    #
    # @!attribute [rw] tags
    #   The tags that are associated to this configured audience model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] child_resource_tag_on_create_policy
    #   Provides the `childResourceTagOnCreatePolicy` that was used for this
    #   configured audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModelResponse AWS API Documentation
    #
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
      :child_resource_tag_on_create_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that you want to return information about.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredModelAlgorithmAssociationRequest AWS API Documentation
    #
    class GetConfiguredModelAlgorithmAssociationRequest < Struct.new(
      :configured_model_algorithm_association_arn,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the configured model algorithm association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured model algorithm
    #   association was updated.
    #   @return [Time]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the
    #   configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   that was associated to the collaboration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] privacy_configuration
    #   The privacy configuration information for the configured model
    #   algorithm association.
    #   @return [Types::PrivacyConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you applied to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredModelAlgorithmAssociationResponse AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   that you want to return information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredModelAlgorithmRequest AWS API Documentation
    #
    class GetConfiguredModelAlgorithmRequest < Struct.new(
      :configured_model_algorithm_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the configured model algorithm was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the configured model algorithm was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] training_container_config
    #   The configuration information of the training container for the
    #   configured model algorithm.
    #   @return [Types::ContainerConfig]
    #
    # @!attribute [rw] inference_container_config
    #   Configuration information for the inference container.
    #   @return [Types::InferenceContainerConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the service role that was used to
    #   create the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configured model algorithm.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you applied to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the configured ML model
    #   and associated data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredModelAlgorithmResponse AWS API Documentation
    #
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
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that owns the ML configuration you
    #   want to return information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetMLConfigurationRequest AWS API Documentation
    #
    class GetMLConfigurationRequest < Struct.new(
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that owns the ML configuration you
    #   requested.
    #   @return [String]
    #
    # @!attribute [rw] default_output_location
    #   The Amazon S3 location where ML model output is stored.
    #   @return [Types::MLOutputConfiguration]
    #
    # @!attribute [rw] create_time
    #   The time at which the ML configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the ML configuration was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetMLConfigurationResponse AWS API Documentation
    #
    class GetMLConfigurationResponse < Struct.new(
      :membership_identifier,
      :default_output_location,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel that you want
    #   to get.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channel that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetMLInputChannelRequest AWS API Documentation
    #
    class GetMLInputChannelRequest < Struct.new(
      :ml_input_channel_arn,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_associations
    #   The configured model algorithm associations that were used to create
    #   the ML input channel.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of a resource.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days to keep the data in the ML input channel.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_records
    #   The number of records in the ML input channel.
    #   @return [Integer]
    #
    # @!attribute [rw] privacy_budgets
    #   Returns the privacy budgets that control access to this Clean Rooms
    #   ML input channel. Use these budgets to monitor and limit resource
    #   consumption over specified time periods.
    #   @return [Types::PrivacyBudgets]
    #
    # @!attribute [rw] description
    #   The description of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] synthetic_data_configuration
    #   The synthetic data configuration for this ML input channel,
    #   including parameters for generating privacy-preserving synthetic
    #   data and evaluation scores for measuring the privacy of the
    #   generated data.
    #   @return [Types::SyntheticDataConfiguration]
    #
    # @!attribute [rw] create_time
    #   The time at which the ML input channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the ML input channel was updated.
    #   @return [Time]
    #
    # @!attribute [rw] input_channel
    #   The input channel that was used to create the ML input channel.
    #   @return [Types::InputChannel]
    #
    # @!attribute [rw] protected_query_identifier
    #   The ID of the protected query that was used to create the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] number_of_files
    #   The number of files in the ML input channel.
    #   @return [Float]
    #
    # @!attribute [rw] size_in_gb
    #   The size, in GB, of the ML input channel.
    #   @return [Float]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that was used to
    #   create the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you applied to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetMLInputChannelResponse AWS API Documentation
    #
    class GetMLInputChannelResponse < Struct.new(
      :membership_identifier,
      :collaboration_identifier,
      :ml_input_channel_arn,
      :name,
      :configured_model_algorithm_associations,
      :status,
      :status_details,
      :retention_in_days,
      :number_of_records,
      :privacy_budgets,
      :description,
      :synthetic_data_configuration,
      :create_time,
      :update_time,
      :input_channel,
      :protected_query_identifier,
      :number_of_files,
      :size_in_gb,
      :kms_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   Provides the membership ID of the membership that contains the
    #   trained model inference job that you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_inference_job_arn
    #   Provides the Amazon Resource Name (ARN) of the trained model
    #   inference job that you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainedModelInferenceJobRequest AWS API Documentation
    #
    class GetTrainedModelInferenceJobRequest < Struct.new(
      :membership_identifier,
      :trained_model_inference_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the trained model inference job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model inference job was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] trained_model_inference_job_arn
    #   The Amazon Resource Name (ARN) of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that was used for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) for the trained model that was used
    #   for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model used for this inference
    #   job. This identifies the specific version of the trained model that
    #   was used to generate the inference results.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The resource configuration information for the trained model
    #   inference job.
    #   @return [Types::InferenceResourceConfig]
    #
    # @!attribute [rw] output_configuration
    #   The output configuration information for the trained model inference
    #   job.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the trained model
    #   inference job.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The data source that was used for the trained model inference job.
    #   @return [Types::ModelInferenceDataSource]
    #
    # @!attribute [rw] container_execution_parameters
    #   The execution parameters for the model inference job container.
    #   @return [Types::InferenceContainerExecutionParameters]
    #
    # @!attribute [rw] status_details
    #   Details about the status of a resource.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] description
    #   The description of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] inference_container_image_digest
    #   Information about the training container image.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the ML inference job and
    #   associated data.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status
    #   The metrics status for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status_details
    #   Details about the metrics status for the trained model inference
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] logs_status
    #   The logs status for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] logs_status_details
    #   Details about the logs status for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you applied to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainedModelInferenceJobResponse AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that you are
    #   interested in.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the trained model that
    #   you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the trained model to retrieve. If not
    #   specified, the operation returns information about the latest
    #   version of the trained model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainedModelRequest AWS API Documentation
    #
    class GetTrainedModelRequest < Struct.new(
      :trained_model_arn,
      :membership_identifier,
      :version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the trained model.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the trained model. This unique identifier
    #   distinguishes this version from other versions of the same trained
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] incremental_training_data_channels
    #   Information about the incremental training data channels used to
    #   create this version of the trained model. This includes details
    #   about the base model that was used for incremental training and the
    #   channel configuration.
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    #
    # @!attribute [rw] name
    #   The name of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of a resource.
    #   @return [Types::StatusDetails]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that was used to create the trained model.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   The EC2 resource configuration that was used to create the trained
    #   model.
    #   @return [Types::ResourceConfig]
    #
    # @!attribute [rw] training_input_mode
    #   The input mode that was used for accessing the training data when
    #   this trained model was created. This indicates how the training data
    #   was made available to the training algorithm.
    #   @return [String]
    #
    # @!attribute [rw] stopping_condition
    #   The stopping condition that was used to terminate model training.
    #   @return [Types::StoppingCondition]
    #
    # @!attribute [rw] metrics_status
    #   The status of the model metrics.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status_details
    #   Details about the metrics status for the trained model.
    #   @return [String]
    #
    # @!attribute [rw] logs_status
    #   The logs status for the trained model.
    #   @return [String]
    #
    # @!attribute [rw] logs_status_details
    #   Details about the logs status for the trained model.
    #   @return [String]
    #
    # @!attribute [rw] training_container_image_digest
    #   Information about the training image container.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the trained model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model was updated.
    #   @return [Time]
    #
    # @!attribute [rw] hyperparameters
    #   The hyperparameters that were used to create the trained model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] environment
    #   The EC2 environment that was used to create the trained model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the trained ML model and
    #   associated data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you applied to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] data_channels
    #   The data channels that were used for the trained model.
    #   @return [Array<Types::ModelTrainingDataChannel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainedModelResponse AWS API Documentation
    #
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
      :data_channels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that you are
    #   interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainingDatasetRequest AWS API Documentation
    #
    class GetTrainingDatasetRequest < Struct.new(
      :training_dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The time at which the training dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the training dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] training_data
    #   Metadata about the requested training data.
    #   @return [Array<Types::Dataset>]
    #
    # @!attribute [rw] status
    #   The status of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role used to read the training data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are assigned to this training dataset.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description of the training dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainingDatasetResponse AWS API Documentation
    #
    class GetTrainingDatasetResponse < Struct.new(
      :create_time,
      :update_time,
      :training_dataset_arn,
      :name,
      :training_data,
      :status,
      :role_arn,
      :tags,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Glue data source that contains the training data.
    #
    # @!attribute [rw] table_name
    #   The Glue table that contains the training data.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The Glue database that contains the training data.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The Glue catalog that contains the training data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GlueDataSource AWS API Documentation
    #
    class GlueDataSource < Struct.new(
      :table_name,
      :database_name,
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an incremental training data channel that references a
    # previously trained model. Incremental training allows you to update an
    # existing trained model with new data, building upon the knowledge from
    # a base model rather than training from scratch. This can significantly
    # reduce training time and computational costs while improving model
    # performance with additional data.
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the base trained model to use for
    #   incremental training. This model serves as the starting point for
    #   the incremental training process.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the base trained model to use for
    #   incremental training. If not specified, the latest version of the
    #   trained model is used.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the incremental training data channel. This name is used
    #   to identify the channel during the training process and must be
    #   unique within the training job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/IncrementalTrainingDataChannel AWS API Documentation
    #
    class IncrementalTrainingDataChannel < Struct.new(
      :trained_model_arn,
      :version_identifier,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an incremental training data channel that
    # was used to create a trained model. This structure provides details
    # about the base model and channel configuration used during incremental
    # training.
    #
    # @!attribute [rw] channel_name
    #   The name of the incremental training data channel that was used.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of the trained model that was used for
    #   incremental training.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the base trained model that was used for incremental
    #   training.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/IncrementalTrainingDataChannelOutput AWS API Documentation
    #
    class IncrementalTrainingDataChannelOutput < Struct.new(
      :channel_name,
      :version_identifier,
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for the inference container.
    #
    # @!attribute [rw] image_uri
    #   The registry path of the docker image that contains the inference
    #   algorithm. Clean Rooms ML currently only supports the
    #   `registry/repository[:tag]` image path format. For more information
    #   about using images in Clean Rooms ML, see the [Sagemaker API
    #   reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AlgorithmSpecification.html#sagemaker-Type-AlgorithmSpecification-TrainingImage
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InferenceContainerConfig AWS API Documentation
    #
    class InferenceContainerConfig < Struct.new(
      :image_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides execution parameters for the inference container.
    #
    # @!attribute [rw] max_payload_in_mb
    #   The maximum size of the inference container payload, specified in
    #   MB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InferenceContainerExecutionParameters AWS API Documentation
    #
    class InferenceContainerExecutionParameters < Struct.new(
      :max_payload_in_mb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about how the inference output is stored.
    #
    # @!attribute [rw] accept
    #   The MIME type used to specify the output data.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   Defines the members that can receive inference output.
    #   @return [Array<Types::InferenceReceiverMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InferenceOutputConfiguration AWS API Documentation
    #
    class InferenceOutputConfiguration < Struct.new(
      :accept,
      :members)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines who will receive inference results.
    #
    # @!attribute [rw] account_id
    #   The account ID of the member that can receive inference results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InferenceReceiverMember AWS API Documentation
    #
    class InferenceReceiverMember < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the resources used to perform model inference.
    #
    # @!attribute [rw] instance_type
    #   The type of instance that is used to perform model inference.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances to use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InferenceResourceConfig AWS API Documentation
    #
    class InferenceResourceConfig < Struct.new(
      :instance_type,
      :instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the data source that is used to create an
    # ML input channel.
    #
    # @!attribute [rw] data_source
    #   The data source that is used to create the ML input channel.
    #   @return [Types::InputChannelDataSource]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role used to run the query
    #   specified in the `dataSource` field of the input channel.
    #
    #   Passing a role across AWS accounts is not allowed. If you pass a
    #   role that isn't in your account, you get an `AccessDeniedException`
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InputChannel AWS API Documentation
    #
    class InputChannel < Struct.new(
      :data_source,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the data source that is used to define an input channel.
    #
    # @note InputChannelDataSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InputChannelDataSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InputChannelDataSource corresponding to the set member.
    #
    # @!attribute [rw] protected_query_input_parameters
    #   Provides information necessary to perform the protected query.
    #   @return [Types::ProtectedQueryInputParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InputChannelDataSource AWS API Documentation
    #
    class InputChannelDataSource < Struct.new(
      :protected_query_input_parameters,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ProtectedQueryInputParameters < InputChannelDataSource; end
      class Unknown < InputChannelDataSource; end
    end

    # An internal service error occurred. Retry your request. If the problem
    # persists, contact AWS Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that
    #   you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceExportJobsRequest AWS API Documentation
    #
    class ListAudienceExportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :audience_generation_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] audience_export_jobs
    #   The audience export jobs that match the request.
    #   @return [Array<Types::AudienceExportJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceExportJobsResponse AWS API Documentation
    #
    class ListAudienceExportJobsResponse < Struct.new(
      :next_token,
      :audience_export_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for the audience generation jobs that you are interested
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation jobs that you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceGenerationJobsRequest AWS API Documentation
    #
    class ListAudienceGenerationJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :configured_audience_model_arn,
      :collaboration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] audience_generation_jobs
    #   The audience generation jobs that match the request.
    #   @return [Array<Types::AudienceGenerationJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceGenerationJobsResponse AWS API Documentation
    #
    class ListAudienceGenerationJobsResponse < Struct.new(
      :next_token,
      :audience_generation_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceModelsRequest AWS API Documentation
    #
    class ListAudienceModelsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] audience_models
    #   The audience models that match the request.
    #   @return [Array<Types::AudienceModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceModelsResponse AWS API Documentation
    #
    class ListAudienceModelsResponse < Struct.new(
      :next_token,
      :audience_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the
    #   configured model algorithm associations that you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationConfiguredModelAlgorithmAssociationsRequest AWS API Documentation
    #
    class ListCollaborationConfiguredModelAlgorithmAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_configured_model_algorithm_associations
    #   The configured model algorithm associations that belong to this
    #   collaboration.
    #   @return [Array<Types::CollaborationConfiguredModelAlgorithmAssociationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationConfiguredModelAlgorithmAssociationsResponse AWS API Documentation
    #
    class ListCollaborationConfiguredModelAlgorithmAssociationsResponse < Struct.new(
      :next_token,
      :collaboration_configured_model_algorithm_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channels that you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationMLInputChannelsRequest AWS API Documentation
    #
    class ListCollaborationMLInputChannelsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_ml_input_channels_list
    #   The list of ML input channels that you wanted.
    #   @return [Array<Types::CollaborationMLInputChannelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationMLInputChannelsResponse AWS API Documentation
    #
    class ListCollaborationMLInputChannelsResponse < Struct.new(
      :next_token,
      :collaboration_ml_input_channels_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model export jobs that you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that was used to
    #   create the export jobs that you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model to filter export jobs
    #   by. When specified, only export jobs for this specific version of
    #   the trained model are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelExportJobsRequest AWS API Documentation
    #
    class ListCollaborationTrainedModelExportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier,
      :trained_model_arn,
      :trained_model_version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_trained_model_export_jobs
    #   The exports jobs that exist for the requested trained model in the
    #   requested collaboration.
    #   @return [Array<Types::CollaborationTrainedModelExportJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelExportJobsResponse AWS API Documentation
    #
    class ListCollaborationTrainedModelExportJobsResponse < Struct.new(
      :next_token,
      :collaboration_trained_model_export_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model inference jobs that you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that was used to
    #   create the trained model inference jobs that you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model to filter inference jobs
    #   by. When specified, only inference jobs that used this specific
    #   version of the trained model are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelInferenceJobsRequest AWS API Documentation
    #
    class ListCollaborationTrainedModelInferenceJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier,
      :trained_model_arn,
      :trained_model_version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_trained_model_inference_jobs
    #   The trained model inference jobs that you are interested in.
    #   @return [Array<Types::CollaborationTrainedModelInferenceJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelInferenceJobsResponse AWS API Documentation
    #
    class ListCollaborationTrainedModelInferenceJobsResponse < Struct.new(
      :next_token,
      :collaboration_trained_model_inference_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   models you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelsRequest AWS API Documentation
    #
    class ListCollaborationTrainedModelsRequest < Struct.new(
      :next_token,
      :max_results,
      :collaboration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_trained_models
    #   The trained models in the collaboration that you requested.
    #   @return [Array<Types::CollaborationTrainedModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelsResponse AWS API Documentation
    #
    class ListCollaborationTrainedModelsResponse < Struct.new(
      :next_token,
      :collaboration_trained_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredAudienceModelsRequest AWS API Documentation
    #
    class ListConfiguredAudienceModelsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_models
    #   The configured audience models.
    #   @return [Array<Types::ConfiguredAudienceModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredAudienceModelsResponse AWS API Documentation
    #
    class ListConfiguredAudienceModelsResponse < Struct.new(
      :next_token,
      :configured_audience_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm associations you are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredModelAlgorithmAssociationsRequest AWS API Documentation
    #
    class ListConfiguredModelAlgorithmAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_associations
    #   The list of configured model algorithm associations.
    #   @return [Array<Types::ConfiguredModelAlgorithmAssociationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredModelAlgorithmAssociationsResponse AWS API Documentation
    #
    class ListConfiguredModelAlgorithmAssociationsResponse < Struct.new(
      :next_token,
      :configured_model_algorithm_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredModelAlgorithmsRequest AWS API Documentation
    #
    class ListConfiguredModelAlgorithmsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithms
    #   The list of configured model algorithms.
    #   @return [Array<Types::ConfiguredModelAlgorithmSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredModelAlgorithmsResponse AWS API Documentation
    #
    class ListConfiguredModelAlgorithmsResponse < Struct.new(
      :next_token,
      :configured_model_algorithms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of ML input channels to return.
    #   @return [Integer]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channels that you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListMLInputChannelsRequest AWS API Documentation
    #
    class ListMLInputChannelsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] ml_input_channels_list
    #   The list of ML input channels that you wanted.
    #   @return [Array<Types::MLInputChannelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListMLInputChannelsResponse AWS API Documentation
    #
    class ListMLInputChannelsResponse < Struct.new(
      :next_token,
      :ml_input_channels_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you are
    #   interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags that are associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] membership_identifier
    #   The membership
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of a trained model that was used to
    #   create the trained model inference jobs that you are interested in.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model to filter inference jobs
    #   by. When specified, only inference jobs that used this specific
    #   version of the trained model are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelInferenceJobsRequest AWS API Documentation
    #
    class ListTrainedModelInferenceJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier,
      :trained_model_arn,
      :trained_model_version_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_inference_jobs
    #   Returns the requested trained model inference jobs.
    #   @return [Array<Types::TrainedModelInferenceJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelInferenceJobsResponse AWS API Documentation
    #
    class ListTrainedModelInferenceJobsResponse < Struct.new(
      :next_token,
      :trained_model_inference_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from a previous `ListTrainedModelVersions`
    #   request. Use this token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of trained model versions to return in a single
    #   page. The default value is 10, and the maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] membership_identifier
    #   The membership identifier for the collaboration that contains the
    #   trained model.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model for which to
    #   list versions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter the results to only include trained model versions with the
    #   specified status. Valid values include `CREATE_PENDING`,
    #   `CREATE_IN_PROGRESS`, `ACTIVE`, `CREATE_FAILED`, and others.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelVersionsRequest AWS API Documentation
    #
    class ListTrainedModelVersionsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier,
      :trained_model_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent
    #   `ListTrainedModelVersions` request to retrieve the next page of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] trained_models
    #   A list of trained model versions that match the specified criteria.
    #   Each entry contains summary information about a trained model
    #   version, including its version identifier, status, and creation
    #   details.
    #   @return [Array<Types::TrainedModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelVersionsResponse AWS API Documentation
    #
    class ListTrainedModelVersionsResponse < Struct.new(
      :next_token,
      :trained_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the trained models you
    #   are interested in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelsRequest AWS API Documentation
    #
    class ListTrainedModelsRequest < Struct.new(
      :next_token,
      :max_results,
      :membership_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] trained_models
    #   The list of trained models.
    #   @return [Array<Types::TrainedModelSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelsResponse AWS API Documentation
    #
    class ListTrainedModelsResponse < Struct.new(
      :next_token,
      :trained_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the results that is returned per call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainingDatasetsRequest AWS API Documentation
    #
    class ListTrainingDatasetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value used to access the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] training_datasets
    #   The training datasets that match the request.
    #   @return [Array<Types::TrainingDatasetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainingDatasetsResponse AWS API Documentation
    #
    class ListTrainingDatasetsResponse < Struct.new(
      :next_token,
      :training_datasets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for log redaction.
    #
    # @!attribute [rw] entities_to_redact
    #   Specifies the entities to be redacted from logs. Entities to redact
    #   are "ALL\_PERSONALLY\_IDENTIFIABLE\_INFORMATION",
    #   "NUMBERS","CUSTOM". If CUSTOM is supplied or configured, custom
    #   patterns (customDataIdentifiers) should be provided, and the
    #   patterns will be redacted in logs or error messages.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_entity_config
    #   Specifies the configuration for custom entities in the context of
    #   log redaction.
    #   @return [Types::CustomEntityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/LogRedactionConfiguration AWS API Documentation
    #
    class LogRedactionConfiguration < Struct.new(
      :entities_to_redact,
      :custom_entity_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the information necessary for a user to access the logs.
    #
    # @!attribute [rw] allowed_account_ids
    #   A list of account IDs that are allowed to access the logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter_pattern
    #   A regular expression pattern that is used to parse the logs and
    #   return information that matches the pattern.
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   Specifies the type of log this policy applies to. The currently
    #   supported policies are ALL or ERROR\_SUMMARY.
    #   @return [String]
    #
    # @!attribute [rw] log_redaction_configuration
    #   Specifies the log redaction configuration for this policy.
    #   @return [Types::LogRedactionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/LogsConfigurationPolicy AWS API Documentation
    #
    class LogsConfigurationPolicy < Struct.new(
      :allowed_account_ids,
      :filter_pattern,
      :log_type,
      :log_redaction_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about the ML input channel.
    #
    # @!attribute [rw] create_time
    #   The time at which the ML input channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the ML input channel was updated.
    #   @return [Time]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_associations
    #   The associated configured model algorithms used to create the ML
    #   input channel.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protected_query_identifier
    #   The ID of the protected query that was used to create the ML input
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ML input channel.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ML input channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/MLInputChannelSummary AWS API Documentation
    #
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
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about how the exported model artifacts are
    # stored.
    #
    # @!attribute [rw] destination
    #   The Amazon S3 location where exported model artifacts are stored.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the service access role that is
    #   used to store the model artifacts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/MLOutputConfiguration AWS API Documentation
    #
    class MLOutputConfiguration < Struct.new(
      :destination,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that control the generation of synthetic data for custom
    # model training, including privacy settings and column classification
    # details.
    #
    # @!attribute [rw] epsilon
    #   The epsilon value for differential privacy, which controls the
    #   privacy-utility tradeoff in synthetic data generation. Lower values
    #   provide stronger privacy guarantees but may reduce data utility.
    #   @return [Float]
    #
    # @!attribute [rw] max_membership_inference_attack_score
    #   The maximum acceptable score for membership inference attack
    #   vulnerability. Synthetic data generation fails if the score for the
    #   resulting data exceeds this threshold.
    #   @return [Float]
    #
    # @!attribute [rw] column_classification
    #   Classification details for data columns that specify how each column
    #   should be treated during synthetic data generation.
    #   @return [Types::ColumnClassificationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/MLSyntheticDataParameters AWS API Documentation
    #
    class MLSyntheticDataParameters < Struct.new(
      :epsilon,
      :max_membership_inference_attack_score,
      :column_classification)
      SENSITIVE = []
      include Aws::Structure
    end

    # A score that measures the vulnerability of synthetic data to
    # membership inference attacks and provides both the numerical score and
    # the version of the attack methodology used for evaluation.
    #
    # @!attribute [rw] attack_version
    #   The version of the membership inference attack, which consists of
    #   the attack type and its version number, used to generate this
    #   privacy score.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The numerical score representing the vulnerability to membership
    #   inference attacks.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/MembershipInferenceAttackScore AWS API Documentation
    #
    class MembershipInferenceAttackScore < Struct.new(
      :attack_version,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the model metric that is reported for a trained
    # model.
    #
    # @!attribute [rw] name
    #   The name of the model metric.
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   The regular expression statement that defines how the model metric
    #   is reported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/MetricDefinition AWS API Documentation
    #
    class MetricDefinition < Struct.new(
      :name,
      :regex)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration policy for metrics generation.
    #
    # @!attribute [rw] noise_level
    #   The noise level for the generated metrics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/MetricsConfigurationPolicy AWS API Documentation
    #
    class MetricsConfigurationPolicy < Struct.new(
      :noise_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines information about the data source used for model inference.
    #
    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel for this
    #   model inference data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ModelInferenceDataSource AWS API Documentation
    #
    class ModelInferenceDataSource < Struct.new(
      :ml_input_channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the model training data channel. A training data
    # channel is a named data source that the training algorithms can
    # consume.
    #
    # @!attribute [rw] ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel for this
    #   model training data channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the training data channel.
    #   @return [String]
    #
    # @!attribute [rw] s3_data_distribution_type
    #   Specifies how the training data stored in Amazon S3 should be
    #   distributed to training instances. This parameter controls the data
    #   distribution strategy for the training job:
    #
    #   * `FullyReplicated` - The entire dataset is replicated on each
    #     training instance. This is suitable for smaller datasets and
    #     algorithms that require access to the complete dataset.
    #
    #   * `ShardedByS3Key` - The dataset is distributed across training
    #     instances based on Amazon S3 key names. This is suitable for
    #     larger datasets and distributed training scenarios where each
    #     instance processes a subset of the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ModelTrainingDataChannel AWS API Documentation
    #
    class ModelTrainingDataChannel < Struct.new(
      :ml_input_channel_arn,
      :channel_name,
      :s3_data_distribution_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The privacy budget information that controls access to Clean Rooms ML
    # input channels.
    #
    # @note PrivacyBudgets is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PrivacyBudgets corresponding to the set member.
    #
    # @!attribute [rw] access_budgets
    #   A list of access budgets that apply to resources associated with
    #   this Clean Rooms ML input channel.
    #   @return [Array<Types::AccessBudget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PrivacyBudgets AWS API Documentation
    #
    class PrivacyBudgets < Struct.new(
      :access_budgets,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AccessBudgets < PrivacyBudgets; end
      class Unknown < PrivacyBudgets; end
    end

    # Information about the privacy configuration for a configured model
    # algorithm association.
    #
    # @!attribute [rw] policies
    #   The privacy configuration policies for a configured model algorithm
    #   association.
    #   @return [Types::PrivacyConfigurationPolicies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PrivacyConfiguration AWS API Documentation
    #
    class PrivacyConfiguration < Struct.new(
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the privacy configuration policies for a configured
    # model algorithm association.
    #
    # @!attribute [rw] trained_models
    #   Specifies who will receive the trained models.
    #   @return [Types::TrainedModelsConfigurationPolicy]
    #
    # @!attribute [rw] trained_model_exports
    #   Specifies who will receive the trained model export.
    #   @return [Types::TrainedModelExportsConfigurationPolicy]
    #
    # @!attribute [rw] trained_model_inference_jobs
    #   Specifies who will receive the trained model inference jobs.
    #   @return [Types::TrainedModelInferenceJobsConfigurationPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PrivacyConfigurationPolicies AWS API Documentation
    #
    class PrivacyConfigurationPolicies < Struct.new(
      :trained_models,
      :trained_model_exports,
      :trained_model_inference_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information necessary to perform the protected query.
    #
    # @!attribute [rw] sql_parameters
    #   The parameters for the SQL type Protected Query.
    #   @return [Types::ProtectedQuerySQLParameters]
    #
    # @!attribute [rw] compute_configuration
    #   Provides configuration information for the workers that will perform
    #   the protected query.
    #   @return [Types::ComputeConfiguration]
    #
    # @!attribute [rw] result_format
    #   The format in which the query results should be returned. If not
    #   specified, defaults to `CSV`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ProtectedQueryInputParameters AWS API Documentation
    #
    class ProtectedQueryInputParameters < Struct.new(
      :sql_parameters,
      :compute_configuration,
      :result_format)
      SENSITIVE = [:sql_parameters]
      include Aws::Structure
    end

    # The parameters for the SQL type Protected Query.
    #
    # @!attribute [rw] query_string
    #   The query string to be submitted.
    #   @return [String]
    #
    # @!attribute [rw] analysis_template_arn
    #   The Amazon Resource Name (ARN) associated with the analysis template
    #   within a collaboration.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The protected query SQL parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ProtectedQuerySQLParameters AWS API Documentation
    #
    class ProtectedQuerySQLParameters < Struct.new(
      :query_string,
      :analysis_template_arn,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   the resource policy will govern.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_policy
    #   The IAM resource policy.
    #   @return [String]
    #
    # @!attribute [rw] previous_policy_hash
    #   A cryptographic hash of the contents of the policy used to prevent
    #   unexpected concurrent modification of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_existence_condition
    #   Use this to prevent unexpected concurrent modification of the
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PutConfiguredAudienceModelPolicyRequest AWS API Documentation
    #
    class PutConfiguredAudienceModelPolicyRequest < Struct.new(
      :configured_audience_model_arn,
      :configured_audience_model_policy,
      :previous_policy_hash,
      :policy_existence_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_policy
    #   The IAM resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   A cryptographic hash of the contents of the policy used to prevent
    #   unexpected concurrent modification of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PutConfiguredAudienceModelPolicyResponse AWS API Documentation
    #
    class PutConfiguredAudienceModelPolicyResponse < Struct.new(
      :configured_audience_model_policy,
      :policy_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that is being configured.
    #   @return [String]
    #
    # @!attribute [rw] default_output_location
    #   The default Amazon S3 location where ML output is stored for the
    #   specified member.
    #   @return [Types::MLOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PutMLConfigurationRequest AWS API Documentation
    #
    class PutMLConfigurationRequest < Struct.new(
      :membership_identifier,
      :default_output_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The relevance score of a generated audience.
    #
    # @!attribute [rw] audience_size
    #   The size of the generated audience. Must match one of the sizes in
    #   the configured audience model.
    #   @return [Types::AudienceSize]
    #
    # @!attribute [rw] score
    #   The relevance score of the generated audience.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/RelevanceMetric AWS API Documentation
    #
    class RelevanceMetric < Struct.new(
      :audience_size,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the EC2 resources that are used to train the model.
    #
    # @!attribute [rw] instance_count
    #   The number of resources that are used to train the model.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type that is used to train the model.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The maximum size of the instance that is used to train the model.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ResourceConfig AWS API Documentation
    #
    class ResourceConfig < Struct.new(
      :instance_count,
      :instance_type,
      :volume_size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are requesting does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon S3 bucket and path.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 location URI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/S3ConfigMap AWS API Documentation
    #
    class S3ConfigMap < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The name of the service quota limit that was exceeded
    #   @return [String]
    #
    # @!attribute [rw] quota_value
    #   The current limit on the service quota that was exceeded
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_name,
      :quota_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the audience export job.
    #   @return [String]
    #
    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that
    #   you want to export.
    #   @return [String]
    #
    # @!attribute [rw] audience_size
    #   The size of the generated audience. Must match one of the sizes in
    #   the configured audience model.
    #   @return [Types::AudienceSize]
    #
    # @!attribute [rw] description
    #   The description of the audience export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceExportJobRequest AWS API Documentation
    #
    class StartAudienceExportJobRequest < Struct.new(
      :name,
      :audience_generation_job_arn,
      :audience_size,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   is used for this audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] seed_audience
    #   The seed audience that is used to generate the audience.
    #   @return [Types::AudienceGenerationJobDataSource]
    #
    # @!attribute [rw] include_seed_in_output
    #   Whether the seed audience is included in the audience generation
    #   output.
    #   @return [Boolean]
    #
    # @!attribute [rw] collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the audience generation job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceGenerationJobRequest AWS API Documentation
    #
    class StartAudienceGenerationJobRequest < Struct.new(
      :name,
      :configured_audience_model_arn,
      :seed_audience,
      :include_seed_in_output,
      :collaboration_id,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceGenerationJobResponse AWS API Documentation
    #
    class StartAudienceGenerationJobResponse < Struct.new(
      :audience_generation_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trained model export job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that you want to
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model to export. This
    #   specifies which version of the trained model should be exported to
    #   the specified destination.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that is receiving the exported
    #   trained model artifacts.
    #   @return [String]
    #
    # @!attribute [rw] output_configuration
    #   The output configuration information for the trained model export
    #   job.
    #   @return [Types::TrainedModelExportOutputConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the trained model export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartTrainedModelExportJobRequest AWS API Documentation
    #
    class StartTrainedModelExportJobRequest < Struct.new(
      :name,
      :trained_model_arn,
      :trained_model_version_identifier,
      :membership_identifier,
      :output_configuration,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the trained model
    #   inference job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that is used for
    #   this trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model to use for inference.
    #   This specifies which version of the trained model should be used to
    #   generate predictions on the input data.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that is used for this trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] resource_config
    #   Defines the resource configuration for the trained model inference
    #   job.
    #   @return [Types::InferenceResourceConfig]
    #
    # @!attribute [rw] output_configuration
    #   Defines the output configuration information for the trained model
    #   inference job.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] data_source
    #   Defines the data source that is used for the trained model inference
    #   job.
    #   @return [Types::ModelInferenceDataSource]
    #
    # @!attribute [rw] description
    #   The description of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] container_execution_parameters
    #   The execution parameters for the container.
    #   @return [Types::InferenceContainerExecutionParameters]
    #
    # @!attribute [rw] environment
    #   The environment variables to set in the Docker container.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the ML inference job and
    #   associated data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms ML considers it to be a user tag and will
    #     count against the limit of 50 tags. Tags with only the key prefix
    #     of aws do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartTrainedModelInferenceJobRequest AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trained_model_inference_job_arn
    #   The Amazon Resource Name (ARN) of the trained model inference job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartTrainedModelInferenceJobResponse AWS API Documentation
    #
    class StartTrainedModelInferenceJobResponse < Struct.new(
      :trained_model_inference_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the status of a resource.
    #
    # @!attribute [rw] status_code
    #   The status code that was returned. The status code is intended for
    #   programmatic error handling. Clean Rooms ML will not change the
    #   status code for existing error conditions.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message that was returned. The message is intended for
    #   human consumption and can change at any time. Use the `statusCode`
    #   for programmatic error handling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StatusDetails AWS API Documentation
    #
    class StatusDetails < Struct.new(
      :status_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria used to stop model training.
    #
    # @!attribute [rw] max_runtime_in_seconds
    #   The maximum amount of time, in seconds, that model training can run
    #   before it is terminated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StoppingCondition AWS API Documentation
    #
    class StoppingCondition < Struct.new(
      :max_runtime_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that define how a specific data column should be handled
    # during synthetic data generation, including its name, type, and role
    # in predictive modeling.
    #
    # @!attribute [rw] column_name
    #   The name of the data column as it appears in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] column_type
    #   The data type of the column, which determines how the synthetic data
    #   generation algorithm processes and synthesizes values for this
    #   column.
    #   @return [String]
    #
    # @!attribute [rw] is_predictive_value
    #   Indicates if this column contains predictive values that should be
    #   treated as target variables in machine learning models. This affects
    #   how the synthetic data generation preserves statistical
    #   relationships.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/SyntheticDataColumnProperties AWS API Documentation
    #
    class SyntheticDataColumnProperties < Struct.new(
      :column_name,
      :column_type,
      :is_predictive_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for synthetic data generation, including the
    # parameters that control data synthesis and the evaluation scores that
    # measure the quality and privacy characteristics of the generated
    # synthetic data.
    #
    # @!attribute [rw] synthetic_data_parameters
    #   The parameters that control how synthetic data is generated,
    #   including privacy settings, column classifications, and other
    #   configuration options that affect the data synthesis process.
    #   @return [Types::MLSyntheticDataParameters]
    #
    # @!attribute [rw] synthetic_data_evaluation_scores
    #   Evaluation scores that assess the quality and privacy
    #   characteristics of the generated synthetic data, providing metrics
    #   on data utility and privacy preservation.
    #   @return [Types::SyntheticDataEvaluationScores]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/SyntheticDataConfiguration AWS API Documentation
    #
    class SyntheticDataConfiguration < Struct.new(
      :synthetic_data_parameters,
      :synthetic_data_evaluation_scores)
      SENSITIVE = []
      include Aws::Structure
    end

    # Comprehensive evaluation metrics for synthetic data that assess both
    # the utility of the generated data for machine learning tasks and its
    # privacy preservation characteristics.
    #
    # @!attribute [rw] data_privacy_scores
    #   Privacy-specific evaluation scores that measure how well the
    #   synthetic data protects individual privacy, including assessments of
    #   potential privacy risks such as membership inference attacks.
    #   @return [Types::DataPrivacyScores]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/SyntheticDataEvaluationScores AWS API Documentation
    #
    class SyntheticDataEvaluationScores < Struct.new(
      :data_privacy_scores)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   assign tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of
    #     such as a prefix for keys as it is reserved for AWS use. You
    #     cannot edit or delete tag keys with this prefix. Values can have
    #     this prefix. If a tag value has aws as its prefix but the key does
    #     not, then Clean Rooms considers it to be a user tag and will count
    #     against the limit of 50 tags. Tags with only the key prefix of aws
    #     do not count against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the maximum size limit for trained model artifacts. This
    # configuration helps control storage costs and ensures that trained
    # models don't exceed specified size constraints. The size limit
    # applies to the total size of all artifacts produced by the training
    # job.
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the maximum artifact size. Valid values
    #   include common storage units such as bytes, kilobytes, megabytes,
    #   gigabytes, and terabytes.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The numerical value for the maximum artifact size limit. This value
    #   is interpreted according to the specified unit.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelArtifactMaxSize AWS API Documentation
    #
    class TrainedModelArtifactMaxSize < Struct.new(
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the output of the trained model export job.
    #
    # @!attribute [rw] members
    #   The members that will received the exported trained model output.
    #   @return [Array<Types::TrainedModelExportReceiverMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelExportOutputConfiguration AWS API Documentation
    #
    class TrainedModelExportOutputConfiguration < Struct.new(
      :members)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the member who will receive trained model
    # exports.
    #
    # @!attribute [rw] account_id
    #   The account ID of the member who will receive trained model exports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelExportReceiverMember AWS API Documentation
    #
    class TrainedModelExportReceiverMember < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how the trained model exports are configured.
    #
    # @!attribute [rw] max_size
    #   The maximum size of the data that can be exported.
    #   @return [Types::TrainedModelExportsMaxSize]
    #
    # @!attribute [rw] files_to_export
    #   The files that are exported during the trained model export job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelExportsConfigurationPolicy AWS API Documentation
    #
    class TrainedModelExportsConfigurationPolicy < Struct.new(
      :max_size,
      :files_to_export)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum size of the trained model metrics that can be exported. If
    # the trained model metrics dataset is larger than this value, it will
    # not be exported.
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the data size.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The maximum size of the dataset to export.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelExportsMaxSize AWS API Documentation
    #
    class TrainedModelExportsMaxSize < Struct.new(
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the trained model inference job.
    #
    # @!attribute [rw] trained_model_inference_job_arn
    #   The Amazon Resource Name (ARN) of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that is used for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the membership that contains the trained model
    #   inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that is used for
    #   the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_version_identifier
    #   The version identifier of the trained model that was used for
    #   inference in this job.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model inference job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] output_configuration
    #   The output configuration information of the trained model job.
    #   @return [Types::InferenceOutputConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status
    #   The metric status of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] metrics_status_details
    #   Details about the metrics status for the trained model inference
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] logs_status
    #   The log status of the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] logs_status_details
    #   Details about the log status for the trained model inference job.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the trained model inference job was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model inference job was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelInferenceJobSummary AWS API Documentation
    #
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
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for the trained model inference
    # job.
    #
    # @!attribute [rw] container_logs
    #   The logs container for the trained model inference job.
    #   @return [Array<Types::LogsConfigurationPolicy>]
    #
    # @!attribute [rw] max_output_size
    #   The maximum allowed size of the output of the trained model
    #   inference job.
    #   @return [Types::TrainedModelInferenceMaxOutputSize]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelInferenceJobsConfigurationPolicy AWS API Documentation
    #
    class TrainedModelInferenceJobsConfigurationPolicy < Struct.new(
      :container_logs,
      :max_output_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the maximum output size for a trained model
    # inference job.
    #
    # @!attribute [rw] unit
    #   The measurement unit to use.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The maximum output size value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelInferenceMaxOutputSize AWS API Documentation
    #
    class TrainedModelInferenceMaxOutputSize < Struct.new(
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the trained model.
    #
    # @!attribute [rw] create_time
    #   The time at which the trained model was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the trained model was updated.
    #   @return [Time]
    #
    # @!attribute [rw] trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] version_identifier
    #   The version identifier of this trained model version.
    #   @return [String]
    #
    # @!attribute [rw] incremental_training_data_channels
    #   Information about the incremental training data channels used to
    #   create this version of the trained model.
    #   @return [Array<Types::IncrementalTrainingDataChannelOutput>]
    #
    # @!attribute [rw] name
    #   The name of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] membership_identifier
    #   The membership ID of the member that created the trained model.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the trained model.
    #   @return [String]
    #
    # @!attribute [rw] configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that was used to create this trained model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelSummary AWS API Documentation
    #
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
      :configured_model_algorithm_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration policy for the trained models.
    #
    # @!attribute [rw] container_logs
    #   The container for the logs of the trained model.
    #   @return [Array<Types::LogsConfigurationPolicy>]
    #
    # @!attribute [rw] container_metrics
    #   The container for the metrics of the trained model.
    #   @return [Types::MetricsConfigurationPolicy]
    #
    # @!attribute [rw] max_artifact_size
    #   The maximum size limit for trained model artifacts as defined in the
    #   configuration policy. This setting helps enforce consistent size
    #   limits across trained models in the collaboration.
    #   @return [Types::TrainedModelArtifactMaxSize]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainedModelsConfigurationPolicy AWS API Documentation
    #
    class TrainedModelsConfigurationPolicy < Struct.new(
      :container_logs,
      :container_metrics,
      :max_artifact_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the training dataset.
    #
    # @!attribute [rw] create_time
    #   The time at which the training dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The most recent time at which the training dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the training dataset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the training dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TrainingDatasetSummary AWS API Documentation
    #
    class TrainingDatasetSummary < Struct.new(
      :create_time,
      :update_time,
      :training_dataset_arn,
      :name,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key values of tags that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The new output configuration.
    #   @return [Types::ConfiguredAudienceModelOutputConfig]
    #
    # @!attribute [rw] audience_model_arn
    #   The Amazon Resource Name (ARN) of the new audience model that you
    #   want to use.
    #   @return [String]
    #
    # @!attribute [rw] shared_audience_metrics
    #   The new value for whether to share audience metrics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #   @return [Integer]
    #
    # @!attribute [rw] audience_size_config
    #   The new audience size configuration.
    #   @return [Types::AudienceSizeConfig]
    #
    # @!attribute [rw] description
    #   The new description of the configured audience model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UpdateConfiguredAudienceModelRequest AWS API Documentation
    #
    class UpdateConfiguredAudienceModelRequest < Struct.new(
      :configured_audience_model_arn,
      :output_config,
      :audience_model_arn,
      :shared_audience_metrics,
      :min_matching_seed_size,
      :audience_size_config,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UpdateConfiguredAudienceModelResponse AWS API Documentation
    #
    class UpdateConfiguredAudienceModelResponse < Struct.new(
      :configured_audience_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for this request are incorrect.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about the compute workers that perform the
    # transform job.
    #
    # @!attribute [rw] type
    #   The instance type of the compute workers that are used.
    #   @return [String]
    #
    # @!attribute [rw] number
    #   The number of compute workers that are used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/WorkerComputeConfiguration AWS API Documentation
    #
    class WorkerComputeConfiguration < Struct.new(
      :type,
      :number)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Personalize
  module Types

    # Describes a custom algorithm.
    #
    # @!attribute [rw] name
    #   The name of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_image
    #   The URI of the Docker container for the algorithm image.
    #   @return [Types::AlgorithmImage]
    #
    # @!attribute [rw] default_hyper_parameters
    #   Specifies the default hyperparameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] default_hyper_parameter_ranges
    #   Specifies the default hyperparameters, their ranges, and whether
    #   they are tunable. A tunable hyperparameter can have its value
    #   determined during hyperparameter optimization (HPO).
    #   @return [Types::DefaultHyperParameterRanges]
    #
    # @!attribute [rw] default_resource_config
    #   Specifies the default maximum number of training jobs and parallel
    #   training jobs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_input_mode
    #   The training input mode.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the algorithm was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the algorithm was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Algorithm AWS API Documentation
    #
    class Algorithm < Struct.new(
      :name,
      :algorithm_arn,
      :algorithm_image,
      :default_hyper_parameters,
      :default_hyper_parameter_ranges,
      :default_resource_config,
      :training_input_mode,
      :role_arn,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an algorithm image.
    #
    # @!attribute [rw] name
    #   The name of the algorithm image.
    #   @return [String]
    #
    # @!attribute [rw] docker_uri
    #   The URI of the Docker container for the algorithm image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/AlgorithmImage AWS API Documentation
    #
    class AlgorithmImage < Struct.new(
      :name,
      :docker_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # When the solution performs AutoML (`performAutoML` is true in
    # [CreateSolution][1]), Amazon Personalize determines which recipe, from
    # the specified list, optimizes the given metric. Amazon Personalize
    # then uses that recipe for the solution.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @!attribute [rw] metric_name
    #   The metric to optimize.
    #   @return [String]
    #
    # @!attribute [rw] recipe_list
    #   The list of candidate recipes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/AutoMLConfig AWS API Documentation
    #
    class AutoMLConfig < Struct.new(
      :metric_name,
      :recipe_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # When the solution performs AutoML (`performAutoML` is true in
    # [CreateSolution][1]), specifies the recipe that best optimized the
    # specified metric.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @!attribute [rw] best_recipe_arn
    #   The Amazon Resource Name (ARN) of the best recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/AutoMLResult AWS API Documentation
    #
    class AutoMLResult < Struct.new(
      :best_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a batch inference job.
    #
    # @!attribute [rw] job_name
    #   The name of the batch inference job.
    #   @return [String]
    #
    # @!attribute [rw] batch_inference_job_arn
    #   The Amazon Resource Name (ARN) of the batch inference job.
    #   @return [String]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter used on the batch inference job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the batch inference job failed, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version from which
    #   the batch inference job was created.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of recommendations generated by the batch inference job.
    #   This number includes the error messages generated for failed input
    #   records.
    #   @return [Integer]
    #
    # @!attribute [rw] job_input
    #   The Amazon S3 path that leads to the input data used to generate the
    #   batch inference job.
    #   @return [Types::BatchInferenceJobInput]
    #
    # @!attribute [rw] job_output
    #   The Amazon S3 bucket that contains the output data generated by the
    #   batch inference job.
    #   @return [Types::BatchInferenceJobOutput]
    #
    # @!attribute [rw] batch_inference_job_config
    #   A string to string map of the configuration details of a batch
    #   inference job.
    #   @return [Types::BatchInferenceJobConfig]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the Amazon Identity and Access Management (IAM) role that
    #   requested the batch inference job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch inference job. The status is one of the
    #   following values:
    #
    #   * PENDING
    #
    #   * IN PROGRESS
    #
    #   * ACTIVE
    #
    #   * CREATE FAILED
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The time at which the batch inference job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The time at which the batch inference job was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchInferenceJob AWS API Documentation
    #
    class BatchInferenceJob < Struct.new(
      :job_name,
      :batch_inference_job_arn,
      :filter_arn,
      :failure_reason,
      :solution_version_arn,
      :num_results,
      :job_input,
      :job_output,
      :batch_inference_job_config,
      :role_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of a batch inference job.
    #
    # @!attribute [rw] item_exploration_config
    #   A string to string map specifying the exploration configuration
    #   hyperparameters, including `explorationWeight` and
    #   `explorationItemAgeCutOff`, you want to use to configure the amount
    #   of item exploration Amazon Personalize uses when recommending items.
    #   See [User-Personalization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchInferenceJobConfig AWS API Documentation
    #
    class BatchInferenceJobConfig < Struct.new(
      :item_exploration_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input configuration of a batch inference job.
    #
    # @!attribute [rw] s3_data_source
    #   The URI of the Amazon S3 location that contains your input data. The
    #   Amazon S3 bucket must be in the same region as the API endpoint you
    #   are calling.
    #   @return [Types::S3DataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchInferenceJobInput AWS API Documentation
    #
    class BatchInferenceJobInput < Struct.new(
      :s3_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration parameters of a batch inference job.
    #
    # @!attribute [rw] s3_data_destination
    #   Information on the Amazon S3 bucket in which the batch inference
    #   job's output is stored.
    #   @return [Types::S3DataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchInferenceJobOutput AWS API Documentation
    #
    class BatchInferenceJobOutput < Struct.new(
      :s3_data_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A truncated version of the [BatchInferenceJob][1]. The
    # [ListBatchInferenceJobs][2] operation returns a list of batch
    # inference job summaries.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_BatchInferenceJob.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListBatchInferenceJobs.html
    #
    # @!attribute [rw] batch_inference_job_arn
    #   The Amazon Resource Name (ARN) of the batch inference job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the batch inference job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch inference job. The status is one of the
    #   following values:
    #
    #   * PENDING
    #
    #   * IN PROGRESS
    #
    #   * ACTIVE
    #
    #   * CREATE FAILED
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The time at which the batch inference job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The time at which the batch inference job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the batch inference job failed, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The ARN of the solution version used by the batch inference job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchInferenceJobSummary AWS API Documentation
    #
    class BatchInferenceJobSummary < Struct.new(
      :batch_inference_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :solution_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a batch segment job.
    #
    # @!attribute [rw] job_name
    #   The name of the batch segment job.
    #   @return [String]
    #
    # @!attribute [rw] batch_segment_job_arn
    #   The Amazon Resource Name (ARN) of the batch segment job.
    #   @return [String]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter used on the batch segment job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the batch segment job failed, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version used by the
    #   batch segment job to generate batch segments.
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of predicted users generated by the batch segment job for
    #   each line of input data. The maximum number of users per segment is
    #   5 million.
    #   @return [Integer]
    #
    # @!attribute [rw] job_input
    #   The Amazon S3 path that leads to the input data used to generate the
    #   batch segment job.
    #   @return [Types::BatchSegmentJobInput]
    #
    # @!attribute [rw] job_output
    #   The Amazon S3 bucket that contains the output data generated by the
    #   batch segment job.
    #   @return [Types::BatchSegmentJobOutput]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the Amazon Identity and Access Management (IAM) role that
    #   requested the batch segment job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch segment job. The status is one of the
    #   following values:
    #
    #   * PENDING
    #
    #   * IN PROGRESS
    #
    #   * ACTIVE
    #
    #   * CREATE FAILED
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The time at which the batch segment job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The time at which the batch segment job last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchSegmentJob AWS API Documentation
    #
    class BatchSegmentJob < Struct.new(
      :job_name,
      :batch_segment_job_arn,
      :filter_arn,
      :failure_reason,
      :solution_version_arn,
      :num_results,
      :job_input,
      :job_output,
      :role_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input configuration of a batch segment job.
    #
    # @!attribute [rw] s3_data_source
    #   The configuration details of an Amazon S3 input or output bucket.
    #   @return [Types::S3DataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchSegmentJobInput AWS API Documentation
    #
    class BatchSegmentJobInput < Struct.new(
      :s3_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration parameters of a batch segment job.
    #
    # @!attribute [rw] s3_data_destination
    #   The configuration details of an Amazon S3 input or output bucket.
    #   @return [Types::S3DataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchSegmentJobOutput AWS API Documentation
    #
    class BatchSegmentJobOutput < Struct.new(
      :s3_data_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A truncated version of the [BatchSegmentJob][1] datatype.
    # [ListBatchSegmentJobs][2] operation returns a list of batch segment
    # job summaries.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_BatchSegmentJob.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListBatchSegmentJobs.html
    #
    # @!attribute [rw] batch_segment_job_arn
    #   The Amazon Resource Name (ARN) of the batch segment job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the batch segment job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch segment job. The status is one of the
    #   following values:
    #
    #   * PENDING
    #
    #   * IN PROGRESS
    #
    #   * ACTIVE
    #
    #   * CREATE FAILED
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The time at which the batch segment job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The time at which the batch segment job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the batch segment job failed, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version used by the
    #   batch segment job to generate batch segments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/BatchSegmentJobSummary AWS API Documentation
    #
    class BatchSegmentJobSummary < Struct.new(
      :batch_segment_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :solution_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the deployment of a solution version. For
    # more information on campaigns, see [CreateCampaign][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html
    #
    # @!attribute [rw] name
    #   The name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of a specific version of the
    #   solution.
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second. A high `minProvisionedTPS` will
    #   increase your bill. We recommend starting with 1 for
    #   `minProvisionedTPS` (the default). Track your usage using Amazon
    #   CloudWatch metrics, and increase the `minProvisionedTPS` as
    #   necessary.
    #   @return [Integer]
    #
    # @!attribute [rw] campaign_config
    #   The configuration details of a campaign.
    #   @return [Types::CampaignConfig]
    #
    # @!attribute [rw] status
    #   The status of the campaign.
    #
    #   A campaign can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If a campaign fails, the reason behind the failure.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix format) that the campaign was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix format) that the campaign was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_campaign_update
    #   Provides a summary of the properties of a campaign update. For a
    #   complete listing, call the [DescribeCampaign][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html
    #   @return [Types::CampaignUpdateSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Campaign AWS API Documentation
    #
    class Campaign < Struct.new(
      :name,
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time,
      :latest_campaign_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of a campaign.
    #
    # @!attribute [rw] item_exploration_config
    #   Specifies the exploration configuration hyperparameters, including
    #   `explorationWeight` and `explorationItemAgeCutOff`, you want to use
    #   to configure the amount of item exploration Amazon Personalize uses
    #   when recommending items. Provide `itemExplorationConfig` data only
    #   if your solution uses the [User-Personalization][1] recipe.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CampaignConfig AWS API Documentation
    #
    class CampaignConfig < Struct.new(
      :item_exploration_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a campaign. For a complete
    # listing, call the [DescribeCampaign][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html
    #
    # @!attribute [rw] name
    #   The name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the campaign.
    #
    #   A campaign can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the campaign was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the campaign was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a campaign fails, the reason behind the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CampaignSummary AWS API Documentation
    #
    class CampaignSummary < Struct.new(
      :name,
      :campaign_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a campaign update. For a
    # complete listing, call the [DescribeCampaign][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the deployed solution version.
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second that Amazon Personalize will support.
    #   @return [Integer]
    #
    # @!attribute [rw] campaign_config
    #   The configuration details of a campaign.
    #   @return [Types::CampaignConfig]
    #
    # @!attribute [rw] status
    #   The status of the campaign update.
    #
    #   A campaign update can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If a campaign update fails, the reason behind the failure.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the campaign update was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the campaign update was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CampaignUpdateSummary AWS API Documentation
    #
    class CampaignUpdateSummary < Struct.new(
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name and range of a categorical hyperparameter.
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of the categories for the hyperparameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CategoricalHyperParameterRange AWS API Documentation
    #
    class CategoricalHyperParameterRange < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name and range of a continuous hyperparameter.
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter.
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   The minimum allowable value for the hyperparameter.
    #   @return [Float]
    #
    # @!attribute [rw] max_value
    #   The maximum allowable value for the hyperparameter.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ContinuousHyperParameterRange AWS API Documentation
    #
    class ContinuousHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the batch inference job to create.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version that will be
    #   used to generate the batch inference recommendations.
    #   @return [String]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter to apply to the batch inference job. For more
    #   information on using filters, see [Filtering batch
    #   recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of recommendations to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] job_input
    #   The Amazon S3 path that leads to the input file to base your
    #   recommendations on. The input material must be in JSON format.
    #   @return [Types::BatchInferenceJobInput]
    #
    # @!attribute [rw] job_output
    #   The path to the Amazon S3 bucket where the job's output will be
    #   stored.
    #   @return [Types::BatchInferenceJobOutput]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the Amazon Identity and Access Management role that has
    #   permissions to read and write to your input and output Amazon S3
    #   buckets respectively.
    #   @return [String]
    #
    # @!attribute [rw] batch_inference_job_config
    #   The configuration details of a batch inference job.
    #   @return [Types::BatchInferenceJobConfig]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the batch inference job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateBatchInferenceJobRequest AWS API Documentation
    #
    class CreateBatchInferenceJobRequest < Struct.new(
      :job_name,
      :solution_version_arn,
      :filter_arn,
      :num_results,
      :job_input,
      :job_output,
      :role_arn,
      :batch_inference_job_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_inference_job_arn
    #   The ARN of the batch inference job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateBatchInferenceJobResponse AWS API Documentation
    #
    class CreateBatchInferenceJobResponse < Struct.new(
      :batch_inference_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the batch segment job to create.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version you want the
    #   batch segment job to use to generate batch segments.
    #   @return [String]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter to apply to the batch segment job. For more
    #   information on using filters, see [Filtering batch
    #   recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   The number of predicted users generated by the batch segment job for
    #   each line of input data. The maximum number of users per segment is
    #   5 million.
    #   @return [Integer]
    #
    # @!attribute [rw] job_input
    #   The Amazon S3 path for the input data used to generate the batch
    #   segment job.
    #   @return [Types::BatchSegmentJobInput]
    #
    # @!attribute [rw] job_output
    #   The Amazon S3 path for the bucket where the job's output will be
    #   stored.
    #   @return [Types::BatchSegmentJobOutput]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the Amazon Identity and Access Management role that has
    #   permissions to read and write to your input and output Amazon S3
    #   buckets respectively.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the batch segment job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateBatchSegmentJobRequest AWS API Documentation
    #
    class CreateBatchSegmentJobRequest < Struct.new(
      :job_name,
      :solution_version_arn,
      :filter_arn,
      :num_results,
      :job_input,
      :job_output,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_segment_job_arn
    #   The ARN of the batch segment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateBatchSegmentJobResponse AWS API Documentation
    #
    class CreateBatchSegmentJobResponse < Struct.new(
      :batch_segment_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the new campaign. The campaign name must be unique within
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version to deploy.
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second that Amazon Personalize will support. A
    #   high `minProvisionedTPS` will increase your bill. We recommend
    #   starting with 1 for `minProvisionedTPS` (the default). Track your
    #   usage using Amazon CloudWatch metrics, and increase the
    #   `minProvisionedTPS` as necessary.
    #   @return [Integer]
    #
    # @!attribute [rw] campaign_config
    #   The configuration details of a campaign.
    #   @return [Types::CampaignConfig]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the campaign.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateCampaignRequest AWS API Documentation
    #
    class CreateCampaignRequest < Struct.new(
      :name,
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateCampaignResponse AWS API Documentation
    #
    class CreateCampaignResponse < Struct.new(
      :campaign_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name for the dataset export job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that contains the data
    #   to export.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_mode
    #   The data to export, based on how you imported the data. You can
    #   choose to export only `BULK` data that you imported using a dataset
    #   import job, only `PUT` data that you imported incrementally (using
    #   the console, PutEvents, PutUsers and PutItems operations), or `ALL`
    #   for both types. The default value is `PUT`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that has
    #   permissions to add data to your output Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] job_output
    #   The path to the Amazon S3 bucket where the job's output is stored.
    #   @return [Types::DatasetExportJobOutput]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the dataset export job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetExportJobRequest AWS API Documentation
    #
    class CreateDatasetExportJobRequest < Struct.new(
      :job_name,
      :dataset_arn,
      :ingestion_mode,
      :role_arn,
      :job_output,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_export_job_arn
    #   The Amazon Resource Name (ARN) of the dataset export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetExportJobResponse AWS API Documentation
    #
    class CreateDatasetExportJobResponse < Struct.new(
      :dataset_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the new dataset group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the Identity and Access Management (IAM) role that has
    #   permissions to access the Key Management Service (KMS) key.
    #   Supplying an IAM role is only valid when also specifying a KMS key.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of a Key Management Service (KMS) key
    #   used to encrypt the datasets.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of the dataset group. Specify a domain to create a Domain
    #   dataset group. The domain you specify determines the default schemas
    #   for datasets and the use cases available for recommenders. If you
    #   don't specify a domain, you create a Custom dataset group with
    #   solution versions that you deploy with a campaign.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the dataset group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroupRequest AWS API Documentation
    #
    class CreateDatasetGroupRequest < Struct.new(
      :name,
      :role_arn,
      :kms_key_arn,
      :domain,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the new dataset group.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain for the new Domain dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroupResponse AWS API Documentation
    #
    class CreateDatasetGroupResponse < Struct.new(
      :dataset_group_arn,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name for the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The ARN of the dataset that receives the imported data.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The Amazon S3 bucket that contains the training data to import.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that has permissions to read from the Amazon
    #   S3 data source.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the dataset import job.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] import_mode
    #   Specify how to add the new records to an existing dataset. The
    #   default import mode is `FULL`. If you haven't imported bulk records
    #   into the dataset previously, you can only specify `FULL`.
    #
    #   * Specify `FULL` to overwrite all existing bulk data in your
    #     dataset. Data you imported individually is not replaced.
    #
    #   * Specify `INCREMENTAL` to append the new records to the existing
    #     data in your dataset. Amazon Personalize replaces any record with
    #     the same ID with the new one.
    #   @return [String]
    #
    # @!attribute [rw] publish_attribution_metrics_to_s3
    #   If you created a metric attribution, specify whether to publish
    #   metrics for this import job to Amazon S3
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetImportJobRequest AWS API Documentation
    #
    class CreateDatasetImportJobRequest < Struct.new(
      :job_name,
      :dataset_arn,
      :data_source,
      :role_arn,
      :tags,
      :import_mode,
      :publish_attribution_metrics_to_s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job_arn
    #   The ARN of the dataset import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetImportJobResponse AWS API Documentation
    #
    class CreateDatasetImportJobResponse < Struct.new(
      :dataset_import_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema to associate with the dataset. The schema
    #   defines the dataset fields.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group to add the
    #   dataset to.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The type of dataset.
    #
    #   One of the following (case insensitive) values:
    #
    #   * Interactions
    #
    #   * Items
    #
    #   * Users
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the dataset.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :name,
      :schema_arn,
      :dataset_group_arn,
      :dataset_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that receives
    #   the event data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the event tracker.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateEventTrackerRequest AWS API Documentation
    #
    class CreateEventTrackerRequest < Struct.new(
      :name,
      :dataset_group_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_tracker_arn
    #   The ARN of the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] tracking_id
    #   The ID of the event tracker. Include this ID in requests to the
    #   [PutEvents][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateEventTrackerResponse AWS API Documentation
    #
    class CreateEventTrackerResponse < Struct.new(
      :event_tracker_arn,
      :tracking_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the filter to create.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group that the filter will belong to.
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   The filter expression defines which items are included or excluded
    #   from recommendations. Filter expression must follow specific format
    #   rules. For information about filter expression structure and syntax,
    #   see [Filter expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the filter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateFilterRequest AWS API Documentation
    #
    class CreateFilterRequest < Struct.new(
      :name,
      :dataset_group_arn,
      :filter_expression,
      :tags)
      SENSITIVE = [:filter_expression]
      include Aws::Structure
    end

    # @!attribute [rw] filter_arn
    #   The ARN of the new filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateFilterResponse AWS API Documentation
    #
    class CreateFilterResponse < Struct.new(
      :filter_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the metric attribution.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the destination dataset group for
    #   the metric attribution.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   A list of metric attributes for the metric attribution. Each metric
    #   attribute specifies an event type to track and a function. Available
    #   functions are `SUM()` or `SAMPLECOUNT()`. For SUM() functions,
    #   provide the dataset type (either Interactions or Items) and column
    #   to sum as a parameter. For example SUM(Items.PRICE).
    #   @return [Array<Types::MetricAttribute>]
    #
    # @!attribute [rw] metrics_output_config
    #   The output configuration details for the metric attribution.
    #   @return [Types::MetricAttributionOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateMetricAttributionRequest AWS API Documentation
    #
    class CreateMetricAttributionRequest < Struct.new(
      :name,
      :dataset_group_arn,
      :metrics,
      :metrics_output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_attribution_arn
    #   The Amazon Resource Name (ARN) for the new metric attribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateMetricAttributionResponse AWS API Documentation
    #
    class CreateMetricAttributionResponse < Struct.new(
      :metric_attribution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the destination domain dataset
    #   group for the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe that the recommender
    #   will use. For a recommender, a recipe is a Domain dataset group use
    #   case. Only Domain dataset group use cases can be used to create a
    #   recommender. For information about use cases see [Choosing
    #   recommender use cases][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The configuration details of the recommender.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the recommender.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateRecommenderRequest AWS API Documentation
    #
    class CreateRecommenderRequest < Struct.new(
      :name,
      :dataset_group_arn,
      :recipe_arn,
      :recommender_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateRecommenderResponse AWS API Documentation
    #
    class CreateRecommenderResponse < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   A schema in Avro JSON format.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain for the schema. If you are creating a schema for a
    #   dataset in a Domain dataset group, specify the domain you chose when
    #   you created the Domain dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSchemaRequest AWS API Documentation
    #
    class CreateSchemaRequest < Struct.new(
      :name,
      :schema,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the created schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSchemaResponse AWS API Documentation
    #
    class CreateSchemaResponse < Struct.new(
      :schema_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the solution.
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   Whether to perform hyperparameter optimization (HPO) on the
    #   specified or selected recipe. The default is `false`.
    #
    #   When performing AutoML, this parameter is always `true` and you
    #   should not set it to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] perform_auto_ml
    #   We don't recommend enabling automated machine learning. Instead,
    #   match your use case to the available Amazon Personalize recipes. For
    #   more information, see [Determining your use case.][1]
    #
    #   Whether to perform automated machine learning (AutoML). The default
    #   is `false`. For this case, you must specify `recipeArn`.
    #
    #   When set to `true`, Amazon Personalize analyzes your training data
    #   and selects the optimal USER\_PERSONALIZATION recipe and
    #   hyperparameters. In this case, you must omit `recipeArn`. Amazon
    #   Personalize determines the optimal recipe by running tests with
    #   different values for the hyperparameters. AutoML lengthens the
    #   training process as compared to selecting a specific recipe.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/determining-use-case.html
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   The ARN of the recipe to use for model training. This is required
    #   when `performAutoML` is false.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that provides
    #   the training data.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   When your have multiple event types (using an `EVENT_TYPE` schema
    #   field), this parameter specifies which event type (for example,
    #   'click' or 'like') is used for training the model.
    #
    #   If you do not provide an `eventType`, Amazon Personalize will use
    #   all interactions for training with equal weight regardless of type.
    #   @return [String]
    #
    # @!attribute [rw] solution_config
    #   The configuration to use with the solution. When `performAutoML` is
    #   set to true, Amazon Personalize only evaluates the `autoMLConfig`
    #   section of the solution configuration.
    #
    #   <note markdown="1"> Amazon Personalize doesn't support configuring the `hpoObjective`
    #   at this time.
    #
    #    </note>
    #   @return [Types::SolutionConfig]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the solution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionRequest AWS API Documentation
    #
    class CreateSolutionRequest < Struct.new(
      :name,
      :perform_hpo,
      :perform_auto_ml,
      :recipe_arn,
      :dataset_group_arn,
      :event_type,
      :solution_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_arn
    #   The ARN of the solution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionResponse AWS API Documentation
    #
    class CreateSolutionResponse < Struct.new(
      :solution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the solution version.
    #   @return [String]
    #
    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution containing the
    #   training configuration information.
    #   @return [String]
    #
    # @!attribute [rw] training_mode
    #   The scope of training to be performed when creating the solution
    #   version. The `FULL` option trains the solution version based on the
    #   entirety of the input solution's training data, while the `UPDATE`
    #   option processes only the data that has changed in comparison to the
    #   input solution. Choose `UPDATE` when you want to incrementally
    #   update your solution version instead of creating an entirely new
    #   one.
    #
    #   The `UPDATE` option can only be used when you already have an active
    #   solution version created from the input solution using the `FULL`
    #   option and the input solution was trained with the
    #   [User-Personalization][1] recipe or the [HRNN-Coldstart][2] recipe.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html
    #   [2]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the solution version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionVersionRequest AWS API Documentation
    #
    class CreateSolutionVersionRequest < Struct.new(
      :name,
      :solution_arn,
      :training_mode,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The ARN of the new solution version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionVersionResponse AWS API Documentation
    #
    class CreateSolutionVersionResponse < Struct.new(
      :solution_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data source that contains the data to upload to a
    # dataset.
    #
    # @!attribute [rw] data_location
    #   The path to the Amazon S3 bucket where the data that you want to
    #   upload to your dataset is stored. For example:
    #
    #   `s3://bucket-name/folder-name/`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :data_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides metadata for a dataset.
    #
    # @!attribute [rw] name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that you want metadata
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   One of the following values:
    #
    #   * Interactions
    #
    #   * Items
    #
    #   * Users
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the associated schema.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #
    #   A dataset can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time (in Unix time) of the dataset.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A time stamp that shows when the dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_dataset_update
    #   Describes the latest update to the dataset.
    #   @return [Types::DatasetUpdateSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Dataset AWS API Documentation
    #
    class Dataset < Struct.new(
      :name,
      :dataset_arn,
      :dataset_group_arn,
      :dataset_type,
      :schema_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :latest_dataset_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a job that exports a dataset to an Amazon S3 bucket. For
    # more information, see [CreateDatasetExportJob][1].
    #
    # A dataset export job can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html
    #
    # @!attribute [rw] job_name
    #   The name of the export job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_export_job_arn
    #   The Amazon Resource Name (ARN) of the dataset export job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to export.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_mode
    #   The data to export, based on how you imported the data. You can
    #   choose to export `BULK` data that you imported using a dataset
    #   import job, `PUT` data that you imported incrementally (using the
    #   console, PutEvents, PutUsers and PutItems operations), or `ALL` for
    #   both types. The default value is `PUT`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that has
    #   permissions to add data to your output Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset export job.
    #
    #   A dataset export job can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] job_output
    #   The path to the Amazon S3 bucket where the job's output is stored.
    #   For example:
    #
    #   `s3://bucket-name/folder-name/`
    #   @return [Types::DatasetExportJobOutput]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time (in Unix time) of the dataset export job.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) the status of the dataset export
    #   job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a dataset export job fails, provides the reason why.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetExportJob AWS API Documentation
    #
    class DatasetExportJob < Struct.new(
      :job_name,
      :dataset_export_job_arn,
      :dataset_arn,
      :ingestion_mode,
      :role_arn,
      :status,
      :job_output,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration parameters of a dataset export job.
    #
    # @!attribute [rw] s3_data_destination
    #   The configuration details of an Amazon S3 input or output bucket.
    #   @return [Types::S3DataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetExportJobOutput AWS API Documentation
    #
    class DatasetExportJobOutput < Struct.new(
      :s3_data_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset export job. For a
    # complete listing, call the [DescribeDatasetExportJob][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html
    #
    # @!attribute [rw] dataset_export_job_arn
    #   The Amazon Resource Name (ARN) of the dataset export job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the dataset export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset export job.
    #
    #   A dataset export job can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the dataset export job was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the dataset export job status
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a dataset export job fails, the reason behind the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetExportJobSummary AWS API Documentation
    #
    class DatasetExportJobSummary < Struct.new(
      :dataset_export_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dataset group is a collection of related datasets (Interactions,
    # User, and Item). You create a dataset group by calling
    # [CreateDatasetGroup][1]. You then create a dataset and add it to a
    # dataset group by calling [CreateDataset][2]. The dataset group is used
    # to create and train a solution by calling [CreateSolution][3]. A
    # dataset group can contain only one of each type of dataset.
    #
    # You can specify an Key Management Service (KMS) key to encrypt the
    # datasets in the group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html
    # [2]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html
    # [3]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @!attribute [rw] name
    #   The name of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dataset group.
    #
    #   A dataset group can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that has permissions to create the dataset
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service (KMS)
    #   key used to encrypt the datasets.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time (in Unix time) of the dataset group.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The last update date and time (in Unix time) of the dataset group.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If creating a dataset group fails, provides the reason why.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of a Domain dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetGroup AWS API Documentation
    #
    class DatasetGroup < Struct.new(
      :name,
      :dataset_group_arn,
      :status,
      :role_arn,
      :kms_key_arn,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset group. For a
    # complete listing, call the [DescribeDatasetGroup][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html
    #
    # @!attribute [rw] name
    #   The name of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset group.
    #
    #   A dataset group can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the dataset group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the dataset group was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If creating a dataset group fails, the reason behind the failure.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of a Domain dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetGroupSummary AWS API Documentation
    #
    class DatasetGroupSummary < Struct.new(
      :name,
      :dataset_group_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a job that imports training data from a data source (Amazon
    # S3 bucket) to an Amazon Personalize dataset. For more information, see
    # [CreateDatasetImportJob][1].
    #
    # A dataset import job can be in one of the following states:
    #
    # * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #   FAILED
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html
    #
    # @!attribute [rw] job_name
    #   The name of the import job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_import_job_arn
    #   The ARN of the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that receives the
    #   imported data.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The Amazon S3 bucket that contains the training data to import.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that has permissions to read from the Amazon
    #   S3 data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset import job.
    #
    #   A dataset import job can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time (in Unix time) of the dataset import job.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) the dataset was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a dataset import job fails, provides the reason why.
    #   @return [String]
    #
    # @!attribute [rw] import_mode
    #   The import mode used by the dataset import job to import new
    #   records.
    #   @return [String]
    #
    # @!attribute [rw] publish_attribution_metrics_to_s3
    #   Whether the job publishes metrics to Amazon S3 for a metric
    #   attribution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetImportJob AWS API Documentation
    #
    class DatasetImportJob < Struct.new(
      :job_name,
      :dataset_import_job_arn,
      :dataset_arn,
      :data_source,
      :role_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :import_mode,
      :publish_attribution_metrics_to_s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset import job. For a
    # complete listing, call the [DescribeDatasetImportJob][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html
    #
    # @!attribute [rw] dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the dataset import job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset import job.
    #
    #   A dataset import job can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the dataset import job was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the dataset import job status
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a dataset import job fails, the reason behind the failure.
    #   @return [String]
    #
    # @!attribute [rw] import_mode
    #   The import mode the dataset import job used to update the data in
    #   the dataset. For more information see [Updating existing bulk
    #   data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/updating-existing-bulk-data.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetImportJobSummary AWS API Documentation
    #
    class DatasetImportJobSummary < Struct.new(
      :dataset_import_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason,
      :import_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the schema for a dataset. For more information on schemas,
    # see [CreateSchema][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html
    #
    # @!attribute [rw] name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the schema was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the schema was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] domain
    #   The domain of a schema that you created for a dataset in a Domain
    #   dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSchema AWS API Documentation
    #
    class DatasetSchema < Struct.new(
      :name,
      :schema_arn,
      :schema,
      :creation_date_time,
      :last_updated_date_time,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset schema. For a
    # complete listing, call the [DescribeSchema][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html
    #
    # @!attribute [rw] name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the schema was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the schema was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] domain
    #   The domain of a schema that you created for a dataset in a Domain
    #   dataset group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSchemaSummary AWS API Documentation
    #
    class DatasetSchemaSummary < Struct.new(
      :name,
      :schema_arn,
      :creation_date_time,
      :last_updated_date_time,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a dataset. For a complete
    # listing, call the [DescribeDataset][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html
    #
    # @!attribute [rw] name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The dataset type. One of the following values:
    #
    #   * Interactions
    #
    #   * Items
    #
    #   * Users
    #
    #   * Event-Interactions
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #
    #   A dataset can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the dataset was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSummary AWS API Documentation
    #
    class DatasetSummary < Struct.new(
      :name,
      :dataset_arn,
      :dataset_type,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update to a dataset.
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema that replaced the
    #   previous schema of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset update.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If updating a dataset fails, provides the reason why.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time (in Unix time) of the dataset update.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The last update date and time (in Unix time) of the dataset.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetUpdateSummary AWS API Documentation
    #
    class DatasetUpdateSummary < Struct.new(
      :schema_arn,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name and default range of a categorical hyperparameter
    # and whether the hyperparameter is tunable. A tunable hyperparameter
    # can have its value determined during hyperparameter optimization
    # (HPO).
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of the categories for the hyperparameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_tunable
    #   Whether the hyperparameter is tunable.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultCategoricalHyperParameterRange AWS API Documentation
    #
    class DefaultCategoricalHyperParameterRange < Struct.new(
      :name,
      :values,
      :is_tunable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name and default range of a continuous hyperparameter and
    # whether the hyperparameter is tunable. A tunable hyperparameter can
    # have its value determined during hyperparameter optimization (HPO).
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter.
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   The minimum allowable value for the hyperparameter.
    #   @return [Float]
    #
    # @!attribute [rw] max_value
    #   The maximum allowable value for the hyperparameter.
    #   @return [Float]
    #
    # @!attribute [rw] is_tunable
    #   Whether the hyperparameter is tunable.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultContinuousHyperParameterRange AWS API Documentation
    #
    class DefaultContinuousHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :is_tunable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the hyperparameters and their default ranges.
    # Hyperparameters can be categorical, continuous, or integer-valued.
    #
    # @!attribute [rw] integer_hyper_parameter_ranges
    #   The integer-valued hyperparameters and their default ranges.
    #   @return [Array<Types::DefaultIntegerHyperParameterRange>]
    #
    # @!attribute [rw] continuous_hyper_parameter_ranges
    #   The continuous hyperparameters and their default ranges.
    #   @return [Array<Types::DefaultContinuousHyperParameterRange>]
    #
    # @!attribute [rw] categorical_hyper_parameter_ranges
    #   The categorical hyperparameters and their default ranges.
    #   @return [Array<Types::DefaultCategoricalHyperParameterRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultHyperParameterRanges AWS API Documentation
    #
    class DefaultHyperParameterRanges < Struct.new(
      :integer_hyper_parameter_ranges,
      :continuous_hyper_parameter_ranges,
      :categorical_hyper_parameter_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name and default range of a integer-valued hyperparameter
    # and whether the hyperparameter is tunable. A tunable hyperparameter
    # can have its value determined during hyperparameter optimization
    # (HPO).
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter.
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   The minimum allowable value for the hyperparameter.
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   The maximum allowable value for the hyperparameter.
    #   @return [Integer]
    #
    # @!attribute [rw] is_tunable
    #   Indicates whether the hyperparameter is tunable.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultIntegerHyperParameterRange AWS API Documentation
    #
    class DefaultIntegerHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :is_tunable)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteCampaignRequest AWS API Documentation
    #
    class DeleteCampaignRequest < Struct.new(
      :campaign_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetGroupRequest AWS API Documentation
    #
    class DeleteDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_tracker_arn
    #   The Amazon Resource Name (ARN) of the event tracker to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteEventTrackerRequest AWS API Documentation
    #
    class DeleteEventTrackerRequest < Struct.new(
      :event_tracker_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_arn
    #   The ARN of the filter to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteFilterRequest AWS API Documentation
    #
    class DeleteFilterRequest < Struct.new(
      :filter_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_attribution_arn
    #   The metric attribution's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteMetricAttributionRequest AWS API Documentation
    #
    class DeleteMetricAttributionRequest < Struct.new(
      :metric_attribution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteRecommenderRequest AWS API Documentation
    #
    class DeleteRecommenderRequest < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSchemaRequest AWS API Documentation
    #
    class DeleteSchemaRequest < Struct.new(
      :schema_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_arn
    #   The ARN of the solution to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSolutionRequest AWS API Documentation
    #
    class DeleteSolutionRequest < Struct.new(
      :solution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeAlgorithmRequest AWS API Documentation
    #
    class DescribeAlgorithmRequest < Struct.new(
      :algorithm_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] algorithm
    #   A listing of the properties of the algorithm.
    #   @return [Types::Algorithm]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeAlgorithmResponse AWS API Documentation
    #
    class DescribeAlgorithmResponse < Struct.new(
      :algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_inference_job_arn
    #   The ARN of the batch inference job to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeBatchInferenceJobRequest AWS API Documentation
    #
    class DescribeBatchInferenceJobRequest < Struct.new(
      :batch_inference_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_inference_job
    #   Information on the specified batch inference job.
    #   @return [Types::BatchInferenceJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeBatchInferenceJobResponse AWS API Documentation
    #
    class DescribeBatchInferenceJobResponse < Struct.new(
      :batch_inference_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_segment_job_arn
    #   The ARN of the batch segment job to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeBatchSegmentJobRequest AWS API Documentation
    #
    class DescribeBatchSegmentJobRequest < Struct.new(
      :batch_segment_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_segment_job
    #   Information on the specified batch segment job.
    #   @return [Types::BatchSegmentJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeBatchSegmentJobResponse AWS API Documentation
    #
    class DescribeBatchSegmentJobResponse < Struct.new(
      :batch_segment_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeCampaignRequest AWS API Documentation
    #
    class DescribeCampaignRequest < Struct.new(
      :campaign_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaign
    #   The properties of the campaign.
    #   @return [Types::Campaign]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeCampaignResponse AWS API Documentation
    #
    class DescribeCampaignResponse < Struct.new(
      :campaign)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_export_job_arn
    #   The Amazon Resource Name (ARN) of the dataset export job to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetExportJobRequest AWS API Documentation
    #
    class DescribeDatasetExportJobRequest < Struct.new(
      :dataset_export_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_export_job
    #   Information about the dataset export job, including the status.
    #
    #   The status is one of the following values:
    #
    #   * CREATE PENDING
    #
    #   * CREATE IN\_PROGRESS
    #
    #   * ACTIVE
    #
    #   * CREATE FAILED
    #   @return [Types::DatasetExportJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetExportJobResponse AWS API Documentation
    #
    class DescribeDatasetExportJobResponse < Struct.new(
      :dataset_export_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroupRequest AWS API Documentation
    #
    class DescribeDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group
    #   A listing of the dataset group's properties.
    #   @return [Types::DatasetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroupResponse AWS API Documentation
    #
    class DescribeDatasetGroupResponse < Struct.new(
      :dataset_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job_arn
    #   The Amazon Resource Name (ARN) of the dataset import job to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetImportJobRequest AWS API Documentation
    #
    class DescribeDatasetImportJobRequest < Struct.new(
      :dataset_import_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job
    #   Information about the dataset import job, including the status.
    #
    #   The status is one of the following values:
    #
    #   * CREATE PENDING
    #
    #   * CREATE IN\_PROGRESS
    #
    #   * ACTIVE
    #
    #   * CREATE FAILED
    #   @return [Types::DatasetImportJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetImportJobResponse AWS API Documentation
    #
    class DescribeDatasetImportJobResponse < Struct.new(
      :dataset_import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset
    #   A listing of the dataset's properties.
    #   @return [Types::Dataset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetResponse AWS API Documentation
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_tracker_arn
    #   The Amazon Resource Name (ARN) of the event tracker to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeEventTrackerRequest AWS API Documentation
    #
    class DescribeEventTrackerRequest < Struct.new(
      :event_tracker_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_tracker
    #   An object that describes the event tracker.
    #   @return [Types::EventTracker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeEventTrackerResponse AWS API Documentation
    #
    class DescribeEventTrackerResponse < Struct.new(
      :event_tracker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feature_transformation_arn
    #   The Amazon Resource Name (ARN) of the feature transformation to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFeatureTransformationRequest AWS API Documentation
    #
    class DescribeFeatureTransformationRequest < Struct.new(
      :feature_transformation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feature_transformation
    #   A listing of the FeatureTransformation properties.
    #   @return [Types::FeatureTransformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFeatureTransformationResponse AWS API Documentation
    #
    class DescribeFeatureTransformationResponse < Struct.new(
      :feature_transformation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_arn
    #   The ARN of the filter to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFilterRequest AWS API Documentation
    #
    class DescribeFilterRequest < Struct.new(
      :filter_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The filter's details.
    #   @return [Types::Filter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFilterResponse AWS API Documentation
    #
    class DescribeFilterResponse < Struct.new(
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_attribution_arn
    #   The metric attribution's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeMetricAttributionRequest AWS API Documentation
    #
    class DescribeMetricAttributionRequest < Struct.new(
      :metric_attribution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_attribution
    #   The details of the metric attribution.
    #   @return [Types::MetricAttribution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeMetricAttributionResponse AWS API Documentation
    #
    class DescribeMetricAttributionResponse < Struct.new(
      :metric_attribution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecipeRequest AWS API Documentation
    #
    class DescribeRecipeRequest < Struct.new(
      :recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recipe
    #   An object that describes the recipe.
    #   @return [Types::Recipe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecipeResponse AWS API Documentation
    #
    class DescribeRecipeResponse < Struct.new(
      :recipe)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecommenderRequest AWS API Documentation
    #
    class DescribeRecommenderRequest < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender
    #   The properties of the recommender.
    #   @return [Types::Recommender]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecommenderResponse AWS API Documentation
    #
    class DescribeRecommenderResponse < Struct.new(
      :recommender)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSchemaRequest AWS API Documentation
    #
    class DescribeSchemaRequest < Struct.new(
      :schema_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema
    #   The requested schema.
    #   @return [Types::DatasetSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSchemaResponse AWS API Documentation
    #
    class DescribeSchemaResponse < Struct.new(
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionRequest AWS API Documentation
    #
    class DescribeSolutionRequest < Struct.new(
      :solution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution
    #   An object that describes the solution.
    #   @return [Types::Solution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionResponse AWS API Documentation
    #
    class DescribeSolutionResponse < Struct.new(
      :solution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionVersionRequest AWS API Documentation
    #
    class DescribeSolutionVersionRequest < Struct.new(
      :solution_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version
    #   The solution version.
    #   @return [Types::SolutionVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionVersionResponse AWS API Documentation
    #
    class DescribeSolutionVersionResponse < Struct.new(
      :solution_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an event tracker.
    #
    # @!attribute [rw] name
    #   The name of the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] event_tracker_arn
    #   The ARN of the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account that owns the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] tracking_id
    #   The ID of the event tracker. Include this ID in requests to the
    #   [PutEvents][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that receives
    #   the event data.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the event tracker.
    #
    #   An event tracker can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix format) that the event tracker was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the event tracker was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/EventTracker AWS API Documentation
    #
    class EventTracker < Struct.new(
      :name,
      :event_tracker_arn,
      :account_id,
      :tracking_id,
      :dataset_group_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of an event tracker. For a
    # complete listing, call the [DescribeEventTracker][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html
    #
    # @!attribute [rw] name
    #   The name of the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] event_tracker_arn
    #   The Amazon Resource Name (ARN) of the event tracker.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the event tracker.
    #
    #   An event tracker can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the event tracker was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the event tracker was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/EventTrackerSummary AWS API Documentation
    #
    class EventTrackerSummary < Struct.new(
      :name,
      :event_tracker_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides feature transformation information. Feature transformation is
    # the process of modifying raw input data into a form more suitable for
    # model training.
    #
    # @!attribute [rw] name
    #   The name of the feature transformation.
    #   @return [String]
    #
    # @!attribute [rw] feature_transformation_arn
    #   The Amazon Resource Name (ARN) of the FeatureTransformation object.
    #   @return [String]
    #
    # @!attribute [rw] default_parameters
    #   Provides the default parameters for feature transformation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time (in Unix time) of the feature
    #   transformation.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The last update date and time (in Unix time) of the feature
    #   transformation.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the feature transformation.
    #
    #   A feature transformation can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/FeatureTransformation AWS API Documentation
    #
    class FeatureTransformation < Struct.new(
      :name,
      :feature_transformation_arn,
      :default_parameters,
      :creation_date_time,
      :last_updated_date_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a recommendation filter, including its ARN,
    # status, and filter expression.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The time at which the filter was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The time at which the filter was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group to which the filter belongs.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the filter failed, the reason for its failure.
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   Specifies the type of item interactions to filter out of
    #   recommendation results. The filter expression must follow specific
    #   format rules. For information about filter expression structure and
    #   syntax, see [Filter expressions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :filter_arn,
      :creation_date_time,
      :last_updated_date_time,
      :dataset_group_arn,
      :failure_reason,
      :filter_expression,
      :status)
      SENSITIVE = [:filter_expression]
      include Aws::Structure
    end

    # A short summary of a filter's attributes.
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_arn
    #   The ARN of the filter.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The time at which the filter was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The time at which the filter was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group to which the filter belongs.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the filter failed, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/FilterSummary AWS API Documentation
    #
    class FilterSummary < Struct.new(
      :name,
      :filter_arn,
      :creation_date_time,
      :last_updated_date_time,
      :dataset_group_arn,
      :failure_reason,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version for which to
    #   get metrics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetricsRequest AWS API Documentation
    #
    class GetSolutionMetricsRequest < Struct.new(
      :solution_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The same solution version ARN as specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   The metrics for the solution version. For more information, see [
    #   Evaluating a solution version with metrics ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/working-with-training-metrics.html
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetricsResponse AWS API Documentation
    #
    class GetSolutionMetricsResponse < Struct.new(
      :solution_version_arn,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties for hyperparameter optimization (HPO).
    #
    # @!attribute [rw] hpo_objective
    #   The metric to optimize during HPO.
    #
    #   <note markdown="1"> Amazon Personalize doesn't support configuring the `hpoObjective`
    #   at this time.
    #
    #    </note>
    #   @return [Types::HPOObjective]
    #
    # @!attribute [rw] hpo_resource_config
    #   Describes the resource configuration for HPO.
    #   @return [Types::HPOResourceConfig]
    #
    # @!attribute [rw] algorithm_hyper_parameter_ranges
    #   The hyperparameters and their allowable ranges.
    #   @return [Types::HyperParameterRanges]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HPOConfig AWS API Documentation
    #
    class HPOConfig < Struct.new(
      :hpo_objective,
      :hpo_resource_config,
      :algorithm_hyper_parameter_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric to optimize during hyperparameter optimization (HPO).
    #
    # <note markdown="1"> Amazon Personalize doesn't support configuring the `hpoObjective` at
    # this time.
    #
    #  </note>
    #
    # @!attribute [rw] type
    #   The type of the metric. Valid values are `Maximize` and `Minimize`.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_regex
    #   A regular expression for finding the metric in the training job
    #   logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HPOObjective AWS API Documentation
    #
    class HPOObjective < Struct.new(
      :type,
      :metric_name,
      :metric_regex)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the resource configuration for hyperparameter optimization
    # (HPO).
    #
    # @!attribute [rw] max_number_of_training_jobs
    #   The maximum number of training jobs when you create a solution
    #   version. The maximum value for `maxNumberOfTrainingJobs` is `40`.
    #   @return [String]
    #
    # @!attribute [rw] max_parallel_training_jobs
    #   The maximum number of parallel training jobs when you create a
    #   solution version. The maximum value for `maxParallelTrainingJobs` is
    #   `10`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HPOResourceConfig AWS API Documentation
    #
    class HPOResourceConfig < Struct.new(
      :max_number_of_training_jobs,
      :max_parallel_training_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the hyperparameters and their ranges. Hyperparameters can be
    # categorical, continuous, or integer-valued.
    #
    # @!attribute [rw] integer_hyper_parameter_ranges
    #   The integer-valued hyperparameters and their ranges.
    #   @return [Array<Types::IntegerHyperParameterRange>]
    #
    # @!attribute [rw] continuous_hyper_parameter_ranges
    #   The continuous hyperparameters and their ranges.
    #   @return [Array<Types::ContinuousHyperParameterRange>]
    #
    # @!attribute [rw] categorical_hyper_parameter_ranges
    #   The categorical hyperparameters and their ranges.
    #   @return [Array<Types::CategoricalHyperParameterRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HyperParameterRanges AWS API Documentation
    #
    class HyperParameterRanges < Struct.new(
      :integer_hyper_parameter_ranges,
      :continuous_hyper_parameter_ranges,
      :categorical_hyper_parameter_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name and range of an integer-valued hyperparameter.
    #
    # @!attribute [rw] name
    #   The name of the hyperparameter.
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   The minimum allowable value for the hyperparameter.
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   The maximum allowable value for the hyperparameter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/IntegerHyperParameterRange AWS API Documentation
    #
    class IntegerHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide a valid value for the field or parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of requests per second has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version from which
    #   the batch inference jobs were created.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of batch inference job results to return in each
    #   page. The default value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListBatchInferenceJobsRequest AWS API Documentation
    #
    class ListBatchInferenceJobsRequest < Struct.new(
      :solution_version_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_inference_jobs
    #   A list containing information on each job that is returned.
    #   @return [Array<Types::BatchInferenceJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListBatchInferenceJobsResponse AWS API Documentation
    #
    class ListBatchInferenceJobsResponse < Struct.new(
      :batch_inference_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version that the
    #   batch segment jobs used to generate batch segments.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of batch segment job results to return in each
    #   page. The default value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListBatchSegmentJobsRequest AWS API Documentation
    #
    class ListBatchSegmentJobsRequest < Struct.new(
      :solution_version_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_segment_jobs
    #   A list containing information on each job that is returned.
    #   @return [Array<Types::BatchSegmentJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListBatchSegmentJobsResponse AWS API Documentation
    #
    class ListBatchSegmentJobsResponse < Struct.new(
      :batch_segment_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution to list the campaigns
    #   for. When a solution is not specified, all the campaigns associated
    #   with the account are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to [ListCampaigns][1] for
    #   getting the next set of campaigns (if they exist).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of campaigns to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListCampaignsRequest AWS API Documentation
    #
    class ListCampaignsRequest < Struct.new(
      :solution_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaigns
    #   A list of the campaigns.
    #   @return [Array<Types::CampaignSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of campaigns (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListCampaignsResponse AWS API Documentation
    #
    class ListCampaignsResponse < Struct.new(
      :campaigns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to list the dataset
    #   export jobs for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListDatasetExportJobs`
    #   for getting the next set of dataset export jobs (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of dataset export jobs to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetExportJobsRequest AWS API Documentation
    #
    class ListDatasetExportJobsRequest < Struct.new(
      :dataset_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_export_jobs
    #   The list of dataset export jobs.
    #   @return [Array<Types::DatasetExportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of dataset export jobs (if they
    #   exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetExportJobsResponse AWS API Documentation
    #
    class ListDatasetExportJobsResponse < Struct.new(
      :dataset_export_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListDatasetGroups` for
    #   getting the next set of dataset groups (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of dataset groups to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetGroupsRequest AWS API Documentation
    #
    class ListDatasetGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_groups
    #   The list of your dataset groups.
    #   @return [Array<Types::DatasetGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of dataset groups (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetGroupsResponse AWS API Documentation
    #
    class ListDatasetGroupsResponse < Struct.new(
      :dataset_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset to list the dataset
    #   import jobs for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListDatasetImportJobs`
    #   for getting the next set of dataset import jobs (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of dataset import jobs to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetImportJobsRequest AWS API Documentation
    #
    class ListDatasetImportJobsRequest < Struct.new(
      :dataset_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_jobs
    #   The list of dataset import jobs.
    #   @return [Array<Types::DatasetImportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of dataset import jobs (if they
    #   exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetImportJobsResponse AWS API Documentation
    #
    class ListDatasetImportJobsResponse < Struct.new(
      :dataset_import_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that contains
    #   the datasets to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListDatasetImportJobs`
    #   for getting the next set of dataset import jobs (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of datasets to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datasets
    #   An array of `Dataset` objects. Each object provides metadata
    #   information.
    #   @return [Array<Types::DatasetSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of datasets (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :datasets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The ARN of a dataset group used to filter the response.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListEventTrackers` for
    #   getting the next set of event trackers (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of event trackers to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListEventTrackersRequest AWS API Documentation
    #
    class ListEventTrackersRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_trackers
    #   A list of event trackers.
    #   @return [Array<Types::EventTrackerSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of event trackers (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListEventTrackersResponse AWS API Documentation
    #
    class ListEventTrackersResponse < Struct.new(
      :event_trackers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The ARN of the dataset group that contains the filters.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListFilters` for getting
    #   the next set of filters (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of filters to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListFiltersRequest AWS API Documentation
    #
    class ListFiltersRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A list of returned filters.
    #   @return [Array<Types::FilterSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of filters (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListFiltersResponse AWS API Documentation
    #
    class ListFiltersResponse < Struct.new(
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_attribution_arn
    #   The Amazon Resource Name (ARN) of the metric attribution to retrieve
    #   attributes for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of metrics to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListMetricAttributionMetricsRequest AWS API Documentation
    #
    class ListMetricAttributionMetricsRequest < Struct.new(
      :metric_attribution_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   The metrics for the specified metric attribution.
    #   @return [Array<Types::MetricAttribute>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous
    #   `ListMetricAttributionMetricsResponse` request to retrieve the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListMetricAttributionMetricsResponse AWS API Documentation
    #
    class ListMetricAttributionMetricsResponse < Struct.new(
      :metrics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The metric attributions' dataset group Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of metric attributions to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListMetricAttributionsRequest AWS API Documentation
    #
    class ListMetricAttributionsRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_attributions
    #   The list of metric attributions.
    #   @return [Array<Types::MetricAttributionSummary>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListMetricAttributionsResponse AWS API Documentation
    #
    class ListMetricAttributionsResponse < Struct.new(
      :metric_attributions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recipe_provider
    #   The default is `SERVICE`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListRecipes` for getting
    #   the next set of recipes (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recipes to return.
    #   @return [Integer]
    #
    # @!attribute [rw] domain
    #   Filters returned recipes by domain for a Domain dataset group. Only
    #   recipes (Domain dataset group use cases) for this domain are
    #   included in the response. If you don't specify a domain, all
    #   recipes are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecipesRequest AWS API Documentation
    #
    class ListRecipesRequest < Struct.new(
      :recipe_provider,
      :next_token,
      :max_results,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recipes
    #   The list of available recipes.
    #   @return [Array<Types::RecipeSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of recipes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecipesResponse AWS API Documentation
    #
    class ListRecipesResponse < Struct.new(
      :recipes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the Domain dataset group to list
    #   the recommenders for. When a Domain dataset group is not specified,
    #   all the recommenders associated with the account are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListRecommenders` for
    #   getting the next set of recommenders (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommenders to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecommendersRequest AWS API Documentation
    #
    class ListRecommendersRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommenders
    #   A list of the recommenders.
    #   @return [Array<Types::RecommenderSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of recommenders (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecommendersResponse AWS API Documentation
    #
    class ListRecommendersResponse < Struct.new(
      :recommenders,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListSchemas` for getting
    #   the next set of schemas (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of schemas to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSchemasRequest AWS API Documentation
    #
    class ListSchemasRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schemas
    #   A list of schemas.
    #   @return [Array<Types::DatasetSchemaSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used to get the next set of schemas (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSchemasResponse AWS API Documentation
    #
    class ListSchemasResponse < Struct.new(
      :schemas,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListSolutionVersions`
    #   for getting the next set of solution versions (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of solution versions to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionVersionsRequest AWS API Documentation
    #
    class ListSolutionVersionsRequest < Struct.new(
      :solution_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_versions
    #   A list of solution versions describing the version properties.
    #   @return [Array<Types::SolutionVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of solution versions (if they
    #   exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionVersionsResponse AWS API Documentation
    #
    class ListSolutionVersionsResponse < Struct.new(
      :solution_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from the previous call to `ListSolutions` for
    #   getting the next set of solutions (if they exist).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of solutions to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionsRequest AWS API Documentation
    #
    class ListSolutionsRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solutions
    #   A list of the current solutions.
    #   @return [Array<Types::SolutionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for getting the next set of solutions (if they exist).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionsResponse AWS API Documentation
    #
    class ListSolutionsResponse < Struct.new(
      :solutions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The resource's tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a metric that a metric attribution reports on.
    # For more information, see [Measuring impact of recommendations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html
    #
    # @!attribute [rw] event_type
    #   The metric's event type.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric's name. The name helps you identify the metric in Amazon
    #   CloudWatch or Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The attribute's expression. Available functions are `SUM()` or
    #   `SAMPLECOUNT()`. For SUM() functions, provide the dataset type
    #   (either Interactions or Items) and column to sum as a parameter. For
    #   example SUM(Items.PRICE).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/MetricAttribute AWS API Documentation
    #
    class MetricAttribute < Struct.new(
      :event_type,
      :metric_name,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a metric attribution. A metric attribution
    # creates reports on the data that you import into Amazon Personalize.
    # Depending on how you import the data, you can view reports in Amazon
    # CloudWatch or Amazon S3. For more information, see [Measuring impact
    # of recommendations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html
    #
    # @!attribute [rw] name
    #   The metric attribution's name.
    #   @return [String]
    #
    # @!attribute [rw] metric_attribution_arn
    #   The metric attribution's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The metric attribution's dataset group Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] metrics_output_config
    #   The metric attribution's output configuration.
    #   @return [Types::MetricAttributionOutput]
    #
    # @!attribute [rw] status
    #   The metric attribution's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The metric attribution's creation date time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The metric attribution's last updated date time.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The metric attribution's failure reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/MetricAttribution AWS API Documentation
    #
    class MetricAttribution < Struct.new(
      :name,
      :metric_attribution_arn,
      :dataset_group_arn,
      :metrics_output_config,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration details for a metric attribution.
    #
    # @!attribute [rw] s3_data_destination
    #   The configuration details of an Amazon S3 input or output bucket.
    #   @return [Types::S3DataConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that has
    #   permissions to add data to your output Amazon S3 bucket and add
    #   metrics to Amazon CloudWatch. For more information, see [Measuring
    #   impact of recommendations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/MetricAttributionOutput AWS API Documentation
    #
    class MetricAttributionOutput < Struct.new(
      :s3_data_destination,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a metric attribution. For a
    # complete listing, call the [DescribeMetricAttribution][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeMetricAttribution.html
    #
    # @!attribute [rw] name
    #   The name of the metric attribution.
    #   @return [String]
    #
    # @!attribute [rw] metric_attribution_arn
    #   The metric attribution's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The metric attribution's status.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The metric attribution's creation date time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The metric attribution's last updated date time.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The metric attribution's failure reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/MetricAttributionSummary AWS API Documentation
    #
    class MetricAttributionSummary < Struct.new(
      :name,
      :metric_attribution_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the additional objective for the solution, such as
    # maximizing streaming minutes or increasing revenue. For more
    # information see [Optimizing a solution][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html
    #
    # @!attribute [rw] item_attribute
    #   The numerical metadata column in an Items dataset related to the
    #   optimization objective. For example, VIDEO\_LENGTH (to maximize
    #   streaming minutes), or PRICE (to maximize revenue).
    #   @return [String]
    #
    # @!attribute [rw] objective_sensitivity
    #   Specifies how Amazon Personalize balances the importance of your
    #   optimization objective versus relevance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/OptimizationObjective AWS API Documentation
    #
    class OptimizationObjective < Struct.new(
      :item_attribute,
      :objective_sensitivity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a recipe. Each recipe provides an algorithm
    # that Amazon Personalize uses in model training when you use the
    # [CreateSolution][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html
    #
    # @!attribute [rw] name
    #   The name of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   The Amazon Resource Name (ARN) of the algorithm that Amazon
    #   Personalize uses to train the model.
    #   @return [String]
    #
    # @!attribute [rw] feature_transformation_arn
    #   The ARN of the FeatureTransformation object.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix format) that the recipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] recipe_type
    #   One of the following values:
    #
    #   * PERSONALIZED\_RANKING
    #
    #   * RELATED\_ITEMS
    #
    #   * USER\_PERSONALIZATION
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix format) that the recipe was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Recipe AWS API Documentation
    #
    class Recipe < Struct.new(
      :name,
      :recipe_arn,
      :algorithm_arn,
      :feature_transformation_arn,
      :status,
      :description,
      :creation_date_time,
      :recipe_type,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a recipe. For a complete
    # listing, call the [DescribeRecipe][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecipe.html
    #
    # @!attribute [rw] name
    #   The name of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the recipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the recipe was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] domain
    #   The domain of the recipe (if the recipe is a Domain dataset group
    #   use case).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/RecipeSummary AWS API Documentation
    #
    class RecipeSummary < Struct.new(
      :name,
      :recipe_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation generator for a Domain dataset group. You
    # create a recommender in a Domain dataset group for a specific domain
    # use case (domain recipe), and specify the recommender in a
    # [GetRecommendations][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html
    #
    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the Domain dataset group that
    #   contains the recommender.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe (Domain dataset group
    #   use case) that the recommender was created for.
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The configuration details of the recommender.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix format) that the recommender was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix format) that the recommender was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the recommender.
    #
    #   A recommender can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * STOP PENDING &gt; STOP IN\_PROGRESS &gt; INACTIVE &gt; START
    #     PENDING &gt; START IN\_PROGRESS &gt; ACTIVE
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If a recommender fails, the reason behind the failure.
    #   @return [String]
    #
    # @!attribute [rw] latest_recommender_update
    #   Provides a summary of the latest updates to the recommender.
    #   @return [Types::RecommenderUpdateSummary]
    #
    # @!attribute [rw] model_metrics
    #   Provides evaluation metrics that help you determine the performance
    #   of a recommender. For more information, see [ Evaluating a
    #   recommender][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/evaluating-recommenders.html
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Recommender AWS API Documentation
    #
    class Recommender < Struct.new(
      :recommender_arn,
      :dataset_group_arn,
      :name,
      :recipe_arn,
      :recommender_config,
      :creation_date_time,
      :last_updated_date_time,
      :status,
      :failure_reason,
      :latest_recommender_update,
      :model_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of the recommender.
    #
    # @!attribute [rw] item_exploration_config
    #   Specifies the exploration configuration hyperparameters, including
    #   `explorationWeight` and `explorationItemAgeCutOff`, you want to use
    #   to configure the amount of item exploration Amazon Personalize uses
    #   when recommending items. Provide `itemExplorationConfig` data only
    #   if your recommenders generate personalized recommendations for a
    #   user (not popular items or similar items).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] min_recommendation_requests_per_second
    #   Specifies the requested minimum provisioned recommendation requests
    #   per second that Amazon Personalize will support. A high
    #   `minRecommendationRequestsPerSecond` will increase your bill. We
    #   recommend starting with 1 for `minRecommendationRequestsPerSecond`
    #   (the default). Track your usage using Amazon CloudWatch metrics, and
    #   increase the `minRecommendationRequestsPerSecond` as necessary.
    #   @return [Integer]
    #
    # @!attribute [rw] training_data_config
    #   Specifies the training data configuration to use when creating a
    #   domain recommender.
    #   @return [Types::TrainingDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/RecommenderConfig AWS API Documentation
    #
    class RecommenderConfig < Struct.new(
      :item_exploration_config,
      :min_recommendation_requests_per_second,
      :training_data_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of the recommender.
    #
    # @!attribute [rw] name
    #   The name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the Domain dataset group that
    #   contains the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe (Domain dataset group
    #   use case) that the recommender was created for.
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The configuration details of the recommender.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] status
    #   The status of the recommender. A recommender can be in one of the
    #   following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * STOP PENDING &gt; STOP IN\_PROGRESS &gt; INACTIVE &gt; START
    #     PENDING &gt; START IN\_PROGRESS &gt; ACTIVE
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix format) that the recommender was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix format) that the recommender was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/RecommenderSummary AWS API Documentation
    #
    class RecommenderSummary < Struct.new(
      :name,
      :recommender_arn,
      :dataset_group_arn,
      :recipe_arn,
      :recommender_config,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a recommender update. For a
    # complete listing, call the [DescribeRecommender][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html
    #
    # @!attribute [rw] recommender_config
    #   The configuration details of the recommender update.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix format) that the recommender update was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the recommender update was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the recommender update.
    #
    #   A recommender can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * STOP PENDING &gt; STOP IN\_PROGRESS &gt; INACTIVE &gt; START
    #     PENDING &gt; START IN\_PROGRESS &gt; ACTIVE
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If a recommender update fails, the reason behind the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/RecommenderUpdateSummary AWS API Documentation
    #
    class RecommenderUpdateSummary < Struct.new(
      :recommender_config,
      :creation_date_time,
      :last_updated_date_time,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Could not find the specified resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of an Amazon S3 input or output bucket.
    #
    # @!attribute [rw] path
    #   The file path of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service (KMS)
    #   key that Amazon Personalize uses to encrypt or decrypt the input and
    #   output files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/S3DataConfig AWS API Documentation
    #
    class S3DataConfig < Struct.new(
      :path,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that provides information about a solution. A solution is a
    # trained model that can be deployed as a campaign.
    #
    # @!attribute [rw] name
    #   The name of the solution.
    #   @return [String]
    #
    # @!attribute [rw] solution_arn
    #   The ARN of the solution.
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   Whether to perform hyperparameter optimization (HPO) on the chosen
    #   recipe. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] perform_auto_ml
    #   We don't recommend enabling automated machine learning. Instead,
    #   match your use case to the available Amazon Personalize recipes. For
    #   more information, see [Determining your use case.][1]
    #
    #   When true, Amazon Personalize performs a search for the best
    #   USER\_PERSONALIZATION recipe from the list specified in the solution
    #   configuration (`recipeArn` must not be specified). When false (the
    #   default), Amazon Personalize uses `recipeArn` for training.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/determining-use-case.html
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   The ARN of the recipe used to create the solution. This is required
    #   when `performAutoML` is false.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group that provides
    #   the training data.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type (for example, 'click' or 'like') that is used for
    #   training the model. If no `eventType` is provided, Amazon
    #   Personalize uses all interactions for training with equal weight
    #   regardless of type.
    #   @return [String]
    #
    # @!attribute [rw] solution_config
    #   Describes the configuration properties for the solution.
    #   @return [Types::SolutionConfig]
    #
    # @!attribute [rw] auto_ml_result
    #   When `performAutoML` is true, specifies the best recipe found.
    #   @return [Types::AutoMLResult]
    #
    # @!attribute [rw] status
    #   The status of the solution.
    #
    #   A solution can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time (in Unix time) of the solution.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the solution was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_solution_version
    #   Describes the latest version of the solution, including the status
    #   and the ARN.
    #   @return [Types::SolutionVersionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Solution AWS API Documentation
    #
    class Solution < Struct.new(
      :name,
      :solution_arn,
      :perform_hpo,
      :perform_auto_ml,
      :recipe_arn,
      :dataset_group_arn,
      :event_type,
      :solution_config,
      :auto_ml_result,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :latest_solution_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration properties for the solution.
    #
    # @!attribute [rw] event_value_threshold
    #   Only events with a value greater than or equal to this threshold are
    #   used for training a model.
    #   @return [String]
    #
    # @!attribute [rw] hpo_config
    #   Describes the properties for hyperparameter optimization (HPO).
    #   @return [Types::HPOConfig]
    #
    # @!attribute [rw] algorithm_hyper_parameters
    #   Lists the hyperparameter names and ranges.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] feature_transformation_parameters
    #   Lists the feature transformation parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] auto_ml_config
    #   The [AutoMLConfig][1] object containing a list of recipes to search
    #   when AutoML is performed.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_AutoMLConfig.html
    #   @return [Types::AutoMLConfig]
    #
    # @!attribute [rw] optimization_objective
    #   Describes the additional objective for the solution, such as
    #   maximizing streaming minutes or increasing revenue. For more
    #   information see [Optimizing a solution][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html
    #   @return [Types::OptimizationObjective]
    #
    # @!attribute [rw] training_data_config
    #   Specifies the training data configuration to use when creating a
    #   custom solution version (trained model).
    #   @return [Types::TrainingDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionConfig AWS API Documentation
    #
    class SolutionConfig < Struct.new(
      :event_value_threshold,
      :hpo_config,
      :algorithm_hyper_parameters,
      :feature_transformation_parameters,
      :auto_ml_config,
      :optimization_objective,
      :training_data_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a solution. For a complete
    # listing, call the [DescribeSolution][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html
    #
    # @!attribute [rw] name
    #   The name of the solution.
    #   @return [String]
    #
    # @!attribute [rw] solution_arn
    #   The Amazon Resource Name (ARN) of the solution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the solution.
    #
    #   A solution can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   * DELETE PENDING &gt; DELETE IN\_PROGRESS
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that the solution was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the solution was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] recipe_arn
    #   The Amazon Resource Name (ARN) of the recipe used by the solution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionSummary AWS API Documentation
    #
    class SolutionSummary < Struct.new(
      :name,
      :solution_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that provides information about a specific version of a
    # [Solution][1] in a Custom dataset group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_Solution.html
    #
    # @!attribute [rw] name
    #   The name of the solution version.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The ARN of the solution version.
    #   @return [String]
    #
    # @!attribute [rw] solution_arn
    #   The ARN of the solution.
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   Whether to perform hyperparameter optimization (HPO) on the chosen
    #   recipe. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] perform_auto_ml
    #   When true, Amazon Personalize searches for the most optimal recipe
    #   according to the solution configuration. When false (the default),
    #   Amazon Personalize uses `recipeArn`.
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   The ARN of the recipe used in the solution.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type (for example, 'click' or 'like') that is used for
    #   training the model.
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   The Amazon Resource Name (ARN) of the dataset group providing the
    #   training data.
    #   @return [String]
    #
    # @!attribute [rw] solution_config
    #   Describes the configuration properties for the solution.
    #   @return [Types::SolutionConfig]
    #
    # @!attribute [rw] training_hours
    #   The time used to train the model. You are billed for the time it
    #   takes to train a model. This field is visible only after Amazon
    #   Personalize successfully trains a model.
    #   @return [Float]
    #
    # @!attribute [rw] training_mode
    #   The scope of training to be performed when creating the solution
    #   version. The `FULL` option trains the solution version based on the
    #   entirety of the input solution's training data, while the `UPDATE`
    #   option processes only the data that has changed in comparison to the
    #   input solution. Choose `UPDATE` when you want to incrementally
    #   update your solution version instead of creating an entirely new
    #   one.
    #
    #   The `UPDATE` option can only be used when you already have an active
    #   solution version created from the input solution using the `FULL`
    #   option and the input solution was trained with the
    #   [User-Personalization][1] recipe or the [HRNN-Coldstart][2] recipe.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html
    #   [2]: https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html
    #   @return [String]
    #
    # @!attribute [rw] tuned_hpo_params
    #   If hyperparameter optimization was performed, contains the
    #   hyperparameter values of the best performing model.
    #   @return [Types::TunedHPOParams]
    #
    # @!attribute [rw] status
    #   The status of the solution version.
    #
    #   A solution version can be in one of the following states:
    #
    #   * CREATE PENDING
    #
    #   * CREATE IN\_PROGRESS
    #
    #   * ACTIVE
    #
    #   * CREATE FAILED
    #
    #   * CREATE STOPPING
    #
    #   * CREATE STOPPED
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If training a solution version fails, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that this version of the solution
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the solution was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionVersion AWS API Documentation
    #
    class SolutionVersion < Struct.new(
      :name,
      :solution_version_arn,
      :solution_arn,
      :perform_hpo,
      :perform_auto_ml,
      :recipe_arn,
      :event_type,
      :dataset_group_arn,
      :solution_config,
      :training_hours,
      :training_mode,
      :tuned_hpo_params,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of the properties of a solution version. For a
    # complete listing, call the [DescribeSolutionVersion][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html
    #
    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the solution version.
    #
    #   A solution version can be in one of the following states:
    #
    #   * CREATE PENDING &gt; CREATE IN\_PROGRESS &gt; ACTIVE -or- CREATE
    #     FAILED
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time (in Unix time) that this version of a solution was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time (in Unix time) that the solution version was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If a solution version fails, the reason behind the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionVersionSummary AWS API Documentation
    #
    class SolutionVersionSummary < Struct.new(
      :solution_version_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StartRecommenderRequest AWS API Documentation
    #
    class StartRecommenderRequest < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender you started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StartRecommenderResponse AWS API Documentation
    #
    class StartRecommenderResponse < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StopRecommenderRequest AWS API Documentation
    #
    class StopRecommenderRequest < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender you stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StopRecommenderResponse AWS API Documentation
    #
    class StopRecommenderResponse < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   The Amazon Resource Name (ARN) of the solution version you want to
    #   stop creating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/StopSolutionVersionCreationRequest AWS API Documentation
    #
    class StopSolutionVersionCreationRequest < Struct.new(
      :solution_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The optional metadata that you apply to resources to help you
    # categorize and organize them. Each tag consists of a key and an
    # optional value, both of which you define. For more information see
    # [Tagging Amazon Personalize recources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #
    # @!attribute [rw] tag_key
    #   One part of a key-value pair that makes up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The optional part of a key-value pair that makes up a tag. A value
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :tag_key,
      :tag_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the resource. For more information see [Tagging
    #   Amazon Personalize recources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request contains more tag keys than can be associated with a
    # resource (50 tag keys per resource).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/TooManyTagKeysException AWS API Documentation
    #
    class TooManyTagKeysException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the maximum number of tags you can apply to this
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training data configuration to use when creating a domain
    # recommender or custom solution version (trained model).
    #
    # @!attribute [rw] excluded_dataset_columns
    #   Specifies the columns to exclude from training. Each key is a
    #   dataset type, and each value is a list of columns. Exclude columns
    #   to control what data Amazon Personalize uses to generate
    #   recommendations. For example, you might have a column that you want
    #   to use only to filter recommendations. You can exclude this column
    #   from training and Amazon Personalize considers it only when
    #   filtering.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/TrainingDataConfig AWS API Documentation
    #
    class TrainingDataConfig < Struct.new(
      :excluded_dataset_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # If hyperparameter optimization (HPO) was performed, contains the
    # hyperparameter values of the best performing model.
    #
    # @!attribute [rw] algorithm_hyper_parameters
    #   A list of the hyperparameter values of the best performing model.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/TunedHPOParams AWS API Documentation
    #
    class TunedHPOParams < Struct.new(
      :algorithm_hyper_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys to remove from the resource's tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] campaign_arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   The ARN of a new solution version to deploy.
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   Specifies the requested minimum provisioned transactions
    #   (recommendations) per second that Amazon Personalize will support. A
    #   high `minProvisionedTPS` will increase your bill. We recommend
    #   starting with 1 for `minProvisionedTPS` (the default). Track your
    #   usage using Amazon CloudWatch metrics, and increase the
    #   `minProvisionedTPS` as necessary.
    #   @return [Integer]
    #
    # @!attribute [rw] campaign_config
    #   The configuration details of a campaign.
    #   @return [Types::CampaignConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateCampaignRequest AWS API Documentation
    #
    class UpdateCampaignRequest < Struct.new(
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps,
      :campaign_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaign_arn
    #   The same campaign ARN as given in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateCampaignResponse AWS API Documentation
    #
    class UpdateCampaignResponse < Struct.new(
      :campaign_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the new schema you want use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateDatasetRequest AWS API Documentation
    #
    class UpdateDatasetRequest < Struct.new(
      :dataset_arn,
      :schema_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateDatasetResponse AWS API Documentation
    #
    class UpdateDatasetResponse < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] add_metrics
    #   Add new metric attributes to the metric attribution.
    #   @return [Array<Types::MetricAttribute>]
    #
    # @!attribute [rw] remove_metrics
    #   Remove metric attributes from the metric attribution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metrics_output_config
    #   An output config for the metric attribution.
    #   @return [Types::MetricAttributionOutput]
    #
    # @!attribute [rw] metric_attribution_arn
    #   The Amazon Resource Name (ARN) for the metric attribution to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateMetricAttributionRequest AWS API Documentation
    #
    class UpdateMetricAttributionRequest < Struct.new(
      :add_metrics,
      :remove_metrics,
      :metrics_output_config,
      :metric_attribution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_attribution_arn
    #   The Amazon Resource Name (ARN) for the metric attribution that you
    #   updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateMetricAttributionResponse AWS API Documentation
    #
    class UpdateMetricAttributionResponse < Struct.new(
      :metric_attribution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The Amazon Resource Name (ARN) of the recommender to modify.
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The configuration details of the recommender.
    #   @return [Types::RecommenderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateRecommenderRequest AWS API Documentation
    #
    class UpdateRecommenderRequest < Struct.new(
      :recommender_arn,
      :recommender_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The same recommender Amazon Resource Name (ARN) as given in the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateRecommenderResponse AWS API Documentation
    #
    class UpdateRecommenderResponse < Struct.new(
      :recommender_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
